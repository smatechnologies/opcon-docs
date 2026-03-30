---
title: Using Schedule Extract
description: "The Schedule Extract is an Enterprise Manager plug-in that extracts information for a selected schedule and creates SMADDI XML format files."
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

# Using Schedule Extract

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Schedule Extract** is an Enterprise Manager plug-in that extracts information for a selected schedule and creates SMADDI XML format files. For more information, refer to [SMA Dynamic Data Input Introduction](../../../utilities/SMA-Dynamic-Data-Input/Introduction.md) in the **Utilities** online help. For information on automating Schedule Extract, refer to [Schedule Extract Command-line Interface](../../../utilities/Command-line-Utilities/Schedule-Extract-Command-line-Interface.md) in the **Utilities** online help.

## When Would You Use It?

- You need to work with The **Schedule Extract**, an Enterprise Manager plug-in that extracts information for a selected schedule and creates SMADDI XML format files, in OpCon

## Why Would You Use It?

- **Using Schedule**: The **Schedule Extract** is an Enterprise Manager plug-in that extracts information for a selected schedule and creates SMADDI XML format files

## Extracting Schedules

To extract a schedule, complete the following steps:

1. Select on **Schedule Extract** under the **Management** topic. The **Schedule Extract** screen displays
2. Select the **schedule** to extract from the **Schedule to Extract** list. Alternatively, use the **Browse** button to locate the schedule
3. Enter the target directory for the created SMADDI files in the **Extract To** field. Alternatively, use the **Browse** button to locate the directory
4. *(Optional)* Select the **Apply Global Change File** option to apply global change files to extracted schedules
5. *(Optional)* Select the **Extract Associated HC and Annual Plan Calendar Dates** option to extract calendars and dates associated with the schedule
6. *(Optional)* Select the **Extract Associated Global Properties** option to extract global properties referenced by events or command lines within the schedule
7. *(Optional)* Select the **Extract Associated Threshold/Resource Variables** option to extract threshold or resource definitions used by jobs or events within the schedule
8. Select the **Extract Schedule** button
9. Select a **schedule** in the **Extracted Schedules** list to view the generated XML information
10. Select the appropriate **schedule to extract** within the **Dependent Schedules Discovered** list

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Schedule Extract?**

Schedule Extract allows you to extracting schedules.

**Q: Who has access to Schedule Extract?**

Access to Schedule Extract is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**SMADDI (SMA Dynamic Data Input)**: An optional OpCon component that dynamically updates the OpCon database using XML text files placed in monitored input directories. SMADDI uses a Windows service and stored procedures to validate and commit the data.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
