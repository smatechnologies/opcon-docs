---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Users
description: "Manage OpCon user accounts in Solution Manager. Add, copy, delete, and modify users from Library > Access Management > Users."
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

# Managing Users

The **Users** page in Solution Manager lets you view, add, copy, delete, and modify OpCon user accounts. Go to **Library > Access Management > Users** to open it.

The page displays a list of all users in the system. The **SSO** indicator appears next to users whose role is configured for Single Sign-On.

![Users](../../../../../../Resources/Images/SM/Library/AccessManagement/users-page.png 'Users')

To sort the list, select the sort button ![Sort Icon](../../../../../../Resources/Images/SM/Library/AccessManagement/sort-icon.png 'Sort Icon').

## Required Privileges

To manage users, you must have at least one of the following privileges:

- System Administrator
- All Function Privileges
- All Administrative Functions

## Viewing and Modifying a User

Select a user's name to open their details. The following tabs are available:

| Tab | Description |
|---|---|
| [General](Modifying-Users/General.md) | Edit the user's profile information and reset their password. |
| [Roles](Modifying-Users/Roles.md) | Assign or remove roles for the user. |
| [Settings](Modifying-Users/Settings.md) | Configure password expiration and external token settings for the user. |

## Adding, Copying, and Deleting Users

To add, copy, or delete a user, select the context menu button ![Context Menu Button](../../../../../../Resources/Images/SM/Library/AccessManagement/context-menu.png 'Context Menu Button') and choose the appropriate option:

| Action | Details |
|---|---|
| [Add a user](Adding-Users.md) | Creates a new user account. |
| [Copy a user](Copying-Users.md) | Duplicates an existing user as a starting point for a new account. |
| [Delete a user](Deleting-Users.md) | Permanently removes a user account. The `ocadm` user cannot be deleted. |

## Related Topics

- [User Accounts](../../../../../../administration/user-accounts.md)
