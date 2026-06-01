---
title: Viewing Job Lists for Schedules
description: "View the list of jobs for a specific job status in a schedule or subschedule using the Pie Chart view in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
doc_type: procedural
---

# Viewing Job Lists for Schedules

The **Pie Chart** view in Enterprise Manager lets you see all jobs for a particular job status in a schedule. You can link the **Pie Chart** view with the **Daily list** view so that selections in one view automatically update the other. Right-clicking a pie slice opens a context menu where you can open the **Jobs list** dialog for the selected status.

## View the job list for a schedule

To view the job list for a schedule, complete the following steps:

1. Select **List** under the **Operation** topic. The **Daily list** screen displays.
2. Select **Pie Chart** under the **Operation** topic. The **Pie Chart** screen displays.
3. Select and drag the **Pie Chart** tab to the right side of the screen until the pointer changes to a right-pointing arrow, then release.
4. Select the **Listen Selection** button on the **Pie Chart** toolbar to enable the view to receive selection changes from other views.
5. Select the **Send Selection** button on the **Daily list** toolbar to enable the view to send selection changes to other views.
6. In the **Daily list** view, select a date, or select a date and then a schedule.
7. Right-click the pie or a pie slice in the **Pie Chart** view.
8. *(Optional)* Select **Refresh Chart** to update the chart data.
9. Select **Jobs list**. The **Jobs \<job status name\>** dialog displays, listing all jobs with that status.
10. Select **OK** to close the dialog.

**Result:** The **Jobs \<job status name\>** dialog closes and you return to the **Pie Chart** view.

## View the job list for a subschedule

To view the job list for a subschedule, complete the following steps:

1. In the **Daily list** view, select a date, and optionally select a schedule that contains the subschedule.
2. Select the subschedule.
3. Right-click the pie slice for the subschedule in the **Pie Chart** view.
4. Select **Jobs list**. The **Jobs \<job status name\>** dialog displays, listing all jobs in the subschedule with that status.
5. Select **OK** to close the **Jobs list** dialog.

**Result:** The **Jobs \<job status name\>** dialog closes and you return to the **Pie Chart** view.
