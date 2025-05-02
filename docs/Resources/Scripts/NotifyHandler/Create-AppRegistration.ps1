# This script creates an Azure AD application registration for the SMA Notify Handler
# It requires the Microsoft.Graph PowerShell module and appropriate Azure AD permissions
# The script will:
# 1. Create a new Azure AD application
# 2. Configure Exchange Online permissions (smtp.SendAsApp)
# 3. Grant admin consent
# 4. Generate a client secret
param(
    [switch]$AllowClobber
)

try {
    # Check if Microsoft.Graph module is installed
    if (-not (Get-Module -ListAvailable -Name Microsoft.Graph)) {
        $installChoice = Read-Host "The Microsoft.Graph module is required but not installed. Would you like to install it now? (Y/N)"
        if ($installChoice -eq 'Y' -or $installChoice -eq 'y') {
            Write-Host "Installing Microsoft.Graph module..."
            $installParams = @{
                Name = "Microsoft.Graph"
                Scope = "CurrentUser"
                Force = $true
            }
            if ($AllowClobber) {
                $installParams.AllowClobber = $true
            }
            Install-Module @installParams
            Write-Host "Done installing Microsoft.Graph module."
        } else {
            throw "Microsoft.Graph module is required. Please install it manually with: Install-Module Microsoft.Graph -Scope CurrentUser"
        }
    }

    Import-Module Microsoft.Graph.Applications

    # Connect to Microsoft Graph with appropriate scopes
    Write-Host "Connecting to Microsoft Graph..."
    Connect-MgGraph -NoWelcome -Scopes "Directory.ReadWrite.All","Application.ReadWrite.All"

    # Get the tenant ID
    $tenantId = (Get-MgContext).TenantId
    Write-Host "`nTenant ID: $tenantId"

    # Prompt for application name
    $appName = Read-Host "Enter the application name (press Enter for default: SMANotifyHandler)"
    if ([string]::IsNullOrWhiteSpace($appName)) {
        $appName = "SMANotifyHandler"
    }
    # Create the new AAD application
    Write-Host "`n--- Creating a new Azure AD application ($appName) ---`n"
    $app = New-MgApplication -DisplayName $appName -SignInAudience "AzureADMyOrg"

    Write-Host "Created application:"
    Write-Host "   Object ID (application): $($app.Id)"
    Write-Host "   Client ID (appId):       $($app.AppId)"
    Write-Host "   Tenant ID:               $tenantId"

    # Identify the Exchange Online service principal
    $exchAppId = "00000002-0000-0ff1-ce00-000000000000"
    Write-Host "`n--- Looking up the Exchange Online service principal ---`n"
    $exchSp = Get-MgServicePrincipal -Filter "AppId eq '$exchAppId'"
    if (!$exchSp) {
        throw "Could not find Exchange Online service principal in this tenant."
    }

    # Find the smtp.SendAsApp app role
    Write-Host "Looking for 'smtp.SendAsApp' application permission..."
    $sendAsAppRole = $exchSp.AppRoles | Where-Object {
        $_.Value -eq 'smtp.SendAsApp' -and
        $_.AllowedMemberTypes -contains 'Application'
    }

    if (!$sendAsAppRole) {
        throw "Could not find 'smtp.SendAsApp' app role in Exchange Online."
    }

    Write-Host "Found 'smtp.SendAsApp' role with ID: $($sendAsAppRole.Id)"

    # Update the newly created application's requiredResourceAccess
    Write-Host "`n--- Assigning 'smtp.SendAsApp' as a required resource access ---`n"
    Update-MgApplication -ApplicationId $app.Id -RequiredResourceAccess @(
        @{
            resourceAppId = $exchAppId
            resourceAccess = @(
                @{
                    id = $sendAsAppRole.Id
                    type = "Role"
                }
            )
        }
    )
    Write-Host "Application updated with requiredResourceAccess."

    # Grant admin consent for the application
    Write-Host "`n--- Granting admin consent for the application ---`n"
    Write-Host "Waiting for application to be fully registered..."
    Start-Sleep -Seconds 10

    # Verify the application exists
    $verifyApp = Get-MgApplication -ApplicationId $app.Id
    if (-not $verifyApp) {
        throw "Application not found. Please try again."
    }

    # Create the service principal for our app if it doesn't exist
    $appSp = Get-MgServicePrincipal -Filter "appId eq '$($app.AppId)'"
    if (-not $appSp) {
        Write-Host "Creating service principal for the application..."
        $appSp = New-MgServicePrincipal -AppId $app.AppId
        Start-Sleep -Seconds 5
    }

    # Grant the application permission using appRoleAssignments
    $appRoleAssignment = @{
        principalId = $appSp.Id
        resourceId = $exchSp.Id
        appRoleId = $sendAsAppRole.Id
    }
    
    $consent = Invoke-MgGraphRequest -Method POST -Uri "v1.0/servicePrincipals/$($appSp.Id)/appRoleAssignments" -Body $appRoleAssignment
    Write-Host "Admin consent granted successfully."

    # Create a client secret and output it
    Write-Host "`n--- Generating a new client secret for the application ---`n"
    $secretRequest = @{
        passwordCredential = @{
            displayName = "${appName}Secret"
        }
    }

    $secret = Invoke-MgGraphRequest -Method POST -Uri "v1.0/applications/$($app.Id)/addPassword" -Body $secretRequest

    # Create a JSON file with the app registration details
    $appDetails = @{
        AppName = $appName
        AppId = $app.AppId
        TenantId = $tenantId
        ClientSecret = $secret.secretText
        ServicePrincipalId = $appSp.Id
    }

    $outputPath = Join-Path $PSScriptRoot "app-registration-details.json"
    $appDetails | ConvertTo-Json | Out-File $outputPath

    Write-Host "`n*** Important Values for Configuration ***"
    Write-Host "App ID:               $($app.AppId)"
    Write-Host "Tenant ID:            $tenantId"
    Write-Host "Client Secret:        $($secret.secretText)"
    Write-Host "Service Principal ID: $($appSp.Id)"
    Write-Host "`nApp registration details have been saved to $outputPath"
    Write-Host "IMPORTANT: Store the client secret securely and never commit it to source control"

    Write-Host "`nDone!"
} catch {
    Write-Error "An error occurred: $_"
    Write-Error "Error occurred in line $($_.InvocationInfo.ScriptLineNumber)"
    Write-Error "Script terminated."
    exit 1
} 