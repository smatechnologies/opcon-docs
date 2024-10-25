# Check Schedule and Job Status

The Check Schedule and Job Status utility (SMAChkStat.exe) checks schedule and job statuses in OpCon. This utility provides various logical operators to compare job statuses.

## Rules

The SMAChkStat.exe utility allows the comparison of the status description of a job or schedule to a specific value(s).

- Based on whether the job or schedule's status code matches the comparison expression, the utility either fails or succeeds. If it fails, the utility returns an exit code of 33001; otherwise, it returns a zero (0). As a consequence, this utility enables branching to different jobs or to different OpCon events based on the job or schedule's current status.
- The ChkStat command line must support a 40-character schedule name.
- The ChkStat command line must support a 128-character job name.

## Syntax

Insert the SMA Check Status executable in a job's command line using the following syntax:

```batch
smachkstat.exe ScheduleDate ScheduleName "ComparisonExpression" [JobName]
```

### Parameters

The following describes the command-line parameters:

- **SMAChkStat.exe**: This file is the program executable. The utility is installed in the <Target Directory\>\\OpConxps\\Utilities\\ directory.
- **ScheduleDate**: This parameter is the date on which the schedule was built. The parameter accepts any valid date format matching the syntax recognized by the regional settings of the user running the utility.
  - If the Schedule Date contains space, enclose the parameter in double quotes (e.g., "\[\[$SCHEDULE DATE\]\]").
- **ScheduleName**: This parameter is the schedule's name defined in the database. Make sure the schedule name exists for the specified date and a job exists in the schedule.
  - If the database has a binary sort order, the schedule name is case-sensitive.
  - If the Schedule Name contains space, enclose the parameter in double quotes (e.g., "Schedule Name".
- **ComparisonExpression**: This parameter is the job/schedule status logical expression to be evaluated against the OpCon job/schedule status.
  - Quotation marks (") must enclose the entire expression. Refer to the [Sample  Expressions](#sample-expressions) table for sample expressions.
  - Listed in order of operations, the logical expression may include the operators listed in the [Relational Operators](#relational-operators) table.
  - The status keywords are case-sensitive. Refer to the [Job Status Keywords](#job-status-keywords) and [Schedule Status Keywords](#schedule-status-keywords) tables.
- **JobName** (Optional): This parameter is the name of the job in the Daily schedule that is checked for a particular status.
  - If the job name is given, then the utility checks for a job status using the [Job Status Keywords](#job-status-keywords).
  - If the job name is not given, then the utility checks for schedule status, using the [Schedule Status Keywords](#schedule-status-keywords).
  - If the database has a binary sort order, the job name is case-sensitive. Do not include the square brackets in the syntax (\[\]).
  - If the Job Name contains spaces, enclose the parameter in double quotes (e.g., "Job Name").

### Relational Operators

|Order of Operations|Operator|Description|
|--- |--- |--- |
|1|( )|Groups expressions|
|2|!|Logical NOT|
|3|&|Logical AND|
|4|||Logical OR|

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
|"ON_HOLD | MISSED"|ON HOLD OR MISSED|
|"!(RUNNING)"|NOT RUNNING|
|"!(RUNNING) & ! (CANCELED)"|NOT RUNNING AND NOT CANCELLED|
|"!(WAITING) | CANCELED"|NOT WAITING OR CANCELLED|

## Logging

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

- The SMACheckStat.log file provides detailed information of errors generated during the utility's execution. The log file resides in the <Output Directory\>\\SAM\\Log\\ directory. The syntax for the log file name is SMACheckStat\_<date-time stamp\>.log.
- All archived log files reside in the <Output Directory\>\\SAM\\Log\\Archive\\ folder. If an archive folder for the day does not already exist, the utility creates one. The folder names use the following naming convention: yyyy_mm_dd (Weekday). The  logging mechanism generates the weekday name according to the Regional Settings of the user running the utility.
  - If the Regional Settings are set to English, an archive folder would have the following name: 2008_01_11 (Friday).
  - If the Regional Settings are set to French, an archive folder would have the following name: 2008_01_11 (Vendredi).

Once per day the SAM deletes old archive folders. The SAM retains 10 days of archived logs by default. If desired, change the Logging settings in the Global Options. Refer to [Maximum number of days archived SAM logs should be kept](../../administration/server-options.md#logging) setting.

:::note
The SAM does not purge any Archive folders if any files other than archived files are present.
:::

## Exit Codes

The SMAChkStat.exe program uses the following exit codes:

|Exit Code|Exit Description|
|--- |--- |
|0|Criterion is true.|
|33001|No matching records found. The criterion is false. Review the command line for schedule name, job name, and job status and make sure all of the parameters are valid.|
|33002|Command-line syntax error in the parameters. Parsing error.|
|33003|Database connection information, Usercode, and Password information is incorrect or SMAODBCConfiguration.dat file is missing.|
|33004|Unknown.|
