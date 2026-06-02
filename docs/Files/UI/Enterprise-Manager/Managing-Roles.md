---
title: Managing Roles
description: "The Roles editor in Enterprise Manager maintains role privileges, displaying a list of role names, Inherit Privilege options, and User Assignment controls."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Security
last_updated: 2026-03-18
doc_type: procedural
---

# Managing Roles

The **Roles** editor in Enterprise Manager maintains role privileges. It displays a list of role names, **Inherit Privilege** options, and **User Assignment** controls. For conceptual information about roles and how privileges are inherited, refer to [Roles](../../../administration/roles.md).

## Accessing the Roles Editor

To open the Roles editor, complete the following steps:

1. In Enterprise Manager, select the **Security** topic in the Navigation panel.
2. Select **Roles**.

**Result:** The **Roles** editor opens, displaying the role selection list and all associated controls.

## Roles Editor Sections

The Roles editor contains the following sections.

### Role Selection

The **Select Role** list at the top of the editor displays all defined roles. Select a role name to load its configuration into the editor.

### Privileges

The **Privileges** section contains the following inherit-privilege options. When an option is selected, the role automatically gains access to all existing and future items of that type without requiring individual grants.

| Option | Behavior |
|---|---|
| **Inherit Privileges for All Schedules** | Role automatically gains access to all current and future Schedules. |
| **Inherit Privileges for All Machines** | Role automatically gains access to all current and future Machines. |
| **Inherit Privileges for All Machine Groups** | Role automatically gains access to all current and future Machine Groups. |
| **Inherit Privileges for All Scripts** | Role automatically gains access to all current and future Embedded Scripts. |

:::note
For the `ocadm` role, all four inherit-privilege options are selected and cannot be cleared. Only users who belong to the `ocadm` role can rename the `ocadm` role or change its user assignments.
:::

### User Assignment

The **User Assignment** section displays two lists:

- **Granted** — Users currently assigned to the selected role.
- **Revoked** — Users not assigned to the selected role.

Use the arrow controls between the lists to move users from **Revoked** to **Granted** (assign) or from **Granted** to **Revoked** (unassign).

## Roles Toolbar

The **Roles** editor toolbar contains actions for managing roles.

![Roles toolbar](../../../Resources/Images/EM/EMsecurityusetoolbar.png "Roles toolbar")

## Role Management Tasks

Select a task below for step-by-step instructions.

- [Adding Roles](Adding-Roles.md)
- [Editing Roles](Editing-Roles.md)
- [Copying Roles](Copying-Roles.md)
- [Deleting Roles](Deleting-Roles.md)
- [Granting Privileges to Roles](Granting-Privileges-to-Roles.md)
- [Assigning Users to Roles](Assigning-Users-to-Roles.md)
- [Unassigning Users from Roles](Unassigning-Users-from-Roles.md)
