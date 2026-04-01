---
title: Viewing and Exporting History Records
description: "Use this procedure to view and Exporting History Records in the Enterprise Manager."
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

# Viewing and Exporting History Records

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view and Exporting History Records in the Enterprise Manager.

## Viewing Records

To view a history record, complete the following steps:

1. Select **History Management** under the **Management** topic. The **History Management screen** displays
2. Select the **History** or **Archive** radio button
3. *(Optional)* Select the **operator** and **minutes**
4. *(Optional)* Select the preferred **Job Statuses** options
5. Enter or select a **start date** and **end date** using the text box or the **calendar icon**

6. Select the **View History** button
7. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) arrow next to the schedule to expose its associated jobs
8. Select the specific **schedule** to display its history information
9. Select the specific **job** to display its history information
10. Select **Close ☒** to close the **History Management** screen

## Exporting Records

The **Export Data** button exports records in comma-separated value (.csv) format via the **Save As** dialog.

## Resetting the View

The **Reset View** button resets all selection options to their defaults.


## FAQs

**Q: Where is Viewing and Exporting History Records located in the Enterprise Manager?**

Select **History Management** under the **Management** topic in the Enterprise Manager navigation pane.

**Q: How many steps does the Viewing and Exporting History Records procedure involve?**

The Viewing and Exporting History Records procedure involves 10 steps. Complete all steps in order and save your changes.

**Q: What does Viewing and Exporting History Records cover?**

This page covers Viewing Records, Exporting Records, Resetting the View.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
