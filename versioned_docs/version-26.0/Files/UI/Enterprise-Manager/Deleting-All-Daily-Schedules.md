---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting All Daily Schedules for Particular Days
description: "To delete All Daily Schedules for Particular Days in the Enterprise Manager, complete the following steps: 1."
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

#  Deleting All Daily Schedules for Particular Days

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

To delete All Daily Schedules for Particular Days in the Enterprise Manager, complete the following steps:

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Select on the **date** to delete
3. Select **Delete** in the **Maintenance** frame at the bottom-right of the screen
4. Select **OK** to delete all schedules from the Daily tables on this date, or select **Cancel** to disregard the deletion
5. Select **Close ☒** to close the **Daily Maintenance** screen

## When Would You Use It?

- An existing All Daily Schedules for Particular Days in Enterprise Manager is no longer needed
- The All Daily Schedules for Particular Days has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused All Daily Schedules for Particular Days definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a all daily schedules for particular days record be recovered after deletion?**

No. Deleting a all daily schedules for particular days record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many all daily schedules for particular days records can you delete at once?**

Select the specific all daily schedules for particular days record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
