# IBM i Job Details

The information in this section applies to defining an IBM i job. The
text fields in the graphical interfaces support
OpCon token replacement. For additional information about this platform, refer to [IBM i LSAM
Configuration](https://help.smatechnologies.com/opcon/agents/ibmi/latest/Files/Agents/IBM-i/Configuration.md)
 in the **IBM i LSAM** online help.

- Unless otherwise specified, name validation must conform to this set
    of IBM i Name rules:
  - Names must be 10 characters or less.
  - If a specific name validation lists a different number of
        maximum characters, the specific rules override this rule.
  - Names must begin with an alphabetic character (A through Z, @,
        $, and \#).
  - All subsequent characters can be alphanumeric (A through Z, 0
        through 9, @, $, \#, and \_ (underscore)).
  - There can be no embedded blanks.
- For international languages, certain other signs might qualify as
    alphanumeric characters (such as the English Pound symbol (£)), but
    the base software product should not allow for these alternate
    symbols because the operating system from IBM is not distributed
    that way.

:::note
The Start Job Request Message for the IBM i is a subset of the Submit Job Command available on the IBM i.
:::

## Job Information

:::note
If an asterisk (\*) is specified for any field, the default value specified in the SMA Technologies system parameters for the LSAM is used.
:::

- **Job Type**: Defines the type of job to schedule on the IBM i
    LSAM. Once the Type is defined, all of the other     fields in this group of information are required except when Tracked
    Job or File Arrival is defined. The following is a list of the
    available options:
  - Batch Job (default value)
  - Tracked Job
  - Queued Job
  - Operator Replay Job
  - Restricted Mode
  - FTP
  - File Arrival
- **User ID**: Defines the name of the IBM i user profile under which
    the job should be submitted. The defined user must have permissions
    to the executable or script that will be defined in the Call
    Information. The User ID can be defined as one of the following:
  - An actual IBM i user profile name.
  - An asterisk, which tells the LSAM to use the         default User ID (specified in the IBM i green screen LSAM
        Parameters maintenance).
  - The special value \*CURRENT, typically used for Tracked, Queued
        or Captured jobs that are pre-defined in IBM i before
        OpCon even learns about the jobs.
  - The special value \*JOBD, which tells the LSAM         and IBM i that the job description (named in a different field
        for the job master) contains the name of the user profile that
        should be used when submitting the job.

### Job Description

- **Name**: Defines the simple name of the job description used with
    the job. The actual job description name may be specified.
  - Default Value: **\***
  - Valid Values: **\***, **\*USRPRF**, or the actual job
        description name. The name of the job description must not
        exceed 10 characters.
- **Library**: Defines the library associated with the job description
    name.
  - Default Value: **\***
  - Valid Values: **\***, **\*LIBL**, **\*CURLIB**, or the
        user-defined name of the library associated with the job
        description name. The name of the library must not exceed 10
        characters.

### Library

- **Current**: Defines the name of the current library associated with
    the job being executed. The actual library name can be specified.
  - Default Value: **\*** (asterisk)
  - Valid Values: **\***, **\*CRTDFT**, **\*USRPRF**, or a
        user-defined library name. User-defined library names must not
        exceed 10 characters.
- **Init Lib List**: Defines the initial user part of the library list
    that is used to search for any objects without a library. The
    individual library names are not supported.
  - Default Value: **\*JOBD**
  - Valid Values: **\***, **\*JOBD**, **\*NONE**, **\*SYSVAL**,
        **\*CURRENT**, or a user-defined library name. User-defined
        library names must not exceed 10 characters.

### Job Queue

- **Name**: Defines the name of the job queue in which this job is
    placed. The actual job queue name may be specified.
  - Default Value: **\*JOBD**
  - Valid Values: **\***, **\*JOBD**, or the actual job queue name.
        The name of the job queue must not exceed 10 characters.
- **Library**: Defines the library associated with the batch queue
    name.
  - Default Value: **\*** (asterisk)
  - Valid Values: **\***, **\*LIBL**, **\*CURLIB**, or the
        user-defined name of the library associated with the batch queue
        name. The name of the library must not exceed 10 characters.

### Call Information

The Call Information is required for all Job Types, except Tracked Job
and File Arrival. Depending on the job type, different fields are
required for the Call Information.

+---------------------+----------------------+
| Job Type            | Required Information |
+=====================+======================+
| Batch Job           | Prerun               |
|                     |                      |
|                     | Call                 |
+---------------------+----------------------+
| Queued Job          | Prerun               |
+---------------------+----------------------+
| Operator Replay Job | Prerun               |
|                     |                      |
|                     | Script name          |
+---------------------+----------------------+
| Restricted Mode     | Prerun               |
|                     |                      |
|                     | Script name          |
+---------------------+----------------------+
| FTP                 | Remote System        |
|                     |                      |
|                     | Transfer Information |
|                     |                      |
|                     | Local Information    |
|                     |                      |
|                     | Remote Information   |
+---------------------+----------------------+

:::note
All the rules for the IBM i FTP command and sub-commands apply to the FTP Job Type. For additional information, consult the IBM documentation.

- When specifying an actual IP address, the address must be enclosed in single quotes.
- When specifying a Host Name, the Host Name must exist in the IBM i Host Table and the Host Name must not be enclosed in quotes.

For additional information on command CFGTCP (option 10), consult the IBM documentation.
:::

- **Prerun** (Optional): Defines the IBM i job to be executed
    immediately before the initiation of the job specified in the
    Call/Script Name.
  - If the Prerun job terminates with an error, it will be
        rescheduled at a user-defined interval.
  - The Prerun job will continue to execute at the user-defined
        interval until it succeeds, allowing the job in Call/Script Name
        to process.
  - The primary purpose of a Prerun is to test any required
        preconditions to job execution.
  - Valid Values: CHKDTAARA, CHKFILE, or a user-defined prerun
        value. A user-defined value must not exceed 255 characters.
- **Call/Script Name** (Required): For a Batch Job, enter the program
    name using the CALL command or enter a command name. Do not use the SMBJOB command. If the SMBJOB command is used, the LSAM will
    not be able to track the job for failure. Include parameters in this
    field as desired. For an Operator Replay Job or Restricted Mode Job,
    enter the script name. The call or script name must not exceed 2000
    characters.

## Additional Info

- **JobQ Priority**: Defines the job queue scheduling priority.
  - Valid values range from 1 through 9, where 1 is the highest
        priority and 9 is the lowest.
  - The specification \*JOBD is not supported.

- **Job Date**: Defines the calendar date for the job to be associated
    with.
  - Valid Values: **\*JOBD**, **\*SYSVAL**, **\*SCHEDULE DATE**, or
        a user-defined calendar date. User-defined dates must follow
        these requirements:
    - Minimum Characters: 1
    - Maximum Characters: 20
    - Valid Characters: Numeric Characters (0 - 9), slash (/),
            dash (-), period (.), comma (,), and space.
    - Default Value: **\*JOBD**

- **Accounting Code**: Defines the accounting code that is used when
    logging system resource use. The accounting code must not exceed 15
    characters.

- **Log CL Commands**: (Required): Defines whether the commands that
    are run in a control language program are logged to the job log by
    way of the CL program's message queue.

  - Default Value: **\*JOBD**
  - Valid Values: **\***, **\*JOBD**, **\*NO**, **\*YES**

- **Inquiry Message Reply** (Required): Defines the way predefined
    messages are answered when sent as a result of running the job. If
    not specified, the default value specified in the SMA system
    parameters will be used.
  - Default Value: **\*JOBD**
  - Valid Values: **\***, **\*JOBD**, **\*RQD**, **\*DFT**,
        **\*SYSRPYL**

### Output Queue

- **Name**: Defines the output queue used for spooled files. The
    actual output queue name may be specified.
  - Default Value: **\*JOBD**
  - Valid Values: **\***, **\*CURRENT**, **\*USRPRF**, **\*DEV**,
        **\*JOBD**, or the actual output queue name. The name of the
        library must not exceed 10 characters.
- **Library**: Defines the library associated with the Output Queue
    name.
  - Default Value: **\*** (asterisk)
  - Valid Values: **\***, **\*LIBL**, **\*CURLIB**, or the
        user-defined name of the library associated with the output
        queue name. The name of the library must not exceed 10
        characters.

### Message Logging

Once the Job Type is defined in the Job Information, all of the Log
Information is required except when Tracked Job is the Job Type. Only
the Number of Occurrences and Number of Days are required with a Tracked
Job.

:::note
If an asterisk (\*) is specified, the default value specified in the SMA Technologies system parameters for the LSAM is used.
:::

- **Level**(Required): Defines the number of messages for logging.
  - Default Value: **\*JOBD**
  - Valid Values: **\***, **\*JOBD**, **0**, **1**, **2**, **3**,
        **4**
    - Valid values range from 0 to 4, with 0 being no logging and
            4 being the highest level of detail.
- **Severity** (Required): Defines the lowest severity level that
    causes an error message to be logged.
  - Default Value: **\*JOBD**
  - Valid Values: **\***, **\*JOBD**, **00**, **01**, **02**,
        **03**, **04**, **05**, through **99**
- **Text** (Required): Defines the detail of the text logged.
  - Default Value: **\*JOBD**
  - Valid Values: **\***, **\*JOBD**, **\*MSG**, **\*SECLVL**,
        **\*NOLIST**

### Job Log Retention

- **Number of Occurrences** (Optional): Defines the number of
    occurrences to save for times when this same job name may be
    executed more than once.
  - The last (n) number of occurrences of job logs for this job name
        will be retained, while any prior job logs for this job name
        will be deleted.
  - When this value is left at zero, this parameter will be ignored
        and all job logs will only be subject to the Number of Days (if
        set).
  - User-defined Value:
    - Minimum Value: 0 (turns off joblog cleanup at the job
            level).
    - Maximum Value: 999.
  - Valid Values: Only numeric characters (0 -- 9).
- **Number of Days** (Optional): Defines the number of days to keep of
    the job logs.
  - The LSAM will delete (or cause the system to         delete, during its normal course of operations) job logs for the
        names of the jobs that have existed on the system for more than
        the number of days set in this parameter.
  - When this value is left at zero, this parameter will be ignored
        and all job logs will only be subject to the Number of
        Occurrences (if set).
  - User-defined Value:
    - Minimum Value: 0 (turns off joblog cleanup at the job
            level).
    - Maximum Value: 999.
  - Valid Values: Only numeric characters (0 -- 9).

## Messages

The Messages information can be defined for all Job Types, except
Restricted Mode. Message definition is optional; however, if one is
defined, there are several required fields. Refer to the field
definitions below:

- **Message ID**: Defines the 7 character Message ID displayed at the
    beginning of the message. This field is required if the Severity is
    set to a value of 00.
- **Compare Data** (Optional): Defines the characters to find in the
    message (defined by the message ID). The value must not exceed 30
    characters.
- **Position** (Optional): Defines the position to start looking for
    the Compare Data word in the Message defined by the Msg ID. The
    value must not exceed 999 characters. Message data can be as long as
    2147483647, but IBM i supports only up to position 999 in their
    reply list entries.
- **Severity**: Defines the messages to look for based on severity.
  - Severity is **Required** if Msg ID is blank.
  - Valid Values: 00 (default value), 10, 20, 30, 40, 50, 60, 70,
        80, 90.
- **Action** (Required): Defines what the LSAM does     when a message meets the defined criteria.
  - Valid Values:
    - Reply (default value)
    - Event
    - Both
- **Reply**: Defines the response the LSAM sends as     the reply when the *Action* is set to *'Reply'* or *'Both'* and
    when the message meets the search criteria. The reply must not
    exceed 6 characters.
  - Reply is **Required** if *Action* is set to *'Reply'* or
        *'Both'*.
- **End Job** (Required): Defines whether to end the
    OpCon job after the message meets the
    criteria or to allow it to keep running.
  - Valid Values: N, Y
- **Event**: Defines the OpCon event to
    send to the SAM-SS when the message meets the search criteria.
  - Valid Values: Refer to the [OpCon Events](../events/introduction.md) online help. The event
        string must not exceed 738 characters.

## Spool Files

The Spool Files information can be defined for all Job Types, except
Restricted Mode. Spool File definition is optional; however, if one is
defined, there are several required fields. Refer to field definitions
below:

- **File Name** (Required): Defines the name of the file that contains
    the output from the job. Valid values include **\*ALL** or a
    user-defined value. User-defined values must not exceed 10
    characters.
- **User** (Optional): Defines the User name. Valid values include All
    Batch User IDs defined in the OpCon
    database for the IBM i platform, or a user-defined value. The user
    name must not exceed 10 characters.
- **OutQ Name** (Optional): Defines the Outq Name. Valid values
    include \*USRPRF or a user-defined value. The Outq Name must not
    exceed 10 characters.
- **OutQ Library**: Defines the library that contains the Outq.
  - **Required** if Outq Name is not blank.
  - The default value is Blank, but if \*USRPRF is defined for the
        Outq Name, set \*USRPRF for Outq Library.
  - Valid Values: **\*USRPRF** or a user-defined value. User-defined
        values must not exceed 10 characters.
- **Total Copies** (Optional): Defines the number of spool file copies
    to create. Valid values range from 1 through 255.
- **Hold** (Optional): Determines whether to print the spool file.
  - Default Value: \* (accept default)
  - Valid Values: \*, Y, N
- **Save** (Optional): Determines whether to save the spool file after
    it is printed.
  - Default Value: \* (accept default)
  - Valid Values: \*, Y, N

## Variables

The Variables tab is available for you to define values for the IBM i
LSAM that will be assigned to LSAM Dynamic Variable names. Adding one or more entries in this table of
values may be more convenient than configuring separate IBM i batch jobs
that would each execute the IBM i LSAM SETDYNVAR command, setting one value per job. Up to 99 token definitions may be
added to this table in a single job.

The LSAM assigns the Dynamic Variable values before the job start request is assembled within the LSAM job
scheduler so that the assigned values can be used within the job's Call
information or used by the job itself after it starts execution. Once
the values are stored in the LSAM table, they are available to any feature of the LSAM wherever Dynamic
Variables are supported. Refer to field definitions below:

- **Variable Name**: Defines the name of the IBM i
    LSAM Dynamic Variable that stores the value.     -   Maximum Characters: 12
  - Valid Characters: A - Z, 0 - 9, and special characters
  - Invalid Characters: blanks and spaces
- **Value**: Defines the character string to use as the value to be
    stored in the IBM i LSAM Dynamic Variables table.     You may use an OpCon token in this field
    so that the value of the associated OpCon
    property will be assigned to the LSAM Dynamic     Variable. Use CTRL + T to select from a list of existing
    OpCon Global Properties, or manually type
    the token referencing any Global or Instance property desired.
  - The value should be no more than a 128-character string or an
        OpCon token that resolves to a value
        of no more than 128 characters.
  - Valid Characters: Any

## FTP Job Type Information

### Transfer Information

- **Action Type** (Required): Defines the FTP command to use. The
    valid values are:
  - PUT (default value)
  - MPUT
  - GET
  - MGET
  - DEL
  - MDEL

- **User**: Defines the FTP users for connecting to the remote system.
    If not specified, the LSAM will use the default user     from the LSAM parameters.
  - Valid Values: All Batch User IDs defined in the
        OpCon database for the IBM i platform
        or a user-defined value. The FTP User name must not exceed 128
        characters.
- **Transfer Type** (Required): Defines the type of transfer for
    binary or ASCII. The valid values are:
  - BIN (default value)
  - ASCII
  - EBCDIC

### Remote Information

- **Remote System** (Required): Defines the name of the remote system.
    The remote system name must not exceed 255 characters.
  - Field value extensions: The IBM i "FTP" command keywords not
        already used by the OpCon job can be added to the Remote System
        name to alter how the FTP connection will be managed.

        To add FTP command keywords, type the IBM i Agent's "job
        parameters separator character" after the Remote System name,
        then type or paste the FTP command keywords and their values.
        The total characters typed into the Remote System name cannot
        exceed 255 characters.

        An explanation of the Agent's command parameters separator
        character may be found under [Extending the IBM i Call Command         with Special
        Parameters](https://help.smatechnologies.com/opcon/agents/ibmi/latest/Files/Agents/IBM-i/Configuration.md#Extendin)
        .

- **Remote File Name** (Required): Defines the name for the file once
    it reaches the remote machine.
  - Valid Values: \*LCLFILNAM or a user-defined value. A
        user-defined remote file name must not exceed 128 characters.
- **Remote Library or Directory** (Required): Defines the library or
    directory to receive the file on the remote machine. The remote
    library or directory must not exceed 512 characters.

### Local Information

- **Local File Name** (Required): Defines the file name on the IBM i
    machine to transfer to the remote machine. The file name must not
    exceed 128 characters.
- **Local Library or Directory** (Required): Defines the library or
    directory containing the file on the IBM i machine. The local
    library or directory must not exceed 512 characters.

## File Arrival Job Type Information

### File Arrival Information

:::note
Job Queue can be overridden for IBM i File Arrival.
:::

**User Id**: Defines the User ID whose file authority will be verified.
Unlike simple Batch Jobs, the IBM i Agent uses its own server user
profile (SMANET) to execute File Arrival jobs. This User ID field may be
left set to the default value of asterisk (\*) when no File Authorities
will be checked. The User ID specified in this field for File Arrival
jobs must be registered as an OpCon Batch User for IBM i jobs in order
to add it to the list of edited user profile names. The registered Batch
User names must be valid IBM i User Profile names. If an invalid IBM i
User Profile name is entered, the specified File Authority checks will
fail.

**Check Lock on DB2 File**: Defines whether to request verification that
there are no in-use locks on any DB2 database files. This checkbox is
only valid for DB2 database files (tables). It will be ignored if the
File Name shows an IFS root file system path (beginning with a forward
slash). If the file is found, but it exhibits a lock of any kind, then
the CHKFILE command will fail with completion code CKF0003. If the
Failure Condition says to not fail the job, the completion code CKF0003
will still be reported as the final job status code and it will also be
sent as a Job Detail Message and as LSAM Feedback.

**File Name**: Defines the file path and name of the file to detect. The
format of the file name determines whether the IBM i Agent will execute
the CHKFILE command for DB2 database files (tables), or the CHKIFSFIL
command for stream files located in Integrated File Systems outside of
DB2, such as the root '/' file system. Names of LIBRARY/FILES within DB2
must begin with a valid alpha character. Names of stream files in IFS
file systems outside of the DB2 database must begin with a forward slash
(/).

Valid formats for File Name include:

- LIBRARY/FILENAME = Format for DB2 database files (tables).

- LIBRARY/FILENAME(MEMBER) = Format for verifying the presence of a
    data member within a DB2 file. Data members are not supported by
    SQL-defined tables; however, legacy DB2 files can support multiple
    data members, and multiple data members are commonly used to store
    the source code for programs, within a Source Physical File (refer
    to IBM i documentation about the command CRTSRCPF).

- /directoryA/directory1/filename.ext = Format for Integrated File
    System stream files stored in file systems outside of the DB2
    database, such as the root '/' file system. The extension is
    optional, but it must be specified if the file is actually named
    with an extension.

- DB2 files (tables) can also be checked using the CHKIFSFIL command
    by utilizing the IBM standard for DB2 file names according to the
    non-DB2 open file system naming standards (also known by the FTP
    sub-command as NAMEFMT 1). For example:
    /QSYS.LIB/MYLIB.LIB/FILENAME.FILE or (to verify the presence of a
    specific data member within a multiple member physical file)
    /QSYS.LIB/MYLIB.LIB/SRCFILE.FILE/MBRNAME.MBR. However, the CHKIFSFIL
    command will execute the CHKFILE command upon discovering a DB2 file
    name, so it is generally better to use the DB2 naming format.

Generic file search characters can be used:

- Generic search rules apply to the file name only.

  - Generic search characters are not supported for a directory or
        library name in the path to the file.

  - They are also not supported for an optional DB2 member name.

- (\*) = an asterisk can be used to represent any length of
    characters. This character is typically used as the last character
    when searching for all files that match the first few other
    characters, e.g., MYFIL\*.

- It is also valid to use an asterisk (\*) to match any, or none, file
    extensions in the IFS file systems, e.g., /filename.\* would match
    /filename.txt or /filename.pdf.

- (?) = a question mark can be used in place of any single character
    that will always be considered as matching. More than one question
    mark can be used within a file name, e.g., LIB/MYF?LE or
    /directory/filen?me.txt.

- Question marks and asterisks can be mixed: /directory/filen?me.\*.

When Generic file names are used, it is possible that more than one file
will match the pattern; however, the File Arrival job, when completing
normally, will report back the first file name that matches the generic
pattern, based on an alphabetic list of names. (The alphabetic sort
order is governed by the default sort order of the IBM i system, which
varies depending on either the default system language ID, or on
user-specified changes to the sort order.)

Remember that when File Creation Start and End Times are used, files
that match a generic name pattern may not be qualified as found files if
their Creation Time falls outside of the Start or End times. In this
case, the File Arrival job will continue to search through a list of
matching file names until a file is found that has a valid Creation
Time.

To detect and process more than one matching file name, it is necessary
to first rename or move any previously found files, before repeating
execution of the File Arrival job. Otherwise, each time the File Arrival
job restarts, it will discover the same file that is first in the sorted
list of file names. File Creation Start/End Times: Enter days, hours and
minutes, relative to midnight (of the current OpCon Schedule Date) if it
is necessary to verify that the desired file was created within a
certain time frame.

Use the Token checkbox in order to set either Time value from what was
stored in an OpCon Property, and then specify an OpCon Property token in
the token name box.

The term "time" in this discussion of the File Arrival Job always refers
to a complete date + time.

It is valid to use only one of the times and not the other. If no Time
values are entered (values are left set to zeros), then a simple check
for file existence will be performed, without verifying the creation
time of the file; however, the End Time (possibly combined with other
IBM i Agent $@-variable values, as described below) can be used to
define whether a File Arrival job will perform only a one-time,
immediate check for a file, or whether the job will run in a loop,
performing periodic checks for a file until it arrives -- or until the
End Time expires.

**Failure Condition**: Defines the action to take based on the job
failure or success status. Use the drop-down list to choose optional
special conditions that change whether the File Arrival job will end
normally or abnormally, depending on certain types of errors that could
otherwise cause the job to fail.

- **Always Succeed**: This option instructions the Agent to report a
    final job status of Finished OK, regardless of the completion code
    it reports. Completion codes will still appear in the Exit
    Description and they will be reported as LSAM Feedback, so that the
    Events tab of a job can be used to manage subsequent OpCon work
    flow, but the File Arrival job itself will appear with Finished OK
    status.
- **Fail If File Contains Zero Records or Zero Bytes**: This exception
    tells the Agent to force a job failure report to OpCon, using
    completion code CKF0005, if a found file contains zero records or
    zero bytes of data. This exception will first take into account an
    option to check the File Size Stable Duration, if a number of
    seconds were specified.
- **Fail On Error**: This is the normal and default failure condition.
    The File Arrival job provides a completion code of CKF0010 if the
    requested file is found and has passed any optional status checks.
    Otherwise, when the Agent is reporting a different completion code,
    the OpCon Job will show a status of Failed.
- **Fail On Error Except Reached End Time**: This exception tells the
    Agent to not send a "file not found" (completion code CKF0001) if
    the End Time is reached, but no matching file (and/or valid file
    Create Time) was found. This exception is useful when a file is only
    optionally present, and the OpCon Schedule(s) should be allowed to
    continue normally -- except for possibly skipping unnecessary jobs.
  - Optionally, the LSAM Feedback Event type can be used to detect
        the CKF0001 completion code, so that Event commands can be used
        to modify the OpCon Schedules and/or Jobs that may follow the
        File Arrival job.

### Check File Authority

Defines what type of object authority should be verified for the named
User ID. The authorities listed on this display are the common values
used for stream files in the IBM i Integrated File Systems outside of
the DB2 database, such as the root '/' file system. It is possible to
validate more specific authorities for files (tables) located in the DB2
database by adding '$@' Agent variable names to the Variables tab, as
explained below.

### File Creation Time Stamp Window, Relative to Midnight (in days,hrs,mins or a token)

Defines the time frame that the program uses to watch for the arrival of
the file. As best practice, SMA Technologies recommends setting the time frame to be close to the expected time of
arrival (e.g., if the file is expected to arrive in the evening, set the
time frame to evening hours).

Carefully consider the various options for controlling the File Arrival
job behavior, described after the data entry field definitions. The File
Creation Start and End Times vary in the way they control how long the
job will run and what completion codes may be reported, as they interact
with other File Arrival job options.

### File Size Stable Duration (in secs)

Defines the amount of time the file size has remained stable to indicate
the file has finished arriving. When this field is left set to zeros,
the size of the file is accepted as found upon the first discovery of
the file. If there is a chance that the file could still be in the
process of loading, then specify how long the File Arrival job should
wait to receive a file size value that is the same as the previous
check, as it performs multiple checks of the file size.

Use the checkbox in order to set the Duration seconds from what was
stored in an OpCon Property, and then specify an OpCon Property token in
the token name field.

The File Arrival job will continue to execute repeated checks of the
file size until two checks in a row return the same file size. This
means that the file size has not changed for as many seconds as are
specified in this parameter. File management routines that demonstrate
slow file loading times should use longer times to verify that the file
size is stable and no more data is expected.

- Files (tables) in the DB2 database are measured by the number of
    records in the file. An empty file (table) is represented as having
    zero records (zero rows).

- Files outside of the DB2 database, such as stream files in the IFS
    root '/' file system, are measured by the number of data bytes
    contained within the stream file. The number of bytes of data does
    not include the size of the file structure itself (where IBM stores
    meta data that describes the attributes of the stream file). An
    empty stream file is represented as having zero data bytes.

The number of records or data byes will be stored in the IBM i LSAM
Dynamic Variable, if specified for the "Record Count Dynamic Variable."

- Stream files are not evaluated by the File Arrival job for any
    possible record separators that could be contained within the data
    stream. Only the number of data bytes reported by the IBM i IFS file
    system are considered, and this count would include any embedded
    record separators.

:::note
Do not confuse the option $\@RECHKFREQ (re-check frequency) with the Stable Duration. These are two separate functions that operate independently of each other. The re-check frequency would be used first in order to find a matching file, then the Stable Duration, if specified, would be used to re-check the selected file to assure that its size is stable.
:::

### (On Success) Store Processed File Details to LSAM Dynamic Variables

- **File Name Variable**: Defines the root name of the file (including
    an extension, if any, from an IFS stream file) that is stored,
    similar to the OpCon system property $ARRIVED FILE SHORT NAME. The
    value of the Dynamic Variable could be used after the File Arrival
    Job, if there is any other automation process that the Agent will
    perform that needs a local reference to the file that was found.
- **Record Count Variable**: Defines the number of records (for DB2
    files/tables), or the number of data bytes (for IFS non-DB2 file
    systems) is stored when a file is found. This Dynamic Variable can
    be predefined as a numeric variable type, but a character type of
    Dynamic Variable can also be used.

#### Use of the Variables Tab for IBM i File Arrival jobs

The IBM i Agent supports a set of predefined special variables that
correspond to each of the CHKFILE or CHKIFSFIL command parameter
keywords that are not already supported by the EM user interface for
this job type. The Variables tab of the IBM i Job Master record can be
used to store values into these Agent variables, so that additional
features unique to IBM i File Arrival jobs can be utilized.

The following Agent variable names are supported. The name of each
variable matches the IBM i command parameter keyword for either the
CHKFILE command or the CHKIFSFIL command. It is not valid to use a
parameter that is unique to one command, for the other command.
Therefore, remember that the CHKFILE command is used for DB2 database
files (tables), while the CHKIFSFIL command is used for IFS file systems
outside of the DB2 database. Each parameter name becomes a special
variable name by prefixing the characters '$@' to the keyword, e.g.,
the keyword for "Re-check frequency" is registered in the Variables tab
as '$\@RECHKFREQ'.

  CHKFILE      CHKIFSFIL
  ------------ ------------
  LOCK
  NUMRECPROP   FILSIZPROP
  FAILCDPROP   FAILCDPROP
  FAILCODEDV   FAILCODEDV
  FAILIFZERO   FAILIFZERO
  CRTREFDATE   CRTREFDATE
  JOBENDTIME   JOBENDTIME
  JOBREFDATE   JOBREFDATE
  RECHKFREQ    RECHKFREQ
  AUT

  : IBM i File Arrival Job Parameters Supported only by $@-Variable
  Names

When using the $\@JOBENDTIME parameter, the Agent's raw commands
(CHKFILE and CHKIFSFIL) will accept either a decimal value or a "clock
time" value for the job end time, which is always relative to midnight.
For example, the value provided for the Job End Time could be either
14.5 which indicates 14 hours and 30 minutes after midnight, that is,
2:30 PM, or the value could be entered as 14:30, which is military hours
and actual minutes. This rule applies to both positive and negative
values, relative to midnight, although the hours before midnight are
more difficult to calculate, since they work backwards from normal clock
time. That is, (-14:30) or (-14.5) would be 14 hours and 30 minutes
before midnight, which is 9:30 AM on the previous day.

In fact, any of the command parameter keywords can be overridden by the
Variables tab, even though the OpCon job master already defines a value
for that keyword. It is generally not recommended to use those command
parameter keywords, but if they are added to the Variables tab list,
then the Variables tab value will replace the value supplied by the
original OpCon job start request.

The reason this parameter override potential exists is because the $@
prefix for names in the Variables tab table can be used for other
sub-types of IBM i jobs that are also supported by pre-defined Agent
commands. One example where this rule might be useful is when an Agent
File Arrival job was previously defined as an IBM i Batch Job (a
different job type) that is executing the raw Agent commands of CHKFILE
or CHKIFSFIL. In these cases, the Variables tab supports the alternate
"clock time" syntax for the Start and End time parameters, including the
Job End Time parameter that has been more recently added to these
commands.

:::note
The "clock time" syntax cannot be used in the Call command line where the CRTSTRTIME, CRTENDTIME and JOBENDTIME parameter keywords appear. If specified in the command line itself, the values must be positive or negative values relative to midnight.
:::

The definitions of these command keywords, their values and their
purposes are explained under the Commands and Utilities section of the
Agent documentation for IBM i, along with a detailed description of how
to use the command line utility commands: CHKFILE and CHKIFSFIL.

The following command parameter keyword special values have unique
significance when used with the OpCon File Arrival Job, in the Variables
tab.

- **$\@FAILIFZERO**: This is the same as the job master Failure
    Condition, "Fail If File Contains Zero Records or Zero Bytes."
    However, if the other job failure condition ("Fail On Error Except
    Reached End Time") is already selected, then this Variables tab
    special variable can be used to also specify that a job should NOT
    fail if the file contains zero records or zero data bytes.

- **$\@RECHKFREQ**: This Agent special variable is used to control
    how aggressive the File Arrival job will be when it is watching for
    a file to arrive. It specifies the number of seconds that the job
    should wait between checks. For File Arrival jobs started by OpCon,
    the Agent supports a default number of seconds (set by using the IBM
    i Agent's green screen menu function, option 7 under sub-menu 3), so
    that the normal behavior of a File Arrival job that has started
    execution before a non-zero Create End Time has elapsed, will be to
    continue looping through repeated checks for a matching file, until
    the End Time is reached. The user can set this special variable
    either (1) to override the frequency of checks to a greater or
    lesser number of seconds, or (2) to force the number of seconds to
    zero, meaning that the file check will be performed only once,
    regardless of the setting of the End Time.

- **$\@AUT**: As documented for the CHKFILE command, this Agent
    special variable can provide a customized list of one or more DB2
    object authorities that should be checked for the AUTUSER. When this
    special variable is included in the list, it will override the EM
    authority checkboxes for READ, WRITE and/or EXECUTE, since those are
    simpler authorities that apply more directly to stream files in the
    IFS root file system.

- **$\@CRETREFDATE**: This is the keyword that supports this Agent's
    option to override the default assumption that the File Creation
    Times are always relative to midnight which is the starting time of
    the OpCon Schedule that submitted the File Arrival job. In some
    cases, it might be desirable to utilize an Agent Dynamic Variable
    token to control which date is the midnight reference. In unusual
    cases, it also becomes possible to temporarily add the
    $\@CRTREFDATE and specify a hard-coded value whenever an OpCon
    Restart of a Job might be necessary. (Outside of OpCon control, the
    CRTREFDATE parameter default would be the current IBM i system date,
    if this keyword is not used. The use case for the CHKFILE and
    CHKIFSFIL commands outside of OpCon control would include some of
    the Agent's automation tools that support stand-alone command
    execution, including a Multi-Step Job Script and also, possibly, the
    Agent's Captured Data Response Rules.)

- **$\@JOBENDTIME** and **$\@JOBREFDATE**: These are the keywords
    that support this Agent's option to control the Job End Time,
    separately from the File Create End Time. Refer to the description
    above about the CRTREFDATE for the values that can also be used for
    the JOBREFDATE. The JOBENDTIME value can be provided as a positive
    or negative value relative to midnight (the JOBREFDATE) in either
    decimal (14.5) or clock time (14:30) format. Refer to the following
    descriptions of how the Job End Time affects the behavior of the
    File Arrival Job.

#### Controlling the Behavior of the IBM i File Arrival Job

The behavior of the IBM i File Arrival job is very flexible, in order to
meet many different requirements.

The duration of the job and the completion codes it reports will vary
depending on interaction between the File Creation Start and End Times
with the optional job parameters that can be specified under the
Variables tab.

The completion status of the job (successful or failed) can be managed
by the Failure Condition selected from its drop-down list, and/or by two
of the Agent's $@-variables. In some cases, these two different
controls can be combined to achieve a more specific outcome.

The events that are triggered by an IBM i File Arrival job can be more
specific than simply testing for success or failure. The job's Events
tab can register different triggers that depend on the various
completion codes and the LSAM Feedback that the IBM i Agent will send as
a job ends. More detail about the completion codes is provided under
documentation about the IBM i Agent, under the Commands and Utilities
section, that addresses the Agent's File Arrival Commands (CHKFILE and
CHKIFSFIL). These are the same commands that respond to the OpCon job
start request for an IBM i File Arrival job.

#### How the Re-Check Frequency Controls the File Arrival Job Behavior

The IBM i File Arrival job supports $\@RECHKFREQ as a Agent special
variable name that can be configured using the job's Variables tab. This
"re-check frequency" specifies the number of seconds between retries of
the File Arrival job, to see if a qualified file has arrived. The File
Arrival checks can be made more or less aggressive depending on how long
the job pauses between checks.

When the $\@RECHKFREQ is not specified in the Variables tab, the
default behavior is that only one check will be performed to see if a
file exists. If a qualified file is not found, the File Arrival job will
end immediately. In this case, the Job End Time has no effect -- it is
ignored.

To define a File Arrival job that will act as a File Watcher, be sure to
register the $\@RECHKFREQ variable with a value of some number of
seconds. With this value specified, the Job End Time controls how long
the File Arrival job will repeat checking for a qualifying file.

#### How the Optional Job End Time Controls the File Arrival Job Behavior

The IBM i File Arrival job supports an additional Job End Time
parameter. This value is entered using the Variables tab of the job
master record to specify a value for the $\@JOBENDTIME Agent variable
name. When a Job End Time is specified, the File Creation End time no
longer influences the job end time, but is used only for validating the
time the file was created.

If the $\@JOBENDTIME special variable is not specified under the
Variables tab , then the File Creation End Time will be used as the Job
End Time.

When the Job End Time is specified under the Variables tab, then the
File Creation End Time is used only to validate the creation time of the
file.

There will always be a Job End Time, in order to prevent File Arrival
jobs that use the $\@RECHKFREQ from executing eternally. The Job End
Time is determined by the following order of job parameter evaluation:

- The $\@JOBENDTIME was specified.

- The $\@JOBENDTIME was not specified, but the File Creation End Time
    was specified, so the File Creation End Time is also used for the
    Job End Time.

- When neither End Time is specified, but the File Creation Start time
    was specified, then the Job End Time will be assumed as 24 hours
    after the File Creation Start time.

- When no Start or End times were specified, the Job End Time will be
    assumed as 24 hours after the IBM i job actually started execution.

According to the order of Job End Time evaluation above, it would be
necessary to schedule a new File Arrival job once for each OpCon
Schedule date, if the objective is to have a file watcher job that is
always active.

- Similarly, since a File Arrival Job ends whenever a qualified file
    is found, or when the Job End Time is reached, it is necessary to
    restart the job or start a new File Arrival job if the objective is
    to have a file watcher job that is always active.

- The IBM i File Arrival Job completion codes, sent as LSAM Feedback
    and (usually) as the final Job Completion code, can be tested using
    the Events tab rules in order to decide when a File Arrival job
    should be restarted, or when it is time to let the next day's
    Schedule build and execute a new instance of the job.

Whenever a File Arrival job reaches the Job End Time and no qualified
file was found, the job completion code (and an LSAM Feedback code) will
include the completion code CKF0009. This code represents the same
condition as code CKF0001 (file name not found), but it includes the
additional meaning that the Job End Time expired before the file could
be found. But if the $\@RECHKFREQ was set to zeros and the single check
for a file produced no match, then the job completion code will be
CKF0001.

One important advantage of using a Job End Time is that it becomes
possible for the File Arrival job to wait for, and eventually select a
file that has a creation time that is older than when the job started,
depending on the settings of the File Creation Start and End Times.
Using a non-zero $\@RECHKFREQ with the Job End Time permits the job to
wait until a file created in the past is finally moved to the target
directory or library where the File Arrival job is watching for the
file. In other words, the job will not stop checking for the file (until
the Job End Time), even though the File Creation End Time is in the
past. This behavior could be helpful during recovery processing,
whenever OpCon normal scheduling might have been delayed.

#### How Start and End Times Interact to Control the File Arrival Job Behavior

These rules of interaction assume that the Job End time has been
determined as described above. Therefore, the Job End Time could be the
specified Job End Time, the File Creation End Time, or a default Job End
Time. The Start time referred to here is the File Creation Start time,
if specified.

If both File Creation times are left set to zeros, the File Arrival job
will not consider the creation time of a file but only the file name, to
determine if a matched file is found.

When the Start Time is entered, the File Arrival job will not start
looking for a file until the Start Time has passed (if the job is
activated, it will sleep until the Start Time occurs). If the Start Time
has already passed, then the File Arrival job will immediately look for
the file. If a matching file name is found, its Creation Time is checked
to be sure that the file was not created before the specified time. If
there is only one matching file, but its Creation Time is too early,
then the job will fail with a CKF0006 code (instead of the "file not
found" code of CKF0001). If more than one file name matches generic file
name search rules, then the file name returned will be the first file
that was found created on or after the Start Time, i.e., files that have
matching names but Creation Times that are too early will be ignored.

If only an End Time is entered but the Start Time is left set to zeros,
this implies that the File Arrival job will start checking for a
qualified file immediately when OpCon tells it to start.

- If OpCon starts the File Arrival job at a time that is later than
    the End Time, only a single file check will be performed, regardless
    of the setting of an optional $\@RECHKFREQ value. Any matching file
    that is found will be checked to be sure that it was not created
    outside of the File Creation Times. If a file with a matching name
    is found, but its Create Time falls outside of the specified
    Creations Times, then the job will end abnormally with completion
    code CKF0006 rather than the "file not found" code of CKF0001.

If both a Start Time and an End Time are specified, then all of the
operations described above for each single time will apply.

- This is another case in which the IBM i File Arrival command
    parameter special variable $\@RECHKFREQ can vary the behavior of
    the File Arrival job.

#### Managing Job Status versus the Possible Exit Descriptions (Completion Codes)

An IBM i File Arrival job normally reports the final job status as
Finished OK when the job completion code is CKF0010 (file found).

If a found file contains zero records or zero bytes of data, the
completion code would be CKF0005. This would normally cause the job
status to be Failed, since it is not CKF0010; however, the drop-down
list for the Failure Condition supports an option to ignore the
completion code of CKF0005 and report the final job status as Finished
OK.

Similarly, the File Arrival job would normally report a failure if a
matching and qualified file was not found before the Job End Time;
however, another Failure Condition option can force the job completion
status to be Finished OK even though the Agent has reported the
completion code of CKF0009 (file not found before Job End Time).

In both of these cases where the normal job completion status was
overridden, the actual completion code reported by the Agent can be
tested using the Events tab rules for either the Exit Description (which
will contain the completion code) or the LSAM Feedback value that is
always used to send the Agent's completion code to the OpCon job. This
makes it possible for the File Arrival job to adjust subsequent
processing by any OpCon Jobs or Schedules that may follow.

Using the Variables tab to register the Agent command parameter
$\@FAILIFZERO = \*NO, it becomes possible to define a File Arrival job
that uses the job master Failure Condition of "Fail On Error Except
Reached End Time", but the Variables tab tells the Agent file check
command to also NOT fail the job if the Job End Time was reached with no
matching file.

Other kinds of exceptional processing may be desired, depending on the
other job completion codes defined under the IBM i Agent, in the
Commands and Utilities section where the File Arrival commands are
documented. For example, a completion code of CKF0007 (user not
authorized to a specified action type) could be used to add a job to the
OpCon Schedule that would grant the authority required by the subsequent
jobs' user profile, and then allow the Schedule to continue normally,
thus avoiding an unnecessary failure of the Schedule.
:::
