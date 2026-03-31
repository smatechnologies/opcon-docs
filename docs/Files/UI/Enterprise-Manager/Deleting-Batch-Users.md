---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Batch Users
description: "Deleting a batch user requires three procedures: revoking privileges, removing the user from the daily and master tables, then deleting the user."
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

# Deleting Batch Users

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Deleting a batch user requires three procedures: revoking privileges, removing the user from the daily and master tables, then deleting the user.

Revoke Privileges

To revoke privileges, complete the following steps:

1. Select on **Batch User Privileges** under the **Security** topic. The **Batch User Privileges** screen displays
2. Select a **role** in the **Select Role** list. Use the **Find** ((Ctrl+F) magnifying glass) button to find the role
3. Select an **operating system** in the **Target Operating System** list
4. Select on the **batch user(s)** in the **Granted** privileges list box
5. Select the **left arrow** to move the batch user(s) to the **Revoked** list box
6. Repeat Steps 2–5 for all user accounts with privileges to the batch user
7. Select **Close ☒** to close the **Batch User Privileges** screen

Remove the Batch User from the Daily Tables

9. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
10. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
11. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
12. Select on the **job**
13. Select **Edit Daily**. The **Job Daily** screen displays
14. In the **Job Details** frame, select a different **batch user** in the **User ID** (**Group ID/User ID** for UNIX, **User Code** for MCP) list
15. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar
16. Repeat Steps 9–15 for all jobs using the batch user to be deleted
17. Select **Close ☒** to close the **Job Daily** screen

Remove the Batch User from the Master Tables

18. Select **Edit Master**. The **Job Master** screen displays
19. Select a **schedule** in the **Schedule** list
20. Select a **job** in the **Job** list
21. Select a different **batch user** in the **User ID** (**Group ID/User ID** for UNIX, **User Code** for MCP) list
22. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
23. Repeat Steps 20–22 for all jobs using the batch user to be deleted
24. Select **Close** to close the **Job Master** screen
25. Select **Close ☒** to close the **Daily Maintenance** screen

Delete the Batch User

26. Select on **Batch Users** under the **Security** topic. The **Batch User** screen displays
27. Select an **operating system** in the **Target Operating System** list
28. Select on the **batch user** in the **Batch Users** list box
29. Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **Batch Users** toolbar
30. Select **Yes** to confirm the deletion or **No** to cancel
31. Select **Close ☒** to close the **Batch Users** screen
:::

## When Would You Use It?

- An existing Batch Users in Enterprise Manager is no longer needed
- The Batch Users has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Batch Users definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews


## FAQs

**Q: Can a batch users record be recovered after deletion?**

No. Deleting a batch users record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many batch users records can you delete at once?**

Select the specific batch users record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
