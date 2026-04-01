---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Calendars
description: "Use this procedure to copy Calendars in Solution Manager."
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

# Copying Calendars

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Calendars in Solution Manager.

## Copying User-Defined Calendars

User-defined calendars do not begin with **(HC:)** in the calendar name. The copy function copies all properties except the calendar name to a new calendar.

To copy a user-defined calendar, complete the following steps:

1. Select the calendar to copy from the list
2. Select the **Copy** button on the **Calendar** toolbar. The **Copy Calendar** dialog displays
3. Enter a new name in the **Name** field
4. _(Optional)_ Modify the description in the **Description** field
5. _(Optional)_ Modify the dates. To remove all dates, select **Clear**
6. Select **Save** to save the copied calendar or **Cancel** to discard changes

## Copying Holiday Calendars

Holiday calendars are indicated by **(HC:)** in the calendar name. The copy function copies dates from the existing holiday calendar to another holiday calendar.

To copy a holiday calendar, complete the following steps:

1. Select the holiday calendar to copy from the list
2. Select the **Copy** button on the **Calendar** toolbar. A dialog displays listing available holiday calendars
3. Select the target holiday calendar
4. Select **OK** to copy the dates or **Cancel** to cancel

## FAQs

**Q: Why would you copy calendars instead of creating a new one?**

Copying calendars is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying calendars require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original calendars record.

## Glossary


**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine eligibility. Calendars can mark days to include or exclude from schedule builds.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operations, and building self-service requests. Accessible from any modern web browser.
