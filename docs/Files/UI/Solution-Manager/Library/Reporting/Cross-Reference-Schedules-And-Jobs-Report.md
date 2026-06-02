---
title: Cross Reference Schedules and Jobs Report
description: "The Cross Reference Schedules and Jobs Report shows all jobs and their associated schedules."
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

# Cross Reference Schedules and Jobs Report

The **Cross Reference Schedules and Jobs Report** shows all jobs and their associated schedules. Use this report to identify which schedules contain a specific job or to see all jobs within a given schedule.

:::note
Report data is updated nightly at 2:00 AM.
:::

:::note
This report has a maximum return limit of 100,000 records.
:::

![A screen showing the Cross Reference Schedules and Jobs Report](../../../../../Resources/Images/SM/Library/Reporting/CrossReferenceSchedulesAndJobReport.png "Cross Reference Schedules and Jobs Report")

## Report columns

| Column | Description |
|--------|-------------|
| **Job Name** | The name of the job as defined in the master schedule. |
| **Schedule Name** | The name of the schedule that contains the job. |

## Filtering and sorting

The report supports filtering by schedule name and job name. To filter the report, complete the following steps:

1. Select the menu button (three dots) in any column header.
2. Select **Filter**.
3. Enter your filter criteria and select **Apply**.

**Result:** The report displays only rows that match your filter criteria.

![A screen showing how to open the column menu](../../../../../Resources/Images/SM/Library/Reporting/FilterMenu.png "Column Menu")

![A screen showing the available filters](../../../../../Resources/Images/SM/Library/Reporting/CrossReferenceSchedulesAndJobFilters.png "Column Filters")

## Exporting to CSV

Select the export ![Download button](../../../../../Resources/Images/SM/Library/Logs/Download-Button.png "Export") button to download the report as a CSV file. Any active filters are applied to the export.
