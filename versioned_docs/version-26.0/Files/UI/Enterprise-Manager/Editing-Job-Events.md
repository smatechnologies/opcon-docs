---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Job Events
description: "Use this procedure to edit Job Events in the Enterprise Manager."
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

#  Editing Job Events

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Job Events in the Enterprise Manager.

## When Would You Use It?

- An existing Job Events in Enterprise Manager requires changes
- A change in process, system, or business requirement makes the current Job Events definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Job Events in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Job Events are recorded in the OpCon audit log, providing a complete modification history

## Editing Job-Related Events

To edit the job event, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2.  Select the **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Select on the **Events** tab in the **Job Properties** frame
5.  Select the **Job Related** radio button

6.  Select the **event** to edit, or select it and select the **Edit** button. The **Event Definition Wizard** displays
7.  Enter the *changes* in the wizard. Select **Reset** to revert parameters to their original states
8.  Select **Finish** to save or **Cancel** to discard changes
9.  Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

## Editing Frequency-Related Events

To edit the job event, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2.  Select the **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Select on the **Events** tab in the **Job Properties** frame
5.  Select the **Frequency Related** radio button

6.  Select the **frequency** in the **Frequency list**
7.  Select the **event** to edit, or select it and select the **Edit** button. The **Event Definition Wizard** displays
8.  Enter the *changes* in the wizard. Select **Reset** to revert parameters to their original states
9.  Select **Finish** to save or **Cancel** to discard changes
10. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Do edits to job events take effect immediately?**

Changes saved to job events in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
