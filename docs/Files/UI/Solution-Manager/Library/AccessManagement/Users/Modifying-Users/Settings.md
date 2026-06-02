---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: User Settings
description: "Modify password expiration and external token settings for a user on the Settings tab in Solution Manager Access Management."
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

# User Settings

The **Settings** tab in **Library > Access Management > Users** lets you control password expiration and external token access for a user account.

The Settings tab includes the following options:

| Option | Description |
|---|---|
| **Enable password expiration** | When selected, the user's password is subject to the system password expiration policy. When cleared, the password never expires. |
| **Enable external tokens** | When selected, the user can authenticate using external tokens. When cleared, external token access is disabled for this user. |

![User Settings](../../../../../../../Resources/Images/SM/Library/AccessManagement/users-settings-tab.png 'User Settings')

## Modify user settings

To modify a user's settings, complete the following steps:

1. Go to **Library > Access Management > Users**.
2. Select the user you want to modify.
3. Select the **Settings** tab.
4. Select or clear the options you want to change.
5. Select **Save**.

**Result:** Solution Manager saves the updated settings for the user.

:::note
If **Server Options > Security > Ask User to Enter a Recovery Email Address Upon Login** is enabled and the user has no email address set and no SSO role, an email dialog appears when you select **Save**. Enter an email address to complete the save operation. Selecting **Cancel** in the dialog cancels the save.
:::

## Related Topics

- [Managing Users](../Managing-Users.md)
- [Users](../../../../../../../administration/user-accounts.md)
