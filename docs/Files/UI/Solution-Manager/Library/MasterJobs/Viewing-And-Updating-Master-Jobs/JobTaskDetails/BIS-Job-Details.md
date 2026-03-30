---
title: Viewing, Adding, and Editing BIS Job Details
description: "BIS job details define how OpCon submits a job to a BIS environment, including job name, attributes, and prerun settings."
product_area: Solution Manager
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

# Viewing, Adding, and Editing BIS Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

BIS job details define how OpCon submits a job to a Burroughs Information Systems (BIS) environment, including the job name, attributes, and prerun settings. These details are configured in the Task Details panel of a BIS master job in Solution Manager.

To view a BIS job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## When Would You Use It?

- To view a BIS job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges)

## Why Would You Use It?

- **Viewing, Adding,**: To view a BIS job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges)

## Viewing BIS Job Details

To view BIS Job Details, complete the following steps:

1. Go to **Library** > **Master Jobs**
1. Select a BIS job in the list
1. Select **Edit**
1. Expand the **Task Details** panel to expose its content

## Adding BIS Job Details

To add BIS Job Details, complete the following steps:

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md)
1. Expand the **Task Details** section
1. From the **Machines or Machine Group** list, select the **machine** where the agent is installed. To specify a machine group instead, toggle the **Machines** switch to _Machine Group_ and select the **machine group** from the list. When toggled to Machine Group, the switch appears green

## Editing BIS Job Details

To edit BIS Job Details, complete the following steps:

1. Go to **Library** > **Master Jobs**
1. Select a BIS job
1. Select **Edit**
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Master Job Definition Read-only Button")) in **Read-only** mode and green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Job Definition Admin Button")) in **Admin** mode
1. Expand the **Task Details** panel

### Job Information
- **Run ID**: Name under which the BIS run is registered
- **Department**: BIS department number under which the BIS run is registered
- **MAM ID**: Single alphanumeric character identifying the MAM that starts the job. MAM IDs are assigned to specific MAMs at installation time. The job's MAM ID must match a MAM capable of running the BIS run. MAM IDs T and U are not allowed
- **Input String** (Optional): Parameters passed to the BIS run. Separate multiple parameters with commas (,). The format must conform to the CHG INPUT$ statement in BIS run

### Data Dependencies
- **Cabinet, Drawer, and Folder**: Defines the Cabinet, Drawer, and Folder for each report

### File Dependencies
All file dependencies must be met before the BIS job starts.
- **Qualifier**: Qualifier for the file dependency. Placing # before or after the qualifier directs the agent to search the SHARED File Directory; without # indicates the STD File Directory
- **File Name**: File name the job depends on
- **Type**: Type of dependency the job has on the file:
    - **Exists**: The file must exist
    - **Created**: The file must exist and was cataloged today
    - **Deleted**: The file must not exist
    - **Size**: The file exceeds the entered size value
      :::note
        When Size is set as the Type, enter the size in thousands of tracks (e.g., enter 5 to test for a file greater than 5000 tracks).
      :::
    - **Referenced**: The file has been referenced today
    - **Assigned**: The file is currently assigned
    - **Backed Up**: The file has a current backup (backed up and not yet modified)
    - **Unloaded**: The file is currently unloaded

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Run ID | Name under which the BIS run is registered | — | — |
| MAM ID | Single alphanumeric character identifying the MAM that starts the job. | — | — |
| Cabinet, Drawer, and Folder | Defines the Cabinet, Drawer, and Folder for each report | — | — |
| Qualifier | Qualifier for the file dependency. | — | — |
| File Name | File name the job depends on | — | — |
| Type | Type of dependency the job has on the file: | — | — |
## FAQs

**Q: How many steps does the Viewing, Adding, and Editing BIS Job Details procedure involve?**

The Viewing, Adding, and Editing BIS Job Details procedure involves 12 steps. Complete all steps in order and save your changes.

**Q: What does Viewing, Adding, and Editing BIS Job Details cover?**

This page covers Viewing BIS Job Details, Adding BIS Job Details, Editing BIS Job Details.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
