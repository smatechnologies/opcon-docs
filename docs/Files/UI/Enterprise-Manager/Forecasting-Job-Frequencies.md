---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Forecasting Job Frequencies
description: "Use the Forecast and Forecast All buttons in Enterprise Manager Job Master to preview the dates a job frequency will run."
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

# Forecasting Job Frequencies

The **Forecast** window in Enterprise Manager displays a full-year calendar view of the dates a job frequency is scheduled to run. Use **Forecast** to preview a single frequency and **Forecast All** to preview every frequency assigned to a job at once.

The calendar uses color coding to distinguish date types:

- Highlighted dates — dates the frequency is eligible to run
- **Non Working Day** — days outside the schedule's working-day definition (shown in red)
- **Non Working Day (Holiday Calendar)** — non-working days sourced from a holiday calendar (shown in red)
- **Excluded** — dates excluded by frequency rules or calendar assignments (shown in magenta)

## Forecasting a Single Job Frequency

To preview the run dates for one frequency, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Frequency** tab in the **Job Properties** frame.
5. Select the frequency in the **Frequency List**.
6. Select **Forecast** at the bottom of the **Frequency List** frame. The **Forecast** window displays a twelve-month calendar for the current year.
7. (Optional) Select the left or right arrow to move to the previous or next year.
8. (Optional) Select **Wide View** to expand the calendar to four months per row.
9. Select **OK** to close the **Forecast** window.

## Forecasting All Job Frequencies

To preview the run dates for all frequencies assigned to a job, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays.
2. Select the schedule in the **Schedule** list.
3. Select the job in the **Job** list.
4. Select the **Frequency** tab in the **Job Properties** frame.
5. Select any frequency in the **Frequency List**.
6. Select **Forecast All** at the bottom of the **Frequency List** frame. The **Forecast** window displays all frequencies color-coded by name for the current year.
7. (Optional) Select the left or right arrow to move to the previous or next year.
8. (Optional) Select **Wide View** to expand the calendar to four months per row.
9. Select **OK** to close the **Forecast** window.
