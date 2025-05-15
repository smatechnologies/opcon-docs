# Notification Configuration

## Configuring SNMP Notifications

For information on installing the SNMP service and configuring SNMP notifications, refer to [SMA OpCon SNMP Agent](../installation/components.md#SMA9) in the **OpCon Installation** online help.

## Configuring SPO Notifications

For the SMA Notify Handler to be able to send SPO alerts, the SPO Agent must be installed and configured properly on the SAM application server. Once the SPO Agent is configured properly and running, complete the procedures below to configure the SMA Notify Handler to process SPO messages. For additional information, refer to [SMA Notify Handler](../server-programs/notify-handler.md).

### Configure the SMA Notify Handler to Use SPO

1. Double-click on **Server Options** under the **Administration** topic.
2. Click on the **Notification Settings** tab.
3. Click on **SPO Notifications Enabled**.
4. Click **True** in the drop-down list (bottom of screen) then click **Update**.
5. Click **Save** ![Save icon](../Resources/Images/Concepts/EMsave.png "Save icon") on the **Server Options** toolbar.
6. Click **Close ☒** to the right of the **Server Options** tab to close the **Server Options** screen.

### Define the Default SPO Alarm ID

In order for ENS to send Schedule or Instant Events to SPO, define the SPO Default Alarm ID in the Server Options screen.

1. Double-click on **Server Options**.
2. Click on the **Notification Settings** tab.
3. Click on **SPO Default Alarm ID**.
4. enter the *desired Alarm ID* in the **text box** and click **Update**.
5. Click **Save** ![Save icon](../Resources/Images/Concepts/EMsave.png) on the **Server Options** toolbar.
6. Click **Close ☒** to the right of the **Server Options** tab to close the **Server Options** screen.

### Format AL Event Reports for Email Notification

To send an email notification with an AL Event Report, complete the following steps:

1. FTP the **opcon_email** script from the `<Target Directory\>\\OpConxps\\SAM\\ENS\\` directory on the SAM Server into the `/var/opt/spo/alarm_scripts` directory on the Unix SPO Server.
2. Configure an **Action List** with the name **JOB_EMAIL**.
3. Enter *opcon_email<space\>* on the **Command** screen when editing the **Action Template** for JOB_EMAIL.
4. Define the AL Event normally in the ENS Manager except the Alarmid and Alarmqual fields.
5. Set **Alarmid** to JOB_EMAIL.
6. Set **Alarmqual** to the destination email address.
7. Include up to four addresses separated by commas if multiple email addresses are desired. The line's syntax does not allow spaces.

## Configuring SMTP Notifications

The SMA Notify Handler uses SMTP for email and for text messages. Ensure an SMTP server is available and verify the server's name.

### Configure the SMA Notify Handler to Use SMTP

In EM Navigation under Administration:

1. Double-click on **Server Options**.
2. In the Server Options screen: Click on the **SMTP Server Settings** tab.
3. Click on the **SMTP Server Name (Primary Email)**.
4. Enter the *SMTP server name* in the text box (bottom of screen) and click **Update**.
5. If the SMTP server requires SSL Encryption:
   1. Click on **SMTP Authentication - Enable SSL (Primary Email)**.
   2. Click **True** in the drop-down list (bottom of screen) then click **Update**.
6. If the *Enable SSL for SMTP Authentication (Primary Email)* value is **True** or if the SMTP server requires authentication:
   1. Click on the **SMTP Authentication User (Primary Email)**.
   2. Enter the *email address* in the text box (bottom of screen) then click **Update**.
   3. Click on the **Password (Primary Email)**.
   4. Enter the *password*in the text box (bottom of screen) then click **Update**.
7. If the SMTP server does not require authentication:
   1. Click on the **SMTP Notification Address (Primary Email)**.
   2. Enter the *email address* in the text box (bottom of screen) then click **Update**.
8. If a Secondary SMTP server is available, repeat Steps 4 - 7 for the **(Secondary Email)** settings with the same names.
9. If alternate servers should be used for all text messaging, repeat Steps 4 - 7 for all **(Primary SMS)** and **(Secondary SMS)** settings with the same names.
10. Click **Save** ![Save icon](../Resources/Images/Concepts/EMsave.png "Save icon ") on the **Server Options** toolbar.
11. Click **Close ☒** to the right of the **Server Options** tab to close the **Server Options** screen.

### Configure the SMA Notify Handler to Use SMTP via OAuth

The NotifyHandler can be set up to use Microsoft's OAuth with an application registration and client secret in the event you are trying to directly authenticate via Microsoft EntraID. Two routes can achieve this, the first are a set of Powershell scripts written to help simplify the app creation and registration. Alternatively, we also have manual steps provided that walkthrough the provided scripts in a more manual fashion.

#### PowerShell Helper Scripts

The following PowerShell scripts are available to help configure SMA Notify Handler for Outlook's MSAL SMTP authentication:

- [Download Create-AppRegistration.ps1](../Resources/Scripts/NotifyHandler/Create-AppRegistration.ps1)
- [Download Grant-MailboxAccess.ps1](../Resources/Scripts/NotifyHandler/Grant-MailboxAccess.ps1)

:::note
Both scripts require PowerShell 5.1 or later. If you encounter module installation issues, you may need to use the `-AllowClobber` parameter.
:::

Customers may use these scripts to aid with configuring SMA Notify Handler for [Outlook's MSAL SMTP auth update](https://learn.microsoft.com/en-us/exchange/clients-and-mobile-in-exchange-online/deprecation-of-basic-authentication-exchange-online).

#### Create-AppRegistration.ps1

1. Start by downloading the helper scripts and ensuring they are not blocked in file properties. Put all of them into a single folder to make running them easier.
2. Start by running Powershell, and execute `cd C:\your\path\to\scripts` and then `.\Create-AppRegistration.ps1` and follow its prompts.
3. This may prompt NuGet to retrieve certain packages, which can be accepted. Once downloaded and proceeding, the script should open a window requiring sign in. Please sign in with a Entra System Administrator account to correctly create the registration.

:::info Internet Explorer

OAuth window may have issues opening in Internet Explorer.

On some systems, old versions of Internet Explorer may still be set as the system default to open web pages requested from Powershell. Some older versions of the browser do not have the necessary javascript version to run the Microsoft login window. We found that you can uninstall the browser with the command below to resolve this.
```powershell
dism /online /Remove-Capability /CapabilityName:Browser.InternetExplorer~~~~0.0.11.0
```
:::

4. Once this script completes it will create a file named app-registration-details.json. This file will contains the app registration secret in plain text, please securely store or delete this when you are done with all configuration steps.
5. Next, open Solution Manager and navigate to Library > Server Options > SMTP. Using the app-registration-details.json, enter in your Application ID, Client Secret, Tenant ID. Take note of your Notification Email Address, you will use this with the next script.
6. After completing the App registration and updating Server Options, you can move on to granting mailbox access and configuring NotifyHandler.

#### Grant-MailboxAccess.ps1

Anytime NotifyHandler needs to be pointed at a new mailbox to send emails from, that mailbox needs to grant access to our created app registration. Grant-MailboxAccess.ps1 automates this process. In order for this application to work, we need the folder set up in the previous step and the complete app-registration-details.json (with the secret still present, so if you removed it, it will need to be readded).

1. Open Powershell and run `cd C:\your\path\to\scripts` and then execute `.\Grant-MailboxAccess.ps1` to run the script.

:::info AllowClobber

On some systems, users may see error messages like
```powershell
The ExchangeOnlineManagement module is required but not installed. Would you like to install it now? (Y/N): y
Installing ExchangeOnlineManagement module...
PackageManagement\Install-Package : The following commands are already available on this
system:'Find-Package,Install-Package,Uninstall-Package'. This module 'PackageManagement' may override the existing
commands. If you still want to install this module 'PackageManagement', use -AllowClobber parameter.
At C:\Program Files\WindowsPowerShell\Modules\PowerShellGet\1.0.0.1\PSModule.psm1:1809 char:21
+ ...          $null = PackageManagement\Install-Package @PSBoundParameters
+                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : InvalidOperation: (Microsoft.Power....InstallPackage:InstallPackage) [Install-Package],
   Exception
    + FullyQualifiedErrorId : CommandAlreadyAvailable,Validate-ModuleCommandAlreadyAvailable,Microsoft.PowerShell.Pack
   ageManagement.Cmdlets.InstallPackage

Done installing ExchangeOnlineManagement module.
Import-Module : The specified module 'ExchangeOnlineManagement' was not loaded because no valid module file was found
in any module directory.
```
If this occurs, you may pass the `AllowClobber` argument to the `Create-AppRegistration.ps1` and/or `Grant-MailboxAccess.ps1` scripts like so
```powershell
.\Create-AppRegistration.ps1 -AllowClobber
```
This will pass the `AllowClobber` argument to the Install-Module command and overwrite the existing module.
:::

2. An authentication window should appear, and you need to login using the account you intend NotifyHandler to send emails from. This is the Notification Email Address in Server Options.
3. Once logged in, your mailbox should be ready for sending notifications. This script can be rerun multiple times for multiple different mailboxes if needed.

#### (Optional) Outlook OAUTH2.0 Configuration

> **Prerequisites**: 
> - Azure AD tenant with administrative access
> - Exchange Online environment
> - PowerShell 5.1 or later
> - Exchange Online PowerShell module

The values from this App Registration that you need for Notify Handler's configuration are:
  - Application (client) ID
  - Directory (tenant) ID
  - Client Secret Value

1. Go to [Azure Portal](https://portal.azure.com) 
2. Define an Application Registration. 
    1. Name the app registration "SMANotifyHandler" 
    2. Select *Single Tenant*
    3. leave *Redirect URI* blank.
3. Then go to the SMANotifyHandler's overview 
    1. Click on *Client Credentials* to add a new *Client Secret*. Save this value for later for your SMTP configuration. 
    2. Then on the sidebar, go to Manage > API permissions. *Add a Permission* 
        1. Select *APIs my organization uses* 
        2. Select *Office 365 Exchange Online* 
        3. Select *Application permissions* 
        4. Click on SMTP and enable *SMTP.SendAsApp* 
        5. *Grant admin consent*.
4. Setup the *Service Principal* for the App Registration. [Microsoft provides some instructions](https://learn.microsoft.com/en-us/exchange/client-developer/legacy-protocols/how-to-authenticate-an-imap-pop-smtp-application-by-using-oauth#register-service-principals-in-exchange).
5. Enter the Application ID, Tenant ID, and Client Secret into the SMTP configuration on [Solution Manager's Server Options page](../Files/UI/Solution-Manager/Library/ServerOptions/Managing-SMTP-Settings.md)

The commands in the article need to be ran in PowerShell:

```powershell
# Install and import the Exchange Online PowerShell module
Install-Module -Name ExchangeOnlineManagement
Import-module ExchangeOnlineManagement 

# Connect to Exchange Online
Connect-ExchangeOnline -Organization <tenantId>
Connect-AzureAd

# Get the service principal details
$AADServicePrincipalDetails = Get-AzureADServicePrincipal -SearchString SMANotifyHandler

# Create the service principal
New-ServicePrincipal -AppId $AADServicePrincipalDetails.AppId `
                    -ObjectId $AADServicePrincipalDetails.ObjectId `
                    -DisplayName "Serviceprincipal for SMANotifyHandler $($AADServicePrincipalDetails.Displayname)"

# Get the created service principal
$EXOServicePrincipal = Get-ServicePrincipal -Identity "Serviceprincipal for SMANotifyHandler $($AADServicePrincipalDetails.Displayname)"

# Add mailbox permissions for the Sender of the SMANotifyHandler notifcations
Add-MailboxPermission -Identity "john.smith@contoso.com" `
                      -User $EXOServicePrincipal.Identity `
                      -AccessRights FullAccess
```
