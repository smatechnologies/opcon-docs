---
title: Viewing and Updating IBM i Job Details
description: "Use this procedure to view, add, and update the IBM i Task Details of a Master Job in Solution Manager."
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

# Viewing and Updating IBM i Job Details

**Theme:** Configure
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Task Details** of an IBM i Master Job define how the job runs on the IBM i Agent. The available fields depend on the **Job Type** you select, such as Batch Job, Tracked Job, Queued Job, Operator Replay Job, Restricted Mode, FTP, or File Arrival.

Use this procedure to view, add, and update the IBM i Task Details of a Master Job in Solution Manager.

## Required Privileges

To view, add, or edit an IBM i job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing IBM i Job Details

To view the Task Details of an IBM i job, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select an IBM i job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel.

**Result:** The Task Details for the selected IBM i job appear.

## Adding IBM i Job Details

To add Task Details to a new IBM i job, complete the following steps:

1. Create the job and its general information as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** section.
1. Select a **Job Type**, then complete the fields described in [IBM i Job Detail Fields](#ibm-i-job-detail-fields).
1. Select **Save**.

**Result:** The IBM i Task Details are saved to the job.

## Editing IBM i Job Details

To edit the Task Details of an existing IBM i job, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select an IBM i job.
1. Select **Edit**.
1. Select the lock button to switch from **Read-only** mode to **Admin** mode. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Master Job Definition Read-only Button")) when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Job Definition Admin Button")) when in **Admin** mode.
1. Expand the **Task Details** panel, then update the fields described in [IBM i Job Detail Fields](#ibm-i-job-detail-fields).
1. Select **Save**.

**Result:** The updated IBM i Task Details are saved to the job.

## IBM i Job Detail Fields

The fields that appear in the **Task Details** panel depend on the selected **Job Type**:

- [Batch Job](#batch-job)
- [Tracked Job](#tracked-job)
- [Queued Job](#queued-job)
- [Operator Replay Job](#operator-replay-job)
- [Restricted Mode](#restricted-mode)
- [FTP](#ftp)
- [File Arrival](#file-arrival)

The **Messages**, **Spool Files**, and **Variables** grids are shared across job types. See [Updating Grids](#updating-grids).

:::note
All required fields are designated by a red asterisk.
:::

### Batch Job

| Frame / Sub-frame | Field | Description |
|---|---|---|
| Job Information | **User ID** | The IBM i user profile under which the job is submitted. |
| Job Description | **Name** | The simple name of the job description. Accepts an OpCon token. |
| Job Description | **Library** | The library associated with the job description name. Accepts an OpCon token. |
| Library List Management | **Current** | The current library associated with the job being run. Accepts an OpCon token. |
| Library List Management | **Initial Library List** | The initial user part of the library list used to search for objects without a library. |
| Job Queue | **Name** | The job queue in which this job is placed. |
| Job Queue | **Library** | The library associated with the batch queue name. |
| Call Information | **PreRun** | The IBM i job to run immediately before the job specified in **Call**. |
| Call Information | **Call** | The program name to run using the CALL command, or a command name. |
| Output Queue | **Name** | The output queue used for spooled files. |
| Output Queue | **Library** | The library associated with the Output Queue name. |
| Message Logging | **Level** | The number of messages for logging. |
| Message Logging | **Severity** | The lowest severity level that causes an error message to be logged. |
| Message Logging | **Text** | The detail of the text logged. |
| Additional Information | **Log CL Commands** | Whether commands run in a CL program are logged to the job log through the CL program's message queue. |
| Additional Information | **Job Date** | The calendar date associated with the job. |
| Additional Information | **JobQ Priority** | The job queue scheduling priority. |
| Additional Information | **Accounting Code** | The accounting code used when logging system resource use. |
| Additional Information | **Inquiry Message Reply** | How predefined messages are answered when sent during the job. |
| Job Log Retention | **Number Of Occurrences** | The number of occurrences to save when the same job name runs more than once. |
| Job Log Retention | **Number Of Days** | The number of days to retain job logs. |

### Tracked Job

| Frame / Sub-frame | Field | Description |
|---|---|---|
| Job Information | **Job Type** | The type of job to schedule on the IBM i Agent. |
| Job Log Retention | **Number Of Occurrences** | The number of occurrences to save when the same job name runs more than once. |
| Job Log Retention | **Number Of Days** | The number of days to retain job logs. |

### Queued Job

| Frame / Sub-frame | Field | Description |
|---|---|---|
| Job Information | **User ID** | The IBM i user profile under which the job is submitted. |
| Job Description | **Name** | The simple name of the job description. Accepts an OpCon token. |
| Job Description | **Library** | The library associated with the job description name. Accepts an OpCon token. |
| Library List Management | **Current** | The current library associated with the job being run. Accepts an OpCon token. |
| Library List Management | **Initial Library List** | The initial user part of the library list used to search for objects without a library. |
| Job Queue | **Name** | The job queue in which this job is placed. |
| Job Queue | **Library** | The library associated with the batch queue name. |
| Call Information | **PreRun** | The IBM i job to run immediately before the job specified in **Call**. |
| Output Queue | **Name** | The output queue used for spooled files. |
| Output Queue | **Library** | The library associated with the Output Queue name. |
| Message Logging | **Level** | The number of messages for logging. |
| Message Logging | **Severity** | The lowest severity level that causes an error message to be logged. |
| Message Logging | **Text** | The detail of the text logged. |
| Additional Information | **Log CL Commands** | Whether commands run in a CL program are logged to the job log through the CL program's message queue. |
| Additional Information | **Job Date** | The calendar date associated with the job. |
| Additional Information | **JobQ Priority** | The job queue scheduling priority. |
| Additional Information | **Accounting Code** | The accounting code used when logging system resource use. |
| Additional Information | **Inquiry Message Reply** | How predefined messages are answered when sent during the job. |
| Job Log Retention | **Number Of Occurrences** | The number of occurrences to save when the same job name runs more than once. |
| Job Log Retention | **Number Of Days** | The number of days to retain job logs. |

### Operator Replay Job

| Frame / Sub-frame | Field | Description |
|---|---|---|
| Job Information | **User ID** | The IBM i user profile under which the job is submitted. |
| Job Description | **Name** | The simple name of the job description. Accepts an OpCon token. |
| Job Description | **Library** | The library associated with the job description name. Accepts an OpCon token. |
| Library List Management | **Current** | The current library associated with the job being run. Accepts an OpCon token. |
| Library List Management | **Initial Library List** | The initial user part of the library list used to search for objects without a library. |
| Job Queue | **Name** | The job queue in which this job is placed. |
| Job Queue | **Library** | The library associated with the batch queue name. |
| Call Information | **PreRun** | The IBM i job to run immediately before the job specified in **Script Name**. |
| Call Information | **Script Name** | The script name to run for an Operator Replay Job. Must not exceed 2000 characters. |
| Output Queue | **Name** | The output queue used for spooled files. |
| Output Queue | **Library** | The library associated with the Output Queue name. |
| Message Logging | **Level** | The number of messages for logging. |
| Message Logging | **Severity** | The lowest severity level that causes an error message to be logged. |
| Message Logging | **Text** | The detail of the text logged. |
| Additional Information | **Log CL Commands** | Whether commands run in a CL program are logged to the job log through the CL program's message queue. |
| Additional Information | **Job Date** | The calendar date associated with the job. |
| Additional Information | **JobQ Priority** | The job queue scheduling priority. |
| Additional Information | **Accounting Code** | The accounting code used when logging system resource use. |
| Additional Information | **Inquiry Message Reply** | How predefined messages are answered when sent during the job. |
| Job Log Retention | **Number Of Occurrences** | The number of occurrences to save when the same job name runs more than once. |
| Job Log Retention | **Number Of Days** | The number of days to retain job logs. |

### Restricted Mode

| Frame / Sub-frame | Field | Description |
|---|---|---|
| Job Information | **User ID** | The IBM i user profile under which the job is submitted. |
| Job Description | **Name** | The simple name of the job description. Accepts an OpCon token. |
| Job Description | **Library** | The library associated with the job description name. Accepts an OpCon token. |
| Library List Management | **Current** | The current library associated with the job being run. Accepts an OpCon token. |
| Library List Management | **Initial Library List** | The initial user part of the library list used to search for objects without a library. |
| Job Queue | **Name** | The job queue in which this job is placed. |
| Job Queue | **Library** | The library associated with the batch queue name. |
| Call Information | **PreRun** | The IBM i job to run immediately before the job specified in **Script Name**. |
| Call Information | **Script Name** | The script name to run for a Restricted Mode Job. Must not exceed 2000 characters. |
| Output Queue | **Name** | The output queue used for spooled files. |
| Output Queue | **Library** | The library associated with the Output Queue name. |
| Message Logging | **Level** | The number of messages for logging. |
| Message Logging | **Severity** | The lowest severity level that causes an error message to be logged. |
| Message Logging | **Text** | The detail of the text logged. |
| Additional Information | **Log CL Commands** | Whether commands run in a CL program are logged to the job log through the CL program's message queue. |
| Additional Information | **Job Date** | The calendar date associated with the job. |
| Additional Information | **JobQ Priority** | The job queue scheduling priority. |
| Additional Information | **Accounting Code** | The accounting code used when logging system resource use. |
| Additional Information | **Inquiry Message Reply** | How predefined messages are answered when sent during the job. |
| Job Log Retention | **Number Of Occurrences** | The number of occurrences to save when the same job name runs more than once. |
| Job Log Retention | **Number Of Days** | The number of days to retain job logs. |

:::note
A Restricted Mode job does not have access to the **Messages** or **Spool Files** grids.
:::

### FTP

| Frame / Sub-frame | Field | Description |
|---|---|---|
| Job Information | **User ID** | The IBM i user profile under which the job is submitted. |
| Job Description | **Name** | The simple name of the job description. Accepts an OpCon token. |
| Job Description | **Library** | The library associated with the job description name. Accepts an OpCon token. |
| Library List Management | **Current** | The current library associated with the job being run. Accepts an OpCon token. |
| Library List Management | **Initial Library List** | The initial user part of the library list used to search for objects without a library. |
| Job Queue | **Name** | The job queue in which this job is placed. |
| Job Queue | **Library** | The library associated with the batch queue name. |
| Call Information | **PreRun** | The IBM i job to run immediately before the job. |
| Transfer Information | **Action Type** (Required) | The FTP command to use. |
| Transfer Information | **Transfer Type** (Required) | The transfer type, for binary or ASCII. |
| Transfer Information | **User** | The FTP user for connecting to the remote system. |
| Remote Information | **Remote System** | The name of the remote system. |
| Remote Information | **Remote File Name** | The file name once it reaches the remote machine. |
| Remote Information | **Remote Library or Directory** | The library or directory to receive the file on the remote machine. |
| Local Information | **Local File Name** | The file name on the IBM i machine to transfer to the remote machine. |
| Local Information | **Local Library or Directory** | The library or directory containing the file on the IBM i machine. |
| Output Queue | **Name** | The output queue used for spooled files. |
| Output Queue | **Library** | The library associated with the Output Queue name. |
| Message Logging | **Level** | The number of messages for logging. |
| Message Logging | **Severity** | The lowest severity level that causes an error message to be logged. |
| Message Logging | **Text** | The detail of the text logged. |
| Additional Information | **Log CL Commands** | Whether commands run in a CL program are logged to the job log through the CL program's message queue. |
| Additional Information | **Job Date** | The calendar date associated with the job. |
| Additional Information | **JobQ Priority** | The job queue scheduling priority. |
| Additional Information | **Accounting Code** | The accounting code used when logging system resource use. |
| Additional Information | **Inquiry Message Reply** | How predefined messages are answered when sent during the job. |
| Job Log Retention | **Number Of Occurrences** | The number of occurrences to save when the same job name runs more than once. |
| Job Log Retention | **Number Of Days** | The number of days to retain job logs. |

### File Arrival

| Frame / Sub-frame | Field | Description |
|---|---|---|
| Job Queue | **Name** | The job queue in which this job is placed. |
| Job Queue | **Library** | The library associated with the batch queue name. |
| File Arrival Information | **User ID** | The IBM i user profile under which the job is submitted. |
| File Arrival Information | **File Name** | The file path and name of the file to detect. |
| Check File Authority | **Read** / **Write** / **run** | The type of object authority to verify for the named User ID. |
| File Arrival Information | **Check Lock on DB2 File** | Whether to verify that there are no in-use locks on any DB2 database files. |
| File Arrival Information | **Failure Condition** | The action to take based on the job failure or success status. Options include **Fail On Error**, **Always Succeed**, **Fail On Error Except Reach End Time**, and **Fail If File Contains Zero Records or Zero Bytes**. |
| File Creation Window — Start Time, Relative to Midnight | **Start Days** / **Start Time** | The File Arrival job does not start looking for a file until the Start Time has passed. You can use a **Token** instead. |
| File Creation Window — End Time, Relative to Midnight | **End Days** / **End Time** | When a Job End Time is specified, the File Creation End time is used only for validating when the file was created, not for determining job end time. You can use a **Token** instead. |
| File Size Stable Duration | **Seconds** | The amount of time the file size must remain stable to indicate the file has finished arriving. You can use a **Token** instead. |
| Job End Time | **ReCheck Frequency** | Enables a continuous loop of checking until a matching file is found, used with the Job End Time or Create End Time. A value of zero performs a one-time check and ignores the Job End Time. |
| Job End Time | **Days** / **Job End Time, Relative to Midnight** | The job's end time for looped file arrival checks. You can use a **Token** instead. |
| Agent Dynamic Variables | **File Name to Variable** | The root name of the file (including extension for IFS stream files), stored similarly to the OpCon system property `$ARRIVED FILE SHORT NAME`. |
| Agent Dynamic Variables | **Record Count to Variable** | The number of records (for DB2 files or tables) or data bytes (for IFS non-DB2 file systems) stored when a file is found. |
| File Arrival Information | **Failure Code to Variable** | When a variable name is provided, the IBM i Agent stores a job failure code to the Agent local Dynamic Variables table. The Agent also sends the code and interim status information to the OpCon Detailed Job Messages table, and sends Agent feedback codes for optional Event processing. See [Job Completion Codes](https://help.smatechnologies.com/opcon/agents/ibm-i/commands-utilities/file-arrival#command-feedback-methods) for failure codes. |
| OpCon Properties | **File Size to Property** | Sends the number of records (DB2 tables) or total bytes (IBM i file systems outside DB2) to an OpCon property. Defaults to zero for a file not found or an empty file. |
| OpCon Properties | **Failure Code to Property** | Sends a failure code to OpCon when the File Arrival job detects an expected exception or unexpected program failure. The code can be stored in an OpCon property for end-of-job Event processing. |
| Output Queue | **Name** | The output queue used for spooled files. |
| Output Queue | **Library** | The library associated with the Output Queue name. |
| Message Logging | **Level** | The number of messages for logging. |
| Message Logging | **Severity** | The lowest severity level that causes an error message to be logged. |
| Message Logging | **Text** | The detail of the text logged. |
| Additional Information | **Log CL Commands** | Whether commands run in a CL program are logged to the job log through the CL program's message queue. |
| Additional Information | **Job Date** | The calendar date associated with the job. |
| Additional Information | **JobQ Priority** | The job queue scheduling priority. |
| Additional Information | **Accounting Code** | The accounting code used when logging system resource use. |
| Additional Information | **Inquiry Message Reply** | How predefined messages are answered when sent during the job. |
| Job Log Retention | **Number Of Occurrences** | The number of occurrences to save when the same job name runs more than once. |
| Job Log Retention | **Number Of Days** | The number of days to retain job logs. |

:::note
The **ReCheck Frequency**, **Failure Code to Variable**, and **OpCon Properties** fields apply to machines with `fileWatcher.v3` capabilities.
:::

## Updating Grids

The **Messages**, **Spool Files**, and **Variables** grids are available for most job types.

:::note
**Messages** can be defined for all job types except Restricted Mode. **Spool Files** can be defined for all job types except Restricted Mode and File Arrival.
:::

### Messages

To edit a row, select the edit button next to it. To add a value, select the **green plus** button at the bottom of the grid. To delete a row, select the **red trash** button next to it.

![Message Grid: Message Grid Information](../../../../../../../Resources/Images/SM/IBMi_MessageGrid.png "Message Grid: Message Grid Information")

The Message dialog contains the following fields:

| Field | Description |
|---|---|
| **Message Id** | The 7-character Message ID. Required if Severity is set to 00. |
| **Compare Data** | The characters to find in the message defined by the Message ID. Must not exceed 30 characters. |
| **Position** | The position to start looking for the Compare Data word in the message defined by the Message ID. |
| **Severity ≥** | The severity level of messages to look for. |
| **Action** | What the Agent does when a message meets the defined criteria. |
| **Reply** | The response the Agent sends when Action is set to Reply or Both and the message meets the search criteria. |
| **End Job** | Whether to end the OpCon job after the message meets the criteria or allow it to continue running. |
| **Event** | The OpCon Event to send to SAM-SS when the message meets the search criteria. |

![Message Grid Dialog: Message Grid Dialog fields.](../../../../../../../Resources/Images/SM/IBMi_MessageGrid_Dialog.png "Message Grid Dialog fields.")

### Spool Files

To edit a row, select the edit button next to it. To add a value, select the **green plus** button at the bottom of the grid. To delete a row, select the **red trash** button next to it.

![Spool File Grid: Spool File Grid Information](../../../../../../../Resources/Images/SM/IBMi_SpoolFilesGrid.png "Spool File Grid: Spool File Grid Information")

| Field | Description |
|---|---|
| **File Name** | The name of the file containing job output. |
| **User** | The user name. |
| **OutQ Name** | The output queue name. |
| **OutQ Library** | The library containing the output queue. |
| **Total Copies** | The number of spool file copies to create. |
| **Hold** | Whether to hold the spool file before printing. |
| **Save** | Whether to save the spool file after printing. |

![Spool File Dialog: Spool File Dialog Information](../../../../../../../Resources/Images/SM/IBMi_SpoolFiles_Dialog.png "Spool File Dialog: Spool File Dialog Information")

### Variables

To edit a value, select the cell to edit. To add a value, select the **green plus** button at the bottom of the grid. To delete a row, select the **red trash** button next to it.

![Variables Grid: Variables Grid Information](../../../../../../../Resources/Images/SM/IBMi_VariablesGrid.png "Variables Grid: Variables Grid Information")

| Field | Description |
|---|---|
| **Name** | The name of the IBM i Agent Dynamic Variable that stores the value. |
| **Value** | The character string to store in the IBM i Agent Dynamic Variables table. |

:::note
Select the **Undo** button to discard your changes, or select the **Save** button to save them.
:::

## FAQs

**Q: Which job types can I configure for an IBM i job?**

You can configure Batch Job, Tracked Job, Queued Job, Operator Replay Job, Restricted Mode, FTP, and File Arrival. The available **Task Details** fields change with the selected **Job Type**.

**Q: Why are the Messages and Spool Files grids unavailable?**

The **Messages** grid is unavailable for Restricted Mode jobs. The **Spool Files** grid is unavailable for Restricted Mode and File Arrival jobs.

## Related Topics

- [Adding a Job](../../Adding-Master-Jobs.md)
- [Accessing Master Jobs](../Accessing-Master-Jobs.md)
- [Job Completion Codes](https://help.smatechnologies.com/opcon/agents/ibm-i/commands-utilities/file-arrival#command-feedback-methods)

## Glossary

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon automation. SAM monitors schedule and job start times, dependencies, and user commands to determine when jobs run, and processes OpCon Events.

**Agent**: An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as Machines in OpCon.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using `[[PropertyName]]` syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation.
