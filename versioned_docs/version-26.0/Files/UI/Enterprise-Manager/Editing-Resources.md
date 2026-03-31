---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Resources
description: "Use this procedure to edit Resources in the Enterprise Manager."
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

#  Editing Resources

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Resources in the Enterprise Manager.

To edit a resource, complete the following steps:

1.  Select on **Resources** under the **Administration** topic. The **Resources** screen displays
2.  Select an **existing resource** in the **Select Resource** list
3.  Enter the *changes*
4.  Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Resources** toolbar
5.  Select **Close ☒** (to the right of the **Resources** tab) to close the **Resources** screen

## When Would You Use It?

- An existing Resources in Enterprise Manager requires changes
- A change in process, system, or business requirement makes the current Resources definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Resources in Enterprise Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Resources are recorded in the OpCon audit log, providing a complete modification history

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Do edits to resources take effect immediately?**

Changes saved to resources in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
