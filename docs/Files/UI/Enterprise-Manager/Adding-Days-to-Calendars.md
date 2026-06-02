---
title: Adding Holidays or Non-Working Days to Calendars
description: "Use this procedure to add or remove holidays and non-working days on a calendar in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-02
doc_type: procedural
---

# Adding Holidays or Non-Working Days to Calendars

Calendars in OpCon store named collections of dates that schedules and frequencies use to determine when automation runs or is excluded. A holiday or non-working day is a date you mark on a holiday calendar — either the Master Holiday Calendar or a user-defined holiday calendar — so that OpCon treats that date as excluded. Dates marked as non-working appear in red on the calendar widget.

You must have the **Maintain Calendars** privilege to add or remove dates.

## Add a holiday or non-working day

To add a holiday or non-working day to a calendar, complete the following steps:

1. In Enterprise Manager, select **Calendars** under the **Administration** topic in the navigation pane. The **Calendars** screen opens.
2. In the **Selection** list, select the holiday calendar you want to modify (for example, **Master Holiday** or a user-defined holiday calendar).
3. Use the **Year** field to go to the year that contains the date you want to add.
4. In the calendar widget, select the date to mark as a holiday or non-working day.

**Result:** The date is saved immediately and appears highlighted in red in the calendar widget. The date also appears in the **Date List** field above the calendar.

:::note
Selecting a date that is already marked toggles it off, removing it from the calendar. No separate save step is required — changes are committed on each selection.
:::

## Remove a holiday or non-working day

To remove a date that was previously marked as a holiday or non-working day, complete the following steps:

1. In Enterprise Manager, select **Calendars** under the **Administration** topic in the navigation pane.
2. In the **Selection** list, select the calendar that contains the date you want to remove.
3. Use the **Year** field to go to the year that contains the date.
4. In the calendar widget, select the highlighted date you want to remove.

**Result:** The date is removed from the calendar immediately and is no longer highlighted.

## Delete old dates

The **Delete Old Dates** button removes past dates from a calendar to keep the date list manageable.

To delete old dates, complete the following steps:

1. In Enterprise Manager, select **Calendars** under the **Administration** topic in the navigation pane.
2. In the **Selection** list, select the calendar you want to clean up.
3. Select **Delete Old Dates**.
4. In the confirmation dialog, choose whether to delete old dates from the current calendar only or from all calendars.
5. Select **Yes** to confirm.

**Result:** All dates older than 30 days before today are removed from the selected calendar or all calendars, depending on your choice.
