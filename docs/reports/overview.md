---
sidebar_label: 'Overview'
title: OpCon Reporting
description: "OpCon includes Predefined Reports for gathering information on OpCon status."
product_area: Reports
audience: Business Analyst, Operations Staff
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Business Analyst
  - Operations Staff
  - Reports
last_updated: 2026-03-18
doc_type: conceptual
---

# OpCon Reporting

**Theme:** Configure  
**Who Is It For?** Business Analyst, Operations Staff

## What Is It?

OpCon includes [Predefined Reports](./predefined.md) for gathering information on OpCon status. Custom reports can also be created by querying the database directly using the BIRT Report Designer (download the "All-in-One" release from [http://download.eclipse.org/birt/downloads/](http://download.eclipse.org/birt/downloads/)).

Custom reports can be integrated into the database using the Report Management utility. Refer to [Using Report Management](../Files/UI/Enterprise-Manager/Using-Report-Management.md) in the **Enterprise Manager** online help.

## When Would You Use It?

- OpCon includes [Predefined Reports](./predefined.md) for gathering information on OpCon status

## Why Would You Use It?

- **OpCon Reporting**: OpCon includes [Predefined Reports](./predefined.md) for gathering information on OpCon status

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What reporting options does OpCon provide?**

OpCon includes predefined reports for gathering information on OpCon status. Custom reports can also be created using the BIRT Report Designer and then integrated into OpCon using the Report Management utility.

**Q: What tool is used to create custom reports in OpCon?**

Custom reports are built with the BIRT Report Designer (Eclipse BIRT). Download the "All-in-One" release from the Eclipse BIRT downloads page.

**Q: How are custom reports made available in OpCon?**

After creating a custom report with BIRT, use the Report Management utility in the Enterprise Manager to integrate the report into the OpCon database so it appears alongside predefined reports.

## Glossary

**BIRT (Business Intelligence and Reporting Tools)**: The open-source reporting engine used by OpCon to generate predefined and custom reports. Reports are run using the BIRTRptgen.exe utility.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
