---
title: Roles and Privileges Report
description: "The Roles and Privileges Report combines all role privilege types — Machine, Machine Group, Batch User, Schedule, Script, Access Code, and Function — into a single view with a Privilege Type column."
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

# Roles and Privileges Report

The **Roles and Privileges Report** combines all role privilege types — Machine, Machine Group, Batch User, Schedule, Script, Access Code, and Function — into a single view. A **Privilege Type** column identifies the source category of each record.

:::note
This report has a maximum return limit of 100,000 records.
:::

![A screen showing the Roles and Privileges Report](../../../../../Resources/Images/SM/Library/Reporting/RolesAndPrivilegesReport.png "Roles and Privileges Report")

## Report Columns

| Column | Description |
|---|---|
| **Role Name** | The name of the role the privilege belongs to. |
| **Role Description** | The description configured for the role. |
| **Privilege Type** | The category of privilege: Machine, Machine Group, Batch User, Schedule, Script, Access Code, or Function. |
| **Privilege Name** | The name of the specific object or function the privilege grants access to. |
| **Can Update** | Indicates whether the role has update permission for the privilege object. Applies to Machine, Machine Group, and Access Code privilege types. |
| **Department Name** | The department associated with the privilege, when applicable. |

## Filtering

To filter the report, complete the following steps:

1. Select the menu button (three dots) in any column header.
2. Select **Filter**.
3. Enter or select filter criteria for one or more columns: role name, role description, privilege type, privilege name, can update, or department name.

**Result:** The report updates to display only records that match the active filters.

![A screen showing how to open the column menu](../../../../../Resources/Images/SM/Library/Reporting/FilterMenu.png "Column Menu")

## Exporting to CSV

To export the report, select the export ![Download button](../../../../../Resources/Images/SM/Library/Logs/Download-Button.png "Export") button. The report downloads as a CSV file. Any active filters are applied to the export.
