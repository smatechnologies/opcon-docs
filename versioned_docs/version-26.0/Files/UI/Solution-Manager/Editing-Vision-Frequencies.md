---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Vision Frequencies
description: "Use this procedure to edit Vision Frequencies in Solution Manager."
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

# Editing Vision Frequencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Vision Frequencies in Solution Manager.

To edit a Vision Frequency, complete the following steps:

1. Perform one of the following:
    a. Select the **Edit** button (![Vision Edit Button](../../../Resources/Images/SM/Vision-Edit-Button.png "Vision Edit Button")) directly on the card on the **Vision Live** page **- or -**
    b. Select the **Edit** button (![Vision Edit Button](../../../Resources/Images/SM/Vision-Edit-Button.png "Vision Edit Button")) next to **Home** on the **Vision Live** page.
2. Select the **Card** to edit from the list
3. Select the frequency to edit
4. Modify the existing information or settings
5. Select **OK** in the **Modify Card** window
6. Select **Save**
:::

## When Would You Use It?

- An existing Vision Frequencies in Solution Manager requires changes
- A change in process, system, or business requirement makes the current Vision Frequencies definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Vision Frequencies in Solution Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Vision Frequencies are recorded in the OpCon audit log, providing a complete modification history

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Do edits to vision frequencies take effect immediately?**

Changes saved to vision frequencies in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
