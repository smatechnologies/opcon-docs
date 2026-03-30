---
title: Audit History Cleanup
description: "The Audit Cleanup utility (Audit.exe) archives and purges audit data."
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

# Audit History Cleanup

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Audit Cleanup utility (Audit.exe) archives and purges audit data. Audit.exe is installed to the `<Target Directory>\OpConxps\Utilities\` directory with the SAM installation package. It connects only to the database configured for SAM in the SMA Connection Configuration program.

- **Archiving**: Moves all active Audit records from the primary auditing table to a table used for viewing audit data in the Enterprise Manager. Refer to [Using Audit Management](../../Files/UI/Enterprise-Manager/Using-Audit-Management.md) in the **Enterprise Manager** online help
- **Purging**: Cleans up records from the audit viewing table according to the Days to Keep|Cut-off Date setting

During installation, the SMAUtility schedule is imported with jobs named Job History Archive and Audit History Purge to schedule Audit history cleanup. Refer to [SMAUtility Schedule Job Descriptions](../../objects/schedules.md#smautility-schedule) in the **Concepts** online help.

## When Would You Use It?

- The Audit Cleanup utility (Audit.exe) archives and purges audit data

## Why Would You Use It?

- **Audit History**: The Audit Cleanup utility (Audit.exe) archives and purges audit data

## Syntax

```
AUDIT.EXE -u<User> -w<Password> -d<Days to Keep|Cut-off Date> [-p]
```

### Parameters

- **AUDIT.EXE**: The audit management program
- **-u\<User\>**: Any valid, case-sensitive OpCon User Login ID
- **-w\<Password\>**: The case-sensitive password for the User Login ID
- **-d\<Days to Keep\|Cut-off Date\>**: Determines which records to clean up
  - **Days to Keep**: A number between 0 and 32,000 as a negative offset from the current date
  - **Cut-off Date**: The oldest date to keep. Must use the date format recognized by the regional settings of the user running Audit.exe
- **-p** (Optional): Purges the audit viewing table (AUDITRECSVIEW). If omitted, Audit.exe archives the active audit table (AUDITRECS)

## Logging

:::note
The Output Directory was configured during installation. Refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

The Audit log file records details about the audit history cleanup process.

- The log file resides in `<Output Directory>\SAM\Log\`
- Each run creates a log file named `Audit_CCYYMMDD_HHmmssss.log`, where "ssss" represents seconds and tenths of seconds (e.g., `Audit_20110513_15263142.log`)
- On startup, Audit.exe moves log files older than today to the appropriate archive subfolder
  - Archived logs reside in `<Output Directory>\SAM\Log\Archive\<Day>\`
  - Logs older than the oldest archive folder are deleted

## Exit Codes

| Status Number | Status Description |
|--- |--- |
| 0 | Batch run successful |
| 35001 | Program aborted. Review the Audt.log file in `<Output Directory>\SAM\Log` and possibly the MSLSAM.log file in `<Output Directory>\MSLSAM\Log`. |
| 35002 | Invalid DSN, UserID, and/or Password |
| 35003 | Invalid parameters given |
| 35004 | The user on the command line does not have the required privileges. |

## Security Considerations

### Authentication

Audit.exe requires a valid, case-sensitive OpCon User Login ID (-u parameter) and the corresponding case-sensitive password (-w parameter) on the command line. The utility connects only to the database configured for SAM in the SMA Connection Configuration program; no alternative database connection can be specified at runtime.

### Authorization

The user account supplied to Audit.exe must have the required privileges to perform archive and purge operations on audit data. If the account lacks the necessary privileges, the utility exits with status code 35004. An invalid User Login ID, DSN, or password causes exit code 35002.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Archiving | Moves all active Audit records from the primary auditing table to a table used for viewing audit data in the Enterprise Manager. | — | — |
| Purging | Cleans up records from the audit viewing table according to the Days to Keep\|Cut-off Date setting | — | — |
| AUDIT.EXE | The audit management program | — | — |
| -u\<User\> | Any valid, case-sensitive OpCon User Login ID | — | — |
| -w\<Password\> | The case-sensitive password for the User Login ID | — | — |
| -d\<Days to Keep\\|Cut-off Date\> | Determines which records to clean up | — | — |
## Operations

### Common Tasks
- Run archive mode (no `-p` flag) via the **Audit History Purge** job in the SMAUtility schedule to move active audit records from AUDITRECS to AUDITRECSVIEW.
- Run purge mode (`-p` flag) to remove records from AUDITRECSVIEW based on the Days to Keep (`-d`) setting.
- Set the `-d` value (Days to Keep or Cut-off Date) to control how far back audit records are retained before archiving or purging.

### Alerts and Log Files
- Log files are written to `<Output Directory>\SAM\Log\` and named `Audit_CCYYMMDD_HHmmssss.log`.
- On startup, Audit.exe moves log files older than today to `<Output Directory>\SAM\Log\Archive\<Day>\`; logs older than the oldest archive folder are deleted.
- Exit code `35001` indicates the program aborted; review the Audt.log in `<Output Directory>\SAM\Log\` and MSLSAM.log in `<Output Directory>\MSLSAM\Log\` for details.
- Exit code `35004` indicates the user lacks required privileges; exit code `35002` indicates an invalid DSN, User ID, or password.

## FAQs

**Q: What is the difference between archiving and purging with Audit.exe?**

Archiving moves active audit records from the primary auditing table (AUDITRECS) to the audit viewing table (AUDITRECSVIEW) used in Enterprise Manager. Purging removes records from the audit viewing table based on the Days to Keep or Cut-off Date setting.

**Q: How do you trigger a purge instead of an archive when running Audit.exe?**

Include the `-p` flag in the command line. Without `-p`, the utility archives the active audit table. With `-p`, it purges the archive viewing table.

**Q: Where are Audit.exe log files stored?**

Log files are written to `<Output Directory>\SAM\Log\` and named `Audit_CCYYMMDD_HHmmssss.log`. Logs older than today are automatically moved to `<Output Directory>\SAM\Log\Archive\<Day>\` on startup.

## Glossary

**DSN (Data Source Name)**: An ODBC connection identifier that stores database connection parameters. OpCon utilities use system DSNs to connect to the OpCon SQL Server database.

**SMAUtility Schedule**: A pre-built OpCon schedule installed during setup that contains standard maintenance jobs for audit history cleanup, job history cleanup, and BIRT report generation.

**SMA Connection Configuration**: A utility that generates the database connection file (.dat) used by OpCon server programs and utilities to connect to the OpCon SQL Server database.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
