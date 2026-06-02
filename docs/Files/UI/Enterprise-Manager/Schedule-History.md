---
title: Schedule History
description: "Use the Schedule History dialog in Enterprise Manager to review past run times, start times, end times, and status change notes for a schedule across a date range."
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

# Schedule History

The **Schedule History** dialog displays past run records for a selected schedule. Each row represents one run instance and shows when the schedule started, ended, how long it ran, and any status change notes recorded for that instance.

You can access Schedule History from the right-click context menu on any schedule in the **List**, **Matrix**, or **PERT** views under the **Operations** topic.

## Schedule History dialog fields

The dialog contains the following date range controls and result columns.

### Date range controls

| Field | Description |
|---|---|
| **Start Date** | The earliest schedule date to include in results. Defaults to the date of the schedule you right-clicked. If you set Start Date later than End Date, End Date adjusts automatically to match. |
| **End Date** | The latest schedule date to include in results. Defaults to the date of the schedule you right-clicked. If you set End Date earlier than Start Date, Start Date adjusts automatically to match. |

### Options

| Option | Description |
|---|---|
| **View Detailed History** | Includes status change explanation notes in the **Note** column for each matching run record. |
| **View Archived History** | Retrieves records from the history archive rather than active history. Select this option to view run records that have been moved to long-term storage. |

You can select both options simultaneously to view archived records with status change notes included.

### Results columns

| Column | Description |
|---|---|
| **Schedule Date** | The date the schedule ran. |
| **Start Time** | The date and time the schedule started. |
| **End Time** | The date and time the schedule ended. |
| **Runtime (min)** | The total run duration in minutes. |
| **Note** | Status change explanation text. Populated only when **View Detailed History** is selected. A single run record may display multiple rows if more than one status change explanation was recorded. |

All columns except **Note** support sorting. Select a column header to sort results by that column.

## View schedule history

To view the history for a schedule, complete the following steps:

1. In Enterprise Manager, go to **Operations** and select **List**, **Matrix**, or **PERT**.
2. Select the arrow to expand the date that contains the schedule.
3. Right-click the schedule.
4. Select **Schedule History** from the context menu.

   The **Schedule History** dialog opens with the date range defaulting to the schedule's current date.

5. Set the **Start Date** and **End Date** to define the date range you want to review.
6. Select the **View Detailed History** option if you want status change notes included in results.
7. Select the **View Archived History** option if you want to retrieve records from the history archive.
8. Select **Refresh** to load results.

   The table populates with all run records for the schedule within the selected date range.

9. Select **Close** to close the dialog.
