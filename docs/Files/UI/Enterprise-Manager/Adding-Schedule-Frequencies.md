---
title: Adding Schedule Frequencies
description: "Use this procedure to add Schedule Frequencies in the Enterprise Manager."
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

# Adding Schedule Frequencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Schedule Frequencies in the Enterprise Manager.

## When Would You Use It?

- You need to add Schedule Frequencies in Enterprise Manager
- The environment is expanding and requires additional Schedule Frequencies to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Schedule Frequencies to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Schedule Frequencies and when

## Adding New Schedule Frequencies

To add a new frequency, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select the **schedule** in the **Schedule Selection** list
3. Select the **Frequency** tab in the **Schedule Details** frame
4. Select **Add**. The **Frequency Definition Wizard** displays
5. Select the **Create new frequency** radio button

6. Enter a *name* describing the new frequency in the **Frequency Name** text box
7. Select **Next**
8. Define the **Schedule Frequency**. For more information, refer to [Frequency Definition](../../../automation-concepts/frequencies.md#frequency-definition) in the **Concepts** online help
9. *(Optional)* Select **Forecast** to view the calendar for the new frequency, then select **OK** to close the **Forecast** window
10. Select **Finish** to save and close the wizard
11. Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen

## Adding Existing Schedule Frequencies

To add an existing frequency, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select the **schedule** in the **Schedule Selection** list
3. Select the **Frequency** tab in the **Schedule Details** frame
4. Select **Add**. The **Frequency Definition Wizard** displays
5. Select the **Using existing frequency** radio button

6. Select an **existing frequency** in the **Frequency** list or use **Find** to locate it
7. Select **Next**
8. Select **Forecast** to confirm the frequency selection, then select **OK** to close the **Forecast** window
9. Select **Back** to select another existing or [create a new frequency](#Adding_New_Schedule_Frequency)
10. Select **Finish** to save and close the wizard
11. Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How do you save a new schedule frequencies record?**

After completing the required fields, select the **Save** button on the toolbar to save the schedule frequencies record.

**Q: Can you add schedule frequencies for multiple platforms?**

Yes. This page covers schedule frequencies for multiple platforms or contexts: Adding New Schedule Frequencies, Adding Existing Schedule Frequencies.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
