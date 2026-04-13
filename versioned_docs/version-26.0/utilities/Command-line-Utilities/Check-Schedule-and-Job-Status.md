---
title: Check Schedule and Job Status
description: "SMAChkStat.exe compares schedule and job statuses in OpCon against a logical expression, then returns a pass or fail exit code."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: reference
---

# Check Schedule and Job Status

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

SMAChkStat.exe compares schedule and job statuses in OpCon against a logical expression, then returns a pass or fail exit code. This enables branching to different jobs or OpCon events based on current status.

## Rules

- Returns exit code 33001 if the status does not match the expression; returns 0 if it does
- Schedule name: maximum 40 characters
- Job name: maximum 128 characters

## Syntax

```batch
smachkstat.exe ScheduleDate ScheduleName "ComparisonExpression" [JobName]
```

### Parameters

- **SMAChkStat.exe**: Program executable, installed in `<Target Directory>\OpConxps\Utilities\`
- **ScheduleDate**: Date on which the schedule was built. Accepts any valid date format matching the regional settings of the user running the utility. Enclose in double quotes if the date contains a space (e.g., `"[[$SCHEDULE DATE]]"`)
- **ScheduleName**: Schedule name as defined in the database. The schedule must exist for the specified date and contain at least one job. Enclose in double quotes if the name contains a space. Case-sensitive if the database uses binary sort order
- **ComparisonExpression**: Logical expression evaluated against the job or schedule status. Must be enclosed in double quotes. See [Sample Expressions](#sample-expressions). Status keywords are case-sensitive; see [Job Status Keywords](#job-status-keywords) and [Schedule Status Keywords](#schedule-status-keywords)
- **JobName** (Optional): Name of the job to check. If provided, the utility checks job status using [Job Status Keywords](#job-status-keywords). If omitted, it checks schedule status using [Schedule Status Keywords](#schedule-status-keywords). Enclose in double quotes if the name contains spaces. Do not include square brackets. Case-sensitive if the database uses binary sort order

### Relational Operators

|Order of Operations|Operator|Description|
|--- |--- |--- |
|1|( )|Groups expressions|
|2|!|Logical NOT|
|3|&|Logical AND|
|4|\||Logical OR|

### Job Status Keywords

|Keyword|Job Status|
|--- |--- |
|ON_HOLD|On Hold|
|RELEASED|Qualifying|
|WAITING|Waiting for Dependency or Resource|
|RUNNING|Running|
|CANCELED|Cancelled|
|FINNED_OK|Finished OK or Marked Finished OK|
|FAILED|Failed or Marked Failed|
|MISSED|Missed Start Time|

### Schedule Status Keywords

|Keyword|Schedule Status|
|--- |--- |
|ON_HOLD|On Hold|
|RELEASED|Waiting for Start Time|
|RUNNING|In Process|
|FINISHED|Completed|

### Sample Expressions

|Expression|Meaning|
|--- |--- |
|"ON_HOLD \| MISSED"|ON HOLD OR MISSED|
|"!(RUNNING)"|NOT RUNNING|
|"!(RUNNING) & ! (CANCELED)"|NOT RUNNING AND NOT CANCELLED|
|"!(WAITING) \| CANCELED"|NOT WAITING OR CANCELLED|

## Logging

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

- The log file `SMACheckStat_<date-time stamp>.log` resides in `<Output Directory>\SAM\Log\`
- Archived log files reside in `<Output Directory>\SAM\Log\Archive\`. Folder names use the format `yyyy_mm_dd (Weekday)`, where the weekday reflects the regional settings of the user running the utility
- The SAM retains 10 days of archived logs by default and does not purge folders that contain non-archived files. To change the retention period, refer to [Maximum number of days archived SAM logs should be kept](../../administration/server-options.md#logging)

## Exit Codes

|Exit Code|Exit Description|
|--- |--- |
|0|Criterion is true.|
|33001|No matching records found. The criterion is false. Verify the schedule name, job name, and job status parameters.|
|33002|Command-line syntax error. Parsing error.|
|33003|Database connection information, Usercode, or Password is incorrect, or the SMAODBCConfiguration.dat file is missing.|
|33004|Unknown.|

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| SMAChkStat.exe | Program executable, installed in `\OpConxps\Utilities\` | — | Must be enclosed in double quotes. See [Sample Expressions](#sample-expressions). Status |
| ScheduleDate | Date on which the schedule was built. | — | Must be enclosed in double quotes. See [Sample Expressions](#sample-expressions). Status |
| ScheduleName | Schedule name as defined in the database. | — | Must be enclosed in double quotes. See [Sample Expressions](#sample-expressions). Status |
| ComparisonExpression | Logical expression evaluated against the job or schedule status. | — | Must be enclosed in double quotes. See [Sample Expressions](#sample-expressions). Status |
## Operations

### Monitoring
- SMAChkStat.exe returns exit code `0` when the comparison expression matches the current schedule or job status, and `33001` when it does not — use these codes to branch downstream jobs or events.
- Status keywords (`ON_HOLD`, `RUNNING`, `FINNED_OK`, `FINISHED`, etc.) are case-sensitive and must match exactly as documented.

### Common Tasks
- Omit the JobName parameter to check schedule-level status; supply JobName to check job-level status within the specified schedule.
- Use compound expressions (e.g., `"!(RUNNING) & !(CANCELED)"`) to check for multiple status conditions in a single call.

### Alerts and Log Files
- Log files are written to `<Output Directory>\SAM\Log\` and named `SMACheckStat_<date-time stamp>.log`.
- Archived logs reside in `<Output Directory>\SAM\Log\Archive\` using the folder format `yyyy_mm_dd (Weekday)`; the SAM retains 10 days of archived logs by default.
- Exit code `33003` indicates a missing or misconfigured `SMAODBCConfiguration.dat` file; regenerate it with the SMA Connection Configuration utility.

## Exception Handling

**Exit code 33001: No matching records found** — The comparison expression is false because the schedule or job was not found for the specified date, or the status did not match — Verify the schedule name, schedule date, and job name are correct; confirm the schedule exists for the specified date and contains at least one job; note that schedule names are case-sensitive when the database uses binary sort order.

**Exit code 33002: Command-line syntax error** — The arguments could not be parsed, typically due to missing quotes around the schedule name or job name, or a missing required parameter — Ensure the ComparisonExpression is enclosed in double quotes, and enclose any schedule or job names that contain spaces in double quotes; verify all required parameters are present.

**Exit code 33003: Database connection information is incorrect or SMAODBCConfiguration.dat file is missing** — The utility cannot establish a connection to the OpCon database — Verify the SMAODBCConfiguration.dat file exists in the `<Target Directory>\OpConxps\Utilities\` directory and contains valid server, database, and authentication settings; regenerate the file with the SMA Connection Configuration utility if needed.

## FAQs

**Q: What is the difference between checking a schedule status and checking a job status with SMAChkStat.exe?**

If a JobName is provided on the command line, the utility evaluates the job status using job status keywords. If JobName is omitted, it evaluates the schedule status using schedule status keywords.

**Q: What exit code does SMAChkStat.exe return when the status does not match the expression?**

It returns exit code 33001 when the status does not match. It returns 0 when the comparison expression is true, enabling downstream jobs or events to branch based on the result.

**Q: Are status keywords in SMAChkStat.exe case-sensitive?**

Yes. Status keywords such as `ON_HOLD`, `RUNNING`, and `FINNED_OK` are case-sensitive and must be entered exactly as documented.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
