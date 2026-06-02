---
title: Editing Schedule Frequencies
description: "Use this procedure to edit a schedule frequency in Enterprise Manager."
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

# Editing Schedule Frequencies

Use this procedure to modify an existing frequency on a schedule in Enterprise Manager. Changes saved here affect the master record and apply the next time the schedule is built.

:::note
A frequency can be edited only if it is used by a single schedule. If the frequency name appears on more than one schedule and you do not have All Function Privileges, the definition cannot be changed — create a new frequency with a new name instead.
:::

To edit a schedule frequency, complete the following steps:

1. In the **Administration** navigation pane, select **Schedule Master**. The **Schedule Master** screen opens.
2. Select the schedule in the **Schedule Selection** list.
3. Select the **Frequency** tab in the **Schedule Details** frame.
4. Select the frequency to edit in the **Frequency List**.
5. Select **Edit**. The **Frequency Definition Wizard** opens.
6. Enter your changes in the wizard.
7. *(Optional)* Select **Forecast** to preview the resulting schedule dates. Select **OK** to close the forecast window.
8. Select **Finish** to save your changes, or select **Cancel** to discard them.
9. Close the **Schedule Master** tab when you are finished.

**Result:** The updated frequency definition is saved to the master record and takes effect the next time the schedule is built.

## Frequently Asked Questions

**Do edits to schedule frequencies take effect immediately?**

Changes saved to a schedule frequency in Schedule Master update the master record. They take effect the next time the schedule is built. Edits made directly to daily table records apply only to the current instance and do not affect the master record.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for a given day. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a schedule or job is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which Agent, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
