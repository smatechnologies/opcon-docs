---
title: Using Reports
description: "The Reports view is used to select and view reports."
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

# Using Reports

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Reports** view is used to select and view reports. For conceptual information, refer to [OpCon Reporting](../../../reports/overview.md) in the **Reports** online help. Reports can also be automatically generated using the BIRT Report Generator — refer to [BIRT Report Generator](../../../utilities/Command-line-Utilities/BIRT-Report-Generator.md) in the **Utilities** online help. In medium to large environments, reports may run out of memory due to data volume.

Upon activation, the **Reports** screen displays a list for selecting the preferred report. The appropriate report displays in the **Reports** view based on your selection.

## EM Reports Toolbar

This toolbar resides at the top-right corner of the **Reports** screen. Select any icon on the toolbar below to learn more about its functionality.

![EM Reports toolbar](../../../Resources/Images/EM/EMreportstoolbar.png "EM Reports toolbar")

## BIRT Toolbar

This toolbar resides at the top-left corner of a BIRT report. Select any icon on the toolbar below to learn more about its functionality.

![BIRT toolbar](../../../Resources/Images/EM/EMreportsfulltoolbar.png "BIRT toolbar")

Report any BIRT Report issues to <https://bugs.eclipse.org/bugs/enter_bug.cgi?product=BIRT>}.

## Reports Right-click Menu

right-clicking on a generated report provides the following menu options:

- Select All
- Create Shortcut
- Add to Favorites
- View Source
- Encoding
- Print
- Print Preview
- Refresh
- Export to Microsoft Excel
- Send to OneNote
- Properties

:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Reports?**

Reports allows you to em reports toolbar, birt toolbar, reports right-click menu.

**Q: Who has access to Reports?**

Access to Reports is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**BIRT (Business Intelligence and Reporting Tools)**: The open-source reporting engine used by OpCon to generate predefined and custom reports. Reports are run using the BIRTRptgen.exe utility.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
