---
title: Check Job Termination
description: "SMACheckTerm.exe compares the termination description of a completed job to a specific value."
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

# Check Job Termination

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

SMACheckTerm.exe compares the termination description of a completed job to a specific value. If the exit code matches the expression, it returns 0; otherwise it returns a failure exit code. This enables branching to different jobs or OpCon events based on a job's exit code.

## Rules

:::tip Example
Command line to check a UNIX job's termination:

```shell
SMACheckTerm.exe JobA ScheduleA "[[$SCHEDULE DATE]]" "+000000001:0000:N"
```

:::

## Logging

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

- Log file: `SMACheckTerm_<date-time stamp>.log` in `<Output Directory>\SAM\Log\`
- Archived logs reside in `<Output Directory>\SAM\Log\Archive\`. Folder names use the format `yyyy_mm_dd (Weekday)`, where the weekday reflects the regional settings of the user running the utility
- The SAM retains 10 days of archived logs by default and does not purge folders that contain non-archived files. To change the retention period, refer to [Maximum number of days archived SAM logs should be kept](../../administration/server-options.md#logging)

## Exit Codes

|Exit Code|Exit Description|
|--- |--- |
|0|Criterion is true.|
|33001|No matching records found. The criterion is false. Verify the schedule name, schedule status, job name, and job status parameters.|
|33002|Command-line syntax error. Parsing error.|
|33003|Database connection information, Usercode, or Password is incorrect, or SMAODBCConfiguration.dat file is missing.|
|33004|Unknown.|

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## Operations

### Common Tasks
- Use SMACheckTerm.exe as a downstream job in a workflow to branch based on a completed job's exit code; configure it with a job dependency on the job being checked.
- Pass the schedule date using the `[[$SCHEDULE DATE]]` token to ensure the correct schedule instance is evaluated.

### Alerts and Log Files
- Log files are written to `<Output Directory>\SAM\Log\` and named `SMACheckTerm_<date-time stamp>.log`.
- Archived logs reside in `<Output Directory>\SAM\Log\Archive\` using the folder format `yyyy_mm_dd (Weekday)`; the SAM retains 10 days of archived logs by default.
- Exit code `33001` (no matching records — criterion false) and `33003` (database connection failure or missing SMAODBCConfiguration.dat) require investigation before the workflow can proceed.

## Exception Handling

**Exit code 33001: No matching records found** — The criterion is false, meaning no job matching the supplied schedule name, job name, and schedule date was found, or the termination description did not match — Verify that the schedule name, schedule date, and job name parameters are correct and that the job has completed; check that the schedule date format matches what OpCon expects.

**Exit code 33002: Command-line syntax error** — The command-line arguments could not be parsed, typically due to incorrect quoting or missing required parameters — Review the command-line syntax, ensure the schedule date is properly quoted, and verify all required arguments are present in the correct order.

**Exit code 33003: Database connection information is incorrect or SMAODBCConfiguration.dat file is missing** — The utility cannot connect to the OpCon database because credentials are wrong or the configuration file is absent — Verify the SMAODBCConfiguration.dat file exists in the expected directory and contains valid server, database, and credential settings; regenerate the file using the SMA Connection Configuration utility if needed.

## FAQs

**Q: What does SMACheckTerm.exe return when the job's exit code matches the expression?**

It returns exit code 0 when the termination description matches the specified value. If it does not match, it returns a failure exit code (33001), enabling conditional branching to different jobs or OpCon events.

**Q: Where are SMACheckTerm.exe log files stored?**

Log files are written to `<Output Directory>\SAM\Log\` and named `SMACheckTerm_<date-time stamp>.log`. Archived logs are retained for 10 days by default in `<Output Directory>\SAM\Log\Archive\`.

**Q: What does exit code 33001 from SMACheckTerm.exe mean, and how do you resolve it?**

Exit code 33001 means no matching records were found — the termination criterion is false. To resolve it, verify that the schedule name, schedule date, and job name parameters are correct and that the job has already completed before calling SMACheckTerm.exe.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
