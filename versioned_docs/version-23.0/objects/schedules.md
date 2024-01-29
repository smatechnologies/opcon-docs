# Schedules

A schedule in OpCon is a group of jobs making up a business process. Schedules must be created before any jobs
can be defined. Once schedules are defined, jobs can be created in Job
Master Maintenance. For information on jobs, refer to the
[Jobs](./jobs.md) section. There is no limit to the number
of schedules or to the number of jobs that can be defined. A user must
be a member of a role with at least one of the following privileges to
define schedules:

- All Administrative Functions
- All Function Privileges
- Maintain Schedules

:::note
An 'Active Schedule' (mentioned frequently in this online help) is a schedule that has started and is In Process or placed On Hold.
:::

## Schedule Definition

### Schedule Details

The following information applies to basic information regarding
schedules:

- **Schedule Name**: Defines the name for the schedule. It is
    suggested the schedule name be descriptive of the jobs on that
    schedule.
- **Documentation**: Provides an area for descriptions, explanations,
    and notes that can be updated for the defined schedule. For
    information on inserting hyperlinks into the Documentation area,
    refer to [Entering and Opening Hyperlinks in the Documentation Frame](../Files/UI/Enterprise-Manager/Entering-and-Opening-Hyperlinks.md)
     in the **Enterprise Manager** online help.
- **Start Time**: Provides the start time for the schedule and is based on a 24-hour clock. The popular choice is to leave this start time at midnight because all jobs on the schedule have a start time that is offset from the schedule start time. At the appointed time, the SAM will start examining the schedule to determine whether any jobs qualify to start.
  :::note
  For a subschedule, the SAM does not use the Start Time value to control the subschedule's actual start time. When the Container job calling the subschedule qualifies to start, the SAM force-starts the subschedule. When the Start Time value is defined for a subschedule, SAM only uses the value for calculating the start times of the jobs on the subschedule. This provides a way for the jobs on the subschedule to extend beyond the 24-hour period of the Parent schedule.
  :::
- **Workdays per Week**: Defines the schedule's working days. Every day that has a checkbox selected is considered a workday.
  :::note
  The Workdays per Week setting directly affects all job and schedule frequencies. Refer to Job and Schedule Frequencies.
  :::
- **Additional Holidays**: Defines the name of a calendar that contain
    the specific 'Additional Holidays' to apply to the schedule. The
    default name is <None\> (HC: Only).
- **Use Master Holiday**: Determines if Master Holiday Calendar dates
    will be applied to the schedule's Holiday Calendar. For additional
    information, refer to [Master Holiday Calendar](./calendars.md#master).
  - When turning this setting off, the graphical interface will
        present the option to add the master holiday dates to the
        schedule's holiday calendar before disassociating the calendar
        from the schedule.
- **Multi-Instance**: Determines if multiple instances of the same
    schedule (business process) are allowed. When turning this setting
    on, the graphical interface validates that there are no
    cross-schedule dependencies to this schedule (cross-schedule
    dependencies on Multi-Instance Schedule's jobs are invalid).
- **SubSchedule**: Determines if copies of the schedule are allowed to
    be contained inside other schedules in
    OpCon. If this setting is turned on, the
    schedule must be called by a Container job on any other schedule.
    For additional information, refer to [Container Job Type](../job-types/container.md).
  - When this setting is off, the graphical interface validates that
        the schedule is not being called by a Container job as a
        subschedule. If the schedule is defined as a subschedule on one
        or more Container jobs, the schedule must remain configured as a
        subschedule.
  - When turning this setting on, the graphical interface validates
        that there are no cross-schedule dependencies to this schedule
        (cross-schedule dependencies on multi-instance schedule's jobs
        are invalid).
- **Conflict with Other Days**: Determines if a schedule is allowed to run if the same schedule is still running on a different day.
  :::note
  OpCon does not support the Conflict with Other Days setting for subschedules.
  :::

### Schedule Maintenance

Schedule Maintenance settings are used for enabling
OpCon to build and/or delete
OpCon schedules automatically. The "Hour of
each day SAM should detect schedules to build" determines when the Auto
Build and Auto Delete run. Refer to [Time Settings](../administration/server-options.md#time-settings).

#### Build Settings

- **Auto Build**: Indicates if OpCon should
    automatically build the schedule. When this setting is on, the
    graphical interfaces provide fields to set the number of days in
    advance to start the build and the number of days to build from that
    point forward.
  - If auto build is enabled, the log file is named Auto_Build\_<Schedule Date\>\_<Schedule Name\>.log in the <Output Directory\>\\SAM\\Log\\SMASchedMan\\ directory on the SAM application server.
- **Overwrite Existing**: When the auto build executes and the
    schedule is found on the target date, this setting indicates if the
    schedule should be overwritten. When this setting is on,
    OpCon overwrites the schedule if it is in
    a Completed status. If the schedule is In Process, it will not be overwritten.
- **Build On Hold**: Indicates if the schedule should be built with a
    status of On Hold. The SAM will not process the     schedule until it is released manually or through an
    OpCon event.
- **Auto Build Time**: Defines the clock time to build the schedule.
    The default value of 00:00 will build at the time indicated by the
    Server Option setting for "Hour of each day SAM should detect
    Schedules to build". To define a specific time for this schedule to
    build, change the value from 00:00 to a time that would be later
    than the Server Option for SAM's build time.

#### Delete Settings

- **Auto Delete**: Indicates if OpCon
    should automatically delete the schedule. When this setting is on,
    the graphical interfaces provide a field to set the number of days
    in the past to delete the schedule.
  - If a Schedule has a status of On Hold and         has never been released, it will be deleted in the automatic
        delete process. If a schedule is On Hold         after previously being released, it will **not** be deleted
        in the automatic delete process.
  - If auto delete is enabled, the log file is named Auto_Delete\_<Schedule Date\>\_<Schedule Name\>.log in the <Output Directory\>\\SAM\\Log\\SMASchedMan\\ directory on the SAM application server.

### Instance Definition

Instance Definition contains options for defining properties for one or
more instances of the schedule and options for defining properties and
exceptions for one or more named instances of the schedule. Instance
Definitions is enabled for all schedules except the AdHoc schedule. The
following options are provided:

**Build an instance for each machine in Machine Group**: For Multi-Instance schedules, defines the Machine Group containing the machines the schedule should build for. One instance of the schedule will build for each machine in the group. To make use of the schedule instance machine, configure the jobs in the schedule to "Use Schedule Instance Machine". For more information, refer to [Using the Same Schedule Across Multiple Machines](../automation-concepts/machine-groups.md#using-the-same-schedule-across-multiple-machine).

**Build an instance for each set of Properties**: Defines the predefined
properties for each instance of the schedule. To make use of the
Schedule Instance Properties, use tokens with the jobs to reference the
Schedule Instance Properties (e.g., \[\[**SI**.StoreID\]\]). For more information, refer to [Using Properties for Automation](using-properties.md) and [Schedule Instance Property Name Syntax](using-properties.md#schedule-instance-property-name-syntax).

- The value of the first property for each instance is appended to the
    schedule name when it is built. A schedule's name in Operations
    cannot exceed 255 characters; therefore, the value for the first
    property should be short and informative.
- If the schedule is a multi-instance schedule, multiple strings of
    properties may be defined. By default, each string will be used to
    build an instance of the schedule.
- If only a single instance definition of properties were predefined
    in the Master, they will be selected for merging with any
    event-defined properties.
- If multiple instances of properties are defined in the Master, the
    first property defined in the event will be matched with the first
    property in each instance set.
  - If a match is found, that instance set of properties will be
        selected for merging with the event-defined properties.
  - If no match is found, the properties defined in the event will
        be used alone as a new instance of the schedule or job.
- Now, the user only has to define the properties that differ in value
    from those defined in the Master.

:::tip Example
**Scenario**: In the Schedule Master (Instance Definition tab), Instance Definitions are defined for a schedule named CloseRegisters.

- StoreID=Store23;Path="C:\Program Files\My Program\Long Path Name";ParentCompany=Smiths
- StoreID=Store24;Path="D:\Program Files\My Program\Long Path Name";ParentCompany=Smiths
- StoreID=Store25;Path="C:\Program Files (x86)\My Program\Long Path Name";ParentCompany=Smiths

When the schedule is built, the first property value for each instance (e.g., Store23, Store24, Store25) is appended to the schedule name in Operations.

- CloseRegisters_Store23
- CloseRegisters_Store24
- CloseRegisters_Store25
:::

**Build a named schedule instance**: For Multi-Instance schedules, defines each named instance of the schedule and the associated predefined properties and/or exceptions. For more information, refer to [Named Schedule Instances](../automation-concepts/named-schedule-instances.md).

### Schedule Frequency

Schedule Frequencies specify the days on which all jobs on the schedule
should run. Additions, deletions, and modifications of a schedule
frequency affect all jobs on a schedule. For additional information,
refer to [Job and Schedule Frequencies](../automation-concepts/frequencies.md).

- **Frequency Name**: Defines the name of the schedule frequency. For
    additional information about adding, editing, or deleting Schedule
    Frequencies, refer to [Schedule Frequency](../Files/UI/Enterprise-Manager/Schedule-Frequency.md)
     in the **Enterprise Manager** online help.
- **Priority**: Indicates the priority of a frequency when the
    schedule has two or more frequencies that qualify for the same day.
    When a schedule is built, OpCon uses the
    highest priority frequency for the jobs on the schedule. Because
    jobs can have different components associated with each frequency,
    it is important that the correct frequency qualifies. For
    information on job components, refer to [Job Automation Components](../job-components/overview.md). The
    frequencies should be prioritized so the frequency that qualifies
    the least often has the highest priority, and the frequency that
    qualifies the most often has the lowest priority.
- **Frequency Definition**: Defines the days the jobs on the schedule
    should run. For detailed information on frequency definitions, refer
    to [Frequency Definition](../automation-concepts/frequencies.md#frequency-definition).

:::tip Example

**Scenario**: A schedule is defined with two frequencies because on the last day of the month, the jobs have additional components (dependencies and events) that must be considered. The Daily frequency qualifies for every day. The Monthly frequency only qualifies on the last working day of the Month. The administrator sets the Monthly frequency to a higher priority than the Daily frequency to ensure the Monthly related job components are considered.

**Result**: Because the Daily and Monthly frequencies resolve to the same day, at the end of the month OpCon builds the schedule and its jobs with the Monthly frequency and related job components.

If the administrator had set the Daily frequency to the higher priority, the Monthly frequency and related job components would have been ignored.
:::

### Schedule Completion Events

Schedule Completion Events are OpCon events
with user-specified parameters that can be executed based on a
schedule's completion. Any number of OpCon
events may be defined for each schedule. For a list and definition for
all supported OpCon events, refer to the
[OpCon Events](../events/introduction.md) online help.

:::note
For a user to add or modify Schedule Completion Events in Daily Schedule maintenance, the user must have one of the following function privileges: Maintain Schedules, All Function Privileges, or Modify Jobs in Daily Schedules.
:::

### Schedule Deployment Information

Deployment Information (Deploy Info) contains a read-only view of
information populated by OpCon Deploy, a product used to centralize and
manage schedule versioning and deployment across multiple OpCon
environments.

:::note
The Deploy Info tab will display N/A when the schedule has not been deployed or updated by the OpCon Deploy product.
:::

The following information is shown based on what is defined by OpCon
Deploy:

- **Version**: Defines the version of the master schedule deployed
    into OpCon via OpCon Deploy.
- **Package**: Defines a grouping of schedules deployed together.
- **Description**: Defines a description of the deploy action.
- **Record Id**: Defines the ID of the record deployed.
- **Deployed**: Defines the OpCon Deploy user that triggered the
    deploy action and the date and time the schedule was deployed.

## Schedule History

Schedule History contains a schedule's history and includes all
retained status changes of the selected schedule. For information
maintaining history records, refer to [Using History Management](../Files/UI/Enterprise-Manager/Using-History-Management.md)
 in the **Enterprise Manager** online help.

- Viewing Options:
  - **View Detailed History**: If this option is enabled, all
        detailed history for the selected schedule including status
        change explanations and LSAM Feedback will display.
  - **View Archived History**: If this option is enabled, all
        archived history for the selected schedule will display.
- Display Information:
  - **Schedule Date**: Shows the date of the daily schedule for
        which the schedule processed.
  - **Start Time**: Shows the actual date and time the schedule
        started in a 24-hour clock time format (00:00).
  - **End Time**: Shows the date and time the schedule ended in a
        24-hour clock time format (00:00).
  - **RunTime (min)**: Shows the amount of time the schedule ran in
        minutes.
  - **Note**: Shows information including status change,
        explanation, user, and date-time stamp of the manual change.

### SMA Maintained Schedules

#### AdHoc Schedule

The AdHoc schedule allows the execution of jobs that run outside normal
schedule activity. The AdHoc schedule behaves the same as any other
schedule, but never requires a Build process. The SAM automatically puts
the AdHoc schedule in the Daily tables if any job on the schedule is
requested through a $JOB:ADD, $JOB:TRACK, or $JOB:QUEUE event type.
When the AdHoc schedule is in the Daily tables, it remains open for that
day until midnight. If jobs are still active on the AdHoc schedule at
midnight, the schedule closes after all jobs are completed.

:::note
If renamed, the AdHoc schedule will always display first and continues to work as designed.
:::

##### SMA_SKD Jobs on the AdHoc Schedule

The SMA_SKD jobs on the AdHoc schedule store the
OpCon events to process when automatic
schedule build, check, and delete processes fail. This provides a method
for notification when automatic schedule maintenance processes fail. By
connecting the process this way, all of the notifications available for
jobs are made available to the schedule build, check, and delete
processes. The SAM will not automatically call the jobs to run, but it
will use the Events from the jobs to send notifications.

:::note
The Enterprise Manager Build, Check, and Delete processes give interactive feedback and do not use the SMA_SKD jobs for notification.
:::

The SMA_SKD jobs have the following names:

- SMA_SKD_BUILD: The SAM uses this job for all automatic schedule
    build failure events.
- SMA_SKD_CHECK: The SAM uses this job for all automatic schedule
    check failure events.
- SMA_SKD_DELETE: The SAM uses this job for all automatic schedule
    delete failure events.

:::note
The SMA_SKD jobs can be imported from the AdHoc.mdb file or they can be created manually. To import the jobs, refer to [Import the OpCon Maintenance and Report Jobs](../installation/configuration.md#Import_the_OpCon_Maintenance) in the **OpCon Installation** online help for procedures on importing the AdHoc schedule; otherwise, use the information below to create the jobs manually.
:::

The jobs are each configured with an On Request type frequency named
"SMAOnRequest". A date in the past is defined so the jobs will not
build unless specifically called by some other user-defined process.

- Each job has one event defined for Failure as an example of what to
    configure. Upon "Failed" for each job the event is defined as:
  - SMA_SKD_BUILD: $NOTIFY:EMAIL,\[\[SMAAdminEmail\]\],,,Schedule         Build Failure,
  - SMA_SKD_CHECK: $NOTIFY:EMAIL,\[\[SMAAdminEmail\]\],,,Schedule         Check Failure,
  - SMA_SKD_DELETE: $NOTIFY:EMAIL,\[\[SMAAdminEmail\]\],,,Schedule         Delete Failure,
    - Customers should modify the value of the Global Property
            named \[SMAAdminEmail\] to contain the email address or             semicolon separated list of email addresses that should
            receive the notification.
    - The CC and BCC fields are blank by default.
    - The Message is left blank because the SAM automatically
            inserts the log message in this position.
    - There are no attachments.
- You can also use Event Notification to set up notification for the
    jobs. Set up a Schedule notification group that includes the AdHoc
    schedule then configure notification triggers for Job Failed or Job
    Finished OK.

### SMAUtility Schedule

The SMAUtility schedule is imported during installation and contains
several jobs required for maintenance processes. This section describes
the jobs imported with the SMAUtility schedule.

#### Recommendations and Requirements

- SMA Technologies recommends using the     SMAUtility schedule for most jobs involved in the maintenance of
    OpCon.
- A maintenance job must be added to a schedule to be built in a
    Released state at regular intervals depending on the type of
    maintenance.
- Specify a time during periods of low job processing. Although the
    utilities and backups do not require exclusive access to the
    database, scheduling the utilities and backups during a time of low
    processing lessens the jobs' affect on overall system performance.
- It is important for this schedule to have a consistent actual start
    and finish time to avoid conflicts and failures.
- Ensure the proper amount of storage (e.g., disk) space is available.

#### Global Properties Used by the SMAUtility Schedule

When the SMAUtility schedule is installed, several Global Property
definitions are imported to supply the values to the tokens on the
command lines of the jobs.

- **SMADBCredentials**: This property defines the User Name and
    Password for logging in to Audit and History cleanup utilities. SMA Technologies recommends updating the default value to a user other than ocadm.
  - Default Value: **-uocadm -w\*\*\*\*\*\*\*\*\*\*\*\***
- **SMAOpConDataPath**: This property defines the path to the <Configuration Directory\>, which is the parent directory for the
    OpCon data folder.
  - Default Value: **C:\\ProgramData\\OpConxps**
- **SMAOpConOutputPath**: This property defines the path to the <Output Directory\>, which is the parent directory for the
    OpCon output folder.
  - Default Value: **C:\\ProgramData\\OpConxps**
- **SMAOpConPath**: This property defines the path of the main
    OpCon folder.
  - Default Value: **C:\\Program Files\\OpConxps**
- **UNIXLSAMPath**: This property defines the path to the
    LSAM binary directory for UNIX LSAMs.     -   Default Value: **/usr/local/lsam/bin/**
- **DB_SERVER_NAME**: This property defines the
    OpCon database server name as used by the
    SMAUtility schedule jobs.
  - Default Value: **<server name specified during installation\>**
- **SqlMaintUser**: This property defines the SQL maintenance user as
    used by the SMAUtility schedule jobs.
  - Default Value: **<blank\>**
- **SqlMaintPassword**: This property defines the SQL maintenance user
    password as used by the SMAUtility schedule jobs. It is recommended
    that the user encrypt this password.
  - Default Value: **<blank\>**
- **DatabaseName**: This property defines the
    OpCon database name as used by the
    SMAUtility schedule jobs.
  - Default Value: **<database name specified during
        installation\>**
- **PathToFullBackupFile**: This property defines the path to the full
    OpCon database backup file as used by the
    SMAUtility schedule jobs.
  - Default Value: **C:\\Program Files\\Microsoft SQL
        Server\\MSSQL14.MSSQLSERVER\\MSSQL\\Backup\\SMADB_Backup.bak**
- **PathToTranLogBackupFile**: This property defines the path to the
    OpCon database transaction log backup
    file as used by the SMAUtility schedule jobs.
  - Default Value: **C:\\Program Files\\Microsoft SQL
        Server\\MSSQL14.MSSQLSERVER\\MSSQL\\Backup\\SMATLog_Backup.bak**

:::note
The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../file-locations.md) in this online help.
:::

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../file-locations.md) in this online help.
:::

#### SMAUtility Schedule Job Descriptions

- [Audit History Purge](#Audit)
- [Job History Archive](#Job)
- [Job History Purge](#Job2)
- [Report File Cleanup](#Report)
- [RSJBackup_Prune](#RSJBacku)
- [SMA Database Backup](#SMA2)
- [SMA Database Maintenance](#SMA5)
- [SMA Database Transaction Log Backup](#SMA3)
- [SMA Index Defragmentation (SMA DBCC Index Defrag)](#SMA4)
- [SMA Job Average](#SMA)
- [Utility Folder Log Cleanup](#Utility)

##### Audit History Purge

The default configuration of the Audit History Purge job purges all
audit history older than one year (365 days). The job is configured to
run every day after the Job History Purge job. If any of these settings
are not best for the environment, modify the settings based on the
documentation (refer to [Audit History Cleanup](https://help.smatechnologies.com/opcon/core/latest/Utilities/Command-line-Utilities/Audit-History-Cleanup.md)
 in the **Utilities** online help).

- Job Details
  - Command Line:\
        **"\[\[SMAOpConPath\]\]\\Utilities\\Audit.exe"         \[\[SMADBCredentials\]\] -d365 -p**
- Frequency
  - Frequency Name: **SMASun-SatO7**
  - Frequency Details: (When to Schedule) **All Weeks**, (Day of the
        Week) **Every Day**, (Day Type) **Any**
  - Job Build Status: **Released**
  - Remaining fields: Default Values
- Job Dependency
  - Type: **After**
  - Job: **Job History Purge**
- Job Dependency
  - Type: **Conflict**
  - Job: **SMA Database Transaction Log Backup**

##### Job History Archive

The default configuration of the Job History Archive job archives all
job history older than 6 months (180 days), while keeping a minimum of
12 records in history per job. The job is configured to run every day
after the SMA Database Backup job. If any of these settings are not best
for the environment, modify the settings based on the documentation
(refer to [Job History Cleanup](https://help.smatechnologies.com/opcon/core/latest/Utilities/Command-line-Utilities/Job-History-Cleanup.md)
 in the **Utilities** online help).

- Job Details
  - Command Line:\
        **"\[\[SMAOpConPath\]\]\\Utilities\\History.exe"         \[\[SMADBCredentials\]\] -d180 -m12 -h**
- Frequency
  - Frequency Name: **SMASun-SatO7**
  - Frequency Details: (When to Schedule) **All Weeks**, (Day of the
        Week) **Every Day**, (Day Type) **Any**
  - Job Build Status: **Released**
  - Remaining fields: Default Values
- Job Dependency
  - Type: **After**
  - Job: **SMA Database Backup**
- Job Dependency
  - Type: **Conflict**
  - Job: **SMA Database Transaction Log Backup**

##### Job History Purge

The default configuration of the Job History Purge job purges all job
history older than 2 years (730 days), while keeping a minimum of 24
records in history per job. The job is configured to run every day after
the Job History Archive job. If any of these settings are not best for
the environment, modify the settings based on the documentation (refer
to [Job History Cleanup](https://help.smatechnologies.com/opcon/core/latest/Utilities/Command-line-Utilities/Job-History-Cleanup.md)
 in the **Utilities** online help).

:::note
If an alternate database backup is in use (instead of the SMA Database Backup job), SMA Technologies recommends configuring the History Purge job to occur after the database has been backed up.
:::

- Job Details
  - Command Line:\
        **"\[\[SMAOpConPath\]\]\\Utilities\\History.exe"         \[\[SMADBCredentials\]\] -d730 -m24 -p**
- Frequency
  - Frequency Name: **SMASun-SatO7**
  - Frequency Details: (When to Schedule) **All Weeks**, (Day of the
        Week) **Every Day**, (Day Type) **Any**
  - Job Build Status: **Released**
  - Remaining fields: Default Values
- Job Dependency
  - Type: **After**
  - Job: **Job History Archive**
- Job Dependency
  - Type: **Conflict**
  - Job: **SMA Database Transaction Log Backup**

##### Report File Cleanup

The default configuration of the Report File Cleanup job deletes all
files in the <Output Directory\>\\SAM\\Log\\Reports\\ folder that are
older than 10 days. The job is configured to run every day, but it has a
Job Build Status of "Do Not Schedule". If any of these settings are
not best for the environment, modify the settings based on the
documentation for the SMADirectory utility. For information on the
command-line syntax, refer to
[SMADirectory](https://help.smatechnologies.com/opcon/core/latest/Utilities/Command-line-Utilities/SMADirectory.md)
 in the **Utilities** online help.

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../file-locations.md) in this online help.
:::

- Job Details
  - Command Line:\
        **"\[\[SMAOpConPath\]\]\\MSLSAM\\SMADirectory.exe" -d         \[\[SMAOpConOutputPath\]\]\\SAM\\Log\\Reports -c 10D -e ALL -B**
  - Working Directory:\
        **"\[\[SMAOpConPath\]\]\\MSLSAM"** -   Frequency
  - Frequency Name: **SMASun-SatO7**
  - Frequency Details: (When to Schedule) **All Weeks**, (Day of the
        Week) **Every Day**, (Day Type) **Any**
  - Job Build Status: **Do Not Schedule**
  - Remaining fields: Default Values

##### RSJBackup_Prune

The default configuration of the RSJBackup_Prune job places all reports
older than 7 days in a backup tar file and deletes all backup tar files
older than 30 days on SYM000. The job is configured to run with a
GID/UID of 0/0 and has a frequency for every day. The Job Build Status
is set to "Do Not Schedule" because it is intended only for
OpCon customers who run Episys and RSJ. The
job will not build or run until it is set to build "On Hold" or in a
"Released" status. Additionally, this job should be configured to run
before or after GOODNIGHT then a copy of the job should be set up for
all SYMS running RSJ.

:::note
This job is set to run at 15 minutes after Midnight. Do not run this job with a Midnight start time as it is possible the job could run a little bit before midnight and will error because it has already run for that day.
:::

- Job Details
  - Start Image:
        **/ops/bin/backup_and_prune SYM000 7 30**
- Frequency
  - Frequency Name: **SMASun-SatO7**
  - Frequency Details: (When to Schedule) **All Weeks**, (Day of the
        Week) **Every Day**,(Day Type) **Any**
  - Start Offset: **00:15** (Absolute)
  - Job Build Status: **Do Not Schedule**
  - Remaining fields: Default Values

##### SMA Database Backup

SMA Technologies provides an embedded SQL script for automating the SMA Database Backup job which uses SQL authentication
and is configured to run every day after the SMA Database Maintenance,
but it has a Job Build Status of "Do Not Schedule." To activate this
job, change the Job Build Status to On Hold or Released}.

###### Job Details and Automation Information

- Job Details
  - Job Action:\
        **Embedded Script**
  - Script:\
        **SMADB_Backup**
  - Runner:\
        **SQLScript**
  - Run Command Template:\
        **sqlcmd -i $FILE $ ARGUMENTS**
  - Arguments:\
        **-S\[\[DB_SERVER_NAME\]\] -U\[\[SqlMaintUser\]\]         -P\[\[SqlMaintPassword\]\] -h -1 -b**
  - Environment Variables:
- Frequency
  - Frequency Name: **SMASun-SatO7**
  - Frequency Details: (When to Schedule) **All Weeks**, (Day of the
        Week) **Every Day**, (Day Type) **Any**
  - Job Build Status: **Do Not Schedule**
  - Remaining fields: Default Values
- Job Dependency
  - Type: **After**
  - Job: **SMA Database Maintenance**

##### SMA Database Maintenance

SMA Technologies provides an embedded SQL script for automating the SMA Database Maintenance job which uses SQL
authentication and has a Job Build Status of "Do Not Schedule." To
activate this job, change the Job Build Status to On Hold or Released.

- Job Details
  - Job Action:\
        **Embedded Script**
  - Script:\
        **SMADB_DBCCMaint**
  - Runner:\
        **SQLScript**
  - Run Command Template:\
        **sqlcmd -i $FILE $ ARGUMENTS**
  - Arguments:\
        **-S\[\[DB_SERVER_NAME\]\] -U\[\[SqlMaintUser\]\]         -P\[\[SqlMaintPassword\]\] -h -1 -b**
  - Environment Variables:
- Frequency
  - Frequency Name: **SMASun-SatO7**
  - Frequency Details: (When to Schedule) **All Weeks**, (Day of the
        Week) **Every Day**, (Day Type) **Any**
  - Job Build Status: **Do Not Schedule**
  - Remaining fields: Default Values

##### SMA Database Transaction Log Backup

SMA Technologies provides an embedded SQL script for automating the SMA Database Transaction Log Backup job which uses
SQL authentication and is configured to run every day after the SMA
Database Backup and recur every two hours; however, it has a Job Build
Status of "Do Not Schedule". To activate this job, change the Job
Build Status to On Hold or Released.

- Job Details
  - Job Action:\
        **Embedded Script**
  - Script:\
        **SMADB_TLog_Backup**
  - Runner:\
        **SQLScript**
  - Run Command Template:\
        **sqlcmd -i $FILE $ ARGUMENTS**
  - Arguments:\
        **-S\[\[DB_SERVER_NAME\]\] -U\[\[SqlMaintUser\]\]         -P\[\[SqlMaintPassword\]\] -h -1 -b**
  - Environment Variables:
- Frequency
  - Frequency Name: **SMASun-SatO7**
  - Frequency Details: (When to Schedule) **All Weeks**, (Day of the
        Week) **Every Day**, (Day Type) **Any**
  - Job Build Status: **Do Not Schedule**
  - When Job Finishes OK: **Run Again** (marked)
  - Minutes from Start to Start: **120**
  - Number of Runs (marked): **12**
  - Remaining fields: Default Values
- Job Dependency
  - Type: **After**
  - Job: **SMA Database Backup**
- Job Dependency
  - Type: **Conflict**
  - Job: **Audit History Purge**
- Job Dependency
  - Type: **Conflict**
  - Job: **Job History Archive**
- Job Dependency
  - Type: **Conflict**
  - Job: **Job History Purge**

##### SMA Index Defragmentation (SMA DBCC Index Defrag)

SMA Technologies provides an embedded SQL script for automating the SMA Index Defragmentation job which uses SQL
authentication and is configured to run every Sunday at 01:00 after SMA
Job Average.

- Job Details
  - Job Action:\
        **Embedded Script**
  - Script:\
        **SMA_IndexDefragmentation or SMA_DBCCIndexDefrag**
  - Runner:\
        **SQLScript**
  - Run Command Template:\
        **sqlcmd -i $FILE $ ARGUMENTS**
  - Arguments:\
        **-S\[\[DB_SERVER_NAME\]\] -U\[\[SqlMaintUser\]\]         -P\[\[SqlMaintPassword\]\] -b**
  - Environment Variables:
- Frequency
  - Frequency Name: **SMAEverySun**
  - Frequency Details: (When to Schedule) **All Weeks**, (Day of the
        Week) **Sunday**, (Day Type) **Any**.
  - Job Build Status: **Released**
  - Start Offset: **01:00**
  - Remaining fields: Default Values
- Job Dependency
  - Type: **After**
  - Job: **SMA Job Average**

##### SMA Job Average

The SMA Job Average job is included in the SMAUtility schedule to
automate running the SMA_JOBAVG stored procedure. Refer to
[SMA_JOBAVG](https://help.smatechnologies.com/opcon/core/latest/Database-Information/OpCon-Data-Maintenance.md#SMA_JOBA)
 in the **Database Information** online help. Automation of this
stored procedure is required to provide more accurate data for
reporting, and for the Gantt chart and the Plan display. The SMA Job
Average job is configured to run every day after the Audit History Purge
job. If desired, edit the command file to specify any optional switches.

:::caution
You should disable this job if you chose to have SAM calculate Job Averages. For more information, refer to [SAM Calculates Job Averages](../administration/server-options.md#SAM_Calculates_Job_Averages). To disable the job, simply set the Job Build Status to Disable Frequency.
:::

- Job Details
  - Command Line:\
        **sqlmcd -S\[\[DB_SERVER_NAME\]\] -U\[\[SqlMaintUser\]\]         -P\[\[SqlMAintPassword\]\]
        -Q"exec\[\[DatabaseName\]\].dbo.SMA_JOBAVG"** -   Frequency
  - Frequency Name: **SMASun-SatO7**
  - Frequency Details: (When to Schedule) **All Weeks**, (Day of the
        Week) **Every Day**, (Day Type) **Any**
  - Job Build Status: **Released**
  - Remaining fields: Default Values
- Job Dependency
  - Type: **After**
  - Job: **Audit History Purge**

##### Utility Folder Log Cleanup

The default configuration of the Utility Folder Log Cleanup job deletes
log files in the <Output Directory\\OpConxps\\Utilities\\ folder that
are older than 10 days. The job is configured to run every day. If the
settings are not best for the environment, modify the settings based on
the documentation for the SMADirectory utility. For information on the
command-line syntax, refer to
[SMADirectory](https://help.smatechnologies.com/opcon/core/latest/Utilities/Command-line-Utilities/SMADirectory.md)
 in the **Utilities** online help.

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../file-locations.md) in this online help.
:::

- Job Details
  - Command Line:\
        **"\[\[SMAOpConPath\]\]\\MSLSAM\\SMADirectory.exe" -d         \[\[SMAOpConOutputPath\]\]\\Utilities -e .log -c 10D -B**
  - Working Directory:\
        **"\[\[SMAOpConPath\]\]\\MSLSAM"** -   Frequency
  - Frequency Name: **SMASun-SatO7**
  - Frequency Details: (When to Schedule) **All Weeks**, (Day of the
        Week) **Every Day**, (Day Type) **Any**
  - Job Build Status: **Released**
  - Remaining fields: **Default Values**

### Report Generator Schedule

The Report Generator Schedule contains template jobs for automating
every predefined report SMA Technologies distributes with OpCon. Each job uses
SMABIRTRptGen.exe and passes in the appropriate parameters for each
report. For more information, refer to [BIRT Report Generator](../utilities/Command-line-Utilities/BIRT-Report-Generator.md)
 in the **Utilities** online help.

SMA Technologies recommends importing the Report Generator schedule during installation. If the schedule was not imported
during installation, refer to [Import the OpCon Maintenance and Report Jobs](../installation/configuration.md#Import_the_OpCon_Maintenance)
 in the **OpCon Installation** online
help.

This section describes the jobs imported with the Report Generator
schedule.

#### Global Properties Used by the Report Generator Schedule

When the Report Generator schedule is imported, one Global Property
definition is imported to supply the value to the token on the command
lines of the jobs.

- **SMAOpConPath**: This property defines the directory in which the
    OpCon Scripts directory exists on     the SAM application server.
  - Default Value: **C:\\Program Files\\OpConxps**

#### Report Generator Schedule Jobs

- Each report generator job is named with the same name as its
    associated Report title with the OpCon
    internal job number appended.
- By default, none of the jobs have frequencies or any other job
    components associated with them.
- By default, reports that allow a Department filter will include all
    departments.
- By default, all reports are created as PDF files.

To use the Report Generator jobs:

1. For Schedule- and Job-related reports, copy the desired Report
    Generator job to the schedule against which the report should run.
2. Add a frequency and any other desired job components to the desired
    Report Generator job.
