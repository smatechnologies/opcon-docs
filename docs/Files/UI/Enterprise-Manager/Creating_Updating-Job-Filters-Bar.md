---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Creating/Updating Job Filters
description: "Job filters in Enterprise Manager narrow the jobs displayed in operation views by status, department, access code, or tag."
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

#  Creating/Updating Job Filters

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Job filters in Enterprise Manager let operators narrow the jobs displayed in the Bar Chart view by status, department, access code, or tag. Filters are saved and can be updated as monitoring needs change.

To create or update a job filter, complete the following steps:

1.  Select on **Bar Chart** under the **Operation** topic. The **Bar Chart** screen displays
2.  Select a **date**, or select a **date** and a **schedule**, to display in the **Bar Chart** screen
3.  Select **Open the job filter dialog** on the **Bar Chart** toolbar. The **Job Filter** dialog displays
4.  Select the tab for the filter criteria (e.g., **Job Statuses**, **Departments**, **Access Codes**, or **Tags**)
5.  *(Optional)* For each tab, select the specific option(s) for the job filter, or select **Select/Unselect All** to select all
6.  Select **OK** to save the job filter changes, or select **Cancel** to discard the changes
:::

## FAQs

**Q: How many steps does the Creating/Updating Job Filters procedure involve?**

The Creating/Updating Job Filters procedure involves 6 steps. Complete all steps in order and save your changes.

## Glossary

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
