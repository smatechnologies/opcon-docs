---
title: Viewing and Exporting History Records
description: Use History Management in Enterprise Manager to filter, view, and export schedule and job history records.
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Viewing and Exporting History Records

The **History Management** view in Enterprise Manager lets you filter and review past schedule and job run data. You can choose between the active history table and the archive, narrow results by date range, duration, and job status, then export the results to a CSV file.

## View History Records

To view history records, complete the following steps:

1. In the Enterprise Manager navigation pane, select **History Management** under the **Management** topic. The **History Management** view opens.
2. In the **View** group, select the **History** or **Archive** option to specify which data set to query.
3. (Optional) In the **Duration** group, select an **Operator** and enter a value in **Minutes** to filter results by run time.
4. (Optional) In the **Job Statuses** group, select one or more status options: **Failed**, **Finished OK**, **Marked Failed**, **Marked Finished OK**, or **Skipped**.
5. In the **Run Dates** group, enter a **Start** date and an **End** date.
6. Select **View History**. Enterprise Manager populates the schedule and job tree.
7. Select the expand button next to a schedule in the tree to expand its associated jobs.
8. Select a schedule in the tree to display its history records in the detail table. The table shows **Schedule Date**, **Schedule Started**, **Schedule Ended**, **Run Time**, and **Ran As Schedule Name**.
9. Select a job in the tree to display its history records in the detail table. The table shows **Schedule Date**, **Job Started**, **Job Ended**, **Run Time**, **Machine Name**, **Final Job Status**, **Exit Description**, and **Ran As Job Name**.

**Result:** The detail table displays the matching history records. A status message shows the count of returned schedules or jobs. If the maximum record limit is reached, a message prompts you to modify the filter criteria.

## Export History Records

To export the currently displayed history records to a CSV file, complete the following steps:

1. In the **History Management** view, view the records you want to export (see [View History Records](#view-history-records)).
2. Select **Export Data**. A **Save As** dialog opens with `History.csv` as the default file name.
3. Choose a save location and select **Save**.

**Result:** Enterprise Manager saves the displayed records as a comma-separated values (`.csv`) file at the specified location.

## Reset the View

To reset all filter options to their defaults, select **Reset View**.

**Result:** The **View** option returns to **History**, all **Job Statuses** options are cleared, **Operator** is cleared, **Minutes** returns to `0`, and both **Start** and **End** dates return to today's date. The tree and detail table are also cleared.
