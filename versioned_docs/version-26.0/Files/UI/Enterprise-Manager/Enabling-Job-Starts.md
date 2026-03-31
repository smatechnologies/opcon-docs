---
title: Enabling Job Starts
description: "This action enables job starts when a machine status is Limited."
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

# Enabling Job Starts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

This action enables job starts when a machine status is Limited.

To perform this procedure, complete the following steps:

1. Select on **Machines Status** under the **Operation** topic
2. Select the **Table** tab or the **Map** tab
3. *(Optional)* Right-click the **machine** that requires job starts to be enabled
4. Select **Enable Job Starts** from the menu

## When Would You Use It?

- A Job Starts feature needs to be turned on in Enterprise Manager
- A scheduled change window or operational event requires activating Job Starts in a controlled manner

## Why Would You Use It?

- **Activate required functionality**: Enabling Job Starts activates the feature for the intended scope without affecting other parts of the system
- The change is recorded in the OpCon audit log, documenting when the Job Starts was activated and by whom

## FAQs

**Q: How many steps does the Enabling Job Starts procedure involve?**

The Enabling Job Starts procedure involves 4 steps. Complete all steps in order and save your changes.

## Glossary

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
