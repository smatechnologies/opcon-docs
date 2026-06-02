---
title: Menus
description: "The menu bar at the top of the Enterprise Manager screen is always available when working with editors or views."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Menus

The menu bar at the top of Enterprise Manager is always available when working with [editors](Navigation-Editors.md) or [views](Navigation-Views.md). It contains two menus: **Enterprise Manager** and **Help**.

## Enterprise Manager menu

The **Enterprise Manager** menu provides the following options:

| Option | Keyboard shortcut | Description |
|---|---|---|
| **Refresh** | F5 | Refreshes all active windows. |
| **Pause Refresh** | Ctrl+P | Pauses the automatic refresh process. |
| **Logout** | Ctrl+L | Disconnects you from the database without closing Enterprise Manager. |
| **Password Update** | — | Opens a submenu with password and encryption options. |
| **Preferences** | Ctrl+Alt+P | Opens preferences for various views. |
| **Exit** | Ctrl+Q | Closes Enterprise Manager. |

The **Logout**, **Refresh**, and **Pause Refresh** toolbar buttons also appear beneath the menu bar.

### Password Update submenu

The **Password Update** submenu contains the following options:

| Option | Description |
|---|---|
| **Change User Password** | Changes your OpCon user account password. |
| **Change Event Password** | Changes the event password used for OpCon external events. |
| **Password Encryption Tool** | Encrypts a plain-text password for use in OpCon configuration values. |

### Encrypting a password

Use the **Password Encryption Tool** when an OpCon configuration value requires an encrypted password.

To encrypt a password, complete the following steps:

1. Go to **Enterprise Manager > Password Update > Password Encryption Tool**. The **Password Encryption Tool** dialog opens.
2. (Optional) Select the **Visible** option to show the password characters as plain text.
3. Enter the password in the **Password** field.
4. Select **Encrypt**. The encrypted value appears in the **Encrypted** field.
5. Select **Copy to Clipboard** to copy the encrypted value.
6. Select **Close**.
7. Paste the encrypted value into the desired configuration field.

**Result:** The encrypted password is ready to use in the OpCon configuration value.

### Changing your user password

To change your user password, complete the following steps:

1. Go to **Enterprise Manager > Password Update > Change User Password**. The **Change User Password** dialog opens.
2. Enter your current password and the new password as prompted.
3. Select **OK** to save the change.

**Result:** Your OpCon user account password is updated.

### Changing the event password

To change the event password, complete the following steps:

1. Go to **Enterprise Manager > Password Update > Change Event Password**. The **Change Event Password** dialog opens.
2. Enter the new event password as prompted.
3. Select **OK** to save the change.

**Result:** The event password used for external events is updated.

## Help menu

The **Help** menu provides the following options:

| Option | Keyboard shortcut | Description |
|---|---|---|
| **Enterprise Manager** | F1 | Opens contextual help for the current location. From the main screen, opens the first topic of Enterprise Manager online help. |
| **Documentation** | — | Opens a submenu with links to all OpCon online product help. |
| **Show Key Assist** | — | Lists available functions and their keyboard shortcut keys. |
| **Check for Updates** | — | Checks for a new version of Enterprise Manager. Also runs at startup if configured. For more information, see [Setting Preferences](Setting-Preferences.md). |
| **Legend** | — | Opens the legend window explaining colors and icons used for jobs, schedules, and dependencies in the views. |
| **About OpCon Enterprise Manager** | — | Displays Continuous contact information, product version details, and the option to report a problem. Also shows OpCon license information for users with the appropriate privilege. See [Reporting Problems](Reporting-Problems.md). |
