---
title: Viewing and Exporting Audit Records
description: "Use Audit Management in Enterprise Manager to view audit records and export them to a CSV file."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-05-29
doc_type: procedural
---

# Viewing and Exporting Audit Records

**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Audit Management in Enterprise Manager lets you view audit records and export them to a comma-separated value (`.csv`) file. An audit record is a log entry that captures a change made to an OpCon object, including the date and time, the user who made the change, the machine, the data that changed, and the original and final values.

You filter audit records by user, audit category, and date range, then view the matching records in a sortable table. From the same screen, you can export the displayed records to a CSV file for reporting or retention.

The **Audit Management** screen displays the following columns for each record:

| Column | Description |
|---|---|
| **Date** | The date and time the change was recorded. |
| **User** | The user account that made the change. |
| **Machine** | The machine associated with the change. |
| **Data Changed** | The field or item that changed. |
| **Original Value** | The value before the change. |
| **Final Value** | The value after the change. |
| **Category** | The audit category of the changed object. |
| **Name** | The name of the affected object. |

## Viewing Audit Records

To view audit records, complete the following steps:

1. Under the **Management** topic, select **Audit Management**. The **Audit Management** screen displays.
2. In the **Users** list, select a user. To include every user, select **All Users**.
3. In the **Audit Categories** list, select an audit category. To include every category, select **All Categories**.
4. In the **Date Range** group, set the **Start** and **End** dates. Type a date in each field, or use the date field's calendar button to select one.
5. Select **View Audit**.

**Result:** The table displays the audit records that match your filter. The result label shows the number of records returned. To narrow the list further, type text in the filter field above the table.

To copy records from the table, select one or more rows, open the context menu for the selection, and select **Copy** (or press **Ctrl+C**).

## Exporting Audit Records

To export the displayed audit records, complete the following steps:

1. View audit records by following the steps in [Viewing Audit Records](#viewing-audit-records).
2. Select **Export Data**.
3. In the save dialog, choose a location and file name. The default file name is `AuditReport.csv`.
4. Save the file.

**Result:** Enterprise Manager exports the displayed records to the CSV file you specified.

If no records are displayed when you select **Export Data**, the warning **There is no audit record to be exported** appears and no file is created.

## FAQs

**Q: What is the default audit category and date range when the screen opens?**

When the **Audit Management** screen opens, the **Audit Categories** list defaults to **Master Job** and the date range defaults to a single day. Change the filters and select **View Audit** to load other records.

**Q: What format are exported records saved in?**

Records export as a comma-separated value (`.csv`) file that you can open in a spreadsheet application.

## Glossary

**Audit Record**: A log entry that records a change made to an OpCon object. Each record captures the date and time, the user account and machine, the item affected, and the original and final values.
