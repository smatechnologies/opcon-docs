---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Schedules
description: "Use the Schedule Build page in Solution Manager to build one or more master schedules into the daily schedule for a specified date range."
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

# Managing Schedules

The **Schedule Build** page in Solution Manager lets you build one or more master schedules into the daily schedule for a specified date range. You can define instance properties, set the build state, and monitor build progress from a single wizard.

You must have the **Build Daily Schedules** function privilege to access this page.

## Selection Options

The **Selection** page contains the following options:

| Option | Description |
|---|---|
| **From** | The earliest date in the build range. Defaults to today's date. |
| **To** | The latest date in the build range. Defaults to today's date. If you set **To** to a date before **From**, **From** adjusts automatically to match. |
| **Schedule Build** | The build state for the schedule. Select **On Hold** to hold the schedule until released manually or through an OpCon event. Select **Released** to release the schedule at build time. Defaults to **On Hold**. |
| **Overwrite Existing Schedules** | When enabled, OpCon overwrites a schedule in Completed status on the target date. Schedules with a status of In Process are not overwritten. Disabled by default. |
| **Name** | The schedule name. Select the option next to each schedule to include it in the build. Use the filter field above the list to filter by keyword. |
| **Auto-build** | Filters the schedule list by auto-build setting (**Yes** or **No**). When **Yes**, the column also displays the days-in-advance and days-to-build values. |
| **Multi Instance** | Filters the schedule list by multi-instance setting (**Yes** or **No**). |

The following navigation controls are also available:

| Control | Description |
|---|---|
| **Back** (top-right) | Returns to the **Operations Summary** page. |
| **Queue** | Opens the [Schedule Build Queue](Using-Schedule-Build-Queue.md) page. |
| **Next** | Advances to the **Instance(s) Definition** page. Only enabled when at least one schedule is selected. |
| **Build** | Builds the selected schedules immediately, skipping the **Instance(s) Definition** step. Only enabled when at least one schedule is selected. |

## Instance(s) Definition Options

The **Instance(s) Definition** page contains the following options.

For non-multi-instance schedules:

| Option | Description |
|---|---|
| **Name** | The property name for an instance of the schedule. See [Instance Definition](../../../job-components/instances.md) and [Properties](../../../objects/properties.md#). |
| **Value** | The property value. |

For multi-instance schedules:

| Option | Description |
|---|---|
| **All Instances** toggle | When enabled, builds all defined instances (properties or named instances) without customization. A count indicator appears next to the schedule name when multiple instances are defined. |
| **Name** | The instance name or property name. |
| **Value** | The property value. |
| **All Agents** toggle (Machine Group) | When enabled, builds one instance for each agent in the machine group. A count indicator appears next to the schedule name when multiple instances are defined. |
| **Machine** | The machine group to use when building by agent. |

The following navigation controls are also available:

| Control | Description |
|---|---|
| **Previous** (bottom-left) | Returns to the **Selection** page. |
| **Back** (top-right) | Returns to the **Operations Summary** page. |
| **Queue** | Opens the [Schedule Build Queue](Using-Schedule-Build-Queue.md) page. |
| **Build** | Builds the selected schedules with the defined instance configuration. |

## Build Page

The **Build** page displays schedules during and after the build runs. Select a schedule name to open the [Processes](Managing-Daily-Processes.md) page for that schedule. Select the `.log` path next to the link button to open the Schedule Build Log.

The **Schedule Build Log** dialog displays the log file path and build log content for the selected build request.

## Building Schedules

To build a schedule, complete the following steps:

1. Select the **Build** button on the **Operations Summary** page.
2. Enter or select the start date in the **From** field.
3. Enter or select the end date in the **To** field.
4. Select either the **On Hold** or **Released** option to set the build state.
5. Enable or disable the **Overwrite Existing Schedules** toggle as needed.
6. Select the option next to each schedule you want to build. You must select at least one schedule before **Next** and **Build** become available.
7. Choose one of the following:
   - Select **Build** to build the selected schedules immediately and go to step 8.
   - Select **Next** to go to the **Instance(s) Definition** page and continue with step 9.
8. (Skip to end) The **Build** page displays as OpCon runs the build. Select a schedule name to view its processes. Select the `.log` link to view the build log. You are done.
9. On the **Instance(s) Definition** page, expand the schedule panel to define instance properties.
10. Select the **Add** button to add an instance property row.
11. Enter a value in the **Name** field and a value in the **Value** field.
12. Select the **OK** button to save the property.
13. Repeat steps 10–12 for each additional property.
14. To edit an existing property, select the **Edit** button or select directly in the **Name** or **Value** field.
15. To remove a property, select the **Delete** button next to the property row.
16. For multi-instance schedules, enable the **All Instances** toggle to build all defined instances, or disable it to define instances manually.
17. For machine-group schedules, select the machine group in the **Machine** field. Enable **All Agents** to build one instance per agent in the group.
18. Select **Build** to run the build.

**Result:** The **Build** page displays and shows progress for each schedule. Select a schedule name to view its processes, or select the `.log` link to view the build log.

## Related Topics

- [Using Schedule Build Queue](Using-Schedule-Build-Queue.md)
