---
title: Frequencies and Associated Jobs Report
description: "The Frequencies and Associated Jobs Report shows all frequencies with their associated schedules and jobs, sorted by frequency name."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Frequencies and Associated Jobs Report

The **Frequencies and Associated Jobs Report** shows all frequencies with their associated schedules and jobs. Results are sorted first by frequency name, then by frequency code, and then by schedule name.

:::note
Report data is updated nightly at 2:00 AM.
:::

![A screen showing the Frequencies and Associated Jobs Report](../../../../../Resources/Images/SM/Library/Reporting/FrequenciesAndAssociatedJobsReport.png "Frequencies and Associated Jobs Report")

## Filtering and Sorting

This report provides filters for frequency name, schedule name, and job name. To open the filters panel, select the menu (three dots) in any column header and choose **Filter**.

![A screen showing how to open the column menu](../../../../../Resources/Images/SM/Library/Reporting/FilterMenu.png "Column Menu")

![A screen showing the available filters](../../../../../Resources/Images/SM/Library/Reporting/FrequenciesAndAssociatedJobsFilters.png "Column Filters")

## Exporting to CSV

Select the **Export** button to download the report as a CSV file. Any active filters are applied to the exported data.

## Columns

| Column | Description |
|---|---|
| **Frequency Name** | The name of the frequency defined in the master schedule. |
| **Schedule Name** | The name of the schedule that uses the frequency. |
| **Job Name** | The name of the job assigned to the frequency within the schedule. |

## Related Topics

- [List Reports](./List-Reports.md)
