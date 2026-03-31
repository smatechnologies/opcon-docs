---
title: Deleting Machine Groups
description: "Use this procedure to delete Machine Groups in the Enterprise Manager."
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

# Deleting Machine Groups

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Machine Groups in the Enterprise Manager.

To delete a machine group, complete the following procedures.

To delete a machine group:

Remove the Machine Group from the Daily Table

To remove the Machine Group from the Daily Table, complete the following steps:

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **date** for the schedule
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule**
4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame at the bottom-right side of the screen. The **Job Daily** screen displays
6. Select a **different machine group** in the **Group** list or select a **primary Machine**
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar
8. Repeat Steps 4 - 7 for all jobs assigned to the machine group
9. Select **Close ☒** (to the right of the **Job Daily** tab) to close the **Job Daily** screen

Remove the Machine Group from the Master Table

To remove the Machine Group from the Master Table, complete the following steps:

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **date** for the schedule
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule**
4. Select the **job**
5. Select the **Edit Master** button in the **Maintenance** frame at the bottom-right side of the screen. The **Job Master** screen displays
6. Select a **different machine group** in the **Group** list or select a **primary Machine**
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar
8. Repeat Steps 4 - 7 for all jobs assigned to the machine group
9. Select **Close ☒** (to the right of the **Job Daily** tab) to close the **Job Daily** screen

Delete the Machine Group

To delete the Machine Group, complete the following steps:

1. Select on **Machine Groups** under the **Administration** topic. The **Machine Groups** screen displays
2. Select a **Machine Group** in the **Select a Machine Group** list
3. Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **Machine Groups** toolbar
4. Select the **Yes** button to confirm the delete or **No** to cancel
5. Select **Close ☒** (to the right of the **Machine Groups** tab) to close the **Machine Groups** screen

## When Would You Use It?

- An existing Machine Groups in Enterprise Manager is no longer needed
- The Machine Groups has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Machine Groups definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews


## FAQs

**Q: Can a machine groups record be recovered after deletion?**

No. Deleting a machine groups record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: What should you check before deleting machine groups?**

Verify the machine groups is not currently in use or assigned to other records before deleting it, as deletion may affect dependent objects.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
