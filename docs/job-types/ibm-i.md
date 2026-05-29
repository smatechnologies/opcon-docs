---
title: IBM i Job Details
description: "The information in this section applies to defining an IBM i job."
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

# IBM i Job Details

## What Is It?

The fields described in this section apply to defining an IBM i job in Enterprise Manager. The text fields in the graphical interface support OpCon token replacement. For additional information about this platform, refer to [IBM i Agent Configuration](https://help.smatechnologies.com/opcon/agents/ibmi/latest/Files/Agents/IBM-i/Configuration.md) in the IBM i Agent online help.

The IBM i job details are organized across the **Job Information**, **Additional Info**, **Messages**, **Spool Files**, and **Variables** tabs.

Unless otherwise specified, name validation must conform to this set of IBM i name rules:

- Names must be 10 characters or less.
- If a specific name validation lists a different number of maximum characters, the specific rules override this rule.
- Names must begin with an alphabetic character (A through Z, @, $, and \#).
- All subsequent characters can be alphanumeric (A through Z, 0 through 9, @, $, \#, and \_ (underscore)).
- There can be no embedded blanks.
- For international languages, certain other signs might qualify as alphanumeric characters (such as the English Pound symbol (£)), but the base software product does not allow for these alternate symbols because the operating system from IBM is not distributed that way.

:::note
The Start Job Request Message for the IBM i is a subset of the Submit Job command available on the IBM i.
:::

## Job Information

:::note
If an asterisk (\*) is specified for any field, the default value specified in the Continuous system parameters for the Agent is used.
:::

| Field | Description |
| --- | --- |
| **Job Type** | Defines the type of job to schedule on the IBM i Agent. Once the type is defined, all other fields in this group are required except when **Tracked Job** or **File Arrival** is defined. Available values: **Batch Job** (default), **Tracked Job**, **Queued Job**, **Operator Replay Job**, **Restricted Mode**, **FTP**, **File Arrival**. |
| **User ID** | Defines the name of the IBM i user profile under which the job is submitted. The defined user must have permissions to the program or script defined in the Call Information. |

The **User ID** can be defined as one of the following:

- An actual IBM i user profile name.
- An asterisk (`*`), which tells the Agent to use the default User ID (specified in the IBM i green screen Agent Parameters maintenance).
- The special value `*CURRENT`, typically used for Tracked, Queued, or Captured jobs that are pre-defined in IBM i before OpCon learns about the jobs.
- The special value `*JOBD`, which tells the Agent and IBM i that the job description (named in a different field for the job master) contains the name of the user profile to use when submitting the job.

### Job Description

| Field | Default | Valid Values |
| --- | --- | --- |
| **Name** | `*` | `*`, `*USRPRF`, or the actual job description name. The name must not exceed 10 characters. |
| **Library** | `*` | `*`, `*LIBL`, `*CURLIB`, or the user-defined name of the library associated with the job description name. The name must not exceed 10 characters. |

### Library

| Field | Default | Valid Values |
| --- | --- | --- |
| **Current** | `*` | `*`, `*CRTDFT`, `*USRPRF`, or a user-defined library name. User-defined library names must not exceed 10 characters. Defines the current library associated with the job being run. |
| **Init Lib List** | `*JOBD` | `*`, `*JOBD`, `*NONE`, `*SYSVAL`, `*CURRENT`, or a user-defined library name. User-defined library names must not exceed 10 characters. Defines the initial user part of the library list used to search for objects without a library. Individual library names are not supported. |

### Job Queue

| Field | Default | Valid Values |
| --- | --- | --- |
| **Name** | `*JOBD` | `*`, `*JOBD`, or the actual job queue name. The name must not exceed 10 characters. Defines the job queue in which this job is placed. |
| **Library** | `*` | `*`, `*LIBL`, `*CURLIB`, or the user-defined name of the library associated with the batch queue name. The name must not exceed 10 characters. |

### Call Information

The Call Information is required for all job types except Tracked Job and File Arrival. Depending on the job type, different fields are required for the Call Information.

| Job Type | Required Information |
| --- | --- |
| Batch Job | Prerun<br />Call |
| Queued Job | Prerun |
| Operator Replay Job | Prerun<br />Script name |
| Restricted Mode | Prerun<br />Script name |
| FTP | Remote System<br />Transfer Information<br />Local Information<br />Remote Information |

:::note
All the rules for the IBM i FTP command and sub-commands apply to the FTP job type. For additional information, consult the IBM documentation.

- When specifying an actual IP address, the address must be enclosed in single quotes.
- When specifying a host name, the host name must exist in the IBM i Host Table and the host name must not be enclosed in quotes.

For additional information on command CFGTCP (option 10), consult the IBM documentation.
:::

| Field | Description |
| --- | --- |
| **Prerun** (Optional) | Defines the IBM i job to run immediately before the job specified in the Call/Script Name starts. If the Prerun job ends with an error, it is rescheduled at a user-defined interval and continues to run at that interval until it succeeds, allowing the job in Call/Script Name to process. The primary purpose of a Prerun is to test any required preconditions to running the job. Valid values: `CHKDTAARA`, `CHKFILE`, or a user-defined prerun value. A user-defined value must not exceed 255 characters. |
| **Call/Script Name** (Required) | For a Batch Job, enter the program name using the `CALL` command or enter a command name. Do not use the `SMBJOB` command; if it is used, the Agent cannot track the job for failure. Include parameters in this field as desired. For an Operator Replay Job or Restricted Mode Job, enter the script name. The call or script name must not exceed 2000 characters. |

## Additional Info

| Field | Default | Description and Valid Values |
| --- | --- | --- |
| **JobQ Priority** | — | Defines the job queue scheduling priority. Valid values range from 1 through 9, where 1 is the highest priority and 9 is the lowest. The specification `*JOBD` is not supported. |
| **Job Date** | `*JOBD` | Defines the calendar date the job is associated with. Valid values: `*JOBD`, `*SYSVAL`, `*SCHEDULE DATE`, or a user-defined calendar date. User-defined dates must be 1 to 20 characters and may use numeric characters (0–9), slash (/), dash (-), period (.), comma (,), and space. |
| **Accounting Code** | — | Defines the accounting code used when logging system resource use. The accounting code must not exceed 15 characters. |
| **Log CL Commands** (Required) | `*JOBD` | Defines whether the commands that run in a control language program are logged to the job log by way of the CL program's message queue. Valid values: `*`, `*JOBD`, `*NO`, `*YES`. |
| **Inquiry Message Reply** (Required) | `*JOBD` | Defines the way predefined messages are answered when sent because of running the job. If not specified, the default value specified in the Continuous system parameters is used. Valid values: `*`, `*JOBD`, `*RQD`, `*DFT`, `*SYSRPYL`. |

### Output Queue

| Field | Default | Valid Values |
| --- | --- | --- |
| **Name** | `*JOBD` | `*`, `*CURRENT`, `*USRPRF`, `*DEV`, `*JOBD`, or the actual output queue name. The name must not exceed 10 characters. Defines the output queue used for spooled files. |
| **Library** | `*` | `*`, `*LIBL`, `*CURLIB`, or the user-defined name of the library associated with the output queue name. The name must not exceed 10 characters. |

### Message Logging

Once the Job Type is defined in the Job Information, all of the Message Logging fields are required except when Tracked Job is the Job Type. Only the Number of Occurrences and Number of Days are required with a Tracked Job.

:::note
If an asterisk (\*) is specified, the default value specified in the Continuous system parameters for the Agent is used.
:::

| Field | Default | Valid Values |
| --- | --- | --- |
| **Level** (Required) | `*JOBD` | `*`, `*JOBD`, `0`, `1`, `2`, `3`, `4`. Defines the number of messages for logging. Values range from 0 (no logging) to 4 (the highest level of detail). |
| **Severity** (Required) | `*JOBD` | `*`, `*JOBD`, `00`, `01`, `02`, `03`, `04`, `05`, through `99`. Defines the lowest severity level that causes an error message to be logged. |
| **Text** (Required) | `*JOBD` | `*`, `*JOBD`, `*MSG`, `*SECLVL`, `*NOLIST`. Defines the detail of the text logged. |

### Job Log Retention

| Field | Range | Description |
| --- | --- | --- |
| **Number of Occurrences** (Optional) | 0–999 | Defines the number of occurrences to save for times when this same job name may run more than once. The last (n) occurrences of job logs for this job name are retained, while any prior job logs for this job name are deleted. When this value is left at 0, the parameter is ignored and job logs are subject only to the Number of Days (if set). A value of 0 turns off job log cleanup at the job level. Valid values: numeric characters (0–9) only. |
| **Number of Days** (Optional) | 0–999 | Defines the number of days to keep the job logs. The Agent deletes (or causes the system to delete, during its normal course of operations) job logs that have existed on the system for more than the number of days set here. When this value is left at 0, the parameter is ignored and job logs are subject only to the Number of Occurrences (if set). A value of 0 turns off job log cleanup at the job level. Valid values: numeric characters (0–9) only. |

## Messages

The Messages information can be defined for all job types except Restricted Mode. Message definition is optional; however, if one is defined, several fields are required.

| Field | Description |
| --- | --- |
| **Message ID** | Defines the 7-character Message ID displayed at the beginning of the message. This field is required if the Severity is set to a value of 00. |
| **Compare Data** (Optional) | Defines the characters to find in the message (defined by the Message ID). The value must not exceed 21 characters. |
| **Position** (Optional) | Defines the position to start looking for the Compare Data word in the message defined by the Message ID. The value must not exceed 999 characters. Message data can be as long as 2147483647, but IBM i supports only up to position 999 in their reply list entries. |
| **Severity** | Defines the messages to look for based on severity. Required if Message ID is blank. Valid values: `00` (default), `10`, `20`, `30`, `40`, `50`, `60`, `70`, `80`, `90`. |
| **Action** (Required) | Defines what the Agent does when a message meets the defined criteria. Valid values: **Reply** (default), **Event**, **Both**. |
| **Reply** | Defines the response the Agent sends as the reply when the **Action** is set to **Reply** or **Both** and the message meets the search criteria. The reply must not exceed 6 characters. Required if **Action** is set to **Reply** or **Both**. |
| **End Job** (Required) | Defines whether to end the OpCon job after the message meets the criteria, or to allow it to keep running. Valid values: `N`, `Y`. |
| **Event** | Defines the OpCon event to send to SAM-SS when the message meets the search criteria. Refer to [OpCon Events](../events/introduction.md). The event string must not exceed 738 characters. |

## Spool Files

The Spool Files information can be defined for all job types except Restricted Mode. Spool File definition is optional; however, if one is defined, several fields are required.

| Field | Default | Description and Valid Values |
| --- | --- | --- |
| **File Name** (Required) | — | Defines the name of the file that contains the output from the job. Valid values: `*ALL` or a user-defined value. User-defined values must not exceed 10 characters. |
| **User** (Optional) | — | Defines the User name. Valid values: all Batch User IDs defined in the OpCon database for the IBM i platform, or a user-defined value. The user name must not exceed 10 characters. |
| **OutQ Name** (Optional) | — | Defines the OutQ name. Valid values: `*USRPRF` or a user-defined value. The OutQ name must not exceed 10 characters. |
| **OutQ Library** | Blank | Defines the library that contains the OutQ. Required if OutQ Name is not blank. If `*USRPRF` is defined for the OutQ Name, set `*USRPRF` for OutQ Library. Valid values: `*USRPRF` or a user-defined value. User-defined values must not exceed 10 characters. |
| **Total Copies** (Optional) | — | Defines the number of spool file copies to create. Valid values range from 1 through 255. |
| **Hold** (Optional) | `*` (accept default) | Determines whether to print the spool file. Valid values: `*`, `Y`, `N`. |
| **Save** (Optional) | `*` (accept default) | Determines whether to save the spool file after it is printed. Valid values: `*`, `Y`, `N`. |

## Variables

The **Variables** tab is available for you to define values for the IBM i Agent that are assigned to Agent Dynamic Variable names. Adding one or more entries in this table of values may be more convenient than configuring separate IBM i batch jobs that would each run the IBM i Agent `SETDYNVAR` command, setting one value per job. Up to 99 token definitions may be added to this table in a single job.

The Agent assigns the Dynamic Variable values before the job start request is assembled within the Agent job scheduler, so that the assigned values can be used within the job's Call information or used by the job itself after it starts. Once the values are stored in the Agent table, they are available to any feature of the Agent wherever Dynamic Variables are supported.

| Field | Description |
| --- | --- |
| **Variable Name** | Defines the name of the IBM i Agent Dynamic Variable that stores the value. Maximum 12 characters. Valid characters: A–Z, 0–9, and special characters. Invalid characters: blanks and spaces. |
| **Value** | Defines the character string to store in the IBM i Agent Dynamic Variables table. You may use an OpCon token in this field so that the value of the associated OpCon property is assigned to the Agent Dynamic Variable. Use CTRL + T to select from a list of existing OpCon Global Properties, or manually type the token referencing any Global or Instance property desired. The value should be no more than a 128-character string, or an OpCon token that resolves to a value of no more than 128 characters. Valid characters: any. |

## FTP Job Type Information

### Transfer Information

| Field | Default | Description and Valid Values |
| --- | --- | --- |
| **Action Type** (Required) | `PUT` | Defines the FTP command to use. Valid values: `PUT` (default), `MPUT`, `GET`, `MGET`, `DEL`, `MDEL`. |
| **User** | — | Defines the FTP users for connecting to the remote system. If not specified, the Agent uses the default user from the Agent parameters. Valid values: all Batch User IDs defined in the OpCon database for the IBM i platform, or a user-defined value. The FTP User name must not exceed 128 characters. |
| **Transfer Type** (Required) | `BIN` | Defines the type of transfer for binary or ASCII. Valid values: `BIN` (default), `ASCII`, `EBCDIC`. |

### Remote Information

| Field | Description |
| --- | --- |
| **Remote System** (Required) | Defines the name of the remote system. The remote system name must not exceed 255 characters. The IBM i `FTP` command keywords not already used by the OpCon job can be added to the Remote System name to alter how the FTP connection is managed. To add FTP command keywords, type the IBM i Agent's job parameters separator character after the Remote System name, then type or paste the FTP command keywords and their values. The total characters typed into the Remote System name cannot exceed 255 characters. For an explanation of the Agent's command parameters separator character, refer to [Extending the IBM i Call Command with Special Parameters](https://help.smatechnologies.com/opcon/agents/ibmi/latest/Files/Agents/IBM-i/Configuration.md#Extendin). |
| **Remote File Name** (Required) | Defines the name for the file once it reaches the remote machine. Valid values: `*LCLFILNAM` or a user-defined value. A user-defined remote file name must not exceed 128 characters. |
| **Remote Library or Directory** (Required) | Defines the library or directory to receive the file on the remote machine. The remote library or directory must not exceed 512 characters. |

### Local Information

| Field | Description |
| --- | --- |
| **Local File Name** (Required) | Defines the file name on the IBM i machine to transfer to the remote machine. The file name must not exceed 128 characters. |
| **Local Library or Directory** (Required) | Defines the library or directory containing the file on the IBM i machine. The local library or directory must not exceed 512 characters. |

## File Arrival Job Type Information

### File Arrival Information

:::note
Job Queue can be overridden for IBM i File Arrival.
:::

| Field | Description |
| --- | --- |
| **User Id** | Defines the User ID whose file authority is verified. Unlike simple Batch Jobs, the IBM i Agent uses its own server user profile (SMANET) to run File Arrival jobs. This field may be left set to the default value of asterisk (`*`) when no file authorities are checked. The User ID specified for File Arrival jobs must be registered as an OpCon Batch User for IBM i jobs to add it to the list of edited user profile names. The registered Batch User names must be valid IBM i User Profile names. If an invalid IBM i User Profile name is entered, the specified file authority checks fail. |
| **Check Lock on DB2 File** | Defines whether to request verification that there are no in-use locks on any DB2 database files. This option is only valid for DB2 database files (tables). It is ignored if the File Name shows an IFS root file system path (beginning with a forward slash). If the file is found but exhibits a lock of any kind, the `CHKFILE` command fails with completion code CKF0003. If the Failure Condition is set to not fail the job, completion code CKF0003 is still reported as the final job status code and is also sent as a Job Detail Message and as Agent Feedback. |
| **File Name** | Defines the file path and name of the file to detect. The format of the file name determines whether the IBM i Agent runs the `CHKFILE` command for DB2 database files (tables), or the `CHKIFSFIL` command for stream files located in Integrated File Systems outside of DB2, such as the root `/` file system. Names of LIBRARY/FILES within DB2 must begin with a valid alphabetic character. Names of stream files in IFS file systems outside of the DB2 database must begin with a forward slash (`/`). |

Valid formats for File Name include:

- `LIBRARY/FILENAME` — Format for DB2 database files (tables).
- `LIBRARY/FILENAME(MEMBER)` — Format for verifying the presence of a data member within a DB2 file. Data members are not supported by SQL-defined tables; however, legacy DB2 files can support multiple data members, and multiple data members are commonly used to store the source code for programs within a Source Physical File (refer to IBM i documentation about the command CRTSRCPF).
- `/directoryA/directory1/filename.ext` — Format for Integrated File System stream files stored in file systems outside of the DB2 database, such as the root `/` file system. The extension is optional, but it must be specified if the file is actually named with an extension.
- DB2 files (tables) can also be checked using the `CHKIFSFIL` command by using the IBM standard for DB2 file names according to the non-DB2 open file system naming standards (also known by the FTP sub-command as NAMEFMT 1).

  :::tip Example
  `/QSYS.LIB/MYLIB.LIB/FILENAME.FILE` or (to verify the presence of a specific data member within a multiple member physical file) `/QSYS.LIB/MYLIB.LIB/SRCFILE.FILE/MBRNAME.MBR`. However, the `CHKIFSFIL` command runs the `CHKFILE` command upon discovering a DB2 file name, so it is generally better to use the DB2 naming format.
  :::

Generic file search characters can be used:

- Generic search rules apply to the file name only.
  - Generic search characters are not supported for a directory or library name in the path to the file.
  - They are also not supported for an optional DB2 member name.
- Asterisk (`*`)
  - Can be used to represent any length of characters. This character is typically used as the last character when searching for all files that match the first few other characters. **Example**: `MYFIL*`
  - It is also valid to use an asterisk (`*`) to match any, or none, of the file extensions in the IFS file systems. **Example**: `/filename.*` would match `/filename.txt` or `/filename.pdf`.
- Question Mark (`?`)
  - Can be used in place of any single character that is always considered as matching. More than one question mark can be used within a file name. **Example**: `LIB/MYF?LE` or `/directory/filen?me.txt`
- Question marks and asterisks can be mixed. **Example**: `/directory/filen?me.*`

When generic file names are used, it is possible that more than one file will match the pattern; however, the File Arrival job, when completing normally, reports back the first file name that matches the generic pattern, based on an alphabetic list of names. (The alphabetic sort order is governed by the default sort order of the IBM i system, which varies depending on either the default system language ID, or on user-specified changes to the sort order.)

When File Creation Start and End Times are used, files that match a generic name pattern may not be qualified as found files if their Creation Time falls outside of the Start or End times. In this case, the File Arrival job continues to search through a list of matching file names until a file is found that has a valid Creation Time.

To detect and process more than one matching file name, you must first rename or move any previously found files before repeating the File Arrival job. Otherwise, each time the File Arrival job restarts, it discovers the same file that is first in the sorted list of file names.

Use the Token option to set either File Creation time value from what was stored in an OpCon Property, and then specify an OpCon Property token in the token name box. The term "time" in this discussion of the File Arrival Job always refers to a complete date + time.

It is valid to use only one of the times and not the other. If no time values are entered (values are left set to zeros), then a simple check for file existence is performed, without verifying the creation time of the file; however, the End Time (possibly combined with other IBM i Agent `$@`-variable values described below) can be used to define whether a File Arrival job will perform only a one-time, immediate check for a file, or whether the job will run in a loop, performing periodic checks for a file until it arrives or until the End Time expires.

#### Failure Condition

Defines the action to take based on the job failure or success status. Use the list to choose optional special conditions that change whether the File Arrival job ends normally or abnormally, depending on certain types of errors that could otherwise cause the job to fail.

| Value | Description |
| --- | --- |
| **Fail On Error** | This is the normal and default failure condition. The File Arrival job provides a completion code of CKF0010 if the requested file is found and has passed any optional status checks. Otherwise, when the Agent reports a different completion code, the OpCon Job shows a status of Failed. |
| **Always Succeed** | This option instructs the Agent to report a final job status of Finished OK, regardless of the completion code it reports. Completion codes still appear in the Exit Description and are reported as Agent Feedback, so the Events tab of a job can be used to manage subsequent OpCon workflow, but the File Arrival job itself appears with Finished OK status. |
| **Fail If File Contains Zero Records or Zero Bytes** | This exception tells the Agent to force a job failure report to OpCon, using completion code CKF0005, if a found file contains zero records or zero bytes of data. This exception first takes into account an option to review the File Size Stable Duration, if several seconds were specified. |
| **Fail On Error Except Reached End Time** | This exception tells the Agent to not send a "file not found" (completion code CKF0001) if the End Time is reached but no matching file (or valid file Create Time) was found. This exception is useful when a file is only optionally present and the OpCon Schedules should be allowed to continue normally, except for possibly skipping unnecessary jobs. Optionally, the Agent Feedback Event type can be used to detect the CKF0001 completion code, so that Event commands can be used to modify the OpCon Schedules or Jobs that may follow the File Arrival job. |

### Check File Authority

Defines what type of object authority is verified for the named User ID. The authorities listed on this display (**Read**, **Write**, **Execute**) are the common values used for stream files in the IBM i Integrated File Systems outside of the DB2 database, such as the root `/` file system. You can validate more specific authorities for files (tables) located in the DB2 database by adding `$@` Agent variable names to the **Variables** tab, as explained below.

### File Creation Time Stamp Window, Relative to Midnight (in days, hrs, mins or a token)

Defines the time frame that the program uses to watch for the arrival of the file. As a best practice, Continuous recommends setting the time frame to be close to the expected time of arrival (for example, if the file is expected to arrive in the evening, set the time frame to evening hours).

Carefully consider the various options for controlling the File Arrival job behavior, described after the data entry field definitions. The File Creation Start and End Times vary in the way they control how long the job runs and what completion codes may be reported, as they interact with other File Arrival job options.

### File Size Stable Duration (in secs)

Defines the amount of time the file size has remained stable to indicate the file has finished arriving. When this field is left set to zeros, the size of the file is accepted as found upon the first discovery of the file. If there is a chance that the file could still be in the process of loading, then specify how long the File Arrival job should wait to receive a file size value that is the same as the previous check, as it performs multiple checks of the file size.

Use the option to set the Duration seconds from what was stored in an OpCon Property, and then specify an OpCon Property token in the token name field.

The File Arrival job continues to run repeated checks of the file size until two checks in a row return the same file size. This means that the file size has not changed for as many seconds as are specified in this parameter. File management routines that demonstrate slow file loading times should use longer times to verify that the file size is stable and no more data is expected.

- Files (tables) in the DB2 database are measured by the number of records in the file. An empty file (table) is represented as having zero records (zero rows).
- Files outside of the DB2 database, such as stream files in the IFS root `/` file system, are measured by the number of data bytes contained within the stream file. The number of bytes of data does not include the size of the file structure itself (where IBM stores meta data that describes the attributes of the stream file). An empty stream file is represented as having zero data bytes.

The number of records or data bytes is stored in the IBM i Agent Dynamic Variable, if specified for the "Record Count Dynamic Variable."

- Stream files are not evaluated by the File Arrival job for any possible record separators that could be contained within the data stream. Only the number of data bytes reported by the IBM i IFS file system are considered, and this count includes any embedded record separators.

:::note
Do not confuse the option `$@RECHKFREQ` (re-check frequency) with the Stable Duration. These are two separate functions that operate independently of each other. The re-check frequency is used first to find a matching file, then the Stable Duration, if specified, is used to re-review the selected file to ensure that its size is stable.
:::

### (On Success) Store Processed File Details to Agent Dynamic Variables

| Field | Description |
| --- | --- |
| **File Name Variable** | Defines the root name of the file (including an extension, if any, from an IFS stream file) that is stored, similar to the OpCon system property $ARRIVED FILE SHORT NAME. The value of the Dynamic Variable can be used after the File Arrival Job if there is any other automation process that the Agent will perform that needs a local reference to the file that was found. |
| **Record Count Variable** | Defines where the number of records (for DB2 files/tables), or the number of data bytes (for IFS non-DB2 file systems), is stored when a file is found. This Dynamic Variable can be predefined as a numeric variable type, but a character type of Dynamic Variable can also be used. |

#### Use of the Variables Tab for IBM i File Arrival jobs

The IBM i Agent supports a set of predefined special variables that correspond to each of the `CHKFILE` or `CHKIFSFIL` command parameter keywords that are not already supported by the Enterprise Manager user interface for this job type. The **Variables** tab of the IBM i Job Master record can be used to store values into these Agent variables, so that additional features unique to IBM i File Arrival jobs can be used.

The following Agent variable names are supported. The name of each variable matches the IBM i command parameter keyword for either the `CHKFILE` command or the `CHKIFSFIL` command. It is not valid to use a parameter that is unique to one command, for the other command. The `CHKFILE` command is used for DB2 database files (tables), while the `CHKIFSFIL` command is used for IFS file systems outside of the DB2 database. Each parameter name becomes a special variable name by prefixing the characters `$@` to the keyword. **Example**: The keyword for "Re-check frequency" is registered in the **Variables** tab as `$@RECHKFREQ`.

The following are IBM i File Arrival Job parameters supported only by `$@`-variable names:

| CHKFILE | CHKIFSFIL |
| --- | --- |
| LOCK | |
| NUMRECPROP | FILSIZPROP |
| FAILCDPROP | FAILCDPROP |
| FAILCODEDV | FAILCODEDV |
| FAILIFZERO | FAILIFZERO |
| CRTREFDATE | CRTREFDATE |
| JOBENDTIME | JOBENDTIME |
| JOBREFDATE | JOBREFDATE |
| RECHKFREQ | RECHKFREQ |
| AUT | |

When using the `$@JOBENDTIME` parameter, the Agent's raw commands (`CHKFILE` and `CHKIFSFIL`) accept either a decimal value or a "clock time" value for the job end time, which is always relative to midnight.

:::tip Example
The value provided for the Job End Time could be either `14.5`, which indicates 14 hours and 30 minutes after midnight (that is, 2:30 PM), or the value could be entered as `14:30`, which is military hours and actual minutes. This rule applies to both positive and negative values, relative to midnight, although the hours before midnight are more difficult to calculate, since they work backwards from normal clock time. That is, `(-14:30)` or `(-14.5)` would be 14 hours and 30 minutes before midnight, which is 9:30 AM on the previous day.
:::

Any of the command parameter keywords can be overridden by the **Variables** tab, even though the OpCon job master already defines a value for that keyword. It is generally not recommended to use those command parameter keywords, but if they are added to the **Variables** tab list, then the **Variables** tab value replaces the value supplied by the original OpCon job start request.

The reason this parameter override potential exists is that the `$@` prefix for names in the **Variables** tab table can be used for other sub-types of IBM i jobs that are also supported by predefined Agent commands. One example where this rule might be useful is when an Agent File Arrival job was previously defined as an IBM i Batch Job (a different job type) that is running the raw Agent commands `CHKFILE` or `CHKIFSFIL`. In these cases, the **Variables** tab supports the alternate "clock time" syntax for the Start and End time parameters, including the Job End Time parameter that has been more recently added to these commands.

:::note
The "clock time" syntax cannot be used in the Call command line where the CRTSTRTIME, CRTENDTIME, and JOBENDTIME parameter keywords appear. If specified in the command line itself, the values must be positive or negative values relative to midnight.
:::

The definitions of these command keywords, their values, and their purposes are explained under the Commands and Utilities section of the Agent documentation for IBM i, along with a detailed description of how to use the command line utility commands `CHKFILE` and `CHKIFSFIL`.

The following command parameter keyword special values have unique significance when used with the OpCon File Arrival Job in the **Variables** tab:

| Variable | Description |
| --- | --- |
| **$@FAILIFZERO** | This is the same as the job master Failure Condition "Fail If File Contains Zero Records or Zero Bytes." However, if the other job failure condition ("Fail On Error Except Reached End Time") is already selected, then this **Variables** tab special variable can be used to also specify that a job should NOT fail if the file contains zero records or zero data bytes. |
| **$@RECHKFREQ** | This Agent special variable controls how aggressive the File Arrival job is when it is watching for a file to arrive. It specifies the number of seconds the job should wait between checks. For File Arrival jobs started by OpCon, the Agent supports a default number of seconds (set by using the IBM i Agent's green screen menu function, option 7 under sub-menu 3), so the normal behavior of a File Arrival job that has started running before a non-zero Create End Time has elapsed is to continue looping through repeated checks for a matching file until the End Time is reached. You can set this special variable either (1) to override the frequency of checks to a greater or lesser number of seconds, or (2) to force the number of seconds to zero, meaning that the file check is performed only once, regardless of the setting of the End Time. |
| **$@AUT** | As documented for the `CHKFILE` command, this Agent special variable can provide a customized list of one or more DB2 object authorities that should be checked for the AUTUSER. When this special variable is included in the list, it overrides the Enterprise Manager authority options for **Read**, **Write**, or **Execute**, since those are simpler authorities that apply more directly to stream files in the IFS root file system. |
| **$@CRTREFDATE** | This keyword supports the Agent's option to override the default assumption that the File Creation Times are always relative to midnight, which is the starting time of the OpCon Schedule that submitted the File Arrival job. In some cases, it might be desirable to use an Agent Dynamic Variable token to control which date is the midnight reference. In unusual cases, it also becomes possible to temporarily add the `$@CRTREFDATE` and specify a hard-coded value whenever an OpCon Restart of a Job might be necessary. (Outside of OpCon control, the CRTREFDATE parameter default would be the current IBM i system date, if this keyword is not used. The use case for the `CHKFILE` and `CHKIFSFIL` commands outside of OpCon control would include some of the Agent's automation tools that support stand-alone command execution, including a Multi-Step Job Script and, possibly, the Agent's Captured Data Response Rules.) |
| **$@JOBENDTIME** and **$@JOBREFDATE** | These keywords support the Agent's option to control the Job End Time, separately from the File Create End Time. Refer to the description above about the CRTREFDATE for the values that can also be used for the JOBREFDATE. The JOBENDTIME value can be provided as a positive or negative value relative to midnight (the JOBREFDATE) in either decimal (`14.5`) or clock time (`14:30`) format. Refer to the following descriptions of how the Job End Time affects the behavior of the File Arrival Job. |

#### Controlling the Behavior of the IBM i File Arrival Job

The behavior of the IBM i File Arrival job is very flexible, to meet many different requirements.

The duration of the job and the completion codes it reports vary depending on interaction between the File Creation Start and End Times with the optional job parameters that can be specified under the **Variables** tab.

The completion status of the job (successful or failed) can be managed by the Failure Condition selected from its list, or by two of the Agent's `$@`-variables. In some cases, these two different controls can be combined to achieve a more specific outcome.

The events that are triggered by an IBM i File Arrival job can be more specific than simply testing for success or failure. The job's Events tab can register different triggers that depend on the various completion codes and the Agent Feedback that the IBM i Agent sends as a job ends. More detail about the completion codes is provided under documentation about the IBM i Agent, under the Commands and Utilities section, that addresses the Agent's File Arrival commands (`CHKFILE` and `CHKIFSFIL`). These are the same commands that respond to the OpCon job start request for an IBM i File Arrival job.

#### How the Re-Check Frequency Controls the File Arrival Job Behavior

The IBM i File Arrival job supports `$@RECHKFREQ` as an Agent special variable name that can be configured using the job's **Variables** tab. This "re-check frequency" specifies the number of seconds between retries of the File Arrival job, to see if a qualified file has arrived. The File Arrival checks can be made more or less aggressive depending on how long the job pauses between checks.

When `$@RECHKFREQ` is not specified in the **Variables** tab, the default behavior is that only one check is performed to see if a file exists. If a qualified file is not found, the File Arrival job ends immediately. In this case, the Job End Time has no effect and is ignored.

To define a File Arrival job that acts as a File Watcher, register the `$@RECHKFREQ` variable with a value of some number of seconds. With this value specified, the Job End Time controls how long the File Arrival job repeats checking for a qualifying file.

#### How the Optional Job End Time Controls the File Arrival Job Behavior

The IBM i File Arrival job supports an additional Job End Time parameter. This value is entered using the **Variables** tab of the job master record to specify a value for the `$@JOBENDTIME` Agent variable name. When a Job End Time is specified, the File Creation End time no longer influences the job end time, but is used only for validating the time the file was created.

If the `$@JOBENDTIME` special variable is not specified under the **Variables** tab, then the File Creation End Time is used as the Job End Time.

When the Job End Time is specified under the **Variables** tab, then the File Creation End Time is used only to validate the creation time of the file.

There is always a Job End Time, to prevent File Arrival jobs that use the `$@RECHKFREQ` from running eternally. The Job End Time is determined by the following order of job parameter evaluation:

- The `$@JOBENDTIME` was specified.
- The `$@JOBENDTIME` was not specified, but the File Creation End Time was specified, so the File Creation End Time is also used for the Job End Time.
- When neither End Time is specified, but the File Creation Start time was specified, then the Job End Time is assumed as 24 hours after the File Creation Start time.
- When no Start or End times were specified, the Job End Time is assumed as 24 hours after the IBM i job actually started running.

According to the order of Job End Time evaluation above, it is necessary to schedule a new File Arrival job once for each OpCon Schedule date if the objective is to have a file watcher job that is always active.

- Similarly, since a File Arrival Job ends whenever a qualified file is found, or when the Job End Time is reached, it is necessary to restart the job or start a new File Arrival job if the objective is to have a file watcher job that is always active.
- The IBM i File Arrival Job completion codes, sent as Agent Feedback and (usually) as the final Job Completion code, can be tested using the Events tab rules to decide when a File Arrival job should be restarted, or when it is time to let the next day's Schedule build and run a new instance of the job.

Whenever a File Arrival job reaches the Job End Time and no qualified file was found, the job completion code (and an Agent Feedback code) includes the completion code CKF0009. This code represents the same condition as code CKF0001 (file name not found), but it includes the additional meaning that the Job End Time expired before the file could be found. If the `$@RECHKFREQ` was set to zeros and the single check for a file produced no match, then the job completion code is CKF0001.

One important advantage of using a Job End Time is that it becomes possible for the File Arrival job to wait for, and eventually select, a file that has a creation time older than when the job started, depending on the settings of the File Creation Start and End Times. Using a non-zero `$@RECHKFREQ` with the Job End Time permits the job to wait until a file created in the past is finally moved to the target directory or library where the File Arrival job is watching for the file. In other words, the job does not stop checking for the file (until the Job End Time), even though the File Creation End Time is in the past. This behavior could be helpful during recovery processing, whenever OpCon normal scheduling might have been delayed.

#### How Start and End Times Interact to Control the File Arrival Job Behavior

These rules of interaction assume that the Job End time has been determined as described above. Therefore, the Job End Time could be the specified Job End Time, the File Creation End Time, or a default Job End Time. The Start time referred to here is the File Creation Start time, if specified.

If both File Creation times are left set to zeros, the File Arrival job does not consider the creation time of a file but only the file name, to determine if a matched file is found.

When the Start Time is entered, the File Arrival job does not start looking for a file until the Start Time has passed (if the job is activated, it sleeps until the Start Time occurs). If the Start Time has already passed, then the File Arrival job immediately looks for the file. If a matching file name is found, its Creation Time is checked to be sure that the file was not created before the specified time. If there is only one matching file, but its Creation Time is too early, then the job fails with a CKF0006 code (instead of the "file not found" code of CKF0001). If more than one file name matches generic filename search rules, then the file name returned is the first file that was found created on or after the Start Time; that is, files that have matching names but Creation Times that are too early are ignored.

If only an End Time is entered but the Start Time is left set to zeros, this implies that the File Arrival job starts checking for a qualified file immediately when OpCon tells it to start.

- If OpCon starts the File Arrival job at a time later than the End Time, only a single file check is performed, regardless of the setting of an optional `$@RECHKFREQ` value. Any matching file that is found is checked to be sure that it was not created outside of the File Creation Times. If a file with a matching name is found, but its Create Time falls outside of the specified Creation Times, then the job ends abnormally with completion code CKF0006 rather than the "file not found" code of CKF0001.

If both a Start Time and an End Time are specified, then all of the operations described above for each single time apply.

- This is another case in which the IBM i File Arrival command parameter special variable `$@RECHKFREQ` can vary the behavior of the File Arrival job.

#### Managing Job Status versus the Possible Exit Descriptions (Completion Codes)

An IBM i File Arrival job normally reports the final job status as Finished OK when the job completion code is CKF0010 (file found).

If a found file contains zero records or zero bytes of data, the completion code is CKF0005. This normally causes the job status to be Failed, since it is not CKF0010; however, the list for the Failure Condition supports an option to ignore the completion code of CKF0005 and report the final job status as Finished OK.

Similarly, the File Arrival job normally reports a failure if a matching and qualified file was not found before the Job End Time; however, another Failure Condition option can force the job completion status to be Finished OK even though the Agent has reported the completion code CKF0009 (file not found before Job End Time).

In both of these cases where the normal job completion status was overridden, the actual completion code reported by the Agent can be tested using the Events tab rules for either the Exit Description (which contains the completion code) or the Agent Feedback value that is always used to send the Agent's completion code to the OpCon job. This makes it possible for the File Arrival job to adjust subsequent processing by any OpCon Jobs or Schedules that may follow.

Using the **Variables** tab to register the Agent command parameter `$@FAILIFZERO=*NO`, it becomes possible to define a File Arrival job that uses the job master Failure Condition "Fail On Error Except Reached End Time," but the **Variables** tab tells the Agent file check command to also NOT fail the job if the Job End Time was reached with no matching file.

Other kinds of exceptional processing may be desired, depending on the other job completion codes defined under the IBM i Agent, in the Commands and Utilities section where the File Arrival commands are documented. For example, a completion code of CKF0007 (user not authorized to a specified action type) could be used to add a job to the OpCon Schedule that grants the authority required by the subsequent jobs' user profile, and then allow the Schedule to continue normally, avoiding an unnecessary failure of the Schedule.

## FAQs

**Q: What IBM i job types does OpCon support?**

OpCon supports Batch Job (default), Tracked Job, Queued Job, Operator Replay Job, Restricted Mode, FTP, and File Arrival job types for IBM i.

**Q: What are the IBM i name rules for job fields?**

IBM i names must be 10 characters or fewer, begin with an alphabetic character (A–Z, @, $, or #), and contain only alphanumeric characters (A–Z, 0–9, @, $, #, or underscore) with no embedded blanks.

**Q: Can a File Arrival job on IBM i continue without failing if no file is found by the Job End Time?**

Yes. Using the **Variables** tab to register the Agent command parameter `$@FAILIFZERO=*NO` tells the Agent not to fail the job if the Job End Time is reached with no matching file, even when the Failure Condition is set to "Fail On Error Except Reached End Time."

## Related Topics

- [OpCon Events](../events/introduction.md)

## Glossary

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job start timing, and processes OpCon events.

**Agent**: An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as Machines in OpCon.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent jobs and preventing resource contention.
