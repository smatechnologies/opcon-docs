---
title: Current Global Properties Report
description: "The Current Global Properties Report displays the currently defined global properties in OpCon."
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

# Current Global Properties Report

The **Current Global Properties Report** displays all global properties currently defined in OpCon, including each property's name, value, and description.

:::note
This report has a maximum return limit of 100,000 records.
:::

:::note
Encrypted property values display as `****` in the report output.
:::

![A screen showing the Current Global Properties Report](../../../../../Resources/Images/SM/Library/Reporting/CurrentGlobalPropertiesReport.png "Current Global Properties Report")

## Report Columns

| Column | Description |
|---|---|
| **Property Name** | The name of the global property. |
| **Property Value** | The current value of the global property. Encrypted values display as `****`. |
| **Description** | The description associated with the global property. |

## Filtering and Sorting

The report supports filtering by property name, value, and description. To open the filters panel, select the menu button (three dots) in any column header and select **Filter**.

![A screen showing how to open the column menu](../../../../../Resources/Images/SM/Library/Reporting/FilterMenu.png "Column Menu")

## Exporting to CSV

Select the **Export** button to download the report as a CSV file. Active filters are applied to the export.
