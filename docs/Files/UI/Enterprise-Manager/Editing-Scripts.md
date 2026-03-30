---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Scripts
description: "Use this procedure to edit Scripts in the Enterprise Manager."
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

#  Editing Scripts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Scripts in the Enterprise Manager.

To edit a script, complete the following steps:

1.  Select on **Repository** under the **Scripts** topic. The **Script Repository** screen displays
2.  Select the **script** to edit
3.  Select **Edit Script** on the toolbar. The **Edit Script** dialog displays
4.  Modify the name, type, and/or description
5.  Select **OK** in the dialog
6.  Select **Close ☒** to close the **Script Repository** screen
:::

## When Would You Use It?

- An existing Scripts in Enterprise Manager requires changes
- A change in process, system, or business requirement makes the current Scripts definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Scripts in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Scripts are recorded in the OpCon audit log, providing a complete modification history

## FAQs

**Q: Do edits to scripts take effect immediately?**

Changes saved to scripts in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
