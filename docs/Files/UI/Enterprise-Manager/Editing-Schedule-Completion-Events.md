---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Schedule Completion Events
description: "Use this procedure to edit Schedule Completion Events in the Enterprise Manager."
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

#  Editing Schedule Completion Events

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Schedule Completion Events in the Enterprise Manager.

To edit a schedule completion event, complete the following steps:

1.  Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2.  Select the **schedule** in the **Schedule Selection** list
3.  Select on the **Events** tab in the **Schedule Details** frame
4.  Select the **existing event** in the **Schedule Completion Events** list
5.  Select the **Edit** button. The **Event Definition Wizard** displays
6.  Enter the *changes* for the OpCon event. For details on editing event parameters, refer to [Add Schedule Completion Events](Adding-Schedule-Completion-Events.md#Place_your_mouse_cursor)
7.  Select **Finish** to save changes or **Cancel** to discard them
8.  Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen

## When Would You Use It?

- An existing Schedule Completion Events in Enterprise Manager requires changes
- A change in process, system, or business requirement makes the current Schedule Completion Events definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Schedule Completion Events in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Schedule Completion Events are recorded in the OpCon audit log, providing a complete modification history

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Do edits to schedule completion events take effect immediately?**

Changes saved to schedule completion events in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
