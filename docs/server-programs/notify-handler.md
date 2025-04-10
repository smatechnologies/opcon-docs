---
sidebar_label: 'SMANotifyHandler'
---

# SMA Notify Handler

The SMA Notify Handler component is responsible for reading the NOTIFY table in the OpCon database and writing the message to the appropriate location. For more information, refer to [Using Notification Manager](../Files/UI/Enterprise-Manager/Using-Notification-Manager.md) in the **Enterprise Manager** online help.

![SMA Notify Handler](../Resources/Images/Server-Programs/smanotifyhandler.png "SMA Notify Handler")

The SMA Notify Handler can send the following basic notifications after reading the NOTIFY table:

- Windows Event Log
- Email (SMTP) (For more information on configuring notifications for SMTP, refer to [Configuring SMTP Notifications](../notifications/Notification-Configuration.md#Configur3) in the **Concepts** online help.)
- SNMP Trap (For more information on configuring notifications for SMTP, refer to [Configuring SNMP Notifications](../notifications/Notification-Configuration.md#Configur) in the **Concepts** online help.)
- Unisys Single Point of Operations (SPO) AL and CO Reports (For more information on configuring notifications for SMTP, refer to [Configuring SPO Notifications](../notifications/Notification-Configuration.md#Configur2) in the **Concepts** online help.)
- Text Messages (SMS)
- OpCon Events
- Command

## Configuration

SMA Notify Handler configuration determines basic application and logging behavior.

All of the SMA Notify Handler's configuration settings exist in the Solution Manager's SMTP Options. For more information, refer to [Managing SMTP Options](../Files/UI/Solution-Manager/Library/ServerOptions/Managing-SMTP-Settings.md) in the **Solution Manager** online help.

### (Optional) Outlook OAUTH2.0 Configuration

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

### Processing

When processing notifications:

- The SMA Notify Handler resolves tokens before sending any notifications. Tokens can resolve to any valid property in OpCon.
- For all Schedules, SMA Notify Handler looks up the Schedule Name for the notification from the Daily tables to ensure that all notifications containing a Schedule Name will contain the unique schedule name instance for the customer to follow up on if necessary.
- Any OpCon Events are passed in the SAM's MSGIN directory for processing. SMA Notify Handler automatically supplies the user name and password.
- For all notification types with message or text fields, SMA Notify Handler inserts a Notification ID as the first few characters of the message. This ID provides a way for users to look up the source of a notification.
- Email and Text Messaging SMTP server usage:
  - SMTPSERVER and SMTPSERVER2 will be used for email notifications and only used for SMS if SMTPSERVER3 and SMTPSERVER4 are not configured.
  - SMTPSERVER3 and SMTPSERVER4 will only be used for SMS notification if they are configured.
  - SMTPSERVER2 is used as the alternative to SMTPSERVER if it is configured and a notification fails on the primary.
  - SMTPSERVER4 is used as the alternative to SMTPSERVER3 if it is configured and a notification fails on the primary.
- Network Message Processing:
  - SMA Notify Handler uses Msg.exe to send network messages. If that message fails, SMA Notify Handler logs an error and cannot successfully send the message.
  - When using MSG.exe, SMA Notify Handler always uses asterisk (\*) for the user name and assumes the "Recipients" defined are either Host Names or IP Addresses.
  - For a successful message, the Authentication User (UNC Access) and Authentication Password (UNC Access) must be defined in the Server Options. The user must be an Administrator on the SAM application server and on every machine to which it will send messages. For more information, refer to [Authentication User (UNC Access)](../administration/server-options.md#Authentication_User_(UNC_Access)) and [Authentication Encrypted Password (UNC Access)](../administration/server-options.md#Authentication_Encrypted_Password_(UNC_Access)) in the **Concepts** online help.
