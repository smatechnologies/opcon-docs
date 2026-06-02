---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Additional Calendar Information
description: How to view cross-references and audit records for a calendar in Enterprise Manager.
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

# Viewing Additional Calendar Information

Use the **Calendars** editor in Enterprise Manager to see which schedules, jobs, and frequencies reference a calendar and to review the audit history of changes made to it.

## View cross-references for a calendar

The Cross Reference dialog lists every schedule, job, and frequency that uses the selected calendar, grouped by relationship type.

To view cross-references for a calendar, complete the following steps:

1. Under the **Administration** topic, select **Calendars**.
2. In the **Calendar** list, select a calendar.
3. On the toolbar, select the **Cross Reference** button.

**Result:** The Cross Reference dialog opens and displays the schedules, jobs, and frequencies that reference the calendar. Select **OK** to close the dialog.

## View audit records for a calendar

To view the audit history for a calendar, complete the following steps:

1. Under the **Administration** topic, select **Calendars**.
2. In the **Calendar** list, select a calendar.
3. On the toolbar, select the **View Audit** button.

**Result:** The audit dialog opens and displays all recorded changes to the calendar, including the timestamp, user, and before-and-after values for each change. Select **Close** to dismiss the dialog.
