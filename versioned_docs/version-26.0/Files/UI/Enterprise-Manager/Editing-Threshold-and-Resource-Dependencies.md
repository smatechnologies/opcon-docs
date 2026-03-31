---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Threshold/Resource Dependencies
description: "Use this procedure to edit Threshold/Resource Dependencies in the Enterprise Manager."
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

#  Editing Threshold/Resource Dependencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Threshold/Resource Dependencies in the Enterprise Manager.

## When Would You Use It?

- An existing Threshold/Resource Dependencies in Enterprise Manager requires changes
- A change in process, system, or business requirement makes the current Threshold/Resource Dependencies definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Threshold/Resource Dependencies in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Threshold/Resource Dependencies are recorded in the OpCon audit log, providing a complete modification history

## Editing Job-Related Threshold/Resource Dependencies

To edit a dependency, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2.  Select the **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Select the **Dependencies** tab, then the **Threshold/Resource Dependency** tab
5.  Select the **Job Related** option

6.  Select the dependency to edit
7.  Select **Edit**. The **Threshold/Resource Dependency** dialog displays
8.  Enter changes
9.  Select **OK** to save or **Cancel** to discard
10. Select **Close ☒** to close the **Job Master** screen

## Editing Frequency-Related Threshold/Resource Dependencies

To edit a dependency, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2.  Select the **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Select the **Dependencies** tab, then the **Threshold/Resource Dependency** tab
5.  Select the **Frequency Related** option

6.  Select the **frequency** in the **Frequency List**
7.  Select the dependency to edit
8.  Select **Edit**. The **Threshold/Resource Dependency** dialog displays
9.  Enter changes
10. Select **OK** to save or **Cancel** to discard
11. Select **Close ☒** to close the **Job Master** screen
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Do edits to threshold/resource dependencies take effect immediately?**

Changes saved to threshold/resource dependencies in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
