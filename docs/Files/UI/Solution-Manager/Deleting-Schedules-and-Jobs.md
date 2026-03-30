---
title: Deleting Schedules and Jobs
description: "Use this procedure to delete Schedules and Jobs in Solution Manager."
product_area: Solution Manager
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

# Deleting Schedules and Jobs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Schedules and Jobs in Solution Manager.

## When Would You Use It?

- An existing Schedules and Jobs in Solution Manager is no longer needed
- The Schedules and Jobs has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Schedules and Jobs definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Delete Schedule(s)

To delete Schedule(s), complete the following steps:

1. Select one or more dates or schedules from the grid and right-click
2. On the right-side panel, select the ![Delete Icon](../../../Resources/Images/SM/Deleting-Schedule-and-Jobs-Icon.png "Delete Icon") icon

   ![Delete Schedule(s) Right Panel](../../../Resources/Images/SM/Deleting-Schedule-and-Jobs1.png "Delete Schedule(s) Right Panel")

:::note
This icon is <ins>disabled</ins> if the schedule has a running job.
:::


3. Select **Yes** to confirm deletion

   ![Delete Schedule(s) Confirmation Dialog](../../../Resources/Images/SM/Deleting-Schedule-and-Jobs2.png "Delete Schedule(s) Confirmation Dialog")

## Delete Job(s)

1. Select one or more jobs from the grid and right-click

:::note
The delete icon is <ins>disabled</ins> if the job is in the Running state.
:::

To delete Job(s), complete the following steps:

2. Repeat steps 2 and 3 above

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Performing Schedule Checks](Performing-Schedule-Checks.md)
- [Adding Jobs to Daily Schedules](Adding-Jobs-to-Daily-Schedules.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a schedules and jobs record be recovered after deletion?**

No. Deleting a schedules and jobs record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many schedules and jobs records can you delete at once?**

Select the specific schedules and jobs record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
