---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Filter Text
description: "Use the Filter Text field in the Enterprise Manager List view to narrow the display to specific schedules or jobs by name."
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

# Using Filter Text

The Filter Text field in the **List** view lets you narrow the displayed schedules and jobs by name without changing the underlying daily data. You can match by name prefix or use a leading asterisk (`*`) to search anywhere within a name.

## Filter the List View

To filter schedules and jobs in the **List** view, complete the following steps:

1. In Enterprise Manager, select **List** under the **Operation** topic. The **Daily list** view opens.
2. In the **Type Filter Text** field at the top of the view, type part of or the full name of the schedule or job you want to find. The list updates as you type, showing only items whose names match your entry.
   - To match names that contain a word rather than start with it, type an `*` (asterisk) before the word. For example, `*payroll` matches any name that contains "payroll".
3. To clear the filter and return to the full list, select the **Clear** button to the right of the filter field.

**Result:** The **Daily list** view displays only the schedules and jobs whose names match your filter text. Selecting **Clear** restores the complete list.
