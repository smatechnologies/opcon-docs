---
title: Notification Configuration
description: "Notification configuration in OpCon sets up the delivery infrastructure that the SMA Notify Handler uses to send alerts — including SNMP trap settings, SPO Agent configuration, and SMTP settings for email and text message notifications."
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

Before the SMA Notify Handler can send alerts, you must configure the delivery infrastructure for each notification type you plan to use. This page covers the prerequisites and configuration steps for SNMP, SPO, and SMTP (email and text message) notifications.

## Configuring SNMP Notifications

For information on installing the SNMP service and configuring SNMP notifications, refer to [SMA OpCon SNMP Agent](../installation/components.md#SMA9) in the **OpCon Installation** online help.

## Configuring SPO Notifications

The SMA Notify Handler requires the SPO Agent to be installed, configured, and running on the SAM application server before it can send SPO alerts. For additional information, refer to [SMA Notify Handler](../server-programs/notify-handler.md).

### Enable SPO Notifications

To enable the SMA Notify Handler to process SPO messages, complete the following steps:

1. In Enterprise Manager, select **Server Options** under the **Administration** topic.
2. Select the **Notification Settings** tab.
3. Select **SPO Notifications Enabled**.
4. Select **True** in the list at the bottom of the screen, then select **Update**.
5. Select **Save** on the **Server Options** toolbar.
6. Select **Close** to close the **Server Options** screen.

**Result:** SPO notifications are enabled and the SMA Notify Handler begins processing SPO alerts when the SPO Agent is running.

### Define the Default SPO Alarm ID

To allow the Event Notification System (ENS) to send Schedule or Instant Events to SPO, you must define the SPO Default Alarm ID. To do so, complete the following steps:

1. In Enterprise Manager, select **Server Options** under the **Administration** topic.
2. Select the **Notification Settings** tab.
3. Select **SPO Default Alarm ID**.
4. Enter the desired Alarm ID in the text field at the bottom of the screen, then select **Update**.
5. Select **Save** on the **Server Options** toolbar.
6. Select **Close** to close the **Server Options** screen.

**Result:** The SPO Default Alarm ID is saved and ENS uses it when sending Schedule or Instant Events to SPO.

### Format AL Event Reports for Email Notification

To send an email notification with an AL Event Report via the SPO `opcon_email` script, complete the following steps:

1. FTP the `opcon_email` script from the `<TargetDirectory>\OpConxps\SAM\ENS\` directory on the SAM Server into the `/var/opt/spo/alarm_scripts` directory on the Unix SPO Server.
2. Configure an **Action List** with the name `JOB_EMAIL`.
3. Enter `opcon_email ` (with a trailing space) in the **Command** field when editing the **Action Template** for `JOB_EMAIL`.
4. Define the AL Event normally in the ENS Manager, except for the **Alarmid** and **Alarmqual** fields.
5. Set **Alarmid** to `JOB_EMAIL`.
6. Set **Alarmqual** to the destination email address.
7. To send to multiple addresses, separate up to four addresses with commas. The syntax does not allow spaces.

**Result:** The AL Event Report is configured to send email notifications via the SPO `opcon_email` script when triggered by a qualifying ENS event.

## Configuring SMTP Notifications

The SMA Notify Handler uses SMTP for email and for text messages. Before configuring, verify that an SMTP server is available and that you have the server name.

### Configure SMTP Server Settings

To configure the SMA Notify Handler to use an SMTP server for email notifications, complete the following steps:

1. In Enterprise Manager, select **Server Options** under the **Administration** topic.
2. Select the **SMTP Server Settings** tab.
3. Select **SMTP Server Name (Primary Email)**.
4. Enter the SMTP server name in the text field at the bottom of the screen, then select **Update**.
5. If the SMTP server requires SSL encryption:
   1. Select **SMTP Authentication - Enable SSL (Primary Email)**.
   2. Select **True** in the list, then select **Update**.
6. If SSL is enabled or the SMTP server requires authentication:
   1. Select **SMTP Authentication User (Primary Email)**.
   2. Enter the email address in the text field, then select **Update**.
   3. Select **Password (Primary Email)**.
   4. Enter the password in the text field, then select **Update**.
7. If the SMTP server does not require authentication:
   1. Select **SMTP Notification Address (Primary Email)**.
   2. Enter the email address in the text field, then select **Update**.
8. If a secondary SMTP server is available, repeat steps 4–7 for the **(Secondary Email)** settings.
9. If alternate servers should handle text messaging, repeat steps 4–7 for the **(Primary SMS)** and **(Secondary SMS)** settings.
10. Select **Save** on the **Server Options** toolbar.
11. Select **Close** to close the **Server Options** screen.

**Result:** The SMTP server settings are saved and the SMA Notify Handler uses the configured SMTP server to send email and text message notifications.

### Configure SMTP via OAuth (Exchange Online)

The SMA Notify Handler supports Microsoft's OAuth (MSAL) as an alternative to basic SMTP authentication for Exchange Online environments. This requires creating an Azure AD app registration with the appropriate permissions and entering the credentials in Solution Manager.

:::warning
The client secret created by the PowerShell script defaults to a 2-year lifespan. Secrets created manually in Entra default to 6 months. When the secret expires, you must create a new secret in Entra and update the SMTP settings in Solution Manager.
:::

Two approaches are available: using the provided PowerShell helper scripts (recommended), or completing the steps manually.

#### PowerShell Helper Scripts

The following PowerShell scripts are available to simplify configuring the SMA Notify Handler for Outlook's MSAL SMTP authentication:

- [Download Create-AppRegistration.ps1](../Resources/Scripts/NotifyHandler/Create-AppRegistration.zip)
- [Download Grant-MailboxAccess.ps1](../Resources/Scripts/NotifyHandler/Grant-MailboxAccess.zip)

:::note
Both scripts require PowerShell 5.1 or later. If you encounter module installation issues, you may need to use the `-AllowClobber` parameter.
:::

These scripts assist with configuring the SMA Notify Handler for [Outlook's MSAL SMTP authentication](https://learn.microsoft.com/en-us/exchange/clients-and-mobile-in-exchange-online/deprecation-of-basic-authentication-exchange-online).

##### Step 1: Create the App Registration

To create the Azure AD app registration using the helper script, complete the following steps:

1. Download the helper scripts and ensure they are not blocked in file properties. Place both scripts in the same folder.
2. Open PowerShell and run:
   ```powershell
   cd C:\your\path\to\scripts
   .\Create-AppRegistration.ps1
   ```
3. Follow the prompts. The script may prompt you to allow NuGet to retrieve packages — accept to proceed. A sign-in window opens; sign in with an Entra System Administrator account.

   :::info Internet Explorer compatibility
   On some systems, an older version of Internet Explorer may be set as the default browser for PowerShell web requests. Older Internet Explorer versions lack the JavaScript required to render the Microsoft sign-in window. To resolve this, uninstall Internet Explorer:
   ```powershell
   dism /online /Remove-Capability /CapabilityName:Browser.InternetExplorer~~~~0.0.11.0
   ```
   :::

4. After the script completes, it creates a file named `app-registration-details.json` containing the app registration secret in plain text. Store this file securely or delete it after you complete all configuration steps.
5. In Solution Manager, go to **Library** > **Server Options** > **SMTP**. Using the values from `app-registration-details.json`, enter the **Application ID**, **Client Secret**, and **Tenant ID**.
6. Note the **Notification Email Address** — you will use it in the next step.

**Result:** The app registration is created in Azure AD, and the Application ID, Tenant ID, and Client Secret are entered in Server Options, enabling the SMA Notify Handler to authenticate with Exchange Online via OAuth.

##### Step 2: Grant Mailbox Access

Each mailbox the SMA Notify Handler sends email from must be granted access to the app registration. To grant access, complete the following steps:

1. Open PowerShell and run:
   ```powershell
   cd C:\your\path\to\scripts
   .\Grant-MailboxAccess.ps1
   ```

   :::info AllowClobber error
   If you see an error similar to the following during module installation:
   ```powershell
   PackageManagement\Install-Package : The following commands are already available on this system...
   ```
   Pass the `-AllowClobber` argument to the script:
   ```powershell
   .\Grant-MailboxAccess.ps1 -AllowClobber
   ```
   :::

2. Sign in using the account that the SMA Notify Handler will send email from (the **Notification Email Address** from Server Options) when the authentication window appears.
3. After signing in, the mailbox is ready. Re-run this script for each additional mailbox the SMA Notify Handler needs to send from.

**Result:** The mailbox is granted access to the app registration and the SMA Notify Handler is authorized to send notifications from the specified mailbox.

#### Manual App Registration Setup

Use this approach only if you prefer not to use the PowerShell scripts above.

**Prerequisites:**
- Azure AD tenant with administrative access
- Exchange Online environment
- PowerShell 5.1 or later
- Exchange Online PowerShell module

To manually create the app registration and configure the SMA Notify Handler, complete the following steps:

1. Go to the [Azure Portal](https://portal.azure.com).
2. Create an app registration:
   1. Name the app registration `SMANotifyHandler`.
   2. Select **Single Tenant**.
   3. Leave **Redirect URI** blank.
3. Go to the `SMANotifyHandler` overview:
   1. Select **Client Credentials** to add a new **Client Secret**. Save this value for your SMTP configuration.
   2. On the sidebar, go to **Manage** > **API permissions** and select **Add a Permission**.
      1. Select **APIs my organization uses**.
      2. Select **Office 365 Exchange Online**.
      3. Select **Application permissions**.
      4. Select **SMTP** and enable **SMTP.SendAsApp**.
      5. Select **Grant admin consent**.
4. Set up the Service Principal for the app registration. Refer to [Microsoft's instructions](https://learn.microsoft.com/en-us/exchange/customer-developer/legacy-protocols/how-to-authenticate-an-imap-pop-smtp-application-by-using-oauth#register-service-principals-in-exchange).
5. In Solution Manager, enter the **Application ID**, **Tenant ID**, and **Client Secret** on the [SMTP Server Options page](../Files/UI/Solution-Manager/Library/ServerOptions/Managing-SMTP-Settings.md).

**Result:** The Azure AD app registration is configured with the required Exchange Online permissions and the SMA Notify Handler credentials are saved in Server Options.

6. Run the following PowerShell commands to grant the app registration access to send from a specific mailbox:

```powershell
# Install and import the Exchange Online PowerShell module
Install-Module -Name ExchangeOnlineManagement
Import-Module ExchangeOnlineManagement

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

# Add mailbox permissions for the sender of the SMANotifyHandler notifications
Add-MailboxPermission -Identity "john.smith@contoso.com" `
                      -User $EXOServicePrincipal.Identity `
                      -AccessRights FullAccess
```

**Result:** The specified mailbox is granted full access for the SMA Notify Handler service principal, allowing the SMA Notify Handler to send notifications from that mailbox.

## Security Considerations

### Authentication

SMTP authentication is required when the SMTP server demands it. When SSL encryption is required, **SMTP Authentication - Enable SSL** must be set to `True` for the primary and/or secondary servers. Passwords for SMTP authentication must be entered in encrypted form using the password encryption tool in Enterprise Manager.

OAuth (via Microsoft's MSAL SMTP authentication) is supported as an alternative to basic SMTP authentication for Exchange Online environments. OAuth requires creating an Azure AD app registration with **SMTP.SendAsApp** application permissions, granting admin consent, and configuring the Application ID, Tenant ID, and Client Secret in Server Options. Client secrets created by the PowerShell script default to a 2-year lifespan; manually created secrets default to 6 months. When the secret expires, create a new secret in Entra and update the notification settings.

### Sensitive Data

The `app-registration-details.json` file produced during OAuth setup contains the Client Secret in plain text. Store this file securely or delete it once all configuration steps are complete.

## Troubleshooting

**OAuth client secret expiration** — When the client secret expires (2 years via script, or 6 months when created manually), the SMA Notify Handler can no longer authenticate with Microsoft EntraID. Create a new secret in Entra and update the SMTP settings in Solution Manager's Server Options.

**OAuth sign-in window fails to open in Internet Explorer** — On some systems, Internet Explorer is set as the default browser for PowerShell web requests, and older versions lack the JavaScript required to render the Microsoft sign-in window. Uninstall Internet Explorer using:
```powershell
dism /online /Remove-Capability /CapabilityName:Browser.InternetExplorer~~~~0.0.11.0
```

**ExchangeOnlineManagement module installation fails with "CommandAlreadyAvailable" error** — When running `Grant-MailboxAccess.ps1`, PowerShell may report that existing commands conflict with the module being installed. Pass the `-AllowClobber` argument to the script to allow the module to overwrite conflicting commands:
```powershell
.\Grant-MailboxAccess.ps1 -AllowClobber
```

**SPO notifications are not sent despite event configuration** — The SMA Notify Handler cannot send SPO alerts if the SPO Agent is not installed and running on the SAM application server. Install and configure the SPO Agent, then enable **SPO Notifications Enabled** in Server Options under the **Notification Settings** tab and define the **SPO Default Alarm ID**.
