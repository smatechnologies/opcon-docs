---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Schedule Build Queue
description: "The Schedule Build Queue page lists all active and completed schedule build requests, showing status, progress, and links to build logs."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: reference
---

# Using Schedule Build Queue

The **Schedule Build Queue** page displays all schedule build requests that are currently building or have completed building. Each request is listed in reverse chronological order by the time it was submitted.

To access the Schedule Build Queue, select the **Queue** button from the Schedule Build page toolbar.

![Schedule Build Queue](../../../Resources/Images/SM/Schedule-Build-Queue.png "Schedule Build Queue")

## Required Privileges

- **Build Daily Schedules** — required to access the Schedule Build page and submit build requests.
- **View Schedule Build Log** — required to access the Schedule Build Queue page and open build log files.

## Queue Layout

The queue displays build requests in a tree structure. Select a row to expand or collapse it. Right-click a row to expand or collapse it and all its child rows recursively.

### Build Request Row

Each top-level row represents one build request and shows the following columns:

| Column | Description |
|--------|-------------|
| Request time | The date and time the build was submitted, with a status icon indicating the overall result. |
| Requested by | The login name of the user who submitted the request. |
| Progress | When building is still in progress, shows a spinner and the count of completed builds out of the total (for example, `Building 2/5`). |

### Date Row

Expanding a build request row reveals one child row per build date. Each date row shows the date and an aggregate status icon for all schedules built on that date.

### Schedule Result Row

Expanding a date row reveals one child row per schedule. Each result row shows:

| Column | Description |
|--------|-------------|
| Schedule name | The name of the schedule, with a status icon. Select the name to go to the Processes view filtered to that schedule and date. |
| Jobs built | The number of jobs built for the schedule, or **Failed** if the build failed. |
| Log file | The name of the build log file. Select the log file name to open the **Schedule Build Log** dialog. Requires the **View Schedule Build Log** privilege. |

## Status Icons

| Status | Icon | Meaning |
|--------|------|---------|
| Building | Circle (outline) | The schedule build request is still in progress. |
| Success | Check circle | The schedule built successfully and contains at least one job. |
| Warning | Exclamation triangle | The schedule built successfully but contains no jobs. |
| Failed | Times circle | The schedule build failed or contains at least one failed build result. |

## Viewing a Build Log

To view the build log for a completed schedule build, complete the following steps:

1. Expand the build request row, then expand the date row to see the schedule result rows.
2. In the **Log file** column of the result row, select the log file name.

**Result:** The **Schedule Build Log** dialog opens and displays the log content for that build result.

:::note
The log file link is only active if you have the **View Schedule Build Log** function privilege. If you do not have this privilege, a lock icon is shown next to the log file name and selecting it has no effect.
:::

## Related Topics

- [Managing Schedules](Managing-Schedules.md)
