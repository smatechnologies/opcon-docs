---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Script Versions
description: "In the Repository Editor, you can edit a script version and save it as a newer version in the database."
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

#  Editing Script Versions

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

In the Repository Editor, you can edit a script version and save it as a newer version in the database.

To edit a script version, complete the following steps:

1.  Select on **Repository** under the **Scripts** topic. The **Script Repository** screen displays
2.  Select a **script** in the list
3.  Select **Show/Create Versions** on the toolbar. The **Versions** dialog displays
4.  Select the **script version** to edit
5.  Select **Edit**. The **Edit Version** dialog displays
6.  Modify the script code as needed
7.  Enter comments about the modified script
8.  Select **Commit New Version**
9.  Select **Close** in the **Versions** dialog
10. Select **Close ☒** to close the **Script Repository** screen
:::

## FAQs

**Q: Do edits to script versions take effect immediately?**

Changes saved to script versions in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
