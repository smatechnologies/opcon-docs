---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Vision Remote Instances
description: "Use this procedure to edit Vision Remote Instances in Solution Manager."
product_area: Solution Manager
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

# Editing Vision Remote Instances

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Vision Remote Instances in Solution Manager.

To edit a Vision Remote Instance, complete the following steps:

1. Select the **Remote Instances** button on the **Vision Live** or **Vision Settings** page
2. Select the option for the remote instance to edit, then select **Edit**
3. Modify the existing information or settings
4. Select **Save**
:::

## FAQs

**Q: Do edits to vision remote instances take effect immediately?**

Changes saved to vision remote instances in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
