---
title: Deleting Departments
description: "Deleting a department requires three procedures: revoking privileges, removing the department from the daily and master tables, then deleting the department."
product_area: Enterprise Manager
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

# Deleting Departments

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Deleting a department requires three procedures: revoking privileges, removing the department from the daily and master tables, then deleting the department.

Revoke privileges

To revoke privileges, complete the following steps:

1. Select on **Departmental Function Privileges** under the **Security** topic. The **Departmental Function Privileges** screen displays
2. Select a **role** in the **Select Role** list. Use the **Find** ((Ctrl+F) magnifying glass) button to find the role
3. Select a **department** in the **Departments** list
4. Select all **functions** in the **Granted** list box (shift/select to select multiple)
5. Select the **left arrow** to move all functions to the **Revoked** list box
6. Repeat Steps 2–5 for all user accounts with privileges for the department to be deleted
7. Select **Close ☒** to close the **Departmental Function Privileges** screen

Remove the Department from the Daily Table

1. Select on **Daily Maintenance** under the **Administration** topic. The **Daily Maintenance** screen displays
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Select on the **job**
5. Select **Edit Daily**. The **Job Daily** screen displays
6. In the **Job Details** frame, select **<General\>** or a different **department name** in the **Department** list
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar
8. Repeat Steps 3–7 for all jobs assigned to the department to be deleted
9. Select **Close ☒** to close the **Job Daily** screen

Remove the Department from the Master Tables

10. Select **Edit Master**. The **Job Master** screen displays
11. Select a **schedule** in the **Schedule** list
12. Select a **job** in the **Job** list
13. In the **Job details** frame, select **<General\>** or a different **department name** in the **Department** list
14. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
15. Repeat Steps 12–14 for all jobs assigned to the department to be deleted
16. Select **Close ☒** to close the **Job Master** screen

Delete the Department

To delete the department, complete the following steps:

1. Select on **Departments** under the **Security** topic. The **Departments** screen displays
2. Select the **department** in the **Select a department** list
3. Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **Departments** toolbar
4. Select **Yes** to confirm the deletion or **No** to cancel
5. Select **Close ☒** to close the **Departments** screen
:::

## When Would You Use It?

- An existing Departments in Enterprise Manager is no longer needed
- The Departments has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Departments definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a departments record be recovered after deletion?**

No. Deleting a departments record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: What should you check before deleting departments?**

Verify the departments is not currently in use or assigned to other records before deleting it, as deletion may affect dependent objects.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
