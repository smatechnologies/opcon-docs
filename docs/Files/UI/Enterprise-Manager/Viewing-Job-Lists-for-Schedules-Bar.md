---
lang: en-us
viewport: width=device-width, initial-scale=1.0
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

#  Viewing Job Lists for Schedules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view Job Lists for Schedules in the Enterprise Manager.

To view the job list, complete the following steps:

1.  Select on **Bar Chart** under the **Operation** topic. The **Bar Chart** screen displays
2.  Select on a **date** or **schedule** to display in the **Bar Chart** screen
3.  Right-click on the **bar** for the schedule
4.  Select on **Jobs list** from the menu. The **Jobs list** dialog displays
5.  Select **OK** to close the dialog
6.  To view a subschedule's job list, select on a **date** (and optionally a **schedule** containing the subschedule), then select on the **subschedule**
7.  Right-click on the **bar** for the subschedule and select **Jobs list**. The **Jobs list** dialog displays
8.  View the **list of jobs** in the subschedule
9.  Select **OK** to close the **Jobs list** dialog
:::

## FAQs

**Q: How many steps does the Viewing Job Lists for Schedules procedure involve?**

The Viewing Job Lists for Schedules procedure involves 9 steps. Complete all steps in order and save your changes.

## Glossary

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
