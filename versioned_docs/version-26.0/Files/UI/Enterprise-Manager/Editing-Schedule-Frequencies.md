---
title: Editing Schedule Frequencies
description: "Use this procedure to edit Schedule Frequencies in the Enterprise Manager."
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

# Editing Schedule Frequencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Schedule Frequencies in the Enterprise Manager.

:::note
A previously defined frequency can be edited only if it is used by that one schedule. If the frequency name is shared with another job or schedule, the details cannot be changed — create a new frequency with a new name instead.
:::

To edit a frequency, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select the **schedule** in the **Schedule Selection** list
3. Select on the **Frequency** tab in the **Schedule Details** frame
4. Select the **existing frequency** in the **Frequency list**
5. Select the **Edit** button. The **Frequency Definition Wizard** displays
6. Enter the changes in the wizard
7. *(Optional)* Select **Forecast** to view the **Forecast** calendars, then select **OK** to close the window
8. Select **Finish** to save changes or **Cancel** to discard them
9. Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen

## FAQs

**Q: Do edits to schedule frequencies take effect immediately?**

Changes saved to schedule frequencies in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
