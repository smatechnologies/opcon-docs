---
title: Deleting Old Schedules
description: "Use this procedure to delete Old Schedules in the Enterprise Manager."
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

# Deleting Old Schedules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Old Schedules in the Enterprise Manager.

:::note
By default, OpCon regards any schedule in the Daily tables more than 14 days old as an "Old Schedule." Adjust this threshold by changing the **Days to maintain in daily** setting in Enterprise Manager Preferences. Refer to [Setting Preferences from Enterprise Manager](Preferences-from-EM.md).
:::

To perform this procedure, complete the following steps:

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Select the **Delete Old Schedules** button on the **Daily Maintenance** toolbar
3. Select **Yes** to confirm the deletion or **No** to discard
4. Select **Close ☒** (to the right of the **Daily Maintenance** tab) to close the **Daily Maintenance** screen

## When Would You Use It?

- An existing Old Schedules in Enterprise Manager is no longer needed
- The Old Schedules has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Old Schedules definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews


## FAQs

**Q: Can a old schedules record be recovered after deletion?**

No. Deleting a old schedules record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many old schedules records can you delete at once?**

Select the specific old schedules record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
