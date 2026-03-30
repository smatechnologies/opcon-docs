---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Job Dependencies
description: "Use this procedure to edit Job Dependencies in the Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

#  Editing Job Dependencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Job Dependencies in the Enterprise Manager.

## When Would You Use It?

- An existing Job Dependencies in Enterprise Manager requires changes
- A change in process, system, or business requirement makes the current Job Dependencies definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Job Dependencies in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Job Dependencies are recorded in the OpCon audit log, providing a complete modification history

## Editing Job-Related Job Dependencies

To edit a dependency, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2.  Select the **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Select on the **Dependencies** tab in the **Job Properties** frame
5.  Select on the **Job Dependency** tab

6.  Select the **Job Related** option
7.  Select on the **dependency** to edit
8.  Select the **Edit** button. The **Add Dependency** dialog displays
9.  Enter the *changes*
10. Select **OK** to save the changes or **Cancel** to discard them
11. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

## Editing Frequency-Related Job Dependencies

To edit a dependency, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2.  Select the **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Select on the **Dependencies** tab in the **Job Properties** frame
5.  Select on the **Job Dependency** tab

6.  Select the **Frequency Related** option
7.  Select the **frequency** in the **Frequency List**
8.  Select on the **dependency** to edit
9.  Select the **Edit** button. The **Add Dependency** dialog displays
10. Enter the *changes*
11. Select **OK** to save the changes or **Cancel** to discard them
12. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Do edits to job dependencies take effect immediately?**

Changes saved to job dependencies in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
