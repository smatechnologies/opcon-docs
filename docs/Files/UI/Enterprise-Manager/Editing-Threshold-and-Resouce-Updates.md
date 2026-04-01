---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Threshold/Resource Updates
description: "Use this procedure to edit Threshold/Resource Updates in the Enterprise Manager."
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

#  Editing Threshold/Resource Updates

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Threshold/Resource Updates in the Enterprise Manager.

## Editing Job-Related Threshold or Resource Updates

To edit a threshold or resource update, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2.  Select the **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Select the **Threshold/Resource Update** tab in the **Job Properties** list
5.  Select the **Job Related** radio button

6.  Select the existing threshold/resource in the **Threshold/Resource Updates** frame
7.  Select **Edit**. The **Threshold/Resource Update** dialog displays
8.  Enter changes
9.  Select **OK** to save or **Cancel** to discard
10. Select **Close ☒** to close the **Job Master** screen

## Editing Frequency-Related Threshold or Resource Updates

To edit a threshold or resource update, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2.  Select the **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Select the **Threshold/Resource Update** tab in the **Job Properties** frame
5.  Select the **Frequency Related** radio button

6.  Select the **frequency** in the **Frequency list**
7.  Select the existing threshold/resource in the **Threshold/Resource Updates** list
8.  Select **Edit**. Enter changes
9.  Select **OK** to save or **Cancel** to discard
10. Select **Close ☒** to close the **Job Master** screen
:::


## FAQs

**Q: Do edits to threshold/resource updates take effect immediately?**

Changes saved to threshold/resource updates in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
