---
title: Managing Users Overview
description: "User accounts control who can log in to OpCon and what they can do."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Managing Users Overview

User accounts control who can log in to OpCon and what they can do. Each account is assigned to one or more roles that determine privileges. Accounts also store individual settings such as language, email address, and Solution Manager preferences.

Use the pages in this section to perform the following tasks:

- Create a new user account for an employee or service account.
- Copy an existing user account as a template.
- Delete a user who has left the organization.
- Review or change a user's role memberships or personal settings.

## Required Privileges

To create, modify, or delete user accounts, your role must have the **All Administrative Functions** privilege or the **All Function Privileges** departmental privilege. Users without these privileges can update only their own account settings and cannot change role assignments, disable accounts, force password changes, or set passwords to never expire.

## User Account Properties

Each user account includes the following core properties:

| Property | Description |
|---|---|
| **Login Name** | The unique name the user enters to log in. Cannot contain the characters `[ ] : ; | = , + * ? " < >`. Must not match the password. |
| **Name** | The display name for the account. |
| **Password** | The OpCon login password. Must meet the active password policy. |
| **External Password** | A secondary credential used by certain integrations. |
| **Email** | Optional email address stored on the account. |
| **Language** | Interface language. Supported values: English, German, French, Portuguese, Italian, Spanish. Default: English. |
| **Roles** | One or more roles that grant privileges to the account. |
| **Is Disabled** | When enabled, prevents the user from logging in. Default: false. |
| **Force Password Change** | When enabled, requires the user to change their password at next login. Default: false. |
| **Password Never Expires** | When enabled, the account password does not expire regardless of the system password policy. Default: false. |
| **Is Self Service User** | When enabled, grants access to Self Service features (subject to license limits). Default: false. |

## In This Section

| Page | Description |
|---|---|
| [Managing Users](Managing-Users.md) | User list view — search and open user records. |
| [Adding Users](Adding-Users.md) | Create a new user account. |
| [Copying Users](Copying-Users.md) | Duplicate an existing user account. |
| [Deleting Users](Deleting-Users.md) | Remove a user account permanently. |
| [Modifying Users](Modifying-Users/Modifying-Users-Overview.md) | Update general settings, role assignments, and personal preferences for a user account. |
