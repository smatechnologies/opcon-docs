---
title: Using History Management
description: "History Management in Enterprise Manager lets you filter, view, and export schedule and job run history from the active history table or the archive."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Using History Management

**History Management** is a view in Enterprise Manager that displays schedule and job run history. You can query the active history table or the archive, filter results by date range, run duration, and job status, then export the results to a CSV file.

## Layout

The **History Management** view is divided into two areas:

- **Filter bar (top):** Contains controls for selecting the data source, applying filters, and running or resetting the query.
- **Split pane (bottom):** Displays a schedule and job tree on the left and a detail table on the right.

## Filter controls

| Group | Controls | Purpose |
|---|---|---|
| **View** | **History**, **Archive** | Selects whether to query the active history table or the archive table. |
| **Duration** | **Operator**, **Minutes** | Filters results to records whose run time matches the selected operator and minute value. The maximum value for **Minutes** is `32767`. |
| **Job Statuses** | **Failed**, **Finished OK**, **Marked Failed**, **Marked Finished OK**, **Skipped** | Filters job history records by one or more final job statuses. |
| **Run Dates** | **Start**, **End** | Sets the date range for the query. If you select a start date that is after the current end date, the end date automatically advances to match. |

## Action buttons

| Button | Action |
|---|---|
| **View History** | Runs the query and populates the schedule and job tree. |
| **Export Data** | Saves the currently displayed detail table to a CSV file named `History.csv`. |
| **Reset View** | Clears all filter selections and resets dates to today. |

## Schedule and job tree

After you select **View History**, the left pane displays a tree of schedules. Expand a schedule to see its jobs. Selecting a schedule or job in the tree loads the corresponding history records into the detail table on the right.

## Detail table columns

When you select a **schedule** in the tree, the detail table shows:

- **Schedule Date**
- **Schedule Started**
- **Schedule Ended**
- **Run Time**
- **Ran As Schedule Name**

When you select a **job** in the tree, the detail table shows:

- **Schedule Date**
- **Job Started**
- **Job Ended**
- **Run Time**
- **Machine Name**
- **Final Job Status**
- **Exit Description**
- **Ran As Job Name**

You can sort the detail table by selecting a column header.

## Filter text

The schedule and job tree supports a type-filter text box. Type part of a name to narrow the tree to matching entries. To match a string that does not start at the beginning of a name, prefix your search term with `*` (asterisk).

:::tip Example
Type `*Build` to find the `SMA_SKD_BUILD` job in the `AdHoc` schedule.
:::

## Record limit

The maximum number of records returned per query is controlled by the **Maximum Records to Return** preference in Enterprise Manager. The default value is `100000`. If a query reaches this limit, a message prompts you to modify the filter criteria.

## Related procedures

- [Viewing and Exporting History Records](Viewing-and-Exporting-History-Records.md)
