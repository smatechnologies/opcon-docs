---
title: Current Resource Values Report
description: "The Current Resource Values Report displays the currently defined resources in OpCon."
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

# Current Resource Values Report

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Current Resource Values Report** displays the currently defined resources in OpCon.

:::note
This report has a maximum return limit of 100,000 records.
:::

![A screen showing the Current Resource Values Report](../../../../../Resources/Images/SM/Library/Reporting/CurrentResourcesValuesReport.png "Current Resource Values Report")

### Filtering & Sorting

This report provides filters for resource name, value, description, and in use. Open the filters panel by selecting the menu (three dots) in any column header, then select **Filter**.

![A screen showing how to open the column menu](../../../../../Resources/Images/SM/Library/Reporting/FilterMenu.png "Column Menu")

### Exporting to CSV

Select the export ![Download button](../../../../../Resources/Images/SM/Library/Logs/Download-Button.png "Export") button to download the report as a CSV. Active filters are applied to the export.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Current Resource Values Report do?**

The **Current Resource Values Report** displays the currently defined resources in OpCon.

**Q: Where can you find Current Resource Values Report in OpCon?**

Access Current Resource Values Report through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
