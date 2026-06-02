---
title: Notification Triggers
description: "The Notification Triggers frame provides tabs for the Machines, Schedules, and Jobs trigger types. Each tab displays user-defined notification groups and the triggers associated with each group."
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Notifications
doc_type: reference
---

# Notification Triggers

The **Notification Triggers** frame provides three tabs — **Machines**, **Schedules**, and **Jobs** — each displaying user-defined notification groups and the triggers associated with each group.

:::note
Triggers write notification information to the OpCon database when the status of one or more items (Machines, Schedules, or Jobs) in a group changes.
:::

To search for a specific trigger, type part of or the full trigger name in the **type filter text** field.

The following rules apply to group organization:

- You can add groups inside other groups to better organize triggers.
- You must add triggers to the lowest-level groups within a group tree. A group that already contains child groups cannot also contain triggers.

## Right-Click Menu

Right-click any item in the **Machines**, **Schedules**, or **Jobs** tab tree to open the context menu. The options that appear depend on the current selection.

| Option | Description |
|---|---|
| **Add Root Group** | Adds a new group to the root level of the **Jobs**, **Machines**, or **Schedules** tab. Available regardless of selection. |
| [**Add Group**](Managing-Groups.md#Adding) | Adds a child group within the selected group. Only available when the selected group already contains child groups or is empty (contains no triggers). |
| [**Delete Group**](Managing-Groups.md#Deleting) | Deletes the selected group and all items within its tree. |
| [**Add Machine Trigger**](Managing-Triggers.md#Adding) | Available in the **Machines** tab. Opens a list of machine triggers to add to the selected group. For trigger definitions, see [Machine Triggers](../../../notifications/Notification-Triggers.md#Machine). |
| [**Add Schedule Trigger**](Managing-Triggers.md#Adding) | Available in the **Schedules** tab. Opens a list of schedule triggers to add to the selected group. For trigger definitions, see [Schedule Triggers](../../../notifications/Notification-Triggers.md#Schedule). |
| [**Add Job Trigger**](Managing-Triggers.md#Adding) | Available in the **Machines**, **Schedules**, and **Jobs** tabs. Opens a list of job triggers to add to the selected group. For trigger definitions, see [Job Triggers](../../../notifications/Notification-Triggers.md#Job). |
| [**Rename**](Managing-Groups.md#Renaming) | Renames the selected group. |
| [**Delete Trigger**](Managing-Triggers.md#Deleting) | Deletes the selected trigger within the active tab. |
