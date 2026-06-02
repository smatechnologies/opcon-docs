---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Creating/Updating Job Filters
description: "Job filters in Enterprise Manager narrow the jobs displayed in the Daily list view by date, status, department, access code, or tag."
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

Job filters in Enterprise Manager let you narrow the jobs displayed in the **Daily list** view by date, status, department, access code, or tag. You can create or update a filter at any time to focus on the jobs that matter most.

When a filter is active, the view title updates to show **(Filtered)** to indicate that not all jobs are displayed.

## Apply or Update a Job Filter

To apply or update a job filter in the Daily list view, complete the following steps:

1. In Enterprise Manager, go to **Operation** and select **List**. The **Daily list** view opens.
2. On the **Daily list** toolbar, select the **Open the job filter dialog** button. The **Job Filter** dialog opens.
3. Select the tab for the criteria you want to filter by: **Dates**, **Job Statuses**, **Departments**, **Access Codes**, or **Tags**.
4. On the selected tab, select the specific items you want to include, or select **Select/Unselect All** to select every item in that list.
5. Repeat steps 3–4 for any additional filter tabs as needed.
6. Select **OK** to save the filter.

**Result:** The **Daily list** view refreshes and displays only jobs that match the selected filter criteria. The view title shows **(Filtered)** while any filter is active.

## Clear a Job Filter

To remove all active filter criteria, complete the following steps:

1. On the **Daily list** toolbar, select the **Open the job filter dialog** button. The **Job Filter** dialog opens.
2. Select **Reset** to clear all selections across every tab.
3. Select **OK** to apply the cleared filter.

**Result:** The **Daily list** view returns to showing all jobs and the **(Filtered)** indicator is removed from the view title.
