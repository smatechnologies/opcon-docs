---
title: Viewing Schedule and/or Job Information
description: "Use this procedure to view Schedule and/or Job Information in the Enterprise Manager."
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

# Viewing Schedule and/or Job Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view Schedule and/or Job Information in the Enterprise Manager.

:::note
If a completed schedule contains failed jobs, it displays in red with text like: `ScheduleName (Completed -- Contains Failed Jobs)`. If still in progress with failed jobs: `ScheduleName (In Progress -- Contains Failed Jobs)`.
:::

To view schedule or job information, complete the following steps:

1. Select on **Matrix** under the **Operation** topic. The **Matrix** screen displays
2. *(Optional)* Right-click a **schedule** in the schedule list and select **Schedule Information**. Select **OK** to close
3. *(Optional)* Select a **schedule** to view its jobs in the **Job** table. Select a **job**, or right-click and select **Job Information**. Select **OK** to close
4. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) arrow to expand a **schedule** containing a subschedule
5. Right-click the **subschedule** and select **SubSchedule Information**. Select **OK** to close
6. *(Optional)* Expand the schedule, select the **subschedule**, and view its jobs in the **Job** table
7. *(Optional)* Enter *filter characters* to filter schedules or jobs. Select **Clear** to reset the filter
8. *(Optional)* Select and drag a **job column heading** to reposition it. Select the heading once to sort ascending, again to sort descending
9. *(Optional)* Right-click a **schedule** and select **Schedule History**. Select **Close** to close
10. Select a **schedule**, right-click a **job**, and select **Job History**. Select **OK** to close

## When Would You Use It?

- You need to inspect or audit Schedule and/or Job Information records in Enterprise Manager
- An audit, compliance review, or operational check requires inspection of current Schedule and/or Job Information state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting Schedule and/or Job Information records in Enterprise Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Enterprise Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How many steps does the Viewing Schedule and/or Job Information procedure involve?**

The Viewing Schedule and/or Job Information procedure involves 10 steps. Complete all steps in order and save your changes.

## Glossary

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
