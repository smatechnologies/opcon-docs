---
title: BIRT Report Generator
description: "BIRTRptgen.exe calls the BIRTPROCESSOR handler to run reports created with Business Intelligence and Reporting Tools (BIRT)."
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

# BIRT Report Generator

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

BIRTRptgen.exe calls the BIRTPROCESSOR handler to run reports created with Business Intelligence and Reporting Tools (BIRT). Continuous distributes predefined reports with OpCon that can be scheduled using this program. BIRTrptgen.exe installs with the SAM to `<Target Directory>\OpConxps\Utilities\`. All reports must exist in: `<Target Directory>\OpConxps\SAM\BIRT\ReportEngine\OpConXPS_Reports`

The Report Generator schedule should have been imported during installation with one template job per distributed report. For more information, refer to [Report Generator Schedule](../../objects/schedules.md#report-generator-schedule).

## When Would You Use It?

- BIRTRptgen.exe calls the BIRTPROCESSOR handler to run reports created with Business Intelligence and Reporting Tools (BIRT)

## Why Would You Use It?

- **BIRT Report**: BIRTRptgen.exe calls the BIRTPROCESSOR handler to run reports created with Business Intelligence and Reporting Tools (BIRT)

## Syntax

`BIRTRptgen.exe --r<report> [-j[[$JOBID]]] [-t<file type] [-o<output target file>] [-p<parameters>]`

### Parameters

- **BIRTRptgen.exe**: The BIRT Report Generator program
- **-r** <report\>: **Required.** File name for the report; no extension needed
- **-j\[\[$JOBID\]\]**: Unique internal job number for the job. Define this to see the output location and file name in "Additional Job Information" for any Operations Job Information view. Use `[[$JOBID]]` to accurately retrieve the unique internal job number on each execution
- **-t** <file type\>: Output format. Optional; default is PDF. Valid options: PDF, HTML, XLS

    :::note
    When exporting to XLS: the final file will not contain the report header and footer, and charts are not exported.
    :::

- **-o** <output target file\>: Path or email address for the report output. Optional; default path is `<Output Directory>\SAM\Log\Reports`. Default report name: `<report>_<message bus ID>.<format type>`
  - Use a path for any network machine the system account on the SAM server can access (e.g., `C:\My Reports\new report name`). Use a full path or UNC; only UNC shares shared to "Everyone" will succeed (BIRTPROCESSOR runs as the local system account)
  - Use an email address. Separate multiple addresses with semicolons (e.g., `test@smatechnologies.com;testgrp@smatechnologies.com`). The attached file name will be `<report>_<message bus ID>.<format type>`
- **-p** <parameters\>: Connection and selection criteria for the job. See [Parameters](#Paramete) below. For required parameters per report, refer to [Reports](../../reports/predefined.md)

:::note
Date ranges should be written oldest to newest.
:::

#### Parameters

- -p **Driver_URL**: Connection path to the database. Only specify to connect to a different database
  - SQL Auth: `-p "Driver_URL=jdbc:jtds:sqlserver://servername/databasename"` (also supply User_Name and User_Password)
  - Windows Auth: `-p "Driver_URL=jdbc:jtds:sqlserver://servername/databasename;domain=<name>"` (also supply User_Name and User_Password)
- -p **User_Name**: SQL or Windows User ID for database connection. Only specify for a different database. Syntax: `-p "User_Name=UserName"`
- -p **User_Password**: Clear-text password for SQL or Windows User ID. Only specify for a different database. Syntax: `-p "User_Password=UserPassword"`
- -p **SKDDATE**: Schedule date(s) for the report. Syntax: `-p "SKDDATE=<date>"`. Accepts Microsoft format or CCYY-MM-DD. Use `[[$SCHEDULE DATEMS]]` for current date
  - All dates: `-p "SKDDATE>0"`
  - Date range: `-p "SKDDATE=<date> to <date>"`
- -p **SKDID**: Schedule ID(s) for the report. Syntax: `-p "SKDID=<schedule>"`. Accepts Schedule ID or Name. Use `[[$SCHEDULE ID]]` for current schedule
  - All schedules: `-p "SKDID>0"`
  - Multiple: `-p "SKDID=1,2,3"` or `-p "SKDID=MySchedule1,MySchedule2"`
- -p **DEPTID**: Department ID(s). Syntax: `-p "DEPTID=<department>"`. Accepts Department ID or Name
  - All: `-p "DEPTID>0"` | Multiple: `-p "DEPTID=1,2,3"` or `-p "DEPTID=MyDepartment1,MyDepartment2"`
- -p **JOBTYPEID**: Optional. Job type ID(s). Syntax: `-p "JOBTYPEID=<job type>"`. Multiple: separate with commas
  - -1 = Null | 1 = File Transfer | 3 = Windows | 4 = OpenVMS | 5 = IBM i | 6 = UNIX | 7 = OS 2200 | 9 = MCP | 11 = BIS | 12 = z/OS | 13 = SAP R/3 and CRM | 14 = SAP BW | 15 = Container | 17 = Java | 18 = Tuxedo ART
- -p **ENSOPTIONS_OPTION**: Notification Management tab for the report. Syntax: `-p "ENSOPTION_OPTION=<option>"`. Values: **M** (Machines), **S** (Schedules), **J** (Jobs)
- -p **MACHS_MACHID**: Machine ID(s). Syntax: `-p "MACHS_MACHID=<machine>"`. Accepts Machine ID or Name
  - All: `-p "MACHS_MACHID>0"` | Multiple: `-p "MACHS_MACHID=1,2,3"` or `-p "MACHS_MACHID=Windows1,Windows2"`
- -p **MACHGRPS_MACHGRPID**: Machine group ID(s). Syntax: `-p "MACHGRPS_MACHGRPID=<group>"`. Accepts Group ID or Name
  - All: `-p "MACHGRPS_MACHGRPID>0"` | Multiple: separate with commas
- -p **HISTORY_JSTART**: Month in job history. Syntax: `-p "History_JSTART=CCYYMM"`. Example: `-p "History_JSTART=201103"`
- -p **HISTARC_SKDDATE**: Date(s) in history archive table. Syntax: `-p "HISTARC_SKDDATE=<date>"`. Accepts Microsoft format or CCYY-MM-DD
  - All: `-p "HISTARC_SKDDATE>0"` | Range: `-p "HISTARC_SKDDATE=<date> to<date>"`
- -p **HISTORY_SKDDATE**: Date(s) in history table. Syntax: `-p "HISTORY_SKDDATE=<date>"`. Accepts Microsoft format or CCYY-MM-DD
  - All: `-p "HISTORY_SKDDATE>0"` | Range: `-p "HISTORY_SKDDATE=<date> to <date>"`
- -p **AUDITHST_SQLDATE**: Date(s) in history view table. Syntax: `-p "AUDITHST_SQLDATE=<date>"`. Accepts Microsoft format or CCYY-MM-DD
  - All: `-p "AUDITHST_SQLDATE>0"` | Range: `-p "AUDITHST_SQLDATE=<date> to <date>"`
- -p **CALDESC_CALID**: Calendar ID(s). Syntax: `-p "CALDESC_CALID=<calendar>"`. Accepts Calendar ID or Name
  - All: `-p "CALDESC_CALID>0"` | Multiple: `-p "CALDESC_CALID=1,2,3"` or `-p "CALDESC_CALID=Master Holiday,Fiscal"`
- -p **TAGNAME**: Tag Name(s). Syntax: `-p "TAGNAME=<tag name>"`. Multiple: `-p "TAGNAME=Critical,Accounting"`
- -p **JOB_BUILD_STATUS**: Build status of the job. Syntax: `-p"JOB_BUILD_STATUS=<build status ID>"`
  - 0 = On Hold | 99 = Releases | -1 = To Be Skipped | -99 = Disable Frequency | 1000 = Disable Build
- -p **JAFC**: JAFC field code. Syntax: `-p"JAFC=<field code>"`
  - 3003 = Windows: Command Line | 3004 = Windows: Working Directory | 5008 = IBMi: Job Description Name | 5010 = IBMi: Job Queue Name | 5022 = IBMi: Call | 6001 = Unix: Start Image | 6002 = Unix: Parameters
- -p **VALUE**: User-defined text filter. Syntax: `-p"VALUE=<search text>"`. Supports SQL wildcards: `%` for multiple characters, `_` for a single character. Example: `-p"VALUE=%gen%"`
- -p **ADV_FREQUENCY**: Advanced frequency option. Syntax: `-p"ADV_FREQUENCY=<code>"`
  - 103 = Start Scheduling on | 104 = End Scheduling on | 105 = Include in Schedule on | 106 = Exclude from Schedule on | 107 = Exclude Month from Schedule
- -p **YEAR**: History year. Syntax: `-p "YEAR=<year>"` (four-digit). Use `[[$SCHEDULE DATE yyyy]]` for current year
- -p **JOB_STATUS**: Job status. Syntax: `-p"JOB_STATUS=<code>"`
  - 900 = Finished OK | 910 = Failed | 920 = Marked Finished OK | 921 = Marked Failed | 940 = Skipped
- -p **MONTH**: History month. Syntax: `-p "MONTH=<month>"` (digit). Use `[[$SCHEDULE DATE mm]]` for current month
  - 01 = January | 02 = February | 
- -p **TOP**: Maximum occurrences to show. Syntax: `-p "TOP=<number>"`. Default: 10
- -p **HIGHLIGHT**: Highlights grid cells where the value is ≥ this number. Syntax: `-p"HIGHLIGHT=<number>"`. Default: 10. Example: `-p"HIGHLIGHT=20"`

## Exit Codes

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

|Status Number|Status Description|
|--- |--- |
|0|Batch Run successful.|
|-1|Program aborted. Review BIRTRptGen.log in `<Output Directory>\Utilities\Log` and possibly MSLSAM.log in `<Output Directory>\MSLSAM\Log`.|
|-101|General program error in the wrapper program. Review BIRTRptGen.log in `<Output Directory>\Utilities\Log`.|
|-102|General program error in the SMA Processor handler. Review SMAProcessor.log in `<Output Directory>\SAM\Log`.|

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| BIRTRptgen.exe | The BIRT Report Generator program | PDF | — |
| -j\[\[$JOBID\]\] | Unique internal job number for the job. | PDF | — |
## FAQs

**Q: What output formats does BIRTRptgen.exe support?**

The BIRT Report Generator supports PDF (default), HTML, and XLS output formats. When exporting to XLS, the report header and footer and any charts are not included.

**Q: How do you send a generated report directly to one or more email recipients?**

Use an email address as the `-o` parameter value. Separate multiple addresses with semicolons (e.g., `user1@example.com;user2@example.com`). The report is attached with the file name `<report>_<message bus ID>.<format type>`.

**Q: Where must report files exist for BIRTRptgen.exe to locate them?**

All reports must exist in `<Target Directory>\OpConxps\SAM\BIRT\ReportEngine\OpConXPS_Reports`. Specify the report file name without extension using the `-r` parameter.

## Glossary

**BIRT (Business Intelligence and Reporting Tools)**: The open-source reporting engine used by OpCon to generate predefined and custom reports. Reports are run using the BIRTRptgen.exe utility.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
