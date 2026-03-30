---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Forecasting Job Frequencies
description: "Use this procedure to forecast Job Frequencies in the Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

#  Forecasting Job Frequencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to forecast Job Frequencies in the Enterprise Manager.

## When Would You Use It?

- You need to configure or manage Forecasting Job Frequencies in OpCon

## Why Would You Use It?

- **Centralized control**: Managing Forecasting Job Frequencies through OpCon provides consistent oversight and a full audit trail for all changes

## Forecasting a Single Job Frequency

To forecast a job frequency, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2.  Select the **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Select the **Frequency** tab in the **Job Properties** frame
5.  Select the **frequency** in the **Frequency list**

6.  Select **Forecast** at the bottom of the **Frequency list** frame. The **Forecast** window displays
7.  *(Optional)* Select the left or right arrow to navigate years
8.  Select **OK** to close the **Forecast** window
9.  Select **Close ☒** to close the **Schedule Master** screen

## Forecasting All Job Frequencies

To forecast all job frequencies, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2.  Select the **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Select the **Frequency** tab in the **Job Properties** frame
5.  Select the **frequency** in the **Frequency list**

6.  Select **Forecast All** at the bottom of the **Frequency list** frame. The **Forecast** window displays
7.  *(Optional)* Select the left or right arrow to navigate years
8.  Select **OK** to close the **Forecast** window
9.  Select **Close ☒** to close the **Schedule Master** screen
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Forecasting Job Frequencies procedure involve?**

The Forecasting Job Frequencies procedure involves 18 steps. Complete all steps in order and save your changes.

**Q: What does Forecasting Job Frequencies cover?**

This page covers Forecasting a Single Job Frequency, Forecasting All Job Frequencies.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
