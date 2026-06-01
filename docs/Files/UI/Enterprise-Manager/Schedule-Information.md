---
title: Schedule Information
description: "The Schedule Information dialog displays runtime details about a daily schedule instance, including status, timing, post processes, and instance properties."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Schedule Information

The **Schedule Information** dialog displays runtime details about the daily copy of a selected schedule. You can access it from the **List** or **Matrix** views by right-clicking a schedule. Field values for **Schedule Date**, **Schedule Name**, and **Status** support right-click copy to the clipboard.

The dialog includes a **Refresh** button to reload data without closing the dialog.

## Dialog fields

| Field | Description |
|---|---|
| **Schedule Date** | The date the schedule was built for. |
| **Schedule Name** | The name of the selected schedule. |
| **Status** | The current status of the selected schedule. |
| **Start Time** | The build date and the scheduled start time, as defined in **Operation**. Prefixed with `*` when the schedule has not yet started (estimated). |
| **End Time** | Displays *Not Finished* when the schedule is not complete. Displays the finish date and time when the schedule has a status of Finished OK. |
| **Work Week** | The number of workdays in the week for the selected schedule, displayed as `N-day`. |
| **Actual Start Time** | Blank when the schedule has not started. Displays the date and time that processing began once the schedule has started. |

## Tabs

| Tab | Description |
|---|---|
| **Post Processes** | Lists schedule post-process events. |
| **Status Change Explanation** | Lists chronological manual status changes. Each entry follows the format: `<Status Change> - <Explanation> (<user> on <Date> <Time>)`. |
| **Documentation** | Displays documentation text associated with the selected schedule. Text that references an external program can be selected and opened via right-click. |
| **Configuration** | Displays Schedule Instance Properties in read-only mode. |

## View schedule information

To view the Schedule Information dialog for a schedule, complete the following steps:

1. Select **List** under the **Operation** topic.
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) arrow to expand a specific date.
3. Right-click a schedule.
4. Select **Schedule Information** from the context menu.

**Result:** The **Schedule Information** dialog opens and displays details for the selected schedule.

5. Select any tab to view additional information.
6. Select **Refresh** to reload the current data without closing the dialog.
7. Select **OK** to close the dialog.
