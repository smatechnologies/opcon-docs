---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Script Runners
description: "Use this procedure to edit Script Runners in the Enterprise Manager."
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

#  Editing Script Runners

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Script Runners in the Enterprise Manager.

To edit a script runner, complete the following steps:

1.  Select on **Runners** under the **Scripts** topic. The **Script Runners** screen displays
2.  Select the **script runner** to edit
3.  Select **Edit Runner** on the toolbar. The **Edit Runner** dialog displays
4.  Modify the name, OS, type, and/or command
5.  Select **Save** in the dialog
6.  Select **Close ☒** to close the **Script Runners** screen
:::

## When Would You Use It?

- An existing Script Runners in Enterprise Manager requires changes
- A change in process, system, or business requirement makes the current Script Runners definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Script Runners in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Script Runners are recorded in the OpCon audit log, providing a complete modification history

## FAQs

**Q: Do edits to script runners take effect immediately?**

Changes saved to script runners in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
