---
title: Current Threshold Values Report
description: "The Current Threshold Values Report displays the currently defined thresholds in OpCon."
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

# Current Threshold Values Report

The **Current Threshold Values Report** displays all currently defined thresholds in OpCon, including each threshold's name, current value, and description. Use this report to audit threshold states across your environment.

:::note
This report has a maximum return limit of 100,000 records.
:::

![A screen showing the Current Threshold Values Report](../../../../../Resources/Images/SM/Library/Reporting/CurrentThresholdsValuesReport.png "Current Threshold Values Report")

## Report columns

| Column | Description |
|---|---|
| **Name** | The threshold name as defined in OpCon. |
| **Value** | The current numeric value of the threshold. |
| **Description** | The optional description assigned to the threshold. |

## Filtering and sorting

This report provides filters for threshold name, value, and description. To open the filters panel, select the menu button (three dots) in any column header, then select **Filter**.

![A screen showing how to open the column menu](../../../../../Resources/Images/SM/Library/Reporting/FilterMenu.png "Column Menu")

## Exporting to CSV

Select the **Export** button to download the report as a CSV file. Active filters are applied to the export.
