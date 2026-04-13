---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Schedules
description: "Use this procedure to delete Schedules in the Enterprise Manager."
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

# Deleting Schedules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Schedules in the Enterprise Manager.

To delete a schedule:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select the **schedule** in the **Schedule Selection** list
3. Select ![](../../../Resources/Images/EM/EMdelete.png) **Remove** on the **Schedule Master** toolbar
4. Select **Yes** to confirm or **No** to cancel
5. Select **Close ☒** to close the **Schedule Master** screen

## Deleting Schedules from Daily Tables

To learn how to perform this procedure, refer to [Deleting Daily Schedules](Deleting-Daily-Schedules.md).

## Deleting Schedules from Master Tables

Before deleting a schedule from the Master tables, delete all job dependencies first, then delete all jobs. Complete the procedures below in order.

### Delete All Job Dependencies from the Schedule

To delete Schedules from Master Tables, complete the following steps:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select a **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select on the **Dependencies** tab in the **Job Properties** frame
5. Select the **dependency** in the **Job Dependency** frame, then select **Remove**

6. Select **Yes** to confirm or **No** to cancel. Repeat Steps 5–6 for all other job dependencies
7. Select **Close ☒** to close the **Job Master** screen

### Delete All Jobs from the Schedule

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select a **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list

4. Select ![](../../../Resources/Images/EM/EMdelete.png) **Remove** on the **Job Master** toolbar
5. Select **Yes** to confirm or **No** to cancel. Repeat Steps 2–5 for all jobs assigned to the schedule
6. Select **Close ☒** to close the **Job Master** screen

### Delete the Schedule

1. Select on **Schedule Master** under the **Administration** topic
2. Select the **schedule** in the **Schedule Selection** list
3. Select ![](../../../Resources/Images/EM/EMdelete.png) **Remove** on the **Schedule Master** toolbar

4. Select **Yes** to confirm or **No** to cancel
5. Select **Close ☒** to close the **Schedule Master** screen


## FAQs

**Q: Can a schedules record be recovered after deletion?**

No. Deleting a schedules record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: What should you check before deleting schedules?**

Verify the schedules is not currently in use or assigned to other records before deleting it, as deletion may affect dependent objects.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
