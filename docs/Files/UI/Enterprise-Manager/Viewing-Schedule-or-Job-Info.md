---
title: Viewing Schedule and/or Job Information
description: "Use this procedure to view Schedule and/or Job Information in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Viewing Schedule and/or Job Information

Use the **Matrix** view in Enterprise Manager to inspect runtime details for Schedules, jobs, and subschedules on any given date, and to review history records for either.

:::note
When a completed Schedule contains failed jobs, the Matrix view displays it as `ScheduleName ( Completed - Contains Failed Jobs )`. When the Schedule is still in progress with failed jobs, it displays as `ScheduleName ( In Progress - Contains Failed Jobs )`.
:::

## View Schedule information

To view information for a Schedule, complete the following steps:

1. Select **Matrix** under the **Operation** topic. The **Matrix** screen displays.
2. Right-click a **Schedule** in the schedule list and select **Schedule Information**. The **Schedule Information** dialog opens.
3. Review the information, then select **OK** to close the dialog.

**Result:** The **Schedule Information** dialog shows the Schedule name, date, status, work week, start time, actual start time, end time, and tabs for **Post Processes**, **Status Change Explanation**, **Documentation**, and **Configuration**.

## View job information

To view information for a job within a Schedule, complete the following steps:

1. Select **Matrix** under the **Operation** topic. The **Matrix** screen displays.
2. Select a **Schedule** to display its jobs in the **Job** table.
3. Right-click a **job** and select **Job Information**. The **Job Information** dialog opens.
4. Review the information, then select **OK** to close the dialog.

## View subschedule information

To view information for a subschedule, complete the following steps:

1. Select **Matrix** under the **Operation** topic. The **Matrix** screen displays.
2. Select the expand arrow next to a **Schedule** that contains a subschedule. The Schedule expands to show its subschedules.
3. Right-click the **subschedule** and select **SubSchedule Information**. The **SubSchedule Information** dialog opens.
4. Review the **Sub-Schedule Parts** tree, and use the **Job Container Details** and **Schedule Details** tabs to inspect the container job and the subschedule's runtime properties.
5. Select **OK** to close the dialog.

**Result:** The **SubSchedule Information** dialog shows the container job details and the subschedule's Schedule-level information in separate tabs.

## View Schedule history

To view the history for a Schedule, complete the following steps:

1. Select **Matrix** under the **Operation** topic. The **Matrix** screen displays.
2. Right-click a **Schedule** and select **Schedule History**. The **Schedule History** dialog opens.
3. Review the history, then select **Close** to close the dialog.

## View job history

To view the history for a job, complete the following steps:

1. Select **Matrix** under the **Operation** topic. The **Matrix** screen displays.
2. Select a **Schedule** to display its jobs in the **Job** table.
3. Right-click a **job** and select **Job History**. The **Job History** dialog opens.
4. Review the history, then select **OK** to close the dialog.

## Filter and sort the Matrix view

To filter or sort items in the **Matrix** view, complete the following steps:

1. Enter characters in the filter field to narrow the Schedule or job list. Select **Clear** to reset the filter.
2. Select and drag a **job column heading** to reposition the column.
3. Select a column heading once to sort ascending; select it again to sort descending.
