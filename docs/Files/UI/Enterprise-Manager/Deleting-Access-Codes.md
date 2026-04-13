---
title: Deleting Access Codes
description: "Deleting an access code requires three procedures: revoking privileges, removing the code from the daily and master tables, then deleting the code."
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

# Deleting Access Codes

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Deleting an access code requires three procedures: revoking privileges, removing the code from the daily and master tables, then deleting the code.

## Revoke an Access Code

To revoke an Access Code, complete the following steps:

1. Select on **Access Code Privileges** under the **Security** topic. The **Access Code Privileges** screen displays
2. Select a **role** in the **Select Role** list. Use the **Find** (**Ctrl+F** magnifying glass) button to search for the role
3. Select all **access codes** in the **Granted** list box (shift/select to select multiple)
4. Select the **left arrow** to move all access codes to the **Revoked** list box
5. Repeat Steps 2–4 for all roles with privileges for the access code to be deleted
6. Select **Close ☒** to close the **Access Codes Privileges** screen

## Remove the Access Code from the Daily Tables

1. Select on **Daily Maintenance** under the **Administration** topic. The **Daily Maintenance** screen displays
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date**
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **schedule**
4. Select on the **job**
5. Select **Edit Daily**. The **Job Daily** screen displays
6. In the **Job Details** frame, select **<None\>** or a different **access code** in the **Access Code** list
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar
8. Repeat Steps 3–7 for all jobs assigned to the access code to be deleted
9. Select **Close ☒** to close the **Job Daily** screen

## Remove the Access Code from the Master Tables

1. Select **Edit Master**. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list

4. In the **Job details** frame, select **<None\>** or a different **access code** in the **Access Code** list
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
6. Repeat Steps 3–5 for all jobs assigned to the access code to be deleted
7. Select **Close ☒** to close the **Job Master** screen

## Delete Access Codes

1. Select on **Access Codes** under the **Security** topic. The **Access Codes** screen displays
2. Select an **access code** in the **Select Access Code** list
3. Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **Access Codes** toolbar

4. Select **Yes** to confirm the deletion or **No** to cancel
5. Select **Close ☒** to close the **Access Codes** screen


## FAQs

**Q: Can a access codes record be recovered after deletion?**

No. Deleting a access codes record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: What should you check before deleting access codes?**

Verify the access codes is not currently in use or assigned to other records before deleting it, as deletion may affect dependent objects.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
