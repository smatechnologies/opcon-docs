---
title: Managing Batch Users
description: "The Batch Users page in Solution Manager creates, edits, and deletes the user accounts that OpCon uses to run jobs on IBM i, MCP, OpenVMS, SQL, UNIX, and Windows."
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
doc_type: procedural
  - Solution Manager
---

# Managing Batch Users

Most platforms require a valid user account associated with each job that OpCon submits. The **Batch Users** page in Solution Manager lets you create, edit, and delete those accounts and manage which roles can use them.

Batch user privileges — which roles are allowed to use which batch users — are configured separately. Select **Manage Privileges** on the page toolbar to open the **Batch User Privileges** dialog, or refer to [Batch User Privileges](../../../../administration/privileges.md#batch-user-privileges) for conceptual background.

:::note
To create, edit, or delete batch users, your role must have the **All Administrative Functions** or **All Function Privileges** function privilege.
:::

## Batch Users page

The **Batch Users** page lists all defined batch users with the following columns:

| Column | Description |
|---|---|
| **Batch User** | The login name used to run jobs on the target platform |
| **OS Type** | The platform the batch user is defined for |

Use the toolbar buttons to manage batch users:

| Button | Action |
|---|---|
| **New Batch User** | Opens the **Add Batch User** dialog |
| **Edit Batch User** | Opens the **Edit Batch User** dialog for the selected record |
| **Delete** | Deletes the selected batch user(s) after confirmation |
| **Manage Privileges** | Opens the **Batch User Privileges** dialog to grant or revoke role access |

:::note
OpCon includes system-reserved batch users that cannot be edited or deleted. The Windows batch user **Use Service Account** is one such reserved record.
:::

## Adding a batch user

To add a batch user, complete the following steps:

1. Go to **Library** > **Batch Users** in Solution Manager.
2. Select **New Batch User**. The **Add Batch User** dialog opens.
3. In the **Select the OS** list, select the target platform.
4. Enter the login name in the field for the selected platform:
   - **IBM i**: enter a value in **User Profile** (maximum 61 characters).
   - **MCP** or **OpenVMS**: enter a value in **Identifier**. OpenVMS identifiers are limited to 12 characters.
   - **UNIX**: enter the account in **Group/User** format (for example, `operators/jsmith`).
   - **Windows** or **SQL**: enter a value in **User** (maximum 61 characters).
5. If the platform is **Windows**, enter a password in **Password** and repeat it in **Confirm Password**. For **SQL**, a password is optional; if you enter a password, you must also confirm it.
6. Select **Save**.

**Result:** The new batch user appears in the list. The platform cannot be changed after the batch user is saved.

## Editing a batch user

To edit a batch user, complete the following steps:

1. Go to **Library** > **Batch Users** in Solution Manager.
2. Select the batch user to edit.
3. Select **Edit Batch User**. The **Edit Batch User** dialog opens.
4. Update the login name and, if applicable, the password fields.
5. Select **Save**.

**Result:** The updated batch user is saved. The platform field is read-only in edit mode.

:::note
System-reserved batch users, including the Windows batch user **Use Service Account**, cannot be edited.
:::

## Deleting a batch user

Before deleting a batch user, reassign any jobs that reference it. OpCon blocks deletion of batch users that are still referenced by master jobs or daily jobs.

To delete a batch user, complete the following steps:

1. Go to **Library** > **Batch Users** in Solution Manager.
2. Select the batch user to delete.
3. Select **Delete**. A confirmation dialog opens.
4. Select **Delete** to confirm or **Cancel** to exit without changes.

**Result:** The batch user is permanently removed from OpCon.

:::tip
To see which jobs reference a batch user before deleting it, select the batch user and use the **Cross References** option. The cross-reference report lists master jobs and daily jobs that use the account.
:::

## Managing batch user privileges

Batch user privileges control which roles can submit jobs under a given batch user. Privileges are managed per role and per platform.

To grant or revoke batch user privileges, complete the following steps:

1. Go to **Library** > **Batch Users** in Solution Manager.
2. Select **Manage Privileges**. The **Batch User Privileges** dialog opens.
3. In **Select Role**, select the role to update.
4. In **Select the OS**, select the target platform.
5. Move batch users between the **Available Batch Users** and **Assigned Batch Users** lists as needed.
6. Select **Save**.

**Result:** The selected role can now run jobs using only the batch users in the **Assigned Batch Users** list for the chosen platform.

:::note
The `Role_ocadm` role automatically has access to all batch users and cannot be restricted.
:::

## Related topics

- [Batch User Privileges](../../../../administration/privileges.md#batch-user-privileges)
- [Adding Batch Users (Enterprise Manager)](../../Enterprise-Manager/Adding-Batch-Users.md)
- [Editing Batch Users (Enterprise Manager)](../../Enterprise-Manager/Editing-Batch-Users.md)
- [Deleting Batch Users (Enterprise Manager)](../../Enterprise-Manager/Deleting-Batch-Users.md)
- [Granting Privileges to Batch Users (Enterprise Manager)](../../Enterprise-Manager/Granting-Privileges-to-Batch-Users.md)
- [Revoking Privileges from Batch Users (Enterprise Manager)](../../Enterprise-Manager/Revoking-Privileges-from-Batch-Users.md)
