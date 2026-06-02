---
title: Schedule and Job History Report
description: "The Schedule and Job History Report is used to view schedule and job history information."
product_area: Solution Manager
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

# Schedule and Job History Report

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Schedule and Job History Report** displays schedule and job history information.

![A screen showing the Schedule and Job History Report](../../../../../Resources/Images/SM/Library/Reporting/ScheduleJobReport.png "Schedule and Job History Report")

### Filtering and Sorting

Two filters are applied by default: one limits start time to the current day, and the other pulls only non-archived records. You can adjust these or add filters to other columns using the filters panel. Open the filters panel by selecting the filter icon in the header, selecting any column with an active filter, or selecting the menu (three dots) in any column header and choosing **Filter**. Both default filters are required but can be adjusted.

![A screen showing how to open the filter panel](../../../../../Resources/Images/SM/Library/Reporting/ScheduleJobFilterPanel.png "Filter Panel")

_Filter Panel showing the default start time and is archived filters_

![A screen showing how to open the column menu](../../../../../Resources/Images/SM/Library/Reporting/FilterMenu.png "Column Menu")

_Column menu showing the Filter option_

### Exporting to CSV

Select the export ![Download button](../../../../../Resources/Images/SM/Library/Logs/Download-Button.png "Export") button to download the report as a CSV. Any active filters are applied to the export.

## FAQs

**Q: What does the Schedule and Job History Report display?**

The **Schedule and Job History Report** displays schedule and job history information. By default, results are filtered to the current day and non-archived records only.

**Q: Where can you find the Schedule and Job History Report in OpCon?**

Go to **Library > Reporting** in Solution Manager and select **Schedule and Job History Report** from the REPORTS tab.

## Glossary

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
