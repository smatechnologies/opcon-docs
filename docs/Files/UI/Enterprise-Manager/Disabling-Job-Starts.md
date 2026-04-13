---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Disabling Job Starts
description: "Use this action to disable job starts when a machine is in a started state."
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

#  Disabling Job Starts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this action to disable job starts when a machine is in a started state.

To perform this procedure, complete the following steps:

1. Select on **Machines Status** under the **Operation** topic
2. Select the **Table** tab or the **Map** tab
3. *(Optional)* Right-click the **machine** that requires job starts to be disabled
4. Select **Disable Job Starts** from the menu
:::

## FAQs

**Q: How many steps does the Disabling Job Starts procedure involve?**

The Disabling Job Starts procedure involves 4 steps. Complete all steps in order and save your changes.

## Glossary

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
