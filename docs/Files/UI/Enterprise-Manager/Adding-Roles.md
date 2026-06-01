---
title: Adding Roles
description: "Step-by-step procedure for adding a Role in the Enterprise Manager Security editor."
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

# Adding Roles

Roles group privileges together and are assigned to user accounts to control access to schedules, jobs, machines, and administrative functions. To manage roles, your user account must belong to a role with **All Administrative Functions**, **All Function Privileges**, or be in the `ocadm` role.

To add a role in Enterprise Manager, complete the following steps:

1. In the Navigation panel, select **Roles** under the **Security** topic. The **Roles** editor opens.
2. Select **Add** on the **Roles** toolbar.
3. In the **Name** field, enter a unique name for the role (maximum 20 characters).
4. In the **Documentation** field, enter a description of the role (optional; maximum 4,000 characters).
5. In the **Privileges** section, select any of the following options as needed:

   | Option | Behavior |
   |---|---|
   | **Inherit Privileges for All Schedules** | The role automatically gains access to all current and future Schedules. When cleared, the role retains previously inherited Schedule privileges but does not gain access to new Schedules. For details, see [Roles](../../../administration/roles.md). |
   | **Inherit Privileges for All Machines** | The role automatically gains access to all current and future Machines. |
   | **Inherit Privileges for All Machine Groups** | The role automatically gains access to all current and future Machine Groups. |
   | **Inherit Privileges for All Scripts** | The role automatically gains access to all current and future Embedded Scripts. |

6. In the **User Assignment** section, assign users to the role using one of the following methods:
   - Select a **User Login ID** in the **Revoked** list, then select the right arrow to move it to the **Granted** list.
   - Hold Shift or Ctrl and select multiple **User Login IDs** in the **Revoked** list, then select the right arrow to assign them all.
7. Select **Save** on the **Roles** toolbar.

**Result:** The new role is saved and appears in the **Roles** selection list. Users assigned to the role inherit all privileges configured on it.

## Related Topics

- [Roles](../../../administration/roles.md) — Conceptual overview of role fields, inheritance behavior, and security considerations.
