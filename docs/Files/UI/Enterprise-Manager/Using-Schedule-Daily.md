---
title: Using Schedule Daily
description: "The Schedule Daily editor displays a list of schedule dates and schedules. Select a date and schedule to modify daily schedule details, instance properties, and events."
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

# Using Schedule Daily

The **Schedule Daily** editor displays a list of schedule dates and schedules. Select a date and schedule to modify schedule details, instance properties, and completion events. For conceptual background, refer to [Editing Daily Schedules](../../../operations/editing-schedules.md).

:::note
Completed schedules with failed jobs display in red as: `ScheduleName (Completed -- Contains Failed Jobs)`. In-progress schedules with failed jobs display as: `ScheduleName (In Progress -- Contains Failed Jobs)`.
:::

## Required privileges

Access to Schedule Daily features is controlled by the privileges assigned to your OpCon role:

- **Maintain Schedules** — required to use **Edit Master** and **Edit Daily** buttons on a selected schedule.
- **Delete Daily Schedules** — required to use the **Delete** button and the **Delete Old Schedules** toolbar button.
- **View Jobs in Master Schedules** (department-level) — required to use **Edit Master** on a selected job.
- **View Jobs in Daily Schedules** (department-level) — required to use **Edit Daily** on a selected job.
- **Delete Jobs from Daily Schedules** (department-level) — required to use **Delete** on a selected job.

Contact your system administrator if you need access to any of these features.

## Schedule Daily toolbar

The toolbar provides one toolbar action for the Daily Maintenance view:

| Button | Description |
|---|---|
| **Delete Old Schedules** | Removes schedule dates from the daily that are older than the configured number of days to keep. This button is available only when the user has the **Delete Daily Schedules** privilege and access to all schedules. |

![Schedule Daily toolbar](../../../Resources/Images/EM/EMscheddailytoolbar.png "Schedule Daily toolbar")

## Daily Maintenance view

The Daily Maintenance view displays the daily schedule tree on the left and master schedule controls on the right. When you select a date, schedule, sub-schedule, or job in the tree, the **Maintenance** panel buttons become active based on your privileges.

### Maintenance panel buttons

| Button | Available when selected | Required privilege |
|---|---|---|
| **Check** | Date, schedule, or sub-schedule | None (availability only) |
| **Edit Master** | Schedule or job | Maintain Schedules / View Jobs in Master Schedules |
| **Edit Daily** | Schedule or job | Maintain Schedules / View Jobs in Daily Schedules |
| **Delete** | Date, schedule, sub-schedule, or job | Delete Daily Schedules / Delete Jobs from Daily Schedules |

### Check schedule types

When you select **Check**, choose one of the following check types before selecting the **Check** button:

| Option | Label |
|---|---|
| Normal | `Normal (No Circular)` |
| Circular | `Slow (Circular)` |
| Fast | `Fast (Requires Only)` |

## Procedures

### Open the Daily Schedule editor

To open the daily schedule editor for a schedule, complete the following steps:

1. In the Daily Maintenance view tree, select a schedule.
2. Select **Edit Daily**.

**Result:** The Daily Schedule editor opens for the selected schedule, showing the **Schedule**, **Instance Definitions**, **Events**, and **Deploy Info** tabs.

### Open the Master Schedule editor from daily

To open the master schedule editor from a daily entry, complete the following steps:

1. In the Daily Maintenance view tree, select a schedule or job.
2. Select **Edit Master**.

**Result:** The Schedule or Job editor opens in the master context.

### Check a schedule for dependency errors

To check a schedule for dependency errors, complete the following steps:

1. In the Daily Maintenance view tree, select a date, schedule, or sub-schedule.
2. In the **Maintenance** panel, select a check type: **Normal (No Circular)**, **Slow (Circular)**, or **Fast (Requires Only)**.
3. Select **Check**.

**Result:** The Check Schedule dialog opens and displays the dependency check results.

### Delete a daily schedule entry

To delete a daily schedule, job, sub-schedule, or all schedules for a date, complete the following steps:

1. In the Daily Maintenance view tree, select the item to delete.
2. Select **Delete**.
3. In the confirmation dialog, confirm the deletion.

**Result:** The selected item is removed from the daily schedule.

### Delete old daily schedules

To remove schedule dates that are older than the configured retention period, complete the following steps:

1. In the Schedule Daily toolbar, select **Delete Old Schedules**.
2. If old schedule dates exist, a confirmation dialog displays the purge date range. Confirm the deletion.

**Result:** Schedule dates older than the configured retention threshold are removed from the daily.

:::note
The **Delete Old Schedules** button is available only when a retention period greater than zero days is configured in Enterprise Manager preferences and you have the **Delete Daily Schedules** privilege for all schedules.
:::

## Related procedures

**Schedule Daily** procedures from the Daily Maintenance view:

- [Deleting Old Schedules](Deleting-Old-Schedules.md)
- [Adding Properties to Daily Schedule Instances](Adding-Properties-to-Daily-Schedule-Instances.md)
- [Editing Daily Schedule Instance Properties](Editing-Daily-Schedule-Instance-Properties.md)
- [Removing Daily Schedule Instance Properties](Removing-Daily-Schedule-Instance-Properties.md)
- [Adding Daily Schedule Events](Adding-Daily-Schedule-Events.md)
- [Deleting Schedule Completion Events](Deleting-Schedule-Completion-Events2.md)

**Schedule Master** procedures from the Daily Maintenance view:

- [Editing Schedules in Daily Schedule Tables](Editing-Schedules-in-Daily.md)
- [Editing Schedules in Master Schedule Tables](Editing-Schedules-in-Master.md)
