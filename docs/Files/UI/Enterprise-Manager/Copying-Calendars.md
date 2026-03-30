---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Calendars
description: "Use this procedure to copy Calendars in the Enterprise Manager."
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

#  Copying Calendars

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Calendars in the Enterprise Manager.

To copy a calendar, complete the following steps:

1.  Select on **Calendars** under the **Administration** topic. The **Calendars** screen displays
2.  Select a **calendar** in the **Calendar** list, or select the **Find** button to locate the calendar
3.  Select the **Copy** button on the **Calendar** toolbar. The **Copy Calendar** dialog displays
4.  Select a **calendar name** in the **Select Calendar** list
5.  Select the **OK** button
6.  Select the **x** to the right of the **Calendar** tab to close the **Calendar** screen

## When Would You Use It?

- An existing Calendars definition needs to be duplicated in Enterprise Manager
- A new Calendars with similar settings to an existing one needs to be created quickly

## Why Would You Use It?

- **Save configuration time**: Duplicating an existing Calendars eliminates redundant data entry and ensures the new definition inherits proven settings

## FAQs

**Q: Why would you copy calendars instead of creating a new one?**

Copying calendars is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying calendars require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original calendars record.

## Glossary


**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine eligibility. Calendars can mark days to include or exclude from schedule builds.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.
