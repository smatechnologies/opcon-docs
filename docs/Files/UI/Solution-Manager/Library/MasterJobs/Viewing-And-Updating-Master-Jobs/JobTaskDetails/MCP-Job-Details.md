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

MCP job details define how OpCon submits a job to a Burroughs MCP system, including the user code, access code, file title, and task attributes. You configure these details in the **Task Details** panel of an MCP master job in Solution Manager or Enterprise Manager.

The **MCP Job Type** you select determines which fields appear in the **Task Details** panel. OpCon supports the following MCP job types:

- [START](#start)
- [RUN](#run)
- [EAE/AB Suite](#eaeab-suite)
- [COPY](#copy)
- [CHANGE](#change)
- [REMOVE](#remove)

## Required Privileges

To view an MCP job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing MCP Job Details

To view the details of an MCP job, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select an MCP job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel to expose its content.

**Result:** The **Task Details** panel displays the job type and the configured details for the selected MCP job.

## Adding MCP Job Details

To add details to a new MCP job, complete the following steps:

1. Create the job and its general information as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** panel.
1. From the **Machines or Machine Group** list, select the **machine** where the agent is installed. To specify a machine group instead, toggle the **Machines** switch to _Machine Group_ and select the **machine group**. The switch appears green when toggled to Machine Group.
1. Select a **User Code** for the job to run under.
   - Maximum 17 characters; numbers and uppercase letters only.
   - The User Code must already be defined to the MCP.
1. Enter an **Access Code** (optional).
   - Maximum 17 characters; numbers and uppercase letters only.
   - A job and its prerun job always share the same access code.
1. Select an **MCP Job Type**.
1. Complete the fields for the selected job type, as described in the job type sections below.

**Result:** The MCP job details are added to the job and saved when you save the job.

## Editing MCP Job Details

To edit the details of an existing MCP job, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select an MCP job.
1. Select **Edit**.
1. Select the lock button. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Master Job Definition Read-only Button")) in **Read-only** mode and green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Job Definition Admin Button")) in **Admin** mode.
1. Expand the **Task Details** panel.
1. From the **Machines or Machine Group** list, select the **machine** where the agent is installed. To specify a machine group instead, toggle the **Machines** switch to _Machine Group_ and select the **machine group**. The switch appears green (![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png "Green Enabled Switch")) when toggled to Machine Group.
1. Update the fields for the job type, as described in the job type sections below.

**Result:** The updated MCP job details are saved when you save the job.

## MCP Job Type Fields

The fields available in the **Task Details** panel depend on the selected **MCP Job Type**.

### START

- **File Title:** Enter the WFL or program to run. Maximum 96 characters; no lowercase characters. Do not begin with START or RUN — this causes the job to fail.
- **Arguments:** Enter parameters and/or task attributes to pass to the job. Maximum 200 characters. Valid arguments include strings, numbers, and booleans. Parentheses may wrap all arguments; separate arguments with a comma (`,`).
- **Template Display File:** Enter the file used in lieu of a job-specific displays file. Allows a single set of definitions to apply to multiple OpCon jobs.
- **EOT Notice Message:** Enable to treat each end-of-task notification as a display message, allowing an Automated Response to trigger on task completion without waiting for the job to fully complete.
- **Task Attributes:** Enter task attributes to modify, override, or elaborate existing attributes for the MCP program or WFL. Maximum 300 characters per attribute; each attribute must fit on a single line. Up to 10 task attributes are supported. To define more, append additional attributes to an existing one using a semicolon (for example, `SW1=TRUE;SW2=TRUE`).
- **File Attributes:** Enter a subset of task attributes to define, enhance, or override default attributes for files used by the MCP program. Maximum 300 characters per attribute; each attribute must fit on a single line. Up to 10 attributes are supported. To define more, append additional attributes using a semicolon (for example, `SW1=TRUE;SW2=TRUE`).

The START job type also supports the following **Job Summary Information** fields. If you complete one of these fields, you must complete all three.

- **User Code:** The user code for the job summary.
- **Family:** The Family Disk name for the job summary. Must not contain the `|` character.
- **Directory or File Name:** The directory or filename for the job summary. Must not contain the `|` character.

### RUN

- **File Title:** Enter the WFL or program to run. Maximum 96 characters; no lowercase characters. Do not begin with START or RUN — this causes the job to fail.
- **Arguments:** Enter parameters and/or task attributes to pass to the job. Maximum 200 characters. Valid arguments include strings, numbers, and booleans. Parentheses may wrap all arguments; separate arguments with a comma (`,`).
- **Template Display File:** Enter the file used in lieu of a job-specific displays file. Allows a single set of definitions to apply to multiple OpCon jobs.
- **EOT Notice Message:** Enable to treat each end-of-task notification as a display message, allowing an Automated Response to trigger on task completion without waiting for the job to fully complete.
- **Task Attributes:** Enter task attributes to modify, override, or elaborate existing attributes for the MCP program or WFL. Maximum 300 characters per attribute; each attribute must fit on a single line. Up to 10 task attributes are supported. To define more, append additional attributes using a semicolon (for example, `SW1=TRUE;SW2=TRUE`).
- **File Attributes:** Enter a subset of task attributes to define, enhance, or override default attributes for files used by the MCP program. Maximum 300 characters per attribute; each attribute must fit on a single line. Up to 10 attributes are supported. To define more, append additional attributes using a semicolon (for example, `SW1=TRUE;SW2=TRUE`).

### EAE/AB Suite

- **Report Name:** Name of the EAE/AB Suite report to run. Tokens supported; maximum 256 characters.
- **Acceptfile:** Filename the agent creates with the arguments from the **Parameters** field for the EAE/AB Suite command. Tokens supported; maximum 256 characters. After job completion or failure, the Acceptfile is saved permanently in `\*SMA/LINC17/FILES/=`. Continuous recommends cleaning up this directory at regular intervals using the `SMA/WFL/CLEANUP/LINC17/FILES` utility, which can be scheduled through OpCon.
- **Parameters:** All parameters to run the EAE/AB Suite report. Tokens supported; maximum 256 characters.
- **Template Display File:** Allows you to use a single set of definitions for multiple OpCon jobs instead of a job-specific displays file. For more information, refer to [Automated Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate).
- **EOT Notice Message:** Treats each end-of-task notification as a display message, allowing an Automated Response to trigger on task completion without waiting for the job to fully complete. For more information, refer to [Automated Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate).

### COPY

- **Source File or Directory** (required): Filename (for example, `(UC)MYUSER/FILES`) or directory (for example, `(UC)MYUSER/=`) to copy. Maximum 256 characters; tokens supported.
- **From** (required): Location of the source file — a Family Disk name or tape name. Maximum 40 characters; tokens supported.
- **Kind** (required): Device type for the source file. Choices: PACK or TAPE (default).
- **Destination File or Directory:** New filename (for example, `(UC)MYUSER/SAVED/FILES`) or directory (for example, `(UC)MYUSER/SAVED/=`) for the copied file. Maximum 256 characters; tokens supported.
- **To** (required): Location for the destination file — a Family Disk name or tape name. Maximum 40 characters; tokens supported.
- **Kind** (required): Device type for the destination file. Choices: PACK or TAPE (default).
- **Hostname (if BNA Transfer)** (optional): Unisys MCP hostname to copy the file to. Leave blank if this is not a BNA Transfer copy. Maximum 256 characters; tokens supported.
- **Copy & Compare** (optional): When selected, uses the "COPY & COMPARE" feature during the copy operation.

### CHANGE

- **Source File or Directory** (required): Filename (for example, `(UC)MYUSER/FILES`) or directory (for example, `(UC)MYUSER/=`) to change. Maximum 256 characters; tokens supported.
- **New File or Directory** (required): New filename (for example, `\*(UC)MYUSER/SAVED/FILES`) or directory (for example, `\*(UC)MYUSER/SAVED/=`). Maximum 256 characters; tokens supported.
- **From** (required): Location of the source file — a Family Disk name or tape name. Maximum 40 characters; tokens supported.

### REMOVE

- **Source File or Directory** (required): Filename (for example, `(UC)MYUSER/FILES`) or directory (for example, `\*(UC)MYUSER/FILES/=`) to remove. Maximum 256 characters; tokens supported.
- **From** (required): Location of the source file — a Family Disk name or tape name. Maximum 40 characters; tokens supported.

:::note
Effective with MCP Agent 16.02, the `\*SMA/WFL/REMOVEJOB` WFL can be modified so the WFL completes OK even when no files are deleted. Security errors and locked files still cause failure. To implement this alternate behavior, comment out sequence #26600 and uncomment sequence 26650 in a working copy of the WFL. This modification must be re-applied after each MCP Agent upgrade if the alternate behavior is desired.
:::

## Pre-Run Information

A prerun tests required preconditions before the job runs. If the prerun terminates with an error, it is rescheduled at a user-defined interval and retried until it succeeds. Once the prerun completes successfully, the main job is allowed to process.

A prerun supports the same set of job types as the main job. Select a **Pre-Run Type** and complete the corresponding fields described in [MCP Job Type Fields](#mcp-job-type-fields).

## Failure Criteria

- **Fail Codes:** Enter words to compare against the MCP console display. If the words match, the agent applies the configured failure logic. The entry must begin with the first word of the console display, followed by any additional words to include in the search. End the entry with an asterisk (`\*`) as a wildcard for remaining words. Fail Codes apply to WFL jobs only, not programs.
- **Fail Reset:** Enter words to compare against the MCP console display. If the words match, the agent applies the configured failure logic.

## FAQs

**Q: Which fields appear in the Task Details panel for an MCP job?**

The fields depend on the selected **MCP Job Type**. Each job type (START, RUN, EAE/AB Suite, COPY, CHANGE, and REMOVE) exposes its own set of fields. See [MCP Job Type Fields](#mcp-job-type-fields).

**Q: Can a prerun use a different job type than the main job?**

Yes. Select a **Pre-Run Type** independently of the main **MCP Job Type**, then complete the fields for that type.

## Related Topics

- [Adding a Job](../../Adding-Master-Jobs.md)
- [Required Privileges](../Accessing-Master-Jobs.md#required-privileges)

## Glossary

**Agent:** An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as Machines in OpCon.

**Access Code:** A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Job:** The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**Machine:** A platform defined in the OpCon database that has an agent installed. OpCon routes job run requests to machines, and machines report job completion status back to OpCon.

**Privilege:** A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
