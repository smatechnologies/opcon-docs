---
title: Notification Configuration
description: "Notification configuration in OpCon sets up the delivery infrastructure that the SMA Notify Handler uses to send alerts — including SNMP trap settings, SPO agent configuration, and related prerequisites for each notification type."
product_area: Notifications
audience: Operations Staff, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - Operations Staff
  - Automation Engineer
  - Notifications
last_updated: 2026-03-18
doc_type: procedural
---

# Notification Configuration

**Theme:** Configure  
**Who Is It For?** Operations Staff, Automation Engineer

## What Is It?

Notification configuration in OpCon sets up the delivery infrastructure that the SMA Notify Handler uses to send alerts — including SNMP trap settings, SPO agent configuration, and related prerequisites for each notification type.

## Configuring SNMP Notifications

For information on installing the SNMP service and configuring SNMP notifications, refer to [SMA OpCon SNMP Agent](../installation/components.md#SMA9) in the **OpCon Installation** online help.

## Configuring SPO Notifications

For the SMA Notify Handler to be able to send SPO alerts, the SPO Agent must be installed and configured properly on the SAM application server. Once the SPO Agent is configured properly and running, complete the procedures below to configure the SMA Notify Handler to process SPO messages. For additional information, refer to [SMA Notify Handler](../server-programs/notify-handler.md).

### Configure the SMA Notify Handler to Use SPO

1. Select on **Server Options** under the **Administration** topic
2. Select on the **Notification Settings** tab
3. Select on **SPO Notifications Enabled**
4. Select **True** in the list (bottom of screen) then select **Update**
5. Select **Save** ![Save icon](../Resources/Images/Concepts/EMsave.png "Save icon") on the **Server Options** toolbar

6. Select **Close ☒** to the right of the **Server Options** tab to close the **Server Options** screen

**Result:** SPO notifications are enabled and the SMA Notify Handler will begin processing SPO alerts when the SPO Agent is running.

### Define the Default SPO Alarm ID

In order for ENS to send Schedule or Instant Events to SPO, define the SPO Default Alarm ID in the Server Options screen.

1. Select on **Server Options**
2. Select on the **Notification Settings** tab
3. Select on **SPO Default Alarm ID**
4. enter the *desired Alarm ID* in the **text box** and select **Update**
5. Select **Save** ![Save icon](../Resources/Images/Concepts/EMsave.png) on the **Server Options** toolbar

6. Select **Close ☒** to the right of the **Server Options** tab to close the **Server Options** screen

**Result:** The SPO Default Alarm ID is saved and ENS will use it when sending Schedule or Instant Events to SPO.

### Format AL Event Reports for Email Notification

To send an email notification with an AL Event Report, complete the following steps:

1. FTP the **opcon_email** script from the `<Target Directory\>\\OpConxps\\SAM\\ENS\\` directory on the SAM Server into the `/var/opt/spo/alarm_scripts` directory on the Unix SPO Server
2. Configure an **Action List** with the name **JOB_EMAIL**
3. Enter *opcon_email<space\>* on the **Command** screen when editing the **Action Template** for JOB_EMAIL
4. Define the AL Event normally in the ENS Manager except the Alarmid and Alarmqual fields
5. Set **Alarmid** to JOB_EMAIL
6. Set **Alarmqual** to the destination email address
7. Include up to four addresses separated by commas if multiple email addresses are desired. The line's syntax does not allow spaces

**Result:** The AL Event Report is configured to send email notifications via the SPO opcon_email script when triggered by a qualifying ENS event.

## Configuring SMTP Notifications

The SMA Notify Handler uses SMTP for email and for text messages. Ensure an SMTP server is available and verify the server's name.

### Configure the SMA Notify Handler to Use SMTP

In EM Navigation under Administration:

1. Select on **Server Options**
2. In the Server Options screen: Select on the **SMTP Server Settings** tab
3. Select on the **SMTP Server Name (Primary Email)**

4. Enter the *SMTP server name* in the text box (bottom of screen) and select **Update**
5. If the SMTP server requires SSL Encryption:
   1. Select on **SMTP Authentication - Enable SSL (Primary Email)**
   2. Select **True** in the list (bottom of screen) then select **Update**
6. If the *Enable SSL for SMTP Authentication (Primary Email)* value is **True** or if the SMTP server requires authentication:
   1. Select on the **SMTP Authentication User (Primary Email)**
   2. Enter the *email address* in the text box (bottom of screen) then select **Update**
   3. Select on the **Password (Primary Email)**
   4. Enter the *password*in the text box (bottom of screen) then select **Update**
To configure SMTP Notifications, complete the following steps:

7. If the SMTP server does not require authentication:
   1. Select on the **SMTP Notification Address (Primary Email)**
   2. Enter the *email address* in the text box (bottom of screen) then select **Update**
8. If a Secondary SMTP server is available, repeat Steps 4 - 7 for the **(Secondary Email)** settings with the same names
9. If alternate servers should be used for all text messaging, repeat Steps 4 - 7 for all **(Primary SMS)** and **(Secondary SMS)** settings with the same names

10. Select **Save** ![Save icon](../Resources/Images/Concepts/EMsave.png "Save icon ") on the **Server Options** toolbar
11. Select **Close ☒** to the right of the **Server Options** tab to close the **Server Options** screen

**Result:** The SMTP server settings are saved and the SMA Notify Handler will use the configured SMTP server to send email and text message notifications.

### Configure the SMA Notify Handler to Use SMTP via OAuth

The NotifyHandler can be set up to use Microsoft's OAuth with an application registration and customer secret in the event you are trying to directly authenticate via Microsoft EntraID. Two routes can achieve this, the first are a set of Powershell scripts written to help simplify the app creation and registration. Alternatively, manual steps are also provided that walkthrough the provided scripts in a more manual fashion.

:::warning
If using OAuth, the Customer secret created by the script defaults to 2 years. Secrets created manually default to 6 months. When this customer secret expires, you must create a new secret in Entra and update your notification settings accordingly.
:::

#### PowerShell Helper Scripts

The following PowerShell scripts are available to help configure SMA Notify Handler for Outlook's MSAL SMTP authentication:

- [Download Create-AppRegistration.ps1](../Resources/Scripts/NotifyHandler/Create-AppRegistration.zip)
- [Download Grant-MailboxAccess.ps1](../Resources/Scripts/NotifyHandler/Grant-MailboxAccess.zip)

:::note
Both scripts require PowerShell 5.1 or later. If you encounter module installation issues, you may need to use the `-AllowClobber` parameter.
:::

Customers may use these scripts to aid with configuring SMA Notify Handler for [Outlook's MSAL SMTP auth update](https://learn.microsoft.com/en-us/exchange/clients-and-mobile-in-exchange-online/deprecation-of-basic-authentication-exchange-online).

#### Create-AppRegistration.ps1

1. Start by downloading the helper scripts and ensuring they are not blocked in file properties. Put all of them into a single folder to make running them easier
2. Start by running Powershell, and run `cd C:\your\path\to\scripts` and then `.\Create-AppRegistration.ps1` and follow its prompts
3. This may prompt NuGet to retrieve certain packages, which can be accepted. Once downloaded and proceeding, the script should open a window requiring sign in. Please sign in with a Entra System Administrator account to correctly create the registration

:::info Internet Explorer

OAuth window may have issues opening in Internet Explorer.

On some systems, old versions of Internet Explorer may still be set as the system default to open web pages requested from Powershell. Some older versions of the browser do not have the necessary javascript version to run the Microsoft login window. You can uninstall the browser with the command below to resolve this.
```powershell
dism /online /Remove-Capability /CapabilityName:Browser.InternetExplorer~~~~0.0.11.0
```
:::

4. Once this script completes it will create a file named app-registration-details.json. This file will contains the app registration secret in plain text, please securely store or delete this when you are done with all configuration steps

5. Next, open Solution Manager and Go to Library > Server Options > SMTP. Using the app-registration-details.json, enter in your Application ID, Customer Secret, Tenant ID. Take note of your Notification Email Address, you will use this with the next script
6. After completing the App registration and updating Server Options, you can move on to granting mailbox access and configuring NotifyHandler

**Result:** The app registration is created in Azure AD and the Application ID, Tenant ID, and Customer Secret are entered in Server Options, enabling the SMA Notify Handler to authenticate with Exchange Online via OAuth.

#### Grant-MailboxAccess.ps1

Anytime NotifyHandler needs to be pointed at a new mailbox to send emails from, that mailbox needs to grant access to the app registration. Grant-MailboxAccess.ps1 automates this process. The folder set up in the previous step and the complete app-registration-details.json (with the secret still present, so if you removed it, it will need to be readded) are required for this script to run.

1. Open Powershell and run `cd C:\your\path\to\scripts` and then run `.\Grant-MailboxAccess.ps1` to run the script

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

2. An authentication window should appear, and you need to login using the account you intend NotifyHandler to send emails from. This is the Notification Email Address in Server Options
3. Once logged in, your mailbox should be ready for sending notifications. This script can be rerun multiple times for multiple different mailboxes if needed

**Result:** The mailbox is granted access to the app registration and the SMA Notify Handler is authorized to send notifications from the specified mailbox.

#### Manual App Registration Setup (Optional - This is only needed if you prefer not to use the above PowerShell Scripts to create the App Registration)

> **Prerequisites**: 
> - Azure AD tenant with administrative access
> - Exchange Online environment
> - PowerShell 5.1 or later
> - Exchange Online PowerShell module

The values from this App Registration that you need for Notify Handler's configuration are:
  - Application (customer) ID
  - Directory (tenant) ID
  - Customer Secret Value


1. Go to [Azure Portal](https://portal.azure.com) 
2. Define an Application Registration
    1. Name the app registration "SMANotifyHandler" 
    2. Select *Single Tenant*
    3. leave *Redirect URI* blank
3. Then go to the SMANotifyHandler's overview 
    1. Select on *Customer Credentials* to add a new *Customer Secret*. Save this value for later for your SMTP configuration
    2. Then on the sidebar, go to Manage > API permissions. *Add a Permission* 
        1. Select *APIs my organization uses* 
        2. Select *Office 365 Exchange Online* 
        3. Select *Application permissions* 
        4. Select on SMTP and enable *SMTP.SendAsApp* 
        5. *Grant admin consent*
4. Setup the *Service Principal* for the App Registration. [Microsoft provides some instructions](https://learn.microsoft.com/en-us/exchange/customer-developer/legacy-protocols/how-to-authenticate-an-imap-pop-smtp-application-by-using-oauth#register-service-principals-in-exchange).

5. Enter the Application ID, Tenant ID, and Customer Secret into the SMTP configuration on [Solution Manager's Server Options page](../Files/UI/Solution-Manager/Library/ServerOptions/Managing-SMTP-Settings.md)

**Result:** The Azure AD app registration is configured with the required Exchange Online permissions and the SMA Notify Handler credentials are saved in Server Options, ready for mailbox access to be granted via PowerShell.

The following commands need to be run in Powershell to grand the App access to send from a specific mailbox:

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

## Security Considerations

### Authentication

SMTP authentication is required when the SMTP server demands it. When SSL encryption is required, SMTP Authentication - Enable SSL must be set to True for the primary and/or secondary servers. Passwords for SMTP authentication must be entered in encrypted form using the password encryption tool in Enterprise Manager.

OAuth (via Microsoft's MSAL SMTP authentication) is supported as an alternative to basic SMTP authentication for Exchange Online environments. OAuth requires creating an Azure AD app registration with SMTP.SendAsApp application permissions, granting admin consent, and configuring the Application ID, Tenant ID, and Client Secret in Server Options. Client secrets created by the PowerShell script default to a 2-year lifespan; manually created secrets default to 6 months. When the secret expires, a new secret must be created in Entra and the notification settings must be updated.

### Sensitive Data

The app-registration-details.json file produced during OAuth setup contains the Client Secret in plain text. This file must be securely stored or deleted once all configuration steps are complete. The Application ID, Customer Secret, and Tenant ID entered in Solution Manager's SMTP Server Options are the live credentials used by SMA Notify Handler to authenticate to Exchange Online.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## Operations

### Common Tasks
- Enable SPO notifications: in Server Options > Notification Settings tab, set **SPO Notifications Enabled** to `True` and define the **SPO Default Alarm ID**; the SPO Agent must be installed and running on the SAM application server first.
- Configure SMTP: in Server Options > SMTP Server Settings tab, set the primary SMTP server name; optionally enable SSL and set authentication credentials for servers that require it. A secondary SMTP server and SMS settings can be configured similarly.
- For OAuth (Exchange Online): create an app registration using `Create-AppRegistration.ps1`, then enter the Application ID, Customer Secret, and Tenant ID in Solution Manager under Library > Server Options > SMTP; grant mailbox access using `Grant-MailboxAccess.ps1` for each mailbox the Notify Handler will send from.

### Alerts and Log Files
- OAuth customer secrets created by the PowerShell script expire after 2 years; manually created secrets expire after 6 months. When a secret expires, create a new secret in Entra and update the SMTP settings in Solution Manager.
- The `app-registration-details.json` file produced during OAuth setup contains the Client Secret in plain text; securely store or delete it after all configuration steps are complete.

## Exception Handling

**OAuth customer secret expiration** — When the customer secret created during OAuth app registration expires (defaulting to 2 years via script or 6 months when created manually), the SMA Notify Handler can no longer authenticate with Microsoft EntraID — Create a new secret in Entra and update the SMTP settings in Solution Manager's Server Options accordingly.

**OAuth login window fails to open in Internet Explorer** — On some systems, Internet Explorer is set as the default browser for PowerShell web requests, and older versions of Internet Explorer lack the JavaScript required to render the Microsoft login window — Uninstall Internet Explorer using the command `dism /online /Remove-Capability /CapabilityName:Browser.InternetExplorer~~~~0.0.11.0` so that a supported browser handles the OAuth window.

**ExchangeOnlineManagement module installation fails with "CommandAlreadyAvailable" error** — When running `Grant-MailboxAccess.ps1`, PowerShell may report that existing commands conflict with the module being installed, preventing the module from loading — Pass the `-AllowClobber` argument to the script (e.g., `.\Grant-MailboxAccess.ps1 -AllowClobber`) to allow the module to overwrite the conflicting commands.

**SPO notifications are not sent despite event configuration** — The SMA Notify Handler cannot send SPO alerts if the SPO Agent is not installed and running on the SAM application server before SPO notifications are enabled — Install and configure the SPO Agent on the SAM server, then enable SPO Notifications in Server Options under the Notification Settings tab and define the SPO Default Alarm ID.

## FAQs

**Q: What notification types require additional configuration beyond OpCon settings?**

SNMP notifications require the SNMP service to be installed and configured on the SAM application server before OpCon can send SNMP traps. SPO notifications require the SPO Agent to be installed and running before the SMA Notify Handler can send SPO alerts.

**Q: Where are SPO notification settings configured in OpCon?**

SPO notifications are enabled in the **Server Options** screen under the **Notification Settings** tab by setting **SPO Notifications Enabled** to **True**.

**Q: Does OAuth authentication require additional setup for email notifications in Exchange Online?**

Yes. OAuth requires creating an app registration in Azure Active Directory, granting the appropriate Microsoft Graph or Exchange Online permissions, and assigning mailbox permissions so the SMA Notify Handler can send notifications as the configured sender.
```

## Glossary

**SMA Notify Handler**: Processes notifications triggered by Machine, Schedule, and Job status changes. Can send emails, text messages, Windows Event Log entries, SNMP traps, and SPO notifications.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
