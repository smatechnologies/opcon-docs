---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Schedule or Job Master
description: "Use this procedure to edit Schedule or Job Master in the Enterprise Manager."
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

#  Editing Schedule or Job Master

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Schedule or Job Master in the Enterprise Manager.

To edit schedule or job master, complete the following steps:

1.  Select on **Frequency Manager** under the **Management** topic. The **Frequency Manager** screen displays
2.  Select the **schedule** or **job** name to edit, or select it and select **Edit Selected Job or Schedule** (far right of screen). The **Job Master** screen displays
3.  Edit the desired information
4.  Select **Close ☒** (to the right of the **Schedule** or **Job Master** tab) to close the screen
5.  Select **Close ☒** (to the right of the **Frequency Manager** tab) to close the **Frequency Manager** screen

## When Would You Use It?

- An existing Schedule or Job Master in Enterprise Manager requires changes
- A change in process, system, or business requirement makes the current Schedule or Job Master definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Schedule or Job Master in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Schedule or Job Master are recorded in the OpCon audit log, providing a complete modification history


## FAQs

**Q: Do edits to schedule or job master take effect immediately?**

Changes saved to schedule or job master in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
