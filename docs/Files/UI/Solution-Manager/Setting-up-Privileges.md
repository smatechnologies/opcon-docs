---
title: Setting up Privileges
description: "Assign which OpCon roles can see and run a Service Request button from the Self Service page."
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

# Setting up Privileges

The **Privileges** step in the Service Request editor controls which OpCon roles can see and run a Service Request button on the Self Service page. This is the final step when creating or editing a Service Request.

## Role assignment rules

Before assigning roles, note the following:

- Users in the **ocadm** role always have access to all Service Requests. The **ocadm** role is permanently in the **Granted** column and cannot be moved to **Revoked**.
- Non-ocadm users must grant at least one role access to the Service Request before saving.
- You can only view and grant roles that you belong to.
- If a role that does not belong to you is already assigned to a Service Request, it appears as **Unauthorized Role** in the **Granted** column.

## Assign roles to a Service Request

To assign role access to a Service Request, complete the following steps:

1. In the **Show for Role** selector, review the **Revoked** column (left) and **Granted** column (right).
2. Select one or more roles in the **Revoked** column that should have access to the Service Request.
3. Move the selected roles to the **Granted** column.
4. Select **Save**.

**Result:** The changes are saved to the database and Solution Manager returns to the main Self Service page. The Service Request button is now visible to users in the granted roles.

![Self Service Page with New Button](../../../Resources/Images/SM/Setting-Up-Privileges_1.png "Self Service Page with New Button")

:::note
For more information about roles and function privileges, see [Roles](../../../administration/roles.md).
:::
