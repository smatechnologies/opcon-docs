---
title: Deleting Departments
description: "Deleting a department requires three sequential procedures: revoking departmental function privileges, reassigning jobs in the daily and master tables, then removing the department record."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-01
doc_type: procedural
---

# Deleting Departments

Before you can delete a department in Enterprise Manager, you must complete three prerequisite steps in order:

1. Revoke all departmental function privileges granted to roles for that department.
2. Reassign all jobs that reference the department in the daily tables.
3. Reassign all jobs that reference the department in the master tables.

Only after completing those steps can you delete the department record itself. The **&lt;General&gt;** department is a system default and cannot be deleted.

:::note
If a department still has cross-references — roles with granted privileges, or jobs assigned to it in either the daily or master tables — the **Remove** button displays an error and the deletion is blocked.
:::

## Revoke Departmental Function Privileges

To revoke departmental function privileges for all roles, complete the following steps:

1. In Enterprise Manager, select **Departmental Function Privileges** under the **Security** topic. The **Departmental Function Privileges** screen opens.
2. Select a role in the **Select Role** list. Use the **Find** (Ctrl+F) button to search for a role by name.
3. Select the department to be deleted in the **Departments** list.
4. In the **Granted** list, select all functions. Use Shift+select to select multiple items.
5. Select the left-arrow button to move all selected functions to the **Revoked** list.
6. Repeat steps 2–5 for every role that has privileges for this department.
7. Select **Close** to close the **Departmental Function Privileges** screen.

**Result:** No roles retain granted functions for the department.

## Reassign Jobs in the Daily Table

To remove the department assignment from daily jobs, complete the following steps:

1. Select **Daily Maintenance** under the **Administration** topic. The **Daily Maintenance** screen opens.
2. Select the expand arrow next to the date you want to update.
3. Select the expand arrow next to the schedule you want to update.
4. Select the job.
5. Select **Edit Daily**. The **Job Daily** screen opens.
6. In the **Job Details** frame, select **<General>** or a different department name in the **Department** list.
7. Select **Save** on the **Job Daily** toolbar.
8. Repeat steps 3–7 for every job assigned to the department being deleted.
9. Select **Close** to close the **Job Daily** screen.

**Result:** No daily jobs reference the department being deleted.

## Reassign Jobs in the Master Tables

To remove the department assignment from master jobs, complete the following steps:

1. Select **Edit Master**. The **Job Master** screen opens.
2. Select a schedule in the **Schedule** list.
3. Select a job in the **Job** list.
4. In the **Job Details** frame, select **<General>** or a different department name in the **Department** list.
5. Select **Save** on the **Job Master** toolbar.
6. Repeat steps 3–5 for every job assigned to the department being deleted.
7. Select **Close** to close the **Job Master** screen.

**Result:** No master jobs reference the department being deleted.

## Delete the Department

To delete the department record, complete the following steps:

1. Select **Departments** under the **Security** topic. The **Departments** screen opens.
2. Select the department in the **Select a department** list.
3. Select **Remove** on the **Departments** toolbar.
4. Select **Yes** to confirm the deletion, or **No** to cancel.
5. Select **Close** to close the **Departments** screen.

**Result:** The department record is permanently removed from OpCon and no longer appears in any department list.
