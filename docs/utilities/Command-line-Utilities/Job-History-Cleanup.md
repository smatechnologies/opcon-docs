---
title: Job History Cleanup
description: "History.exe archives and purges job history."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

# Job History Cleanup

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

History.exe archives and purges job history. It is installed to `<Target Directory>\OpConxps\Utilities\` and connects only to the database configured for SAM in the SMA Connection Configuration program.

- **Archiving**: Moves active records from the primary history table (HISTORY) to the archive table (HISTARC)
- **Purging**: Removes records from HISTORY or HISTARC based on the Cut-off Date and Days to Keep settings

For information on viewing job history, refer to [Using History Management](../../Files/UI/Enterprise-Manager/Using-History-Management.md) in the **Enterprise Manager** online help.

During installation, the SMAUtility schedule is imported with jobs named Job History Archive and Job History Purge. For more information, refer to [SMAUtility Schedule Job Descriptions](../../objects/schedules.md#smautility-schedule) in the **Concepts** online help.

## Syntax

```shell
HISTORY.EXE -u<user> -w<password> -s<Schedule> -d<Days to Keep|Cut-off Date> -m<Min Records> [-h] [-p]
```

### Parameters

- **-u\<User\>**: Any valid, case-sensitive OpCon User Login ID
- **-w\<Password\>**: Case-sensitive password for the User Login ID
- **-s\<Schedule\>**: Schedule name to clean up. Omit to clean up history for all schedules, including deleted ones
- **-d\<Days to Keep\|Cut-off Date\>**: Determines which records to clean up
  - **Days to Keep**: A number (0–32,000) used as a negative offset from the current date
  - **Cut-off Date**: The oldest date to keep. Format must match the regional settings of the user running the utility
- **-m\<Min Records\>**: Minimum number of history entries to keep per job (0–32,000). If set to 0 or omitted, the `-d` switch determines which records are removed
- **-h** (Optional): Purges the primary history table (HISTORY)
- **-p** (Optional): Performs a purge instead of an archive. Use without `-h` to purge the archive table (HISTARC)

### Examples

:::tip Example
Archive job history for all schedules, keeping 30 days and at least 12 records per job:

```shell
history.exe -ubatchuser -wbatchpwd -d30 -m12
```

All schedules are included (no `-s` switch). No `-p` switch means archive mode. Jobs with infrequent runs retain their last 12 executions even if older than 30 days.
:::

:::tip Example
Purge the archive table for all schedules, keeping 365 days and at least 120 records per job:

```shell
history.exe -ubatchuser -wbatchpwd -d365 -m120 -p
```

The `-p` switch triggers a purge from the archive table (HISTARC).
:::

## Logging

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

The History log file details the cleanup process.

- Log files reside in `<Output Directory>\SAM\Log\`
- Each run creates a log file named `History_CCYYMMDD_HHmmssss.log` (e.g., `History_20110513_15263142.log`)
- On startup, History.exe moves log files older than today to `<Output Directory>\SAM\Log\Archive\<Day>\`. Logs older than the oldest archive folder are deleted

## Exit Codes

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

|Status Number|Status Description|
|--- |--- |
|0|Batch run successful.|
|34001|Program aborted. Review the History.log file in `<Output Directory>\SAM\Log\` and possibly the MSLSAM.log file in `<Output Directory>\MSLSAM\Log\`.|
|34002|Invalid DSN, UserID, and/or Password.|
|34003|Invalid parameters given.|
|34004|The user on the command line does not have the required privileges.|

## Security Considerations

### Authentication

History.exe requires a valid, case-sensitive OpCon User Login ID (-u parameter) and the corresponding case-sensitive password (-w parameter) on the command line. The utility connects only to the database configured for SAM in the SMA Connection Configuration program; no alternative database connection can be specified at runtime.

### Authorization

The user account supplied to History.exe must have the required privileges to perform archive and purge operations. If the account lacks the necessary privileges, the utility exits with status code 34004. An invalid User Login ID, DSN, or password causes exit code 34002.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Archiving | Moves active records from the primary history table (HISTORY) to the archive table (HISTARC) | — | — |
| Purging | Removes records from HISTORY or HISTARC based on the Cut-off Date and Days to Keep settings | — | — |
| -u\<User\> | Any valid, case-sensitive OpCon User Login ID | — | — |
| -w\<Password\> | Case-sensitive password for the User Login ID | — | — |
| -s\<Schedule\> | Schedule name to clean up. | — | — |
| -d\<Days to Keep\\|Cut-off Date\> | Determines which records to clean up | — | — |
| -m\<Min Records\> | Minimum number of history entries to keep per job (0–32,000). | — | — |
## Operations

### Common Tasks
- Run archive mode (no `-p` flag) regularly via the **Job History Archive** job in the SMAUtility schedule to move records from the HISTORY table to HISTARC.
- Run purge mode (`-p` flag) separately to remove records from HISTARC based on the Days to Keep (`-d`) and minimum records (`-m`) settings.
- Use the `-m` parameter to retain a minimum number of history entries per job regardless of age, protecting records for infrequently run jobs.

### Alerts and Log Files
- Log files are written to `<Output Directory>\SAM\Log\` and named `History_CCYYMMDD_HHmmssss.log`.
- On startup, History.exe automatically moves log files older than today to `<Output Directory>\SAM\Log\Archive\<Day>\`; logs older than the oldest archive folder are deleted.
- Exit code `34001` indicates the program aborted; review the History log in `<Output Directory>\SAM\Log\` and the MSLSAM.log in `<Output Directory>\MSLSAM\Log\` for details.
- Exit code `34002` indicates an invalid DSN, User ID, or password; exit code `34004` indicates the user lacks required privileges.

## FAQs

**Q: What is the difference between archiving and purging with History.exe?**

Archiving moves records from the primary history table (HISTORY) to the archive table (HISTARC). Purging removes records from HISTORY or HISTARC based on the Days to Keep and Minimum Records settings. Use `-p` to purge instead of archive.

**Q: What does the -m (minimum records) parameter do?**

The `-m` parameter sets the minimum number of history entries to retain per job regardless of age. This ensures that jobs with infrequent runs keep at least the specified number of execution records even if they exceed the Days to Keep threshold.

**Q: How do you purge the archive table instead of the primary history table?**

Use the `-p` flag without the `-h` flag. Using `-p` alone purges HISTARC (the archive table). Adding `-h` purges the primary HISTORY table instead.

## Glossary

**DSN (Data Source Name)**: An ODBC connection identifier that stores database connection parameters. OpCon utilities use system DSNs to connect to the OpCon SQL Server database.

**SMAUtility Schedule**: A pre-built OpCon schedule installed during setup that contains standard maintenance jobs for audit history cleanup, job history cleanup, and BIRT report generation.

**SMA Connection Configuration**: A utility that generates the database connection file (.dat) used by OpCon server programs and utilities to connect to the OpCon SQL Server database.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
