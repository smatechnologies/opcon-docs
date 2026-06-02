---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Creating/Updating Job Filters
description: "Use the Job Filter dialog in Enterprise Manager to narrow the jobs displayed in the PERT view by job status, department, access code, or tag."
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

Job filters in Enterprise Manager narrow the jobs displayed in the PERT view. You can filter by job status, department, access code, or tag, and you can update filters at any time.

To create or update a job filter, complete the following steps:

1. In Enterprise Manager, select **PERT** under the **Operation** topic. The **PERT** view opens.
2. On the **PERT** toolbar, select **Job Filter**. The **Job Filter** dialog opens.
3. Select the tab for the filter criteria you want to apply: **Job Statuses**, **Departments**, **Access Codes**, or **Tags**.
4. On the selected tab, select one or more items to include in the filter. To select all items on the tab at once, select **Select/Unselect All**.
5. Repeat steps 3–4 for any additional filter tabs.
6. Select **OK** to apply the filter, or select **Cancel** to discard changes.

**Result:** The PERT view refreshes and displays only jobs that match the selected criteria. The view tab name updates to show **(Filtered)** when any filter is active.

:::note
To remove all active filters at once, open the **Job Filter** dialog and select **Reset**. This clears all selections across every tab.
:::
