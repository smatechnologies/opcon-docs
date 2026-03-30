---
title: Properties
description: "Properties are attributes of OpCon objects."
product_area: Core Concepts
audience: Automation Engineer, Application Owner
version_introduced: "[see release notes]"
tags:
  - Reference
  - Automation Engineer
  - Application Owner
  - Getting Started
last_updated: 2026-03-18
doc_type: reference
---

# Properties

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Application Owner

## What Is It?

Properties are attributes of OpCon objects. Retrieve property values by tokenizing the property name and using that token in OpCon events or job definition details.

## When Would You Use It?

- Properties are attributes of OpCon objects

## Why Would You Use It?

- **Properties**: Properties are attributes of OpCon objects

## Property Types

There are three types of properties in OpCon:

- [System Properties](#System): Read-only properties included with the OpCon installation
- [Managed System Properties](#Managed): Date- and time-related properties that require a format definition
- [User-defined Properties](#User-def): Any name with an associated value

### System Properties

System Properties are default OpCon variables. Properties beginning with a dollar sign ($) have non-configurable values. Other system properties provide access to values of OpCon objects.

All system properties below can be resolved through [Tokens](./using-properties.md#tokens) in schedule completion events, job definitions, job events, and Notification Manager notifications. Only the `$OPCONVER` property can be used in external OpCon events.

Dollar-sign ($) system properties are:

- Automatically provided
- Case-sensitive
- Read-only

| System Property | Description |
| --- | --- |
| JI.$ACTUAL RUN TIME | Run time of the job calculated from End Time minus Start Time. Format: hh:mm:ss. Returns N/A if the job has not finished. |
| JI.$ARRIVED BASE FILE NAME | File name returned by a File Arrival job.<br /><br />**Example:** "File20180506" |
| JI.$ARRIVED FILE EXTENSION | File extension returned by a File Arrival job.<br /><br />**Example:** ".txt" |
| JI.$ARRIVED FILE NAME | Full path and file name returned by a File Arrival job.<br /><br />**Example:** "D:\NewFiles\File20180506.txt" |
| JI.$ARRIVED FILE PATH | Directory path returned by a File Arrival job.<br /><br />**Example:** "D:\NewFiles" |
| JI.$ARRIVED SHORT FILE NAME | File name and extension returned by a File Arrival job.<br /><br />**Example:** "File20180506.txt" |
| JI.$DEPARTMENT NAME | Name of the department associated with the job in the Daily tables. |
| JI.$EST RUN TIME | Estimated run time of the job. Format: hh:mm:ss. |
| $FREQUENCY NAME | Name of the frequency of the job. |
| $JOB NAME | Full name of the job from the Daily tables. |
| $JOB STATUS | Status of the job from the Daily tables. |
| $JOB STATUS CATEGORY | Status category of the job from the Daily tables. |
| $JOB TERMINATION | Full exit condition of the job. |
| $JOBID | 10-digit unique number of the job.<br /><br />**Example:** 0000049895. |
| $JOBID CMP | Full job name and unique number, compressed with no spaces.<br /><br />**Example:** Backup0000049895. |
| $JOBID LONG | First 12 characters of the job name and unique number in a 27-character format:<ul><li>12 characters of the job name</li><li>5 spaces</li><li>10-digit unique number</li></ul>**Example:** Backup 0000049895 |
| $MACHINE NAME | Name of the machine assigned to the job. Returns N/A if no machine is assigned. |
| MI.$MACHINE OPER STATUS | Operator Status of the machine assigned to the job, as set by an OpCon administrator. |
| MI.$MACHINE NET STATUS | Network Status of the machine assigned to the job, as reported by SMA Network Communications (SMA NetCom). |
| MI.$MACHINE RUNNING JOBS | Number of jobs currently running on the machine, as a string value. |
| $MASTER JOB NAME | Original master name of the job as it was when built or added to the Daily. |
| $MASTER SCHEDULE NAME | Original master name of the schedule as it was when built into the Daily. |
| JI.$MAX RUN TIME | Maximum run time of the job from the Daily tables. Format: hh:mm:ss. |
| $NOTIFYID | Notification ID of the event that triggered the current notification.<br /><br />*NOTE: Only resolvable by SMA Notify Handler.* |
| $OPCONVER | CD Build Version of the OpCon Instance as defined in the OpCon database. |
| JI.$RESTART STEP | Alphanumeric value defined for the job's restart step. |
| RM.ResourceName | Maximum number of available resources for the named resource. Always returns as an integer. |
| RU.ResourceName | Number of resources in use for the named resource. Always returns as an integer. |
| $SCHEDULE NAME | Full name of the schedule from the Daily tables. |
| $SCHEDULE ID | ID number of the schedule. |
| $SCHEDULE INST | Instance number of the schedule. |
| JI.$SKD STATUS | Status of the schedule from the Daily tables (job context). |
| SI.$SKD STATUS | Status of the schedule from the Daily tables (schedule context). |
| JI.$SKD STATUS CATEGORY | Status category of the schedule from the Daily tables (job context). |
| SI.$SKD STATUS CATEGORY | Status category of the schedule from the Daily tables (schedule context). |
| JI.$START COMMAND | Start command the agent attempted when the job was submitted. Only populated after the job starts, and only if the agent version supports it.<br /><br />Supported platforms:<ul><li>Microsoft LSAM - Version 16.01.00</li><li>z/OS LSAM - Version 15.07.01 (refer to Start Command for more information)</li><li>MCP LSAM - Version 16.0</li><li>UNIX LSAM - Version 17.1.0</li></ul> |
| TH.ThresholdName | Current value of the named threshold. Always returns as an integer. |

### Managed System Properties

Managed System Properties are default date- and time-related variables with configurable values. Each property requires a format definition in its value field.

All managed system properties can be resolved through [Tokens](./using-properties.md#tokens) in Schedule Completion Events, Job Definitions, Job Events, and Notification Manager notifications. Only `$DATE`, `$TIME`, and `$NOW` may be used with external OpCon events. All Managed System Properties are case-sensitive.

| Managed System Property | Description | Default Format |
| --- | --- | --- |
| $DATE | Resolves to the current date. | Short Date |
| $JOB STARTTIME | Resolves to the start time of the associated job. Returns N/A if not yet started. | yyyy/MM/dd hh:mm:ss |
| $JOB ENDTIME | Resolves to the end time of the associated job. Returns N/A if not yet ended. | yyyy/MM/dd hh:mm:ss |
| $NOW | Resolves to the current date and time. | General Date |
| $SCHEDULE DATE | Resolves to the schedule date of the associated schedule. | dd-mmm-yyyy |
| $SCHEDULE DATEMS | Resolves to the Microsoft formatted date for the associated schedule. | ##### |
| $TIME | Resolves to the current time. | Long Time |

To change the value of a Managed System Property, use a predefined format (by name) or a user-defined format using characters from the User-defined Date and Time Format Characters table. User-defined formats must use syntax recognized by the regional settings of the user running SMA Service Manager.

:::caution
The date calculation is incorrect if the two formats are in opposition. For example, if the Regional Settings have a format of mm/dd/yyyy and the property has a format of dd/mm/yyyy, the calculation would be imprecise.
:::

| Character | Meaning |
| --- | --- |
| ##### | Substitute the date as a Microsoft formatted numeric date (Number of days since January 1, 1900). |
| a/p | 12-hour clock; lowercase 'a' before noon, lowercase 'p' from noon to midnight. |
| A/P | 12-hour clock; uppercase 'A' before noon, uppercase 'P' from noon to midnight. |
| am/pm | 12-hour clock; lowercase a.m. before noon, lowercase p.m. from noon to midnight. |
| AM/PM | 12-hour clock; uppercase A.M. before noon, uppercase P.M. from noon to midnight. |
| c | Substitutes date as ddddd and time as ttttt. Omits date if no fractional part; omits time if no integer portion. |
| d | Day as a number without a leading zero (1 – 31).<br /><br />**Examples**<br />6/1/2009 1:45:30 PM --> 1<br />6/15/2009 1:45:30 PM --> 15 |
| dd | Day as a number with a leading zero (01 – 31).<br /><br />**Examples**<br />6/1/2009 1:45:30 PM --> 01<br />6/15/2009 1:45:30 PM --> 15 |
| ddd | Day as an abbreviation (Sun-Sat).<br /><br />**Examples**<br />6/15/2009 1:45:30 PM --> Mon (en-US)<br />6/15/2009 1:45:30 PM --> Пн (ru-RU)<br />6/15/2009 1:45:30 PM --> lun. (fr-FR) |
| dddd | Day as a full name (Sunday-Saturday).<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> Monday (en-US)<br />6/15/2009 1:45:30 PM -> понедельник (ru-RU)<br />6/15/2009 1:45:30 PM -> lundi (fr-FR) |
| ddddd | Short date pattern (day, month, year).<br /><br />**Example**<br />6/15/2009 (en-US) |
| dddddd | Long date pattern (day, month, year).<br /><br />**Example**<br />Monday, June 15, 2009 (en-US) |
| f | Full date/time pattern with short time.<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> Monday, June 15, 2009 1:45 PM (en-US)<br />6/15/2009 1:45:30 PM -> den 15 juni 2009 13:45 (sv-SE)<br />6/15/2009 1:45:30 PM -> Δευτέρα, 15 Ιουνίου 2009 1:45 μμ (el-GR) |
| F | Full date/time pattern with long time.<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> Monday, June 15, 2009 1:45:30 PM (en-US)<br />6/15/2009 1:45:30 PM -> den 15 juni 2009 13:45:30 (sv-SE)<br />6/15/2009 1:45:30 PM -> Δευτέρα, 15 Ιουνίου 2009 1:45:30 μμ (el-GR) |
| g | General date/time pattern with short time.<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> 6/15/2009 1:45 PM (en-US)<br />6/15/2009 1:45:30 PM -> 15/06/2009 13:45 (es-ES)<br />6/15/2009 1:45:30 PM -> 2009/6/15 13:45 (zh-CN) |
| G | General date/time pattern with long time.<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> 6/15/2009 1:45:30 PM (en-US)<br />6/15/2009 1:45:30 PM -> 15/06/2009 13:45:30 (es-ES)<br />6/15/2009 1:45:30 PM -> 2009/6/15 13:45:30 (zh-CN) |
| h/H | Hour without leading zeros (0 – 23).<br /><br />**Examples**<br />6/15/2009 1:45:30 AM -> 1<br />6/15/2009 1:45:30 PM -> 13 |
| hh/HH | Hour with leading zeros (00 – 23).<br /><br />**Examples**<br />6/15/2009 1:45:30 AM -> 01<br />6/15/2009 1:45:30 PM -> 13 |
| j | Day of the year as a Julian date with leading zeros (001 – 366). |
| m | Month as a number without a leading zero (1 – 12). If immediately following h or hh, displays minute instead. |
| mm | Month as a number with a leading zero (01 – 12). If immediately following h or hh, displays minute instead. |
| mmm | Month as an abbreviation (Jan-Dec).<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> Jun (en-US)<br />6/15/2009 1:45:30 PM -> juin (fr-FR)<br />6/15/2009 1:45:30 PM -> Jun (zu-ZA) |
| mmmm | Month as a full name (January-December).<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> June (en-US)<br />6/15/2009 1:45:30 PM -> juni (da-DK)<br />6/15/2009 1:45:30 PM -> uJuni (zu-ZA) |
| n | Minute without leading zeros (0 – 59).<br /><br />**Examples**<br />6/15/2009 1:09:30 AM -> 9<br />6/15/2009 1:09:30 PM -> 9 |
| nn | Minute with leading zeros (00 – 59).<br /><br />**Examples**<br />6/15/2009 1:09:30 AM -> 09<br />6/15/2009 1:09:30 PM -> 09 |
| q | Quarter of the year (1 – 4).<br /><br />**Examples**<br />3/15/2009 1:09:30 AM -> 1<br />6/15/2009 1:09:30 PM -> 2<br />9/15/2009 1:09:30 PM -> 3<br />12/15/2009 1:09:30 PM -> 4 |
| R, r | RFC1123 pattern.<br /><br />**Example**<br />6/15/2009 1:45:30 PM -> Mon, 15 Jun 2009 20:45:30 GMT |
| s | Second without leading zeros (0 – 59).<br /><br />**Example**<br />6/15/2009 1:45:09 PM -> 9 |
| ss | Second with leading zeros (00 – 59).<br /><br />**Example**<br />6/15/2009 1:45:09 PM -> 09 |
| t | Short time pattern.<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> 1:45 PM (en-US)<br />6/15/2009 1:45:30 PM -> 13:45 (hr-HR)<br />6/15/2009 1:45:30 PM -> 01:45 م (ar-EG) |
| T | Long time pattern.<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> 1:45:30 PM (en-US)<br />6/15/2009 1:45:30 PM -> 13:45:30 (hr-HR)<br />6/15/2009 1:45:30 PM -> 01:45:30 م (ar-EG) |
| tttt | Time in long time format (hour, minute, second).<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> 1:45:30 PM (en-US)<br />6/15/2009 1:45:30 PM -> 13:45:30 (hr-HR)<br />6/15/2009 1:45:30 PM -> 01:45:30 م (ar-EG) |
| u | Universal sortable date/time pattern.<br /><br />**Example**<br />6/15/2009 1:45:30 PM -> 2009-06-15 20:45:30Z<br /><br />*Note: Displays the pattern defined by the DateTimeFormatInfo.FullDateTimePattern property for the current thread or format provider. Time is universal, not local.* |
| U | Universal full date/time pattern.<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> Monday, June 15, 2009 8:45:30 PM (en-US)<br />6/15/2009 1:45:30 PM -> den 15 juni 2009 20:45:30 (sv-SE)<br />6/15/2009 1:45:30 PM -> Δευτέρα, 15 Ιουνίου 2009 8:45:30 μμ (el-GR)<br /><br />*Note: Displays the pattern defined by the "DateTimeFormatInfo.FullDateTimePattern" property for the current thread or format provider. Time is universal, not local.* |
| w | Day of the week as a number (1 for Sunday through 7 for Saturday). |
| ww | Week of the year as a number (1 – 53). |
| y | Day of the year as a Julian date (1 – 366). Leading zeros suppressed. |
| yy | Year as a two-digit number (00 – 99).<br /><br />**Examples**<br />1/1/0001 12:00:00 AM -> 01<br />1/1/0900 12:00:00 AM -> 00<br />1/1/1900 12:00:00 AM -> 00<br />6/15/2009 1:45:30 PM -> 09 |
| yyyy | Year as a four-digit number (100 – 9999).<br /><br />**Examples**<br />1/1/0001 12:00:00 AM -> 0001<br />1/1/0900 12:00:00 AM -> 0900<br />1/1/1900 12:00:00 AM -> 1900<br />6/15/2009 1:45:30 PM -> 2009 |
| zz | Hours offset from UTC, with a leading zero for a single-digit value.<br /><br />**Example**<br />6/15/2009 1:45:30 PM -07:00 -> -07 |
| zzz | Hours and minutes offset from UTC.<br /><br />**Example**<br />6/15/2009 1:45:30 PM -07:00 -> -07:00 |

#### Modified Managed System Properties

Modified managed system properties are copies of existing managed system properties with different formats.

Modified properties must be named using one of these patterns (x\...x represents any user-specified combination of characters):

- $DATExxxxxxxxxxxxxxx
- $TIMExxxxxxxxxxxxxxx
- $NOWxxxxxxxxxxxxxxxx
- $SCHEDULE DATExxxxxx

Set the value using a predefined format from the [Predefined Date and Time Formats](#Predefined_Date_and_Time_Formats) table or a user-defined format from the [User-defined Date and Time Format Characters](#User-defined_Date_and_Time_Format_Characters) table.

:::tip Examples

Best practice is to append the Property Value to the property name.

**Examples**<br />
Property Name: $DATE m/d/yy --> Property Value: m/d/yy<br />
Property Name: $SCHEDULE DATE d-mmmm-yy --> Property Value: d-mmm-yy><br />
Property Name: $TIME hhmmss --> Property Value: hhmmss

**Examples values for $DATE and $SCHEDULE DATE**

| Property Value | Resolved As |
| --- | --- |
| m/d/yy | 12/7/08 |
| d-mmmm-yy | 7-December-08 |
| d mmmm | 7 December |
| mmmm-yy | December 08 |

**Examples values for $TIME**

| Property Value | Resolved As |
| --- | --- |
| hh:mm am/pm | 08:50 p.m. |
| h:mm:ss a/p | 8:50:35 p |
| hhmm | 2050 |
| hhmmss | 205035 |

:::

#### Offsets

Managed System Properties may be resolved with offsets. Syntax: [[$XXXX(-nf)]].

| Element | Meaning |
| --- | --- |
| $XXXX | Any valid managed system property ($DATE, $NOW, $SCHEDULE DATE, $TIME, or user-defined variations). |
| - | Plus (+) or minus (-) to indicate offset direction. |
| n | Numeric occurrence for the offset (1–32000). |
| f | Format character denoting the unit of measure. Defaults to d (day) if omitted.<br /><br />Valid characters:<ul><li>yy (year)</li><li>q (quarter)</li><li>m (month)</li><li>eom (end of month)</li><li>wk or ww (week)</li><li>d (day)</li><li>wd (working day)</li><li>h (hour)</li><li>n (minute)</li><li>s (second)</li></ul> |

:::tip Examples

[[$SCHEDULE DATE(+3d)]] -> If schedule date is Dec 19th, 2016, evaluates as Dec 22nd, 2016
[[$SCHEDULE DATE (+3q)]] -> If schedule date is Dec 19th, 2016, evaluates as Sep 19th, 2017
[[$SCHEDULE DATE (+1m)]] -> If schedule date is Dec 19th, 2016, evaluates as Jan 19th, 2017
[[$SCHEDULE DATE (+1eom)]] -> If date is Dec 19th, 2016, 2016, evaluates as Dec 31st, 2016

:::

### User-defined Properties

A User-defined Property is a variable with any name and any character value, resolved to the exact text in the value. User-defined Properties can be associated with:

- Remote Instance (RI)
- OpCon Instance (OI)
- Machines (Machine Instance (MI))
- Schedules (Schedule Instance (SI))
- Jobs (Job Instance (JI))
- Source Schedules (Source Schedule Instance (SSI))
- Source Jobs (Source Job Instance (SJI))

For more information, refer to [Using Properties for Automation](./using-properties.md).

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What are the three types of properties in OpCon?**

System Properties are read-only variables included with the OpCon installation. Managed System Properties are date- and time-related properties that require a format definition. User-defined Properties are custom name-value pairs that can be associated with instances, machines, schedules, and jobs.

**Q: How do you use a property value in a job definition or event?**

Tokenize the property name by enclosing it in double square brackets — for example, `[[$SCHEDULE DATE]]` — and use the token in job definition details, events, or Notification Manager notifications.

**Q: Can a Managed System Property be offset to calculate a future or past date?**

Yes. Use the syntax `[[$XXXX(+nf)]]` or `[[$XXXX(-nf)]]`, where `n` is a numeric value and `f` is a unit such as `d` (day), `m` (month), `wk` (week), or `wd` (working day).

## Glossary

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SMA Notify Handler**: Processes notifications triggered by Machine, Schedule, and Job status changes. Can send emails, text messages, Windows Event Log entries, SNMP traps, and SPO notifications.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.
