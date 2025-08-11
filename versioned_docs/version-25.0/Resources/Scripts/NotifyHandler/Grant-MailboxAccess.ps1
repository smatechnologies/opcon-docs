param(
    [switch]$AllowClobber
)

try {
    # Check if ExchangeOnlineManagement module is installed
    if (-not (Get-Module -ListAvailable -Name ExchangeOnlineManagement)) {
        $installChoice = Read-Host "The ExchangeOnlineManagement module is required but not installed. Would you like to install it now? (Y/N)"
        if ($installChoice -eq 'Y' -or $installChoice -eq 'y') {
            Write-Host "Installing ExchangeOnlineManagement module..."
            $installParams = @{
                Name = "ExchangeOnlineManagement"
                Scope = "CurrentUser"
                Force = $true
            }
            if ($AllowClobber) {
                $installParams.AllowClobber = $true
            }
            Install-Module @installParams
            Write-Host "Done installing ExchangeOnlineManagement module."
        } else {
            throw "ExchangeOnlineManagement module is required. Please install it manually with: Install-Module ExchangeOnlineManagement -Scope CurrentUser"
        }
    }

    Import-Module ExchangeOnlineManagement

    # Check if app registration details file exists
    $appDetailsPath = Join-Path $PSScriptRoot "app-registration-details.json"
    if (-not (Test-Path $appDetailsPath)) {
        throw "app-registration-details.json file not found at $appDetailsPath. Please run Create-AppRegistration.ps1 first."
    }

    # Read app registration details
    $appDetails = Get-Content $appDetailsPath | ConvertFrom-Json

    # Get email address to grant access to
    $validEmail = $false
    $emailAddress = ""

    while (-not $validEmail) {
        $emailAddress = Read-Host "Enter the email address that $($appDetails.AppName) should be granted access to send emails from"
        Write-Host "`nYou entered: $emailAddress"
        $confirmChoice = Read-Host "Is this email address correct? (Y/N)"
        
        if ($confirmChoice -eq 'Y' -or $confirmChoice -eq 'y') {
            $validEmail = $true
        } else {
            Write-Host "`nLet's try again...`n"
        }
    }

    Write-Host "`nProceeding with email address: $emailAddress`n"

    # Connect to Exchange Online
    Write-Host "Connecting to Exchange Online..."
    Connect-ExchangeOnline -Organization $appDetails.TenantId

    # Check if service principal already exists
    Write-Host "`n--- Checking for existing service principal ---`n"
    $existingSp = Get-ServicePrincipal -Identity $appDetails.ServicePrincipalId -ErrorAction SilentlyContinue

    if ($existingSp) {
        Write-Host "Service principal already exists, skipping creation..."
    } else {
        Write-Host "Creating new service principal..."
        $sp = New-ServicePrincipal -AppId $appDetails.AppId -ObjectId $appDetails.ServicePrincipalId
    }

    # Grant mailbox access
    Write-Host "`n--- Granting mailbox access ---`n"
    $perm = Add-MailboxPermission -Identity $emailAddress -AccessRights FullAccess -User $appDetails.ServicePrincipalId

    Write-Host "Successfully granted mailbox access to $emailAddress"
    Write-Host "Service Principal ID: $($appDetails.ServicePrincipalId)"
    Write-Host "Client ID (App ID):   $($appDetails.AppId)"

    Write-Host "`nDone!"
} catch {
    Write-Error "An error occurred: $_"
    Write-Error "Error occurred in line $($_.InvocationInfo.ScriptLineNumber)"
    Write-Error "Script terminated."
    exit 1
} 