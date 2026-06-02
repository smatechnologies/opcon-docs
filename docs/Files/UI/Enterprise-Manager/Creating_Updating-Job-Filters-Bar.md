---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Creating/Updating Job Filters
description: "Job filters in Enterprise Manager narrow the jobs displayed in the Bar Chart view by status, department, access code, or tag."
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

# Creating/Updating Job Filters

Job filters in Enterprise Manager let you narrow the jobs displayed in the Bar Chart view by one or more criteria: job status, department, access code, or tag. You can apply filters at any time, and the view title updates to **Bar Chart (Filtered)** to indicate an active filter. Saved filter selections persist until you reset or change them.

## Apply or Update a Job Filter

To apply or update a job filter in the Bar Chart view, complete the following steps:

1. Under the **Operation** topic, select **Bar Chart**. The **Bar Chart** view opens.
2. Select a date, or select a date and a schedule, to display in the **Bar Chart** view.
3. On the **Bar Chart** toolbar, select **Open the job filter dialog**. The **Job Filter** dialog opens.
4. Select the tab for the filter criteria you want to apply: **Job Statuses**, **Departments**, **Access Codes**, or **Tags**.
5. On the selected tab, select one or more items to include in the filter, or select **Select/Unselect All** to select all available items.
6. Repeat steps 4–5 for each additional filter tab you want to configure.
7. Select **OK** to save the filter, or select **Cancel** to discard your changes.

**Result:** The Bar Chart view refreshes and displays only the jobs matching your selected criteria. The view title changes to **Bar Chart (Filtered)** when at least one filter is active.

:::tip
To clear all active filters at once, open the **Job Filter** dialog and select **Reset**. This unchecks all selections across every tab.
:::
