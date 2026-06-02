---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Roles
description: "Step-by-step procedure for editing a Role in the Enterprise Manager Security editor."
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

# Editing Roles

Roles group privileges together and are assigned to user accounts to control access to schedules, jobs, machines, and administrative functions. To manage roles, your user account must belong to a role with **All Administrative Functions**, **All Function Privileges**, or be in the `ocadm` role.

:::note
You cannot edit the `ocadm` role unless your account belongs to the `ocadm` role. All inherit-privilege options are locked and always enabled for the `ocadm` role.
:::

To edit a role in Enterprise Manager, complete the following steps:

1. In the Navigation panel, select **Roles** under the **Security** topic. The **Roles** editor opens.
2. In the **Select Role** list, select the role you want to edit.
3. Update any of the following fields as needed:

   | Field | Description |
   |---|---|
   | **Name** | Unique name for the role (maximum 20 characters). |
   | **Documentation** | Optional description of the role (maximum 4,000 characters). |

4. In the **Privileges** section, select or clear any of the following options as needed:

   | Option | Behavior |
   |---|---|
   | **Inherit Privileges for All Schedules** | The role automatically gains access to all current and future Schedules. |
   | **Inherit Privileges for All Machines** | The role automatically gains access to all current and future Machines. |
   | **Inherit Privileges for All Machine Groups** | The role automatically gains access to all current and future Machine Groups. |
   | **Inherit Privileges for All Scripts** | The role automatically gains access to all current and future Embedded Scripts. |

5. In the **User Assignment** section, update the users assigned to this role:
   - To assign a user: select a **User Login ID** in the **Revoked** list, then select the right arrow to move it to the **Granted** list.
   - To unassign a user: select a **User Login ID** in the **Granted** list, then select the left arrow to move it to the **Revoked** list.
6. Select **Save** on the **Roles** toolbar.
7. Select **Close** (the X to the right of the **Roles** tab) to close the editor.

**Result:** The updated role is saved. If the edited role is assigned to the currently logged-in user, privileges refresh immediately for that session.

## Related Topics

- [Adding Roles](./Adding-Roles.md) — Procedure for creating a new role.
- [Roles](../../../administration/roles.md) — Conceptual overview of role fields, inheritance behavior, and security considerations.
