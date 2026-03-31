---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Thresholds
description: "Use this procedure to edit Thresholds in the Enterprise Manager."
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

#  Editing Thresholds

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Thresholds in the Enterprise Manager.

To edit a threshold, complete the following steps:

1.  Select on **Thresholds** under the **Administration** topic. The **Thresholds** screen displays
2.  Select an existing **threshold** in the **Select Threshold** list
3.  Enter changes
4.  Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Thresholds** toolbar
5.  Select **Close ☒** to close the **Thresholds** screen
:::

## FAQs

**Q: Do edits to thresholds take effect immediately?**

Changes saved to thresholds in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
