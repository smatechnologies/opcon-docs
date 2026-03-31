---
title: Editing Schedules in Master Schedule Tables
description: "Use this procedure to edit Schedules in Master Schedule Tables in the Enterprise Manager."
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

# Editing Schedules in Master Schedule Tables

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Schedules in Master Schedule Tables in the Enterprise Manager.

:::note
Changes made in the Master tables will take effect the next time the schedule is built.
:::

To perform this procedure, complete the following steps:

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **date** for the schedule to edit
3. Select the **schedule** to edit
4. Select **Edit Master** in the **Maintenance** frame. The **Schedule Master** screen displays
5. *(Optional)* Select the **Schedule** tab and enter changes
6. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
7. *(Optional)* Select the **Frequency** tab. The **Frequency Definition Wizard** displays. Enter changes, then select **Finish**
8. *(Optional)* Select the **Events** tab. The **Event Definition Wizard** displays. Enter changes, then select **OK**
9. Select **Close ☒** to close the **Schedule Master** screen
10. Select **Close ☒** to close the **Daily Maintenance** screen

## FAQs

**Q: Do edits to schedules in master schedule tables take effect immediately?**

Changes saved to schedules in master schedule tables in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
