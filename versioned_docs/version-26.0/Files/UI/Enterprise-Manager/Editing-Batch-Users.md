---
title: Editing Batch Users
description: "Use this procedure to edit Batch Users in the Enterprise Manager."
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

# Editing Batch Users

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Batch Users in the Enterprise Manager.

To edit a batch user, complete the following steps:

1. Select on **Batch Users** under the **Security** topic
2. Select the *OS* from the **Select the target OS** list
3. Select the *batch user* to edit
4. Enter the *changes*
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Batch Users** toolbar
6. Select **Close ☒** to close the **Batch Users** screen

:::note
Reserved batch users, e.g., "Use Service Account" for Windows, cannot be edited at this time.
:::

## FAQs

**Q: Do edits to batch users take effect immediately?**

Changes saved to batch users in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
