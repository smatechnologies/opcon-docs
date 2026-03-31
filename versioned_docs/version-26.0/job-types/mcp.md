---
title: MCP Job Details
description: "MCP job details define the parameters for running a job on a Burroughs MCP agent, including user code, access code, file title, and task attributes."
product_area: Job Types
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: reference
---

# MCP Job Details

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

MCP job details define the parameters for running a job on a Burroughs MCP (Master Control Program) agent. Text fields in the graphical interfaces support OpCon token replacement. [Tokens](../objects/using-properties.md#tokens) are resolved as the SAM prepares to send the job to the agent. For more information about this platform, refer to [MCP LSAM Configuration](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Configuration.md) in the **MCP LSAM** online help.

## When Would You Use It?

- You need to configure or manage MCP Job Details in OpCon

## Why Would You Use It?

- **Centralized control**: Managing MCP Job Details through OpCon provides consistent oversight and a full audit trail for all changes

## Job Information

- **User Code**: The usercode under which the job runs
  - Maximum 17 characters; numbers and uppercase letters only
  - Must already be defined to the MCP
  - A job and its prerun job always share the same User Code
- **Access Code** (Optional): The Access Code under which the mainframe job runs
  - Maximum 17 characters; numbers and uppercase letters only
  - A job and its prerun job always share the same Access Code
- **MCP Job Type**: The command that initiates a process on the MCP machine
  - **RUN**: Run a program
  - **START**: Run a WFL
  - **EAE/AB Suite**: Run reports
  - **COPY**: Copy the file or directory specified in **Source File or Directory**
  - **CHANGE**: Rename the file or directory specified in **Source File or Directory**
  - **REMOVE**: Remove the file or directory specified in **Source File or Directory**

### START and RUN Fields

- **File Title**: The WFL or program to run
  - Maximum 96 characters
  - Do not begin with START or RUN — this causes the job to fail
  - Do not use lowercase letters; otherwise the error PARAM/ATTR ERR occurs
- **Arguments**: Parameters and/or task attributes passed to the task
  - Maximum 200 characters
  - A WFL accepts string, integer, and Boolean arguments
  - Enclose string arguments in double quotes ("STRING PARAM")
  - Pass integer arguments as numbers (e.g., 5)
  - Pass Boolean arguments as TRUE or FALSE
  - Parentheses are allowed around all arguments. Separate arguments with a comma (,)
- **Template Display File**: A file used in place of a job-specific displays file, allowing a single set of definitions across multiple OpCon jobs. For more information, refer to [Automated Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate).
- **EOT Notice Message**: Treats each end-of-task notification as a display message. Enables Automated Response to trigger action upon end of task without waiting for the job to fully complete. For more information, refer to [Automated Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate).

### Task Attributes Fields

- **Define Task Attribute**: The text for a Task Attribute the MCP job requires
- **Task Attributes**: Modifies, overrides, or elaborates existing task attributes for the MCP program or WFL
  - Maximum 300 characters per attribute
  - Each attribute must fit on a single line
  - Up to 10 task attributes, one per line. To define more than 10, append additional attributes to an existing one using a semicolon. (**Example**: SW1=TRUE;SW2=TRUE)

### File Attributes Fields

- **Define File Attribute**: The text for a File Attribute the MCP job requires
- **File Attributes**: A subset of Task Attributes; defines, enhances, or overrides default attributes for files used by the MCP program
  - Maximum 300 characters per attribute
  - Each attribute must fit on a single line
  - Up to 10 file attributes, one per line. To define more than 10, append additional attributes to an existing one using a semicolon. (**Example**: FILE INFILE(TITLE=USER)MY/FILE/IN ON DISK; FILE OUTFILE(TITLE=OTHERUSER)YOUR/FILE/OUT ON DISK)

### Job Summary Information Fields

**Job Summary Information**: For START type jobs, specifies a custom location for job summary information — useful for sites that store job summaries outside the MCP LSAM default location. The JORS process uses this information when a JORS request is sent.

- **User Code**: The MCP user to impersonate when looking up job summary information
- **Family**: The Family name for looking up Job Summary Information
  - Tokens are supported
  - Maximum 20 characters

**Directory or File Name**: The directory or filename for looking up Job Summary information. Do not append an equals sign (=) to a directory name. Use the following syntax: `<directory name\>`

:::tip Example
Use **MYJOBSUMMARY** as opposed to MYJOBSUMMARY/=
:::

- Tokens are supported
- Maximum 200 characters

### EAB/AE Suite Fields

:::note
For information on cleaning up files generated by the MCP LSAM when running EAE/AB Suite jobs, refer to [Using \*SMA/WFL/CLEANUP/LINC17/FILES](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/SMA_WFL_CLEANUP_LINC17_FILES.md) in the **MCP LSAM** online help.
:::

- **Report Name**: The EAE/AB Suite report to run
  - Tokens are supported
  - Maximum 256 characters
- **Acceptfile**: The filename the agent creates with the arguments from the Parameters field
  - Tokens are supported
  - Maximum 256 characters
  - After job completion or failure, the Acceptfile is saved permanently in \*SMA/LINC17/FILES/=. Clean up this directory at regular intervals using the SMA/WFL/CLEANUP/LINC17/FILES utility, schedulable via OpCon
- **Parameters**: All parameters for running the EAE/AB Suite report
  - Tokens are supported
  - Maximum 256 characters
- **Template Display File**: See [Automated Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate).
- **EOT Notice Message**: See [Automated Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate).

### COPY Fields

- **Source File or Directory** (Required): The filename (**Example**: (UC)MYUSER/FILES) or directory (**Example**: (UC)MYUSER/=) to copy
  - Maximum 256 characters. Tokens are supported
- **From** (Required): The location of the source file — a Family Disk name or tape name
  - Maximum 40 characters. Tokens are supported
- **Kind** (Required): The device type for the source file. Choices: PACK or TAPE (default)
- **Destination File or Directory**: The new filename (**Example**: (UC)MYUSER/SAVED/FILES) or directory (**Example**: (UC)MYUSER/SAVED/=) for the copied file
  - Maximum 256 characters. Tokens are supported
- **To** (Required): The location for the destination file — a Family Disk name or tape name
  - Maximum 40 characters. Tokens are supported
- **Kind** (Required): The device type for the destination file. Choices: PACK or TAPE (default)
- **Hostname (if BNA Transfer)** (Optional): The Unisys MCP hostname to copy the file to. If blank, the application assumes this is not a BNA Transfer copy
  - Maximum 256 characters. Tokens are supported
- **Copy & Compare** (Optional): Enables the "COPY & COMPARE" feature when the option is selected

### CHANGE Fields

- **Source File or Directory** (Required): The filename (**Example**: (UC)MYUSER/FILES) or directory (**Example**: (UC)MYUSER/=) to rename
  - Maximum 256 characters. Tokens are supported
- **New File or Directory** (Required): The new filename (**Example**: \*(UC)MYUSER/SAVED/FILES) or directory (**Example**: \*(UC)MYUSER/SAVED/=)
  - Maximum 256 characters. Tokens are supported
- **From** (Required): The location of the source file — a Family Disk name or tape name
  - Maximum 40 characters. Tokens are supported

### REMOVE Fields

- **Source File or Directory** (Required): The filename (**Example**: (UC)MYUSER/FILES) or directory (**Example**: \*(UC)MYUSER/FILES/=) to remove
  - Maximum 256 characters. Tokens are supported
- **From** (Required): The location of the source file — a Family Disk name or tape name
  - Maximum 40 characters. Tokens are supported

:::note
Effective with MCP LSAM 16.02, you can modify the \*SMA/WFL/REMOVEJOB WFL to complete OK even when no files are deleted. Security errors and locked files still cause REMOVEJOB to fail.

To implement this behavior, modify a working copy of \*SMA/WFL/REMOVEJOB: comment out sequence #26600 and un-comment sequence 26650. Re-apply this modification after each MCP LSAM upgrade if the alternate behavior is required.
:::

## Pre-Run Information

A Prerun tests required preconditions before job execution. If the Prerun job fails, it is rescheduled at a user-defined interval and retried until it succeeds. Once the Prerun completes successfully, the main job proceeds.

- **MCP Pre-Run Type**: The command that initiates a process on the MCP machine
  - **START**: Run a WFL
  - **RUN**: Run a program
  - **EAE/AB Suite**: Run reports
  - **COPY**: Copy the file or directory specified in **Source File or Directory**
  - **CHANGE**: Rename the file or directory specified in **Source File or Directory**
  - **REMOVE**: Remove the file or directory specified in **Source File or Directory**
- **File Title**: The WFL or program to run
  - Maximum 96 characters
  - Do not begin with START or RUN — this causes the job to fail
  - Do not use lowercase letters; otherwise the error PARAM/ATTR ERR occurs
- **Arguments**: Parameters and/or task attributes passed to the task
  - Maximum 92 characters
  - A WFL accepts string, integer, and Boolean arguments
  - Enclose string arguments in double quotes ("STRING PARAM")
  - Pass integer arguments as numbers (e.g., 5)
  - Pass Boolean arguments as TRUE or FALSE
  - Parentheses are allowed around all arguments. Separate arguments with a comma (,)
- **Template Display File**: See [Automated Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate).
- **EOT Notice Message**: Treats each end-of-task notification as a display message, enabling Automated Response to act without waiting for the prerun job to fully complete. See [Automated Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate).

### Task Attributes Fields

**Define Task Attribute**: The text for a Task Attribute the MCP job requires.

**Task Attributes**: Modifies, overrides, or elaborates existing task attributes for the MCP program or WFL.

- Maximum 300 characters per attribute
- Each attribute must fit on a single line
- Up to 10 task attributes, one per line. To define more than 10, append additional attributes using a semicolon. (**Example**: SW1=TRUE;SW2=TRUE)

### File Attributes Fields

- **Define File Attribute**: The text for a File Attribute the MCP job requires
- **File Attributes**: A subset of Task Attributes; defines, enhances, or overrides default attributes for files used by the MCP program
  - Maximum 300 characters per attribute
  - Each attribute must fit on a single line
  - Up to 10 file attributes, one per line. To define more than 10, append additional attributes using a semicolon. (**Example**: FILE INFILE(TITLE=USER)MY/FILE/IN ON DISK; FILE OUTFILE(TITLE=OTHERUSER)YOUR/FILE/OUT ON DISK)

### Job Summary Information Fields

**Job Summary Information**: For START type Prerun jobs, specifies a custom location for job summary information. The JORS process uses this information when a JORS request is sent.

**User Code**: The MCP user to impersonate when looking up job summary information.

**Family**: The Family name for looking up Job Summary Information.

- Tokens are supported
- Maximum 20 characters

**Directory or File Name**: The directory or filename for looking up Job Summary information. Do not append an equals sign (=) to a directory name. Use the following syntax: `<directory name\>`

:::tip Example
Use **MYJOBSUMMARY** as opposed to MYJOBSUMMARY/=
:::

- Tokens are supported
- Maximum 200 characters

### EAB/AE Suite Fields

:::note
For information on cleaning up files generated by the MCP LSAM when running EAE/AB Suite jobs, refer to [Using \*SMA/WFL/CLEANUP/LINC17/FILES](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/SMA_WFL_CLEANUP_LINC17_FILES.md) in the **MCP LSAM** online help.
:::

- **Report Name**: The EAE/AB Suite report to run
  - Tokens are supported
  - Maximum 256 characters
- **Acceptfile**: The filename the agent creates with the arguments from the Parameters field
  - Tokens are supported
  - Maximum 256 characters
  - After completion or failure, the Acceptfile is saved permanently in \*SMA/LINC17/FILES/=. Clean up this directory at regular intervals using SMA/WFL/CLEANUP/LINC17/FILES
- **Parameters**: All parameters for running the EAE/AB Suite report
  - Tokens are supported
  - Maximum 256 characters
- **Template Display File**: See [Automated Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate).
- **EOT Notice Message**: See [Automated Response](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Automated-Response.md#Automate).

### COPY Fields

- **Source File or Directory** (Required): The filename (Ex: \*SMA/COMM) or directory (Ex: \*SMA/=) to copy
  - Maximum 256 characters. Tokens are supported
- **From** (Required): The location of the source file — a Family Disk name or tape name
  - Maximum 40 characters. Tokens are supported
- **Kind** (Required): The device type for the source file. Choices: PACK or TAPE (default)
- **Destination File or Directory**: The new filename (Ex: \*SMA/COMM) or directory (Ex: \*SMA/=) for the copied file
  - Maximum 256 characters. Tokens are supported
- **To** (Required): The location for the destination file — a Family Disk name or tape name
  - Maximum 40 characters. Tokens are supported
- **Kind** (Required): The device type for the destination file. Choices: PACK or TAPE (default)
- **Hostname (if BNA Transfer)** (Optional): The Unisys MCP hostname to copy the file to. If blank, the application assumes this is not a BNA Transfer copy
  - Maximum 256 characters. Tokens are supported
- **Copy & Compare** (Optional): Enables the "COPY & COMPARE" feature when the option is selected

### CHANGE Fields

- **Source File or Directory** (Required): The filename (Ex: \*SMA/COMM) or directory (Ex: \*SMA/=) to rename
  - Maximum 256 characters. Tokens are supported
- **New File or Directory** (Required): The new filename (Ex: \*SMA/COMM) or directory (Ex: \*SMA/=)
  - Maximum 256 characters. Tokens are supported
- **From** (Required): The location of the source file — a Family Disk name or tape name
  - Maximum 40 characters. Tokens are supported

### REMOVE Fields

- **Source File or Directory** (Required): The filename (Ex: \*SMA/COMM) or directory (Ex: \*SMA/=) to remove
  - Maximum 256 characters. Tokens are supported
- **From** (Required): The location of the source file — a Family Disk name or tape name
  - Maximum 40 characters. Tokens are supported

## Failure Criteria

- **Fail Codes**: Words compared to the MCP console display. If matched, the LSAM follows the failure logic in the configuration. Refer to [Set up Failure and Status Message Logic](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Set-up-Failure-and-Status-Message-Logic.md) in the **MCP LSAM** online help
  - The entry must begin with the first word of the MCP console display, followed by any additional words to include in the search
  - End the entry with an asterisk (\*) as a wildcard for remaining words
- **Fail Reset**: Words compared to the MCP console display. If matched, the LSAM follows the failure logic in the configuration. Refer to [Set up Failure and Status Message Logic](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Set-up-Failure-and-Status-Message-Logic.md) in the **MCP LSAM** online help
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| User Code | The usercode under which the job runs | — | Maximum 17 characters; numbers and uppercase letters only. |
| MCP Job Type | The command that initiates a process on the MCP machine | — | — |
| File Title | The WFL or program to run | — | Maximum 96 characters.   - Do not begin with START or RUN — |
| Arguments | Parameters and/or task attributes passed to the task | — | Maximum 200 characters.   - A WFL accepts string, integer, an |
| Template Display File | A file used in place of a job-specific displays file, allowing a single set of definitions across multiple OpCon jobs. | — | Maximum 300 characters per attribute.   - Each attribute must |
| EOT Notice Message | Treats each end-of-task notification as a display message. | — | Maximum 300 characters per attribute.   - Each attribute must |
| Define Task Attribute | The text for a Task Attribute the MCP job requires | — | Maximum 300 characters per attribute.   - Each attribute must |
| Task Attributes | Modifies, overrides, or elaborates existing task attributes for the MCP program or WFL | attributes for files used by t | Maximum 300 characters per attribute.   - Each attribute must |
| Define File Attribute | The text for a File Attribute the MCP job requires | attributes for files used by t | Maximum 300 characters per attribute.   - Each attribute must |
| File Attributes | A subset of Task Attributes; defines, enhances, or overrides default attributes for files used by the MCP program | attributes for files used by t | Maximum 300 characters per attribute.   - Each attribute must |
| Job Summary Information | For START type jobs, specifies a custom location for job summary information — useful for sites that store job summaries outside the MCP LSAM default ... | location | Maximum 20 characters.  **Directory or File Name**: The dire |
| Family | The Family name for looking up Job Summary Information | — | Maximum 20 characters.  **Directory or File Name**: The dire |
| Directory or File Name | The directory or filename for looking up Job Summary information. | — | Maximum 200 characters. |
| Report Name | The EAE/AB Suite report to run | — | Maximum 256 characters. - **Acceptfile**: The filename the LS |
| Acceptfile | The filename the agent creates with the arguments from the Parameters field | — | Maximum 256 characters.   - After job completion or failure, |
| Parameters | All parameters for running the EAE/AB Suite report | — | Maximum 256 characters. - **Template Display File**: See [Aut |
| Destination File or Directory | The new filename (**Example**: (UC)MYUSER/SAVED/FILES) or directory (**Example**: (UC)MYUSER/SAVED/=) for the copied file | — | Maximum 256 characters. Tokens are supported. - **To** (Requi |
| MCP Pre-Run Type | The command that initiates a process on the MCP machine | — | Maximum 96 characters. |
| Fail Codes | Words compared to the MCP console display. | — | — |
| Fail Reset | Words compared to the MCP console display. | — | — |
## Operations

### Monitoring

- **Fail Codes** are words compared to the MCP console display. If matched, the agent follows the defined failure logic. Entries must begin with the first word of the console display and can end with `*` as a wildcard for remaining words.
- **Fail Reset** words are also compared to the MCP console display. When matched, they reset a previously triggered Fail Code condition, allowing the job to continue.
- A job and its prerun always share the same **User Code** and **Access Code** on the MCP platform. Ensure both are defined correctly, as access permissions are applied uniformly to the job and its prerun.

### Common Tasks

- The **File Title** field for START and RUN job types must not begin with `START` or `RUN` and must use only uppercase letters; lowercase letters cause a `PARAM/ATTR ERR` error on the MCP platform.
- To define more than 10 Task Attributes, append additional attributes to an existing line using a semicolon separator (e.g., `SW1=TRUE;SW2=TRUE`).
- The **EOT Notice Message** option treats each end-of-task notification as a display message, enabling Automated Response to trigger actions upon end of task without waiting for the job to fully complete.

### Alerts and Log Files

- For START-type jobs, use the **Job Summary Information** section to specify a custom location (Family and Directory/File Name) for job summary data if stored outside the MCP LSAM default location. The maximum length for Directory or File Name is 200 characters.

## Exception Handling

**File Title begins with START or RUN and causes job failure** — In Pre-Run Information, the File Title field must not begin with the words START or RUN; if it does, the job fails — Remove the START or RUN prefix from the File Title; these keywords are handled by the MCP Pre-Run Type field, not the File Title itself.

**Lowercase letters in File Title cause PARAM/ATTR ERR** — The MCP platform does not support lowercase letters in the File Title field; entering lowercase text results in a PARAM/ATTR ERR error — Use only uppercase letters in the File Title field for MCP job definitions.

**REMOVEJOB WFL fails on locked files or security errors** — The \*SMA/WFL/REMOVEJOB WFL fails if it encounters security errors or locked files, even if the file deletion goal would otherwise be achievable — Resolve file lock or security permission issues before retrying, or modify \*SMA/WFL/REMOVEJOB to complete OK when no files are deleted (commenting sequence #26600 and un-commenting sequence 26650).

## FAQs

**Q: What MCP job types does OpCon support?**

OpCon supports RUN (run a program), START (run a WFL), EAE/AB Suite (run reports), COPY (copy a file or directory), CHANGE (rename a file or directory), and REMOVE (remove a file or directory).

**Q: Do a job and its prerun share the same User Code on MCP?**

Yes. A job and its prerun always share the same User Code and Access Code on the MCP platform.

**Q: How are Fail Codes used in an MCP job?**

Fail Codes are words compared to the MCP console display. If matched, the agent follows the failure logic defined in its configuration. Entries must begin with the first word of the console display and can end with an asterisk (*) as a wildcard for remaining words.

## Glossary

**JORS (Job Output Retrieval System)**: The system used to retrieve and display job output — logs and reports — from agent machines directly within the OpCon graphical interfaces.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
