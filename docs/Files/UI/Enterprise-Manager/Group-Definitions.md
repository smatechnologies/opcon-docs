---
title: Machines/Schedules/Jobs Group Definitions
description: "Reference for the Group Definitions panel in the Notification Manager, which controls which machines, schedules, and jobs belong to a notification group."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Machines/Schedules/Jobs Group Definitions

The Group Definitions panel appears when you select a Machines, Schedules, or Jobs notification group in the Notification Manager. It lets you control which items belong to the group and how ENS evaluates membership when new items are added to OpCon in the future.

## Panel fields

### By default, ENS will treat all \<type\> as

Two options control the default membership rule for the group. The label dynamically reflects the group type (**Machines**, **Schedules**, or **Jobs**).

| Option | Behavior |
|---|---|
| **Included** | All items are included by default, including items added to OpCon after the group is saved. Select specific items to exclude them from the group. |
| **Excluded** | All items are excluded by default. Select specific items to include them in the group. |

When you switch between **Included** and **Excluded**, ENS clears any previously saved item selections so the group starts from a clean state.

### Show

Filters which items appear in the selection list.

| Value | Behavior |
|---|---|
| **All** | Displays every item. This is the default view. |
| **Selected** | Displays only items that are currently selected (checked). |
| **Not Selected** | Displays only items that are not currently selected. |

### Selection list

A tree list of all available machines, schedules, or jobs in OpCon. Select or clear each item to include or exclude it from the group, depending on the active **By default, ENS will treat all \<type\> as** setting.

Use **Select All** or **Deselect All** to apply a selection to all items currently visible in the list. These buttons apply only to items shown under the active **Show** filter.

## Buttons

| Button | Action |
|---|---|
| **Select All** | Selects all items visible in the current **Show** filter view. |
| **Deselect All** | Clears all items visible in the current **Show** filter view. |
| **Save** | Saves the group membership selections to the database. |
| **Cancel** | Discards unsaved changes and resets the panel to its last saved state. |

## Privileges required

Your OpCon role must have sufficient privileges to change the **Included** / **Excluded** setting:

- **Jobs groups**: Your role must have access to all schedules, all machines, all machine groups, and all departments for the View Jobs in Master Schedules function privilege. Your role must also have access to all access codes defined in OpCon.
- **Schedules groups**: Your role must have access to all schedules.
- **Machines groups**: Your role must have access to all machines.

The `ocadm` user bypasses these checks and can always change the group type.

## Behavior notes

- When the group type changes (from **Included** to **Excluded** or vice versa), all previously saved item selections are deleted before the new selections are committed.
- When viewing an EnsAction (trigger action) rather than an EnsGroup, the selection list is read-only. To modify the membership, go back to the group level.
- The **Show** filter defaults to **All** after a save.
