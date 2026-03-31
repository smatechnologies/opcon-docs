---
title: Deleting Schedule Completion Events
description: "Use this procedure to delete Schedule Completion Events in the Enterprise Manager."
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

# Deleting Schedule Completion Events

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Schedule Completion Events in the Enterprise Manager.

To delete a schedule completion event from the daily tables, complete the following steps:

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date** for the schedule
3. Select the **schedule**
4. Select the **Edit Daily** button in the **Maintenance** frame. The **Schedule Daily** screen displays
5. Select the **Events** tab
6. Select the **event** in the **Events** frame
7. Select **Remove**
8. Select **Yes** to confirm or **No** to cancel
9. Select **Close ☒** to close the **Schedule Daily** screen
10. Select **Close ☒** to close the **Daily Maintenance** screen

## When Would You Use It?

- An existing Schedule Completion Events in Enterprise Manager is no longer needed
- The Schedule Completion Events has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Schedule Completion Events definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a schedule completion events record be recovered after deletion?**

No. Deleting a schedule completion events record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many schedule completion events records can you delete at once?**

Select the specific schedule completion events record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
