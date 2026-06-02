---
title: Deleting Old Schedules
description: "Use this procedure to delete Old Schedules in Enterprise Manager."
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

Use this procedure to delete old schedules from the Daily tables in Enterprise Manager.

:::note
By default, OpCon considers any schedule in the Daily tables more than 14 days old as an "old schedule." Adjust this threshold by changing the **Days to maintain in daily** setting in Enterprise Manager preferences. Refer to [Setting Preferences from Enterprise Manager](Preferences-from-EM.md).
:::

To delete old schedules, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays.
2. Select the **Delete Old Schedules** button on the **Daily Maintenance** toolbar.
3. Select **Yes** to confirm the deletion or **No** to discard.
4. Select **Close ☒** (to the right of the **Daily Maintenance** tab) to close the **Daily Maintenance** screen.

**Result:** Schedules older than the configured threshold are permanently removed from the Daily tables.

## FAQs

**Q: Can a deleted old schedule be recovered?**

No. Deleting old schedules permanently removes them from OpCon. Verify the records are no longer needed before deleting them.

**Q: How do I change how many days are kept in the Daily tables?**

Go to **Enterprise Manager > Preferences** and update the **Days to maintain in daily** setting. The default value is 14 days.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
