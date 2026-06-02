---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Calendars
description: "Use this procedure to edit an existing calendar in Solution Manager."
product_area: Solution Manager
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

# Editing Calendars

A calendar is a named collection of dates that schedules and frequencies use to determine when automation runs or is excluded. You can update the name, description, year view, or selected dates for any existing calendar in the **Library** section of Solution Manager.

## Edit a Calendar

To edit an existing calendar, complete the following steps:

1. In Solution Manager, go to **Library** > **Calendars**.
2. Select the calendar you want to edit, then select **Edit**. The **Calendar** dialog opens.
3. Update any of the following fields as needed:
   - **Name** — Required. The unique identifier for the calendar.
   - **Description** — Optional. A brief description of the calendar's purpose.
   - **Year** — The year displayed in the date picker. Change the year to add or remove dates in a different year.
   - **Dates** — Select individual dates to include in the calendar. To remove all selected dates, select **Clear**.
4. Select **Save** to apply your changes, or **Cancel** to discard them.

**Result:** The calendar is updated and available for use by schedules and frequencies.

## Considerations

- Changes saved to a master calendar take effect the next time a schedule record that references it is built or rebuilt.
- Selecting **Clear** removes all dates from the calendar for the currently displayed year. Dates in other years are not affected.
