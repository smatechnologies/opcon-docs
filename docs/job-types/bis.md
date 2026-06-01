---
title: BIS Job Details
description: "Reference for the fields used to define a BIS job in OpCon."
product_area: Job Types
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - Automation Engineer
  - Jobs
last_updated: 2026-05-29
doc_type: reference
---

# BIS Job Details

**Theme:** Configure
**Who Is It For?** Automation Engineer

## What Is It?

The BIS Definition fields define a BIS job in OpCon — a job that starts a BIS run on a Unisys OS 2200 Agent. You use these fields to identify the BIS run, pass parameters to it, and define the data and file dependencies that must be met before the job starts.

Text fields support OpCon token replacement; [tokens](../objects/using-properties.md#tokens) are resolved as the SAM prepares to send the job to the Agent. For platform details, refer to [OS 2200 Agent and BIS Configuration](https://help.smatechnologies.com/opcon/agents/os2200/latest/Files/Agents/OS-2200/Configuration.md) in the **OS 2200 Agent** online help.

## BIS Definition

| Field | Description | Limit |
|---|---|---|
| **Run ID** | The name under which the BIS run is registered. Accepts alphanumeric characters and the characters `[ ] ^ _ \ \`. | Up to 11 characters |
| **Department** | The BIS department number under which the BIS run is registered. Accepts numeric characters only and is stored as a 4-digit value (for example, `64` is stored as `0064`). | Up to 4 digits |
| **MAM ID** | A single alphanumeric character identifying the MAM that starts the job, assigned at installation time. The job's MAM ID must match a MAM capable of running the BIS run. The values `T` and `U` are not allowed. Entered values are stored in uppercase. | 1 character |
| **Input String** | Optional. Any parameters to be passed to the BIS run. Separate multiple parameters with commas (`,`). The format must conform to the `CHG INPUT$` statement in the BIS run. | Up to 80 characters |

## Data Dependencies

The **Data Dependencies** tab defines reports that must be present before the BIS job starts. You can define up to 10 data dependencies.

| Field | Description | Limit |
|---|---|---|
| **Cabinet** | The Cabinet for the report. | Up to 5 characters |
| **Drawer** | The Drawer for the report. | 1 character |
| **Folder** | The Folder for the report. | Up to 4 characters |

## File Dependencies

The **File Dependencies** tab defines files that must satisfy a condition before the BIS job starts. All file dependencies must be met before the BIS job is started. You can define up to 8 file dependencies.

| Field | Description |
|---|---|
| **Qualifier** | The qualifier for the file dependency. Placing `#` before or after the qualifier directs the Agent to search the SHARED File Directory for the file; omitting `#` directs the Agent to search the STD File Directory. |
| **File Name** | The name of the file the job is dependent on. |
| **Type** | The dependency condition to test. See [Dependency types](#dependency-types). |
| **Size** | The file size threshold, in thousands of tracks. Required when **Type** is set to **Size**. |

### Dependency types

| Type | Condition |
|---|---|
| **Exists** | The file must exist. |
| **Created** | The file must exist and was cataloged today. |
| **Deleted** | The file must not exist. |
| **Size** | The file exceeds the value entered in the **Size** field. |
| **Referenced** | The file has been referenced today. |
| **Assigned** | The file is currently assigned. |
| **Backed Up** | The file has a current backup (backed up and not yet modified). |
| **Unloaded** | The file is currently unloaded. |

:::note
When **Type** is set to **Size**, enter the size in thousands of tracks. For example, enter `5` to test for a file greater than 5,000 tracks.
:::

## FAQs

**Q: What information is required to define a BIS job?**

A BIS job requires a **Run ID** (the name under which the BIS run is registered), a **Department** number, and a **MAM ID** (a single alphanumeric character identifying the MAM that starts the job). The values `T` and `U` are not allowed for the MAM ID.

**Q: How do you pass parameters to a BIS run?**

Use the **Input String** field to pass parameters, separating multiple values with commas. The format must conform to the `CHG INPUT$` statement in the BIS run.

**Q: How does the Agent determine whether to search the SHARED or STD File Directory for a file dependency?**

Place `#` before or after the **Qualifier** to direct the Agent to search the SHARED File Directory. Without `#`, the Agent searches the STD File Directory.

## Related Topics

- [Using Properties (tokens)](../objects/using-properties.md)

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon automation. SAM monitors schedule and job start times, dependencies, and user commands to determine when jobs run, and processes OpCon events.

**Agent**: An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as Machines in OpCon.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workload automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
