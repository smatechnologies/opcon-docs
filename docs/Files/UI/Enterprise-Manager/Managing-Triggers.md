---
title: Managing Triggers
description: "Add or delete Machine, Schedule, or Job triggers in Enterprise Manager Notification Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Managing Triggers

Triggers define the status conditions on Machines, Schedules, or Jobs that cause OpCon to send notifications. You manage triggers inside Enterprise Manager's **Notification Manager**, where triggers are organized into notification groups across three tabs: **Machines**, **Schedules**, and **Jobs**.

:::note
Triggers can only be placed on the lowest-level notification groups. If a group contains child groups, you must place triggers on those child groups. Parent groups that contain no child groups can receive triggers directly.
:::

## Adding a Machine, Schedule, or Job Trigger

To add a trigger to a notification group, complete the following steps:

1. In Enterprise Manager, select **Notification Manager** under the **Management** topic.
2. In the **Notification Triggers** frame, select the **Machines**, **Schedules**, or **Jobs** tab.
3. Select the expand arrow next to the **Machines**, **Schedules**, or **Jobs** tree item to expand it.
4. Select the expand arrow next to the notification group you want to use.
5. Verify that the group has no child groups. If child groups exist, expand to the lowest-level child group instead.
6. Right-click the notification group.
7. Select **Add Machine Trigger**, **Add Schedule Trigger**, or **Add Job Trigger** as appropriate.
8. Select the specific trigger from the submenu.

**Result:** The trigger appears under the notification group in the tree. If the trigger already exists on that group, Enterprise Manager selects the existing entry instead of creating a duplicate.

## Deleting a Machine, Schedule, or Job Trigger

To delete a trigger from a notification group, complete the following steps:

1. In Enterprise Manager, select **Notification Manager** under the **Management** topic.
2. In the **Notification Triggers** frame, select the **Machines**, **Schedules**, or **Jobs** tab.
3. Select the expand arrow next to the tree item to expand it.
4. Select the expand arrow next to the notification group that contains the trigger.
5. Right-click the trigger you want to delete.
6. Select **Delete Trigger**.
7. In the confirmation dialog, select **Yes** to confirm the deletion or **No** to cancel.

**Result:** The trigger and all associated notification definitions are permanently removed from the notification group.

:::warning
Deleting a trigger also deletes all notification definitions associated with it. This action cannot be undone.
:::
