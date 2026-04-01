---
title: Editing Schedules in Daily Schedule Tables
description: "Use this procedure to edit Schedules in Daily Schedule Tables in the Enterprise Manager."
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

# Editing Schedules in Daily Schedule Tables

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Schedules in Daily Schedule Tables in the Enterprise Manager.

:::note
Changes to the schedule start time and events take effect immediately. If the schedule has already run, changes take effect the next time the schedule runs.
:::

To perform this procedure, complete the following steps:

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date** for the schedule
3. Select on the **schedule** to edit
4. Select **Edit Daily** in the **Maintenance** frame at the bottom-right. The **Schedule Daily** screen displays
5. *(Optional)* Select inside the **Start Time** text box to modify the start time
6. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Daily** toolbar
7. Select on the **Events** tab
8. *(Optional)* Select the **schedule event** to modify, then select **Edit** in the **Events** frame. The **Event Definition Wizard** displays
9. Enter the *changes* and select **Finish** to save
10. Select **Close ☒** (to the right of the **Schedule Daily** tab) to close the **Schedule Daily** screen
11. Select **Close ☒** (to the right of the **Daily Maintenance** tab) to close the **Daily Maintenance** screen

## FAQs

**Q: Do edits to schedules in daily schedule tables take effect immediately?**

Changes saved to schedules in daily schedule tables in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
