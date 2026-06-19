---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Notification Categories
description: "Notification categories group related notification groups in Solution Manager so you can organize and filter notification triggers."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: conceptual
---

# Notification Categories

## What Is It?

A notification category is a label you assign to notification groups so you can organize and filter notification triggers in Solution Manager. Each category has a unique name and an optional set of assigned notification groups.

You manage notification categories on the **Manage Categories** page. To open it, go to **Library > Notification Triggers** and select **Manage Categories**.

<!--
![Notification Categories Grid](../../../../../Resources/Images/SM/Library/NotificationCategories/NotificationCategories-Grid.png "Notification Categories Grid")
-->

The grid lists existing categories by **Name**. Select a category in the grid, or select **New Category**, to open the edit panel below the grid.

<!--
![Notification Categories Add and Edit](../../../../../Resources/Images/SM/Library/NotificationCategories/NotificationCategories-EditPanel.png "Editable panel for notification categories")
-->

## How It Works

The edit panel contains the following fields:

| Field | Description |
|---|---|
| **Name** | The unique name of the category. This field is required. |
| **Available Groups** / **Assigned Groups** | A transfer list that moves notification groups between those available and those assigned to the category. Move a group to **Assigned Groups** to include it in the category. |

:::note
The **Name** field must be unique. If you enter a name that is already in use, Solution Manager reports that the category name is already used.
:::

After editing a category, select **Save** to apply your changes or **Reset** to discard them. To remove a category, select it in the grid and select **Delete**.

## Glossary

**Notification Category**: A uniquely named label that groups related notification groups, used to organize and filter notification triggers in Solution Manager.

**Notification Group**: A named collection of machines, schedules, or jobs that notification triggers act on.

**Notification Trigger**: A definition that sends a notification when a monitored machine, schedule, or job changes to a specified status.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Enterprise Manager**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.
