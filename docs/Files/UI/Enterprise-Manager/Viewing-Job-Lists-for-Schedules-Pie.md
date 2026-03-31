---
title: Viewing Job Lists for Schedules
description: "Use this procedure to view Job Lists for Schedules in the Enterprise Manager."
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

# Viewing Job Lists for Schedules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view Job Lists for Schedules in the Enterprise Manager.

To view the job list, complete the following steps:

1. Select on **List** under the **Operation** topic. The **Daily list** screen displays
2. Select on **Pie Chart** under the **Operation** topic. The **Pie Chart** screen displays
3. Select and drag the **Pie Chart** tab to the right side of the screen until the mouse changes to a right-pointing **arrow symbol**, then release
4. Activate the **Listen for selection changes in other views** button on the **Pie Chart** toolbar
5. Activate the **Send the current selection change to other views** button on the **Daily list** toolbar
6. Select on a **date** or a **date** then a **schedule** to view
7. Right-click on the **pie** or **pie slice**
8. *(Optional)* Select **Refresh Chart** to update the chart information
9. Select **Jobs list**. The **Jobs \<job status name\>** dialog displays
10. View the **jobs** for the specific job status in the schedule
11. Select **OK** to close the dialog
12. To view a subschedule's job list, select on a **date** (and optionally a **schedule** containing the subschedule), then select on the **subschedule**
13. Right-click on the **pie slice** for the subschedule and select **Jobs list**. The **Jobs \<job status name\>** dialog displays
14. View the **list of jobs** in the subschedule
15. Select **OK** to close the **Jobs list** dialog

## FAQs

**Q: How many steps does the Viewing Job Lists for Schedules procedure involve?**

The Viewing Job Lists for Schedules procedure involves 15 steps. Complete all steps in order and save your changes.

## Glossary

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
