---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Expression Dependencies
description: "Use this procedure to edit Expression Dependencies in the Enterprise Manager."
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

#  Editing Expression Dependencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Expression Dependencies in the Enterprise Manager.

To edit a dependency, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic
2.  Select the **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Select on the **Dependencies** tab in the **Job Properties** frame
5.  Select on the **Expression Dependency** tab
6.  Edit the *expression* in the **Job Expression** text box
7.  Edit the *expression* in the **Frequency Expression** text box
8.  Select ![](../../../Resources/Images/EM/EMsave.png) **Save** on the
    **Job Master** toolbar.
9.  Select **Close ☒** (to the right of the **Job Master** tab) to close
    the **Job Master** screen.

## When Would You Use It?

- An existing Expression Dependencies in Enterprise Manager requires changes
- A change in process, system, or business requirement makes the current Expression Dependencies definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Expression Dependencies in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Expression Dependencies are recorded in the OpCon audit log, providing a complete modification history

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Do edits to expression dependencies take effect immediately?**

Changes saved to expression dependencies in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
