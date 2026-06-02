---
title: Adding Schedule Frequencies
description: "Use this procedure to add schedule frequencies to a schedule in Enterprise Manager."
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

# Adding Schedule Frequencies

A schedule frequency controls which dates OpCon builds a schedule. You can assign a new frequency or reuse an existing one using the **Frequency Definition Wizard** in Enterprise Manager.

## Add a new schedule frequency

To add a new frequency to a schedule, complete the following steps:

1. In the **Administration** navigation category, select **Schedule Master**. The **Schedule Master** editor opens.
2. In the **Schedule Selection** list, select the schedule you want to modify.
3. In the **Schedule Details** section, select the **Frequency** tab.
4. Select **Add**. The **Frequency Definition Wizard** opens.
5. Select the **Create new frequency** option.
6. In the **Frequency Name** field, enter a name for the new frequency. Names are limited to 20 characters and cannot contain special characters such as spaces, quotes, or punctuation symbols.
7. Select **Next**.
8. Define the frequency rules. For more information, see [Frequency Definition](../../../automation-concepts/frequencies.md#frequency-definition).
9. (Optional) Select **Forecast** to preview the calendar dates for the new frequency, then select **OK** to close the forecast window.
10. Select **Finish** to save the frequency and close the wizard.

**Result:** The new frequency is saved and associated with the selected schedule. OpCon also assigns the frequency to all jobs within that schedule.

## Add an existing schedule frequency

To assign an existing frequency to a schedule, complete the following steps:

1. In the **Administration** navigation category, select **Schedule Master**. The **Schedule Master** editor opens.
2. In the **Schedule Selection** list, select the schedule you want to modify.
3. In the **Schedule Details** section, select the **Frequency** tab.
4. Select **Add**. The **Frequency Definition Wizard** opens.
5. Select the **Use existing frequency** option.
6. In the **Frequency** list, select an existing frequency.
7. Select **Next**.
8. (Optional) Select **Forecast** to confirm the frequency selection, then select **OK** to close the forecast window.
9. Select **Finish** to save the assignment and close the wizard.

**Result:** The selected frequency is assigned to the schedule.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
