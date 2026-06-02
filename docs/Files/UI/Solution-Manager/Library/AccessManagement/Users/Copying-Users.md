---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Users
description: "Copy an existing user account in Solution Manager to reuse its configuration as a starting point for a new user."
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

# Copying Users

Copying a user creates a new user account that inherits the settings of the original. You can then modify the copy as needed. The copied account is saved with `( Copy )` appended to the original name.

## Required Privileges

To copy a user, you must have at least one of the following privileges:

- System Administrator
- All Function Privileges
- All Administrative Functions

## Copy a User

:::note
Email is required if **Server Options** > **Security** > **Ask user to enter a recovery email address upon login** is enabled.
:::

To copy a user, complete the following steps:

1. Go to **Library** > **Access Management**.
2. Select the user to copy from the users list.
3. Select the context menu button ![Context Menu Button](../../../../../../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button').
4. Select **Create a new user**.
5. Enter the user information in the **User Details** dialog.
6. Select **Save**.

The new user account appears in the users list with `( Copy )` appended to the original name. You can rename and modify the account as needed.

![Copy User](../../../../../../Resources/Images/SM/Library/AccessManagement/copy-user.png 'Copy User')

## Related Topics

- [Adding Users](Adding-Users.md)
- [Modifying Users](Modifying-Users/Modifying-Users-Overview.md)
- [Deleting Users](Deleting-Users.md)
