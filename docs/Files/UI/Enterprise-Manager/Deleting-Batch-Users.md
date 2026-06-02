---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Batch Users
description: How to safely delete a batch user in Enterprise Manager by revoking privileges, reassigning jobs in the daily and master tables, and then removing the record.
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

# Deleting Batch Users

Deleting a batch user is a three-phase operation: revoke privileges from all roles, reassign any jobs that reference the batch user in the daily and master tables, then delete the record. Completing all three phases prevents orphaned job references.

:::note
Default batch users (`use service account` for Windows and SQL, `*` for MCP and IBM i) cannot be deleted.
:::

## Phase 1: Revoke privileges

To revoke batch user privileges from all roles, complete the following steps:

1. Under the **Security** topic, select **Batch User Privileges**. The **Batch User Privileges** screen opens.
2. In the **Select Role** list, select a **role**. Use the **Find** (Ctrl+F) button to locate a role by name.
3. In the **Target Operating System** list, select an operating system.
4. In the **Granted** list, select the batch user or users to revoke.
5. Select the left arrow to move the selected batch users to the **Revoked** list.
6. Repeat steps 2–5 for every role that has privileges to this batch user.
7. Select **Close** to close the **Batch User Privileges** screen.

## Phase 2: Reassign jobs in the daily tables

To remove the batch user from daily job records, complete the following steps:

1. Under the **Operation** topic, select **Daily Maintenance**. The **Daily Maintenance** screen opens.
2. Select the expand arrow next to the target date.
3. Select the expand arrow next to the target schedule.
4. Select the job that references the batch user.
5. Select **Edit Daily**. The **Job Daily** screen opens.
6. In the **Job Details** section, select a replacement batch user in the **User ID** field (labeled **Group ID/User ID** for UNIX jobs or **User Code** for MCP jobs).
7. Select **Save** on the **Job Daily** toolbar.
8. Repeat steps 4–7 for every job in the daily tables that references the batch user.
9. Select **Close** to close the **Job Daily** screen.
10. Select **Close** to close the **Daily Maintenance** screen.

## Phase 3: Reassign jobs in the master tables

To remove the batch user from master job records, complete the following steps:

1. On the **Daily Maintenance** screen, select **Edit Master**. The **Job Master** screen opens.
2. In the **Schedule** list, select a schedule.
3. In the **Job** list, select a job that references the batch user.
4. Select a replacement batch user in the **User ID** field (labeled **Group ID/User ID** for UNIX jobs or **User Code** for MCP jobs).
5. Select **Save** on the **Job Master** toolbar.
6. Repeat steps 3–5 for every job in the master tables that references the batch user.
7. Select **Close** to close the **Job Master** screen.

## Phase 4: Delete the batch user

To delete the batch user record, complete the following steps:

1. Under the **Security** topic, select **Batch Users**. The **Batch Users** screen opens.
2. In the **Target Operating System** list, select the operating system for the batch user.
3. In the **Batch Users** list, select the batch user to delete.
4. Select **Remove** on the **Batch Users** toolbar.

   :::note
   If the batch user is still referenced by jobs in the master or daily tables, Enterprise Manager displays a cross-reference dialog listing the affected jobs. You can force the deletion from the dialog or cancel and reassign the jobs manually.
   :::

5. Select **Yes** to confirm the deletion.
6. Select **Close** to close the **Batch Users** screen.

**Result:** The batch user record is permanently removed from OpCon. The batch user no longer appears in any privilege or job assignment lists.
