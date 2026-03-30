---
title: Deleting Daily Schedules
description: "To delete Daily Schedules in the Enterprise Manager, complete the following steps: 1."
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

# Deleting Daily Schedules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

To delete Daily Schedules in the Enterprise Manager, complete the following steps:

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date** for the schedule
3. Select on the **schedule** to delete
4. Select **Delete** in the **Maintenance** frame at the bottom-right of the screen
5. Select **OK** to delete the schedule, or select **Cancel** to disregard the deletion
6. Select **Close ☒** to close the **Daily Maintenance** screen

## When Would You Use It?

- An existing Daily Schedules in Enterprise Manager is no longer needed
- The Daily Schedules has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Daily Schedules definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a daily schedules record be recovered after deletion?**

No. Deleting a daily schedules record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many daily schedules records can you delete at once?**

Select the specific daily schedules record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
