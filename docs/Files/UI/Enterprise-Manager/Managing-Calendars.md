---
title: Managing Calendars
description: "The Calendars editor in Enterprise Manager defines and maintains OpCon Calendars, including holiday calendars and user-defined calendars."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Calendars
last_updated: 2026-03-18
doc_type: procedural
---

# Managing Calendars

The **Calendars** editor in Enterprise Manager defines and maintains OpCon Calendars. You can use the editor to add or remove calendar dates, copy calendars, view cross-reference information, and delete unused user-defined calendars.

For conceptual information, refer to [Calendars](../../../objects/calendars.md).

:::note
You must have the **Maintain Calendars** function privilege assigned to your role to create, modify, or delete calendars.
:::

## Calendars editor overview

The **Calendars** editor contains the following areas:

- **Selection list** — lists all existing calendars. Select a calendar name to load it in the editor.
- **Name** — the calendar name (maximum 50 characters). This field is read-only for the Master Holiday calendar and schedule-specific holiday calendars.
- **Documentation** — optional description of the calendar's purpose (maximum 4000 characters).
- **Date List** — a date field and calendar control for viewing and selecting dates. Selected dates appear highlighted in **red** for holiday and excluding calendars, and in **green** for user-defined (included) calendars.
- **Year** — a spinner control that navigates the calendar view to a specific year.
- **Delete Old Dates** — removes dates prior to the current period from the selected calendar or from all calendars.
- **Schedules using for holidays** — lists schedules that use the selected calendar as a holiday calendar. This section appears only for user-defined calendars.
- **Schedules/Jobs/Frequencies using this calendar** — lists the schedules, jobs, and frequencies that reference the selected calendar. This section appears only for user-defined calendars.

## Calendars toolbar

The **Calendars** editor toolbar provides the following actions:

![Calendars toolbar](../../../Resources/Images/EM/EMcalendarstoolbar.png "Calendars toolbar")

| Button | Description |
|---|---|
| **Add** | Creates a new user-defined calendar. |
| **Save** | Saves changes to the current calendar name and documentation. |
| **Remove** | Deletes the selected user-defined calendar. Not available for the Master Holiday calendar or schedule-specific holiday calendars. |
| **Find** | Searches for a calendar by name. |
| **Copy** | Opens the **Copy Calendar** dialog to copy the selected calendar to a new calendar. |
| **Cross Reference** | Opens a dialog listing all schedules, jobs, and frequencies that reference the selected calendar. |
| **View Audit** | Opens the audit history for changes made to the selected calendar. |

## Related procedures

- [Adding Holidays or Non-Working Days to Calendars](Adding-Days-to-Calendars.md)
- [Applying Master Calendars to Schedules](Applying-Master-Calendars-to-Schedules.md)
- [Creating User-defined Calendars](Creating-User-defined-Calendars.md)
- [Using User-defined Calendars as Additional Holiday Calendars](Using-User-defined-Calendars.md#Using)
- [Using User-defined Calendars as Annual Plan Calendars](Using-User-defined-Calendars.md#Using2)
- [Using User-defined Calendars as Negative Annual Plan Calendars](Using-User-defined-Calendars.md#Using3)
- [Viewing Additional Calendar Information](Viewing-Additional-Calendar-Info.md)
- [Copying Calendars](Copying-Calendars.md)
- [Deleting Un-used User-defined Calendars](Deleting-User-defined-Calendars.md)
- [Deleting Old Dates](Deleting-Old-Dates.md)
