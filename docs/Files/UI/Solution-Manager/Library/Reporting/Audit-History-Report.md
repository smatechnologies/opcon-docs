---
title: Audit History Report
description: "The Audit History Report shows the history of user updates to the OpCon database."
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

# Audit History Report

The **Audit History Report** shows the history of user updates to the OpCon database. Use this report to track who changed what and when across schedules, jobs, security definitions, and other configuration objects.

![A screen showing the Audit History Report](../../../../../Resources/Images/SM/Library/Reporting/AuditReport.png "Audit History Report")

## Filtering and Sorting

By default, two filters are applied: one limiting results to the current day, and one limiting the category to **Master Job** records. You can adjust these filters or add filters to other columns using the filters panel. Open the filters panel by selecting the filter icon in any column header, or by selecting the menu button (three dots) in any column header and choosing **Filter**.

![A screen showing how to open the filter panel](../../../../../Resources/Images/SM/Library/Reporting/AuditFilterPanel.png "Filter Panel")

_Filter Panel showing the default date and category filters_

![A screen showing how to open the column menu](../../../../../Resources/Images/SM/Library/Reporting/FilterMenu.png "Column Menu")

_Column menu showing the Filter option_

### Available Categories

The **Category** filter accepts the following values:

| Category | Records included |
|---|---|
| **Access Code** | Changes to Access Code definitions |
| **Calendar** | Changes to Calendar definitions |
| **Daily Job** | Changes to jobs in the Daily tables (status changes and job definitions) |
| **Daily Schedule** | Changes to schedules in the Daily tables (status changes and schedule definitions) |
| **Department** | Changes to Department definitions |
| **Event Notification** | Changes to Event Notifications through the Notification Manager |
| **Global Property** | Changes to Global Property definitions |
| **Machine** | Changes to Machine definitions |
| **Machine Group** | Changes to Machine Group definitions |
| **Master Job** | Changes to job definitions in the Master tables |
| **Master Schedule** | Changes to Schedule definitions in Administration |
| **Role** | Changes to Role definitions |
| **Schedule Maintenance** | User-submitted requests for Schedule Build, Schedule Check, and date-level Schedule Deletes |
| **Threshold/Resource** | Changes to Threshold and Resource definitions |
| **User Account** | Changes to User Account definitions, last login, last logout, and Enterprise Manager version used |

## Exporting to CSV

Select the export ![Download button](../../../../../Resources/Images/SM/Library/Logs/Download-Button.png "Export") button to download the report as a CSV file. Any active filters are applied to the export.
