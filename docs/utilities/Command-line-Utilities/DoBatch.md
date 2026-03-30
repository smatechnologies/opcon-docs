---
title: DoBatch
description: "DoBatch.exe automatically builds, checks, deletes, or forecasts OpCon schedules via command files scheduled as Windows jobs."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: procedural
---

# DoBatch

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

DoBatch.exe automatically builds, checks, deletes, or forecasts OpCon schedules via command files scheduled as Windows jobs. OpCon supports automatic schedule maintenance on the Administration \> Schedules screen; DoBatch is supported for backwards compatibility.

DoBatch.exe is located in \<Target Directory\>\\OpConxps\\OpConxps\\. Run DoBatch on the SAM application server to keep log files together.

## When Would You Use It?

- DoBatch.exe automatically builds, checks, deletes, or forecasts OpCon schedules via command files scheduled as Windows jobs

## Why Would You Use It?

- **DoBatch**: DoBatch.exe automatically builds, checks, deletes, or forecasts OpCon schedules via command files scheduled as Windows jobs

## Creating a DoBatch command file

To create a DoBatch command file, complete the following steps:

1. Open an ASCII text editor (e.g., Notepad)
2. Enter the command to Go to the \<Configuration Directory\>\\Scripts directory on the OpCon server
3. Add the appropriate DoBatch command(s) (BUILD, CHECK, DELETE, or FORECAST)
4. Save with the **.cmd** extension in \<Configuration Directory\>**\\Scripts\\**
5. Schedule the command file as a Windows job in the Enterprise Manager

## Syntax

:::note
The ↵ symbol indicates the location of a carriage return.
:::

### Building

```
DoBatch.exe [DSN],UID,PWD,logfile,BUILD[HLD],StartDate,EndDate,[Overwrite?],ScheduleName(s) +CSV+ +JOBID+[[$JOBID]] ↵
```

:::tip Example
Build SCHED1 and SCHED2 for the next seven days, overwriting existing schedules:

```shell
cd "c:\program files\opconxps\opconxps"
DoBatch.exe,batchuser,password,build.log,BUILD,1,7,y,SCHED1,SCHED2
```

:::

### Checking

```
DoBatch.exe [DSN],UID,PWD,logfile,CHECK[+],StartDate,EndDate,ScheduleName(s) +JOBID+[[$JOBID]] ↵
```

:::tip Example
Check all schedules for the next day:

```shell
cd "c:\program files\opconxps\opconxps"
DoBatch.exe,batchuser,password,check.log,CHECK,1,1,
```

:::

CHECK only checks the named schedule, not any subschedules involved with it.

### Deleting

```
DoBatch.exe [DSN],UID,PWD,logfile,DELETE,StartDate,EndDate,ScheduleName(s) +JOBID+[[$JOBID]] ↵
```

:::tip Example
Delete all schedules for the past seven days:

```shell
cd "c:\program files\opconxps\opconxps"
DoBatch.exe,batchuser,password,delete.log,DELETE,-7,-1,
```

:::

### Forecasting

```
DoBatch.exe [DSN],UID,PWD,logfile,FORECAST,StartDate,EndDate,ScheduleName(s) +CSV+ +JOBID+[[$JOBID]] ↵
```

:::tip Example
Forecast SCHED1 for the next seven days:

```shell
cd "c:\program files\opconxps\opconxps"
DoBatch.exe,batchuser,password,forecast.log,FORECAST,1,7,SCHED1 +CSV+
```

DoBatch places the comma-delimited file SCHED1_Forecast.csv in \<Output Directory\>\SAM\Log\SMASchedMan\ on the DoBatch machine.
:::

:::note
The Output Directory is configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

## Parameters

**O** = optional, **R** = required, **NA** = does not apply.

- **DSN**: (Legacy) Leave blank. DoBatch uses the database connection defined on the OpCon Server with the SMA Connection Configuration tool
- **UID**: (Required) A valid, case-sensitive OpCon User Login ID
- **PWD**: (Required) The case-sensitive password for the User Login ID
- **Logfile**: (Required) Location where DoBatch creates a detailed activity log
  - If a path is included, the file is created at that path
  - If only a filename is given, the log is created in \<Output Directory\>\\SAM\\Log\\SMASchedMan\\
  - DoBatch.log and the logfile argument are unrelated
- **Command** (Required): The command for DoBatch to process:
  - **BUILD[HLD]**: Builds a schedule
    - BUILD: Schedule is built in a released state and starts processing at the configured start time
    - BUILDHLD: Schedule is built on hold
    - Must be uppercase
  - **CHECK[+]**: Checks the named schedule only (not subschedules)
    - CHECK: Runs without checking circular dependencies. Recommended for frequent use
    - CHECK+: Includes circular dependency checking. If a dependency is detected, results are written to check.log. Refer to [Checking Daily Schedules](../../Files/UI/Enterprise-Manager/Checking-Daily-Schedules.md) for resolution steps
    - Must be uppercase
  - **DELETE**: Deletes the schedule(s). Must be uppercase
  - **FORECAST**: Performs all BUILD functions without actually building. Must be uppercase
- **Start Date**: (Required) Beginning schedule date as an integer
  - `0` = current machine date
  - Negative integer = days before current date
  - Positive integer = days after current date
  - Absolute dates are valid if they match the regional date format of the user running the utility
  - Use compatible date types; mixing absolute and relative dates can produce unpredictable results
  - Set the earlier date as Start Date and the later date as End Date
- **End Date**: (Required) Ending schedule date (same format rules as Start Date)
- **[Overwrite?]**: Optional for BUILD and BUILDHLD only
  - **Y** = Overwrite existing schedule
  - **N** = Do not overwrite (default)
- **Schedule Name(s)**: Required for BUILD, BUILDHLD, and FORECAST. Optional for CHECK, CHECK+, and DELETE
  - Separate multiple schedule names with commas
  - Names are case-sensitive if the database uses binary sort order
  - If omitted, all schedules in the date range are affected
- **+CSV+**: Optional for BUILD, BUILDHLD, and FORECAST. Creates a comma-delimited (.csv) file with schedule dates, job names, and frequency information
  - Output files: *ScheduleName*_FORECAST.csv or *ScheduleName*_BUILD.csv
  - Placed in \<Output Directory\>\\SAM\\Log\\SMASchedMan\\ on the SAM application server
  - Useful for reports on non-Windows platforms; schedule an ftp transfer to the target platform
  - Files are not automatically deleted; schedule deletion of these files
  - One file per schedule; additional days are appended to the existing file
- **+JOBID+\[\[$JOBID\]\]** (Optional): Defines the unique job ID so SMASchedMan can send Detailed Job Messages back to the job. The SAM resolves the token at run time and SMASchedMan writes exception and completion messages to the job's Detailed Job Messages field

## Logging

DoBatch maintains DoBatch.log in \<Output Directory\>\\SAM\\Log\\SMASchedMan\\. Since DoBatch runs on the SAM application server, the log is placed in the SAM directory to keep all logs together.

:::note
The Output Directory is configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

## Exit Codes

DoBatch.exe uses the log file in the command-line argument to determine success and returns an appropriate exit code.

| Exit Code | Exit Description |
|--- |--- |
| 0 | Successful execution. |
| 32001 | Fatal error in execution. Check DoBatch log for details. |
| 32002 | Error in execution. Check DoBatch log for details. |
| 32003 | Warning messages in execution. Check DoBatch log for details. |
| 32004 | Invalid command line input. |
| 32005 | Failed to open SMAPass2Rtr.exe. |
| 32006 | Insufficient parameters for DoBatch command line. |
| 32007 | Command line greater than 2000 characters. |

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| UID | (Required) A valid, case-sensitive OpCon User Login ID | — | — |
| PWD | (Required) The case-sensitive password for the User Login ID | — | — |
| Logfile | (Required) Location where DoBatch creates a detailed activity log | — | Must be uppercase. |
| Start Date | (Required) Beginning schedule date as an integer | — | — |
| End Date | (Required) Ending schedule date (same format rules as Start Date) | — | — |
| [Overwrite?] | Optional for BUILD and BUILDHLD only | — | — |
| Schedule Name(s) | Required for BUILD, BUILDHLD, and FORECAST. | — | — |
| +CSV+ | Optional for BUILD, BUILDHLD, and FORECAST. | — | — |
## FAQs

**Q: What operations can DoBatch.exe perform on OpCon schedules?**

DoBatch.exe can build, check, delete, or forecast OpCon schedules via command files. It is supported for backwards compatibility — OpCon's automatic schedule maintenance on the Administration > Schedules screen is the preferred approach.

**Q: Where should DoBatch.exe be run and where should command files be saved?**

Run DoBatch on the SAM application server to keep log files together. Save command files with a `.cmd` extension in the `<Configuration Directory>\Scripts\` directory.

**Q: How do you schedule a DoBatch command file to run automatically?**

Create the command file with the desired BUILD, CHECK, DELETE, or FORECAST instructions and schedule it as a Windows job in the Enterprise Manager.

## Glossary

**DSN (Data Source Name)**: An ODBC connection identifier that stores database connection parameters. OpCon utilities use system DSNs to connect to the OpCon SQL Server database.

**SMA Connection Configuration**: A utility that generates the database connection file (.dat) used by OpCon server programs and utilities to connect to the OpCon SQL Server database.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
