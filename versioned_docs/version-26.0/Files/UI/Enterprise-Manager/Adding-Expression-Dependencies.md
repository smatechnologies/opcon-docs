---
title: Adding Expression Dependencies
description: "Use this procedure to add Expression Dependencies in the Enterprise Manager."
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

# Adding Expression Dependencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Expression Dependencies in the Enterprise Manager.

To set a dependency, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Dependencies** tab in the **Job Properties** frame
5. Select the **Expression Dependency** tab
6. Enter the *expression* in the **Job Expression** text box. This expression must resolve to "True" before the job starts
7. Select the **frequency** in the **Frequency List**
8. Enter the *expression* in the **Frequency Expression** text box. This expression must resolve to "True" before the job starts
9. Select ![Save icon](../../../Resources/Images/EM/EMsave.png) **Save** on the **Job Master** toolbar
10. Select **Close ☒** (to the right of the **Job Master** tab) to close the screen

## When Would You Use It?

- You need to add Expression Dependencies in Enterprise Manager
- The environment is expanding and requires additional Expression Dependencies to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Expression Dependencies to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Expression Dependencies and when


## FAQs

**Q: Where do you access Expression Dependencies in the Enterprise Manager?**

Select **Job Master** under the **Administration** topic in the Enterprise Manager navigation pane.

**Q: What information is required to add expression dependencies?**

The required fields include **Job Expression**, **Frequency Expression**. Select **Save** on the toolbar to save the new record.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
