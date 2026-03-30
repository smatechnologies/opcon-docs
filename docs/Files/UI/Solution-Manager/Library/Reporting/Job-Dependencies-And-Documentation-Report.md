---
title: Job Dependencies and Documentation Report
description: "The Job Dependencies and Documentation Report is used to view daily job dependencies, documentation, and related scheduling information."
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

# Job Dependencies and Documentation Report

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Job Dependencies and Documentation Report** is used to view daily job dependencies, documentation, and related scheduling information.

:::info
By default, this report shows data for schedules on or after today's date.
:::

:::note
This report has a maximum return limit of 100,000 records.
:::

![A screen showing the Job Dependencies and Documentation Report](../../../../../Resources/Images/SM/Library/Reporting/JobDependenciesAndDocumentationReport.png "Job Dependencies and Documentation Report")

### Filtering & Sorting

A schedule date filter is applied by default to show only dates on or after the current date. You can adjust this or add filters to other columns using the filters panel. Open the filters panel by selecting the filter icon in the header, selecting any column with an active filter, or selecting the menu (three dots) in any column header and choosing **Filter**. The default filter can be adjusted.

![A screen showing how to open the filter panel](../../../../../Resources/Images/SM/Library/Reporting/ScheduleDateFilterPanel.png "Filter Panel")

_Filter Panel showing the default schedule date filter_

![A screen showing how to open the column menu](../../../../../Resources/Images/SM/Library/Reporting/FilterMenu.png "Column Menu")

_Column menu showing the Filter option_

### Exporting to CSV

Select the export ![Download button](../../../../../Resources/Images/SM/Library/Logs/Download-Button.png "Export") button to download the report as a CSV. Any active filters are applied to the export.

## When Would You Use It?

- The **Job Dependencies and Documentation Report** is used to view daily job dependencies, documentation, and related scheduling information

## Why Would You Use It?

- **Job Dependencies**: The **Job Dependencies and Documentation Report** is used to view daily job dependencies, documentation, and related scheduling information

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Job Dependencies and Documentation Report do?**

The **Job Dependencies and Documentation Report** is used to view daily job dependencies, documentation, and related scheduling information.

**Q: Where can you find Job Dependencies and Documentation Report in OpCon?**

Access Job Dependencies and Documentation Report through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
