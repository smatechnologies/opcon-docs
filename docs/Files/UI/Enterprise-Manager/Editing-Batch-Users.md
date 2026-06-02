---
title: Editing Batch Users
description: "Use this procedure to edit existing Batch Users in Enterprise Manager."
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

# Editing Batch Users

Batch users are OS-level credentials that OpCon uses to run jobs on target platforms. You can edit any batch user record that is not reserved by the system.

:::note
Reserved batch users cannot be edited. The following batch users are reserved and read-only: **Use Service Account** (Windows and SQL), `*` (MCP and IBM i).
:::

## Edit a Batch User

To edit a batch user, complete the following steps:

1. In Enterprise Manager, select **Batch Users** under the **Security** topic.
2. In the **Select the target OS** list, select the operating system for the batch user you want to edit.
3. In the **Batch Users** list, select the batch user to edit.
4. In the **Batch User Details** section, update the fields as needed.

   - **Windows / SQL** — Update the **User** field (format: `DOMAIN\User`) and the **Password** and **Confirm Password** fields if the password is changing.
   - **UNIX** — Update the **Group/User** field using the format `group/user`.
   - **IBM i** — Update the **User Profile** field.
   - **MCP / OpenVMS** — Update the **Identifier** field.

5. Select **Save** on the **Batch Users** toolbar.

**Result:** The batch user record is saved. Jobs that reference this batch user in the Master will use the updated credentials the next time the job record is built. Changes to daily job records apply only to the current instance.

## Manage Batch User Privileges

To open the Batch User Privileges editor from the Batch Users screen, select **Manage Privileges** in the **Batch User Privileges** section. You must have the **All User Interface Functions** privilege to access the privileges editor.
