---
title: BIS Job Details
description: "Use this section to define a BIS job in OpCon."
product_area: Job Types
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# BIS Job Details

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

Use this section to define a BIS job in OpCon. Text fields support OpCon token replacement; [tokens](../objects/using-properties.md#okens) are resolved as the SAM prepares to send the job to the LSAM. For platform details, refer to [OS 2200 LSAM and BIS LMAM Configuration](https://help.smatechnologies.com/opcon/agents/os2200/latest/Files/Agents/OS-2200/Configuration.md) in the **OS 2200 LSAM** online help.

## Job Information

- **Run ID**: Defines the name under which the BIS run is registered
- **Department**: Defines the BIS department number under which the BIS run is registered
- **MAM ID**: The single alphanumeric character identifying the MAM that starts the job, assigned at installation time. The job's MAM ID must match a MAM capable of running the BIS run. MAM IDs T and U are not allowed
- **Input String** (Optional): Defines any parameters to be passed to the BIS run. Commas (,) must separate multiple parameters. The format should conform to the CHG INPUT$ statement in the BIS run

## Data Dependencies

- **Cabinet, Drawer, and Folder**: Defines the Cabinet, Drawer, and Folder for each report

## File Dependencies

All file dependencies must be met before the BIS job is started.

- **Qualifier**: Defines the qualifier for the file dependency. Placing \# before or after the qualifier directs the agent to search the SHARED File Directory for the file; without the \# indicates the STD File Directory is to be searched

- **Filename**: Defines the filename the job is dependent on

- **Type**: The dependency type. Options:

  - **Exists**: The file must exist
  - **Created**: The file must exist and was cataloged today
  - **Deleted**: The file must not exist
  - **Size**: The file exceeds the value entered for the file size
    :::note
    When Size is set as the Type, enter the size in thousands of tracks (e.g., Enter a 5 to test for a file greater than 5000 tracks).
    :::
  - **Referenced**: The file has been referenced today
  - **Assigned**: The file is currently assigned
  - **BackedUp**: The file has a current backup (Backed up and not yet modified)
  - **Unloaded**: The file is currently unloaded

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Run ID | Defines the name under which the BIS run is registered | — | — |
| MAM ID | The single alphanumeric character identifying the MAM that starts the job, assigned at installation time. | — | — |
| Cabinet, Drawer, and Folder | Defines the Cabinet, Drawer, and Folder for each report | — | — |
| Qualifier | Defines the qualifier for the file dependency. | — | — |
| Filename | Defines the filename the job is dependent on | — | — |
| Type | The dependency type. | — | — |
## FAQs

**Q: What information is required to define a BIS job?**

A BIS job requires a Run ID (the name under which the BIS run is registered), a Department number, and a MAM ID (a single alphanumeric character identifying the MAM that starts the job). MAM IDs T and U are not allowed.

**Q: How do you pass parameters to a BIS run?**

Use the Input String field to pass parameters, separating multiple values with commas. The format must conform to the CHG INPUT$ statement in the BIS run.

**Q: How does the agent determine whether to search the SHARED or STD File Directory for a file dependency?**

Place # before or after the Qualifier to direct the agent to search the SHARED File Directory. Without #, the agent searches the STD File Directory.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
