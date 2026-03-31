---
title: Deleting Machines
description: "Deleting a machine requires two procedures."
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

# Deleting Machines

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Deleting a machine requires two procedures.

:::note
If the SAM is starting jobs while a machine is being deleted, the Enterprise Manager (EM) may lock up and fail to delete the machine. Continuous recommends deleting a machine when the SAM is processing few or no jobs.
:::

## When Would You Use It?

- An existing Machines in Enterprise Manager is no longer needed
- The Machines has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Machines definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Remove the Machine from the Daily Table

To remove the Machine from the Daily Table, complete the following steps:

1. Select on **Daily Maintenance** under the **Administration** topic. The **Daily Maintenance** screen displays
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **date** for the schedule
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule**
4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame at the bottom-right side of the screen. The **Job Daily** screen displays
6. Select a **different machine** for any affected **Primary** or **Alternate** machine
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Daily** toolbar
8. Repeat Steps 4–7 for all jobs assigned to the machine to be deleted
9. Select **Close ☒** (to the right of the **Job Daily** tab) to close the **Job Daily** screen

## Remove the Machine from the Master Table

1. Select on **Daily Maintenance** under the **Administration** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **date** for the schedule
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule**
4. Select the **job**
5. Select the **Edit Master** button in the **Maintenance** frame at the bottom-right side of the screen. The **Job Master** screen displays
6. Select a **different machine** for any affected **Primary** or **Alternate** machine
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
8. Repeat Steps 4–7 for all jobs assigned to the machine to be deleted
9. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen
10. Select **Close ☒** (to the right of the **Daily Maintenance** tab) to close the **Daily Maintenance** screen

## Delete the Machine

1. Select on **Machines** under the **Administration** topic. The **Machines** screen displays
2. Select the **machine** in the **Select Machine** list
3. Right-click over the graphic to enable the menu in the **Communication Status** frame
4. Select **Stop Communication** to stop communication with the agent
5. Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **Machines** toolbar
6. Select **Yes** to confirm the deletion
7. Select **Close ☒** (to the right of the **Machines** tab) to close the **Machines** screen


## FAQs

**Q: Can a machines record be recovered after deletion?**

No. Deleting a machines record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: What should you check before deleting machines?**

Verify the machines is not currently in use or assigned to other records before deleting it, as deletion may affect dependent objects.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
