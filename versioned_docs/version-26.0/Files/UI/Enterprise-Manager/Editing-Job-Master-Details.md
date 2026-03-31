---
title: Editing Job Master Details
description: "To edit Job Master Details in the Enterprise Manager, complete the following steps: 1."
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

#  Editing Job Master Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

To edit Job Master Details in the Enterprise Manager, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2.  Select the **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Ensure the **Job Details** tab is in focus in the **Job Properties** frame
5.  To change the job type, select **Reset Job Details** in the toolbar, then select a **job type** in the **Job Type** list
6.  Edit the **Job Details**. Refer to [Adding Jobs](Adding-Jobs.md) for details on individual fields
7.  Select ![Save icon](../../../Resources/Images/EM/EMsave.png) **Save** on the **Job Master** toolbar
8.  Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

## When Would You Use It?

- An existing Job Master Details in Enterprise Manager requires changes
- A change in process, system, or business requirement makes the current Job Master Details definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Job Master Details in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Job Master Details are recorded in the OpCon audit log, providing a complete modification history

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Do edits to job master details take effect immediately?**

Changes saved to job master details in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
