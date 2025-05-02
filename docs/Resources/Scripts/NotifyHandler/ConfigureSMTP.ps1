# Load the SMACommon.dll assembly
Add-Type -Path "SMACommon.dll"

# Function to decrypt a value
function Unprotect-Value {
    param (
        [string]$value
    )
    $decryptionAlgorithm = New-Object SMACommon.Encryption.LengthBasedAlgorithm
    return $decryptionAlgorithm.Decrypt($value)
}

# Function to encrypt a value
function Protect-Value {
    param (
        [string]$value
    )
    $encryptionAlgorithm = New-Object SMACommon.Encryption.LengthBasedAlgorithm
    return $encryptionAlgorithm.Encrypt($value)
}

# Function to read database connection string
function Get-DatabaseConnectionString {
    $configFile = "SMAODBCConfiguration.DAT"
    if (-not (Test-Path $configFile)) {
        Write-Host "Error: $configFile not found!"
        exit 1
    }
    
    $content = Get-Content $configFile
    $connectionString = @{}
    
    foreach ($line in $content) {
        if ($line -match "Server=(.*?);") { $connectionString.Server = $matches[1] }
        if ($line -match "Database=(.*?);") { $connectionString.Database = $matches[1] }
        if ($line -match "User Id=(.*?);") { $connectionString.UserId = $matches[1] }
        if ($line -match "Password=(.*?)(;?)$") { 
            $encryptedPassword = $matches[1]
            $connectionString.Password = Unprotect-Value $encryptedPassword
        }
    }
    
    return $connectionString
}

# Function to execute SQL command
function Invoke-SqlCommand {
    param (
        [string]$connectionString,
        [string]$query
    )
    
    $connection = New-Object System.Data.SqlClient.SqlConnection
    $connection.ConnectionString = $connectionString
    $connection.Open()
    
    $command = New-Object System.Data.SqlClient.SqlCommand
    $command.Connection = $connection
    $command.CommandText = $query
    
    $result = $command.ExecuteNonQuery()
    $connection.Close()
    
    return $result
}

# Function to execute SQL query and return results
function Invoke-SqlQuery {
    param (
        [string]$connectionString,
        [string]$query
    )

    $connection = New-Object System.Data.SqlClient.SqlConnection
    $connection.ConnectionString = $connectionString
    $connection.Open()

    $command = New-Object System.Data.SqlClient.SqlCommand
    $command.Connection = $connection
    $command.CommandText = $query

    $adapter = New-Object System.Data.SqlClient.SqlDataAdapter($command)
    $dataSet = New-Object System.Data.DataSet
    $adapter.Fill($dataSet) | Out-Null

    $connection.Close()

    if ($dataSet.Tables.Count -gt 0 -and $dataSet.Tables[0].Rows.Count -gt 0) {
        return $dataSet.Tables[0]
    } else {
        return $null
    }
}

# Function to get a specific config value from OPCON_CONFIG
function Get-OpconConfigValue {
    param (
        [string]$connectionString,
        [string]$configKey
    )
    $query = "SELECT CONFIG_VALUE FROM OPCON_CONFIG WHERE CONFIG_KEY = '$configKey'"
    $result = Invoke-SqlQuery -connectionString $connectionString -query $query
    if ($null -ne $result) {
        # Check if the value needs decryption (e.g., secrets)
        if ($configKey -like '*SECRET*') {
             try {
                return Unprotect-Value $result.CONFIG_VALUE
             } catch {
                 Write-Warning "Could not decrypt value for $configKey. Returning encrypted value."
                 return $result.CONFIG_VALUE
             }
        } else {
             return $result.CONFIG_VALUE
        }
    } else {
        return $null
    }
}

# Function to insert or update a config value in OPCON_CONFIG
function Set-OpconConfigValue {
    param (
        [Parameter(Mandatory=$true)]
        [string]$connectionString,
        [Parameter(Mandatory=$true)]
        [string]$configKey,
        [string]$configValue = ""
    )
    
    # Skip if value is empty
    if ([string]::IsNullOrEmpty($configValue)) {
        Write-Host "Skipping empty value for $configKey"
        return
    }
    
    # Sanitize input values to prevent SQL injection
    $safeConfigKey = $configKey -replace "'","''" -replace ";",""
    $safeConfigValue = $configValue -replace "'","''" -replace ";",""

    # Check if the key already exists
    $existingValueQuery = "SELECT COUNT(*) FROM OPCON_CONFIG WHERE CONFIG_KEY = '$safeConfigKey'"
    $connectionCheck = New-Object System.Data.SqlClient.SqlConnection
    $connectionCheck.ConnectionString = $connectionString
    try {
        $connectionCheck.Open()
        $commandCheck = New-Object System.Data.SqlClient.SqlCommand($existingValueQuery, $connectionCheck)
        $exists = [int]$commandCheck.ExecuteScalar()
    } catch {
        Write-Error "Error checking for existing key '$safeConfigKey': $($_.Exception.Message)"
        throw
    } finally {
        if ($null -ne $connectionCheck -and $connectionCheck.State -eq [System.Data.ConnectionState]::Open) {
            $connectionCheck.Close()
        }
    }

    $query = if ($exists -gt 0) {
        "UPDATE OPCON_CONFIG SET CONFIG_VALUE = '$safeConfigValue' WHERE CONFIG_KEY = '$safeConfigKey'"
    } else {
        "INSERT INTO OPCON_CONFIG (CONFIG_KEY, CONFIG_VALUE) VALUES ('$safeConfigKey', '$safeConfigValue')"
    }
    
    try {
        Invoke-SqlCommand -connectionString $connectionString -query $query
    } catch {
        Write-Error "Error saving configuration for key '$safeConfigKey': $($_.Exception.Message)"
        throw
    }
}

# Function to configure Email or SMS settings
function Set-ServiceSettings {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [string]$connectionString,
        [Parameter(Mandatory=$true)]
        [ValidateSet(1, 2, 3, 4)]
        [int]$configType # 1=Primary Email, 2=Secondary Email, 3=Primary SMS, 4=Secondary SMS
    )

    # --- Define settings based on configType --- 
    $isEmail = $configType -in (1, 2)
    $isSms = $configType -in (3, 4)

    $configTypeStr = switch($configType) {
        1 { "Primary Email" }
        2 { "Secondary Email" }
        3 { "Primary SMS" }
        4 { "Secondary SMS" }
    }
    Write-Host "`nConfiguring $configTypeStr Settings$(if($isSms){' (via SMTP)'}):"

    # Define Keys, Display Names, and Defaults
    $keys = @()
    $displayNames = @{}
    $defaults = @{}

    if ($isEmail) {
        $keys = @(
            "SMTPAPPID", "SMTPSECRET", "SMTPTENANTID"
        )
        $displayNames = @{
            "SMTPAPPID"      = "OAuth Application ID"
            "SMTPSECRET"     = "OAuth Client Secret"
            "SMTPTENANTID"   = "OAuth Tenant ID"
        }
        $defaults = @{
            "SMTPAPPID"      = ""
            "SMTPSECRET"     = ""
            "SMTPTENANTID"   = ""
        }
    } elseif ($isSms) {
         $keys = @(
            "SMTPAPPID", "SMTPSECRET", "SMTPTENANTID"
        )
        $displayNames = @{
            "SMTPAPPID"      = "SMS OAuth Application ID"
            "SMTPSECRET"     = "SMS OAuth Client Secret"
            "SMTPTENANTID"   = "SMS OAuth Tenant ID"
        }
        # SMS uses blank defaults if not found in DB
        $keys | ForEach-Object { $defaults[$_] = "" }
    } else {
        Write-Error "Invalid configType: $configType"
        return $null
    }

    # --- Fetch current settings from DB --- 
    $currentSettings = @{}
    $hasExistingSettings = $false
    foreach ($key in $keys) {
        $dbKey = "$key$configType"
        $currentValue = Get-OpconConfigValue -connectionString $connectionString -configKey $dbKey
        # Use DB value if present, otherwise use the defined default for the type
        $currentSettings[$key] = if ($null -ne $currentValue) { $currentValue } else { $defaults[$key] }
        if (-not [string]::IsNullOrWhiteSpace($currentValue)) {
            $hasExistingSettings = $true
        }
    }

    # If there are existing settings, ask if user wants to delete all
    if ($hasExistingSettings) {
        Write-Host "`nExisting settings found for $configTypeStr."
        $deleteAll = Read-Host "Would you like to delete all settings? (y/n)"
        if ($deleteAll -eq 'y') {
            $keysToDelete = @()
            foreach ($key in $keys) {
                $keysToDelete += "$key$configType"
            }
            return @{ '_keysToDelete' = $keysToDelete }
        }
    }

    # --- Prompt user for settings --- 
    $settings = @{}
    foreach ($key in $keys) {
        $promptText = $displayNames[$key]
        $defaultValue = $currentSettings[$key]
        
        if ($key -eq "SMTPSECRET") {
            # For the secret, don't display the existing value
            if (-not [string]::IsNullOrWhiteSpace($defaultValue)) {
                $promptText += " (current value exists, leave blank to keep)"
            }
            $inputSecret = Read-Host -AsSecureString $promptText
            # Convert secure string to plain text if not empty
            if ($inputSecret.Length -gt 0) {
                $inputSecret = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($inputSecret))
            } else {
                $inputSecret = ""
            }
            # Determine the final secret value
            if ([string]::IsNullOrWhiteSpace($inputSecret) -and (-not [string]::IsNullOrWhiteSpace($defaultValue))) {
                 $settings[$key] = $defaultValue # Keep existing if input is blank and a value exists
            } elseif (-not [string]::IsNullOrWhiteSpace($inputSecret)) {
                $settings[$key] = $inputSecret # Use new value if provided
            } else {
                $settings[$key] = "" # Set to empty if no existing value and no input provided
            }
        } else {
            # Standard prompt for other keys
            $input = Read-Host "$promptText [$defaultValue]"
            if ([string]::IsNullOrWhiteSpace($input)) {
                $settings[$key] = $defaultValue # Use default if input is empty
            } else {
                $settings[$key] = $input # Use new value if provided
            }
        }
    }

    # --- Prepare final settings for saving --- 
    $finalSettings = @{}
    foreach($key in $settings.Keys) {
        # Construct the final DB key (e.g., SMTPSECRET1, SMTPSECRET3)
        $finalSettings["$key$configType"] = $settings[$key]
    }
    return $finalSettings
}

# Main script
try {
    # Get database connection
    $dbConfig = Get-DatabaseConnectionString
    $connectionString = "Server=$($dbConfig.Server);Database=$($dbConfig.Database);User Id=$($dbConfig.UserId);Password=$($dbConfig.Password);Encrypt=True;TrustServerCertificate=True"

    # Test connection
    try {
        $testConn = New-Object System.Data.SqlClient.SqlConnection($connectionString)
        $testConn.Open()
        $testConn.Close()
        Write-Host "Database connection successful."
    } catch {
        Write-Error "Error connecting to database: $($_.Exception.Message)"
        exit 1
    }

    # Main menu
    while ($true) {
        Write-Host "`nSMTP/SMS Configuration Menu"
        Write-Host "1. Configure Primary Email Settings"
        Write-Host "2. Configure Secondary Email Settings"
        Write-Host "3. Configure Primary SMS Settings (via SMTP)"
        Write-Host "4. Configure Secondary SMS Settings (via SMTP)"
        Write-Host "5. Exit"

        $choice = Read-Host "Enter your choice (1-5)"

        $settingsToSave = $null
        switch ($choice) {
            "1" {
                $settingsToSave = Set-ServiceSettings -connectionString $connectionString -configType 1
            }
            "2" {
                 $settingsToSave = Set-ServiceSettings -connectionString $connectionString -configType 2
            }
            "3" {
                $settingsToSave = Set-ServiceSettings -connectionString $connectionString -configType 3
            }
            "4" {
                $settingsToSave = Set-ServiceSettings -connectionString $connectionString -configType 4
            }
            "5" {
                Write-Host "Exiting..."
                exit 0
            }
            default {
                Write-Host "Invalid choice. Please try again."
            }
        }

        if ($null -ne $settingsToSave) {
            Write-Host "`nSaving settings..."
            
            # Handle deletions first
            if ($settingsToSave.ContainsKey('_keysToDelete')) {
                foreach ($keyToDelete in $settingsToSave['_keysToDelete']) {
                    $deleteQuery = "DELETE FROM OPCON_CONFIG WHERE CONFIG_KEY = '$keyToDelete'"
                    try {
                        Invoke-SqlCommand -connectionString $connectionString -query $deleteQuery
                        Write-Host "Deleted $keyToDelete"
                    } catch {
                        Write-Error "Error deleting $keyToDelete"
                    }
                }
                $settingsToSave.Remove('_keysToDelete')
            }

            # Handle updates/inserts
            foreach ($key in $settingsToSave.Keys) {
                $valueToSave = $settingsToSave[$key]
                $originalKeyWithoutType = $key -replace '[1-4]$' # Get original key name for logic

                # Encrypt the secret before saving
                if ($originalKeyWithoutType -eq 'SMTPSECRET') {
                    if (-not [string]::IsNullOrEmpty($valueToSave)) {
                        $valueToSave = Protect-Value $valueToSave
                    }
                }
                 # Ensure value is not null before saving
                if ($null -eq $valueToSave) { $valueToSave = '' }

                # Use the full key (e.g., SMTPSECRET1) for saving
                Set-OpconConfigValue -connectionString $connectionString -configKey $key -configValue $valueToSave 
                Write-Host "Saved $key"
            }
            Write-Host "Settings saved successfully."

            # Send reload config message
            $reloadQuery = "INSERT INTO NOTIFY (TRIGGERNAME, MACHNAME, SKDDATE, SKDNAME, INSTNO, JOBNAME, GROUPOFID, ACTIONID, ACTIONNAME, ACTIONINCID, ACTIONTYPE, ACTIONMSG, NOTIFYDELIM, RETRY_COUNT, [STATUS])  VALUES('RELOADCONFIG', '', 0, '', 0, '', 0, 12345, 'RELOADCONFIG', 'N', 8, '<RELOADCONFIG>ConfigureSmtp.ps1</RELOADCONFIG>', '|', 0, 0)"
            try {
                Invoke-SqlCommand -connectionString $connectionString -query $reloadQuery
                Write-Host "Configuration reload message sent successfully."
            } catch {
                Write-Warning "Failed to send configuration reload message: $($_.Exception.Message)"
            }
        }
    }
}
catch {
    Write-Error "An error occurred: $($_.Exception.ToString())"
    exit 1
} 