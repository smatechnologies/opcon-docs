---
title: Event Details by Date Report
description: "The Event Details by Date Report shows all daily triggered events with their schedules, jobs, trigger, match, and event details."
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

# Event Details by Date Report

The **Event Details by Date Report** shows all daily triggered events with their Schedules, Jobs, trigger conditions, match criteria, and event details. Use this report to audit which events fired on a given date and to verify that automation triggers behaved as expected.

:::note
Report data is updated nightly at 2:00 AM.
:::

:::note
This report has a maximum return limit of 100,000 records.
:::

![A screen showing the Event Details Report](../../../../../Resources/Images/SM/Library/Reporting/EventDetailsByDateReport.png "Event Details Report")

## Report Columns

| Column | Description |
|---|---|
| **Date** | The Schedule date on which the event was triggered |
| **Schedule Name** | The name of the Schedule associated with the event |
| **Job Name** | The name of the Job that triggered the event |
| **Trigger** | The condition (such as Job Status) that caused the event to fire |
| **Match** | The feedback value matched to evaluate the trigger condition |
| **Event Details** | The full event definition that was sent when the trigger fired |

## Filtering and Sorting

A Schedule date filter is applied by default to show only dates on or after the current date. You can adjust this or add filters to other columns using the filters panel. Open the filters panel by selecting the filter icon in the header, selecting any column with an active filter, or selecting the menu button (three dots) in any column header and choosing **Filter**.

![A screen showing how to open the filter panel](../../../../../Resources/Images/SM/Library/Reporting/ScheduleDateFilterPanel.png "Filter Panel")

_Filter Panel showing the default schedule date filter_

![A screen showing how to open the column menu](../../../../../Resources/Images/SM/Library/Reporting/FilterMenu.png "Column Menu")

_Column menu showing the Filter option_

## Exporting to CSV

Select the **Export** button to download the report as a CSV file. Any active filters are applied to the export.
