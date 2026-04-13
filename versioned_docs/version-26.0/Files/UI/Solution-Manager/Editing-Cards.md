---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Cards
description: "Use this procedure to edit Cards in Solution Manager."
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

# Editing Cards

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Cards in Solution Manager.

To edit a card, complete the following steps:

1. Perform one of the following:
    a. Select the **Edit** button (![Vision Edit Button](../../../Resources/Images/SM/Vision-Edit-Button.png "Vision Edit Button")) directly on the card on the **Vision Live** page **- or -**
    b. Select the **Edit** button (![Vision Edit Button](../../../Resources/Images/SM/Vision-Edit-Button.png "Vision Edit Button")) next to **Home** on the **Vision Live** page.
2. Select the **Card** to edit from the list
3. Modify the existing information or settings
4. Select **OK** at the bottom of the **Modify Card** window
5. Select **Save**
:::

## FAQs

**Q: Do edits to cards take effect immediately?**

Changes saved to cards in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
