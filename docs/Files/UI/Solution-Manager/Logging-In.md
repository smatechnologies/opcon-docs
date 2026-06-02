---
title: Logging In/Out
description: "Log in to and out of Solution Manager using OpCon credentials, Windows Authentication, or Single Sign-On."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Logging In/Out

## Logging In

Log in to Solution Manager with an OpCon username and password.

:::note
The **Password** field accepts a maximum of 12 characters.
:::

:::note
If data migration is required, your login may be rejected. A member of the `ocadm` role must perform [data migration](Migrating-Data.md) before you can access the application.
:::

![Solution Manager Login Screen](../../../Resources/Images/SM/Login2.png "Solution Manager Login Screen")

:::note
Some users may see a security message after each manual or automatic login attempt. You must select **Accept** or **Decline**. If you select **Accept**, you proceed normally. If you select **Decline**, Solution Manager returns you to the login screen or displays the security message again.

The security message is configured under the General tab of Server Options. For more information, refer to the [Login Security Message](../../../administration/server-options.md#general-settings) parameter.
:::

### Automatic Login

Solution Manager supports automatic login when Windows Authentication is enabled. The user account must include the Windows Domain and Username.

Before configuring automatic login, configure users in OpCon for automatic login in Solution Manager or Enterprise Manager.

**Google Chrome**

Google Chrome uses the security settings in **Internet Options**. The **Prompt for user name and password** option must not be selected.

To configure automatic login in Google Chrome, complete the following steps:

1. Right-click **Start** and select **Control Panel** from the **Windows** menu.
2. Go to **Internet Options**.
3. Select the **Security** tab, then select the **Local intranet** zone.
4. Select **Custom level**. The **Security Settings** dialog displays.
5. Go to **User Authentication > Logon** and verify that **Prompt for user name and password** is not selected.

**Firefox**

Firefox requires additional configuration. Continuous recommends keeping only one Firefox window open during this configuration.

To configure automatic login in Firefox, complete the following steps:

1. Enter `about:config` in the address bar and press **Enter**.
2. Select **Show All**.
3. Enter `network.automatic-ntlm-auth.trusted-uris` in the **Search preference name** field.
4. Select **Edit** and enter the Solution Manager URL (for example, `https://<servername>:<portnumber>`) in the text field.
5. Select **Save**.
6. Enter `network.negotiate-auth.delegation-uris` in the **Search preference name** field.
7. Select **Edit** and enter the Solution Manager URL.
8. Select **Save**.
9. Enter `network.negotiate-auth.trusted-uris` in the **Search preference name** field.
10. Select **Edit** and enter the Solution Manager URL.
11. Select **Save**.

:::note
For more information, refer to <https://developer.mozilla.org/en-US/docs/Mozilla/Integrated_authentication>.
:::

If automatic login fails, the login screen displays so you can provide your OpCon credentials.

### Windows Authentication Login

The **Login with Windows** button lets you log in using Windows Authentication without entering OpCon credentials. When you select it, Solution Manager sends your Windows credentials to the server for authentication.

![Solution Manager Login with Windows Button](../../../Resources/Images/SM/Login-with-Windows.png "Solution Manager Login with Windows Button")

For the **Login with Windows** button to appear on the login screen, both of the following settings must be configured:

- **Enable Windows Authentication** — enabled via the API.
- **Windows Pass-Through Authentication** — enabled in [Application Settings](Configuring-Application-Settings.md) in Solution Manager.

### Single Sign-On Login

The **Single Sign On (SSO)** button lets you log in using an identity provider (IdP) without entering OpCon credentials. Solution Manager authenticates your IdP credentials to grant access.

![Solution Manager Login with SSO Button](../../../Resources/Images/SM/Login-with-SSO.png "Solution Manager Login with SSO Button")

For the **Single Sign On (SSO)** button to appear on the login screen, configure **Enable SSO Authentication** and other required settings on the [Server Options](../Solution-Manager/Library/ServerOptions/Managing-SSO-Configurations.md) page in Solution Manager.

#### Okta

When configuring SSO with Okta, users must have purchased both the **Single Sign-On** and **API Access Management** features from Okta.

### Session Expiration

If your browser session expires, a pop-up displays so you can log back in without returning to the login screen. The pop-up prompts for your credentials or displays the **Login with Windows** button, depending on how you originally logged in.

![Session Expiration: Login Pop-up Window](../../../Resources/Images/SM/Login-Pop-up.png "Session Expiration: Login Pop-up Window")

## Logging Out

To log out of Solution Manager, complete the following steps:

1. Select the user menu in the navigation menu.
2. Select **Logout**.

**Result:** Solution Manager logs you out and returns you to the login screen. If you have unsaved changes, a confirmation dialog prompts you to confirm before logging out.
