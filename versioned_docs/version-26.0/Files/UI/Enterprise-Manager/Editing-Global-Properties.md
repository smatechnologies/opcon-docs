---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Global Properties
description: "Use this procedure to edit Global Properties in the Enterprise Manager."
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

#  Editing Global Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Global Properties in the Enterprise Manager.

To edit a global property, complete the following steps:

1.  Select on **Global Properties** under the **Administration** topic
2.  Select an existing **global property** in the **Select Global
    Property** list.
3.  Enter the *changes*
4.  Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Global Properties** toolbar.
5.  Select **Close ☒** (to the right of the **Global Properties** tab) to
    close the **Global Properties** screen.

## FAQs

**Q: Do edits to global properties take effect immediately?**

Changes saved to global properties in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
