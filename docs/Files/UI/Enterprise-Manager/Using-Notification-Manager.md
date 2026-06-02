---
title: Using Notification Manager
description: "The Notification Manager is used to create groups based on Machine, Schedule, and Job status change events in OpCon, then define triggers to send notifications."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Notifications
last_updated: 2026-03-18
doc_type: procedural
---

# Using Notification Manager

The **Notification Manager** lets you create notification groups based on Machine, Schedule, and Job status change events in OpCon, then define triggers to send notifications when those events occur. User-defined group folders are created and displayed for each item type — **Machines**, **Schedules**, and **Jobs**.

For conceptual information on the Event Notification System (ENS), refer to [Event Notification](../../../notifications/Components.md) in the **Concepts** online help.

:::caution
All data in the **Notification Manager** table is updated every time a user makes a single change. If more than one user attempts to make a change at the same time, errors can occur. Continuous recommends limiting **Notification Manager** to one user at a time.
:::

## Screen Layout

The **Notification Manager** screen contains three panels:

- **Notification Triggers** — displays the **Machines**, **Schedules**, and **Jobs** tabs. Each tab shows user-defined notification groups and the triggers associated with each group.
- **Group Definitions** — displays the machines, schedules, or jobs included in or excluded from the selected group.
- **Notification Definitions** — displays the notification types and settings configured for the selected trigger.

## Filtering the Display

The **Type Filter Text** field at the top of the **Notification Triggers** panel lets you filter groups and triggers by name.

- Type part or all of a name to narrow the list.
- Type an `*` (asterisk) before a word to find names that contain that word anywhere, not just at the start.

:::tip Example
Type `*Level` to find any group whose name includes "Level."
:::

## Toolbar

The toolbar appears in the top-right corner of the **Notification Manager** screen.

![Notification Manager toolbar](../../../Resources/Images/EM/EMnotifmgrtoolbar.png "Notification Manager toolbar")

The toolbar provides the following actions:

| Button | Description |
|---|---|
| **Notification Lookup** | Opens the **Notification Lookup** dialog to search for existing notifications by criteria. |
| **View Audit** | Opens the audit history for Event Notification changes. |

## Related Topics

- [Notification Triggers](Notification-Triggers2.md)
- [Group Definitions](Group-Definitions.md)
- [Notification Definitions](Notification-Definitions.md)
