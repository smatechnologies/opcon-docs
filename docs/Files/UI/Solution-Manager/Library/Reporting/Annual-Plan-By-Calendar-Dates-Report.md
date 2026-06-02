---
title: Annual Plan By Calendar Dates Report
description: "The Annual Plan By Calendar Dates Report shows all defined dates on user-defined Annual Plan calendars, grouped by calendar name."
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

# Annual Plan By Calendar Dates Report

The **Annual Plan By Calendar Dates Report** shows all defined dates on user-defined Annual Plan calendars. Results are grouped by calendar name and display each date assigned to that calendar.

:::note
This report has a maximum return limit of 100,000 records.
:::

![A screen showing the Annual Plan By Calendar Dates Report](../../../../../Resources/Images/SM/Library/Reporting/AnnualPlanByCalendarDatesReport.png "Annual Plan By Calendar Dates Report")

## Report columns

| Column | Description |
|---|---|
| **Calendar** | Name of the Annual Plan calendar. |
| **Dates** | Dates assigned to the calendar, formatted as M/dd/yyyy. |

## Filtering and sorting

By default, a schedule date filter is applied to show only dates on or after the current date. You can adjust this filter or add filters to other columns using the filters panel.

To open the filters panel, select the filter button in any column header, or select the menu button (three dots) in any column header and choose **Filter**.

![A screen showing how to open the filter panel](../../../../../Resources/Images/SM/Library/Reporting/ScheduleDateFilterPanel.png "Filter Panel")

_Filter panel showing the default schedule date filter_

![A screen showing how to open the column menu](../../../../../Resources/Images/SM/Library/Reporting/FilterMenu.png "Column Menu")

_Column menu showing the Filter option_

## Exporting to CSV

Select the export ![Download button](../../../../../Resources/Images/SM/Library/Logs/Download-Button.png "Export") button to download the report as a CSV file. Any active filters are applied to the export.
