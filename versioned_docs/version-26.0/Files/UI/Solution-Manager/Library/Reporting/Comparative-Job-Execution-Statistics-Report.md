---
title: Comparative Job Execution Statistics Report
description: "The Comparative Job Execution Statistics Report displays job runtime analytics including average runtime, standard deviation, estimated runtime, and variance analysis."
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

# Comparative Job Execution Statistics Report

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Comparative Job Execution Statistics Report** displays job runtime analytics including average runtime, standard deviation, estimated runtime, and variance analysis.

:::note
This report has a maximum return limit of 100,000 records.
:::

![A screen showing the Comparative Job Execution Statistics Report](../../../../../Resources/Images/SM/Library/Reporting/ComparativeJobExecutionStatisticsReport.png "Comparative Job Execution Statistics Report")

### Filtering & Sorting

This report provides filters for schedule, job, frequency, count, runtime (estimated), runtime (average), runtime (standard deviation), and difference (average - estimated). Open the filters panel by selecting the menu (three dots) in any column header and choosing **Filter**.

![A screen showing how to open the column menu](../../../../../Resources/Images/SM/Library/Reporting/FilterMenu.png "Column Menu")

### Exporting to CSV

Select the export ![Download button](../../../../../Resources/Images/SM/Library/Logs/Download-Button.png "Export") button to download the report as a CSV. Any active filters are applied to the export.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Comparative Job Execution Statistics Report do?**

The **Comparative Job Execution Statistics Report** displays job runtime analytics including average runtime, standard deviation, estimated runtime, and variance analysis.

**Q: Where can you find Comparative Job Execution Statistics Report in OpCon?**

Access Comparative Job Execution Statistics Report through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
