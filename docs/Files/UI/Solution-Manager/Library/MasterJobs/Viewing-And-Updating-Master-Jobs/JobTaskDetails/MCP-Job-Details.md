---
title: Viewing, Adding, and Editing MCP Job Details
description: "MCP job details define how OpCon submits a job to a Burroughs MCP system, including user code, access code, file title, and task attributes."
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

# Viewing, Adding, and Editing MCP Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

MCP job details define how OpCon submits a job to a Burroughs MCP system, including user code, access code, file title, and task attributes. These details are configured in the Task Details panel of an MCP master job in Solution Manager.

To view an MCP job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing MCP Job Details

1. Go to **Library** > **Master Jobs**
1. Select an MCP job in the list
1. Select **Edit**
1. Expand the **Task Details** panel to expose its content

## Adding MCP Job Details

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md)
1. Expand the **Task Details** section
1. From the **Machines or Machine Group** list, select the **machine** where the agent is installed. To specify a machine group instead, toggle the **Machines** switch to _Machine Group_ and select the **machine group**. The switch appears green when toggled to Machine Group
1. Select a **User Code** for the job to run under
   - Maximum 17 characters; numbers and uppercase letters only
   - The User Code must already be defined to the MCP
1. Enter an **Access Code** (Optional)
   - Maximum 17 characters; numbers and uppercase letters only
   - A job and its prerun job always share the same access code
1. Select a **Job Type**

Available job types for MCP jobs:

- [START](#start)
- [RUN](#run)
- [EAE/AB SUITE](#eaeab-suite)
- [COPY](#copy)
- [CHANGE](#change)
- [REMOVE](#remove)

---

## Editing MCP Job Details

To edit MCP Job Details, complete the following steps:

1. Go to **Library** > **Master Jobs**
1. Select an MCP job
1. Select **Edit**
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Master Job Definition Read-only Button")) in **Read-only** mode and green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Job Definition Admin Button")) in **Admin** mode
1. Expand the **Task Details** panel
1. From the **Machines or Machine Group** list, select the **machine** where the agent is installed. To specify a machine group instead, toggle the **Machines** switch to _Machine Group_ and select the **machine group**. The switch appears green ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png "Green Enabled Switch") when toggled to Machine Group

### START

- **File Title:** Enter the WFL or program to run. Maximum 96 characters; no lowercase characters. Do not begin with START or RUN — this causes the job to fail
- **Arguments:** Enter parameters and/or task attributes to pass to the task. Maximum 200 characters. Valid arguments include strings, numbers, and booleans. Parentheses may wrap all arguments; separate arguments with a comma (,)
- **Template Display File:** Enter the file used in lieu of a job-specific displays file. Allows a single set of definitions to apply to multiple OpCon jobs
- **EOT Notice Message:** Enable to treat each end-of-task notification as a display message, allowing an Automated Response to trigger on task completion without waiting for the job to fully complete
- **Task Attributes:** Enter task attributes to modify, override, or elaborate existing attributes for the MCP program or WFL. Maximum 300 characters per attribute; each attribute must fit on a single line. Up to 10 task attributes supported. To define more, append additional attributes to an existing one using a semicolon (e.g., `SW1=TRUE;SW2=TRUE`)
- **File Attributes:** Enter a subset of task attributes to define, enhance, or override default attributes for files used by the MCP program. Maximum 300 characters per attribute; each attribute must fit on a single line. Up to 10 task attributes supported. To define more, append additional attributes using a semicolon (e.g., `SW1=TRUE;SW2=TRUE`)

### RUN

- **File Title:** Enter the WFL or program to run. Maximum 96 characters; no lowercase characters. Do not begin with START or RUN — this causes the job to fail
- **Arguments:** Enter parameters and/or task attributes to pass to the task. Maximum 200 characters. Valid arguments include strings, numbers, and booleans. Parentheses may wrap all arguments; separate arguments with a comma (,)
- **Template Display File:** Enter the file used in lieu of a job-specific displays file. Allows a single set of definitions to apply to multiple OpCon jobs
- **EOT Notice Message:** Enable to treat each end-of-task notification as a display message, allowing an Automated Response to trigger on task completion without waiting for the job to fully complete
- **Task Attributes:** Enter task attributes to modify, override, or elaborate existing attributes for the MCP program or WFL. Maximum 300 characters per attribute; each attribute must fit on a single line. Up to 10 task attributes supported. To define more, append additional attributes using a semicolon (e.g., `SW1=TRUE;SW2=TRUE`)

### EAE/AB Suite

- **Report Name**: Name of the EAE/AB Suite report to run. Tokens supported; maximum 256 characters
- **Acceptfile**: Filename the agent creates with the arguments from the Parameters field for the EAE/AB Suite command. Tokens supported; maximum 256 characters. After job completion or failure, the Acceptfile is saved permanently in `\*SMA/LINC17/FILES/=`. Continuous recommends cleaning up this directory at regular intervals using the `SMA/WFL/CLEANUP/LINC17/FILES` utility, which can be scheduled via OpCon
- **Parameters**: All parameters to run the EAE/AB Suite report. Tokens supported; maximum 256 characters
- **Template Display File**: Allows the customer to use a single set of definitions for multiple OpCon jobs instead of a job-specific displays file. For more information, refer to [Automated Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate).
- **EOT Notice Message**: Treats each end-of-task notification as a display message, permitting an Automated Response to trigger on task completion without waiting for the job to fully complete. For more information, refer to [Automated Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate).

### COPY

- **Source File or Directory** (Required): Filename (e.g., `(UC)MYUSER/FILES`) or directory (e.g., `(UC)MYUSER/=`) to copy. Maximum 256 characters; tokens supported
- **From** (Required): Location of the source file — a Family Disk name or tape name. Maximum 40 characters; tokens supported
- **Kind** (Required): Device type for the source file. Choices: PACK or TAPE (default)
- **Destination File or Directory**: New filename (e.g., `(UC)MYUSER/SAVED/FILES`) or directory (e.g., `(UC)MYUSER/SAVED/=`) for the copied file. Maximum 256 characters; tokens supported
- **To** (Required): Location for the destination file — a Family Disk name or tape name. Maximum 40 characters; tokens supported
- **Kind** (Required): Device type for the destination file. Choices: PACK or TAPE (default)
- **Hostname (if BNA Transfer)** (Optional): Unisys MCP hostname to copy the file to. Leave blank if this is not a BNA Transfer copy. Maximum 256 characters; tokens supported
- **Copy & Compare** (Optional): When selected, uses the "COPY & COMPARE" feature during the copy operation

### CHANGE

- **Source File or Directory** (Required): Filename (e.g., `(UC)MYUSER/FILES`) or directory (e.g., `(UC)MYUSER/=`) to change. Maximum 256 characters; tokens supported
- **New File or Directory** (Required): New filename (e.g., `\*(UC)MYUSER/SAVED/FILES`) or directory (e.g., `\*(UC)MYUSER/SAVED/=`). Maximum 256 characters; tokens supported
- **From** (Required): Location of the source file — a Family Disk name or tape name. Maximum 40 characters; tokens supported

### REMOVE

- **Source File or Directory** (Required): Filename (e.g., `(UC)MYUSER/FILES`) or directory (e.g., `\*(UC)MYUSER/FILES/=`) to remove. Maximum 256 characters; tokens supported
- **From** (Required): Location of the source file — a Family Disk name or tape name. Maximum 40 characters; tokens supported

:::note
Effective with MCP LSAM 16.02, the `\*SMA/WFL/REMOVEJOB` WFL can be modified so the WFL completes OK even when no files are deleted. Security errors and locked files still cause failure. To implement this alternate behavior, comment out sequence #26600 and uncomment sequence 26650 in a working copy of the WFL. This modification must be re-applied after each MCP LSAM upgrade if the alternate behavior is desired.
:::

## Pre-Run Information

A Prerun tests required preconditions before job execution. If the Prerun terminates with an error, it is rescheduled at a user-defined interval and retried until it succeeds. Once the Prerun completes successfully, the main job is allowed to process.

## Failure Criteria

- **Fail Codes:** Enter words to compare against the MCP console display. If the words match, the agent applies the configured failure logic. The entry must begin with the first word of the console display, followed by any additional words to include in the search. End the entry with an asterisk (\*) as a wildcard for remaining words. Fail Codes apply to WFL jobs only, not programs
- **Fail Reset:** Enter words to compare against the MCP console display. If the words match, the agent applies the configured failure logic

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Report Name | Name of the EAE/AB Suite report to run. | — | maximum 256 characters. - **Acceptfile**: Filename the agent c |
| Acceptfile | Filename the agent creates with the arguments from the Parameters field for the EAE/AB Suite command. | — | maximum 256 characters. After job completion or failure, the |
| Parameters | All parameters to run the EAE/AB Suite report. | — | maximum 256 characters. - **Template Display File**: Allows t |
| Template Display File | Allows the customer to use a single set of definitions for multiple OpCon jobs instead of a job-specific displays file. | — | Maximum 256 characters; tokens supported. - **From** (Require |
| EOT Notice Message | Treats each end-of-task notification as a display message, permitting an Automated Response to trigger on task completion without waiting for the job ... | — | Maximum 256 characters; tokens supported. - **From** (Require |
| Destination File or Directory | New filename (e.g., `(UC)MYUSER/SAVED/FILES`) or directory (e.g., `(UC)MYUSER/SAVED/=`) for the copied file. | — | Maximum 256 characters; tokens supported. - **To** (Required) |
## FAQs

**Q: How many steps does the Viewing, Adding, and Editing MCP Job Details procedure involve?**

The Viewing, Adding, and Editing MCP Job Details procedure involves 16 steps. Complete all steps in order and save your changes.

**Q: What does Viewing, Adding, and Editing MCP Job Details cover?**

This page covers Viewing MCP Job Details, Adding MCP Job Details, Editing MCP Job Details.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
