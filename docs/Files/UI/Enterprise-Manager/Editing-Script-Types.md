---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Script Types
description: "Use this procedure to edit Script Types in the Enterprise Manager."
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

#  Editing Script Types

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Script Types in the Enterprise Manager.

To edit a script type, complete the following steps:

1.  Select on **Types** under the **Scripts** topic. The **Script Types** screen displays
2.  Select the **script type** to edit
3.  Select **Edit Type** on the toolbar. The **Edit Script Type** dialog displays
4.  Modify the name, file extension, and/or description
5.  Select **Save** in the dialog
6.  Select **Close ☒** to close the **Script Types** screen
:::

## FAQs

**Q: Do edits to script types take effect immediately?**

Changes saved to script types in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
