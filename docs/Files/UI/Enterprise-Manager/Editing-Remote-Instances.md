---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Remote Instances
description: "Use this procedure to edit Remote Instances in the Enterprise Manager."
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

#  Editing Remote Instances

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Remote Instances in the Enterprise Manager.

To edit a remote instance, complete the following steps:

1.  Select on **Remote Instances** under the **Administration** topic. The **Remote Instances** screen displays
2.  Select an **existing remote instance** in the **Selection** list
3.  Enter the *changes*
4.  Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Remote Instances** toolbar
5.  Select **Close ☒** (to the right of the **Remote Instances** tab) to close the **Remote Instances** screen

## FAQs

**Q: Do edits to remote instances take effect immediately?**

Changes saved to remote instances in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
