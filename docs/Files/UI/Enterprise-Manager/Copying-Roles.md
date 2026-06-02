---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Roles
description: "Step-by-step procedure for copying a role in the Enterprise Manager Security editor."
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

# Copying Roles

Copying a role creates a new role that duplicates all privileges from the original. This is useful when you want to use an existing role as a starting point and then modify the copy.

:::note
The **Copy** button on the **Roles** toolbar is disabled when the editor has unsaved changes. Save or discard any changes before copying. The `ocadm` role cannot be copied.
:::

To copy a role in Enterprise Manager, complete the following steps:

1. In the Navigation panel, select **Roles** under the **Security** topic. The **Roles** editor opens.
2. In the **Select Role** list, select the role you want to copy.
3. Select **Copy** on the **Roles** toolbar. The **Copy Role** dialog opens with the original role name pre-filled in the **New Role Name** field.
4. In the **New Role Name** field, enter a unique name for the new role (maximum 20 characters).
5. Select **OK**.

**Result:** The new role is created with all privileges copied from the original role. The new role appears in the **Select Role** list.

## Related Topics

- [Adding Roles](./Adding-Roles.md) — Procedure for creating a new role from scratch.
