---
title: Using Schedule Master
description: "Reference overview of the Schedule Master editor in Enterprise Manager, including its tabs, toolbar actions, and related procedures."
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

# Using Schedule Master

The **Schedule Master** editor is where you define and maintain OpCon Schedules. Open it by selecting **Schedule Master** under the **Administration** topic in Enterprise Manager.

The editor presents a **Schedule Selection** list at the top. Select a Schedule from the list to load its details into the editor. When no Schedule is selected, the detail tabs and toolbar actions are disabled.

## Tabs

The editor organizes Schedule settings across five tabs.

| Tab | Purpose |
|---|---|
| **Schedule** | Configure start time, workdays per week, holiday calendars, and schedule properties (Multi-Instance, SubSchedule, Conflict with Other Days), plus auto-build and auto-delete settings. |
| **Instance Definitions** | Define instance types and named instance properties when the Schedule is configured as a multi-instance Schedule. |
| **Frequency** | Add, edit, or remove Frequency definitions that control when the Schedule is eligible to run. |
| **Events** | Define Schedule completion events that OpCon triggers when the Schedule finishes. |
| **Deploy Info** | View deployment information for the Schedule (read-only). Displays `N/A` when no deployment record exists. |

## Toolbar Actions

The toolbar provides the following actions. All actions are disabled when the editor has unsaved changes or no Schedule is selected.

| Action | Description |
|---|---|
| **View Audit** | Opens the audit record dialog showing all changes made to the selected Schedule. |
| **View Schedule History** | Opens the Schedule history dialog showing run history for the selected Schedule. |
| **Merge Schedule** | Opens the Merge Schedules dialog to merge the selected Schedule into another Schedule. |
| **Copy** | Opens the Copy Schedule dialog to create a copy of the selected Schedule under a new name. |
| **Edit Jobs** | Opens the Job Master editor filtered to the jobs on the selected Schedule. |

## Field Limits

| Field | Limit |
|---|---|
| **Name** | 40 characters maximum |
| **Documentation** | 4,000 characters maximum |

## Related Procedures

- [Adding Schedules](Adding-Schedules.md)
- [Configuring Automatic Schedule Maintenance](Configuring-Automatic-Schedule-Maintenance.md)
- [Copying Schedules](Copying-Schedules.md)
- [Deleting Schedules](Deleting-Schedules.md)
- [Merging Schedules](Merging-Schedules.md)
- [Viewing Additional Schedule Information](Viewing-Additional-Schedule-Info.md)
