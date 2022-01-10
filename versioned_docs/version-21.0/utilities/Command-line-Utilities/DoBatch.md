# DoBatch

Command files containing the executable DoBatch.exe can automatically
build, check, delete, or forecast OpCon
schedules. These DoBatch command files are scheduled through
OpCon with Windows jobs.
OpCon supports automatic schedule maintenance
on the Administration \> Schedules screen; nevertheless, SMA Technologies also supports DoBatch for backwards
compatibility.

The directory <Target Directory\>\\OpConxps\\OpConxps\\ contains the
DoBatch.exe program. To keep log files together, SMA Technologies expects DoBatch to run on the SAM
application server.

Creating a DoBatch Command File

To create a DoBatch command file:

1. Open an *ASCII text editor* (e.g., Notepad).
2. Enter the appropriate command to navigate to the <Configuration
    Directory\>\\Scripts directory on the OpCon server. The following
    example shows the default location:
3. Add the appropriate DoBatch command(s) according to the objective
    (e.g., build, check, delete, and forecast schedules). For
    information, refer to the next section about commands and syntax.
4. Save with file extension **.cmd** in the <Configuration
    Directory\>**\\Scripts\\** directory.
5. Schedule the command file with a Windows job in the Enterprise
    Manager (EM).

## Syntax

:::note
The wrapping of the syntax in this document does not indicate the location of a carriage return; the ↵ indicates the location of a carriage return.
:::

### Building

To build schedules automatically, create a command file containing the
DoBatch program and the BUILD parameter, using the following syntax:

DoBatch.exe \[DSN\],UID,PWD,logfile,BUILD\[HLD\],StartDate,EndDate,
\[Overwrite?\],ScheduleName(s) +CSV+ +JOBID+\[\[$JOBID\]\] ↵

:::tip Example
The following shows how to create a command file to build schedules SCHED1 and SCHED2 for the next seven days, and overwrite any existing schedules:

```shell
cd "c:\program files\opconxps\opconxps"
DoBatch.exe,batchuser,password,build.log,BUILD,1,7,y,SCHED1,SCHED2
```

:::

### Checking

To check schedules automatically, create a command file containing the
DoBatch program and the CHECK parameter, using the following syntax:

DoBatch.exe
\[DSN\],UID,PWD,logfile,CHECK\[+\],StartDate,EndDate,ScheduleName(s) +JOBID+\[\[$JOBID\]\] ↵

:::tip Example
The following shows how to create a command file to check all schedules for the next day:

```shell
cd "c:\program files\opconxps\opconxps"
DoBatch.exe,batchuser,password,check.log,CHECK,1,1,
```

:::

The CHECK parameter will only check the named schedule. This parameter
does not check the subschedules that may be involved with the schedule.

### Deleting

To delete schedules automatically, create a command file containing the
DoBatch program and the DELETE parameter, using the following syntax:

DoBatch.exe \[DSN\],UID,PWD,logfile,DELETE,StartDate,EndDate,
ScheduleName(s) +JOBID+\[\[$JOBID\]\] ↵

:::tip Example
The following shows how to create a command file to delete all schedules for the past seven days:

```shell
cd "c:\program files\opconxps\opconxps"
DoBatch.exe,batchuser,password,delete.log,DELETE,-7,-1,
```

:::

### Forecasting

To forecast schedules automatically, create a command file containing
the DoBatch program and FORECAST parameter, using the following syntax:

DoBatch.exe \[DSN\],UID,PWD,logfile,FORECAST,StartDate,EndDate,
ScheduleName(s) +CSV+ +JOBID+\[\[$JOBID\]\] ↵

:::tip Example
The following example shows how to create a command file to forecast the schedule SCHED1 for the next seven days:

```shell
cd "c:\program files\opconxps\opconxps"
DoBatch.exe,batchuser,password,forecast.log,FORECAST,1,7,SCHED1 +CSV+
``` 

DoBatch places the comma-delimited file SCHED1_Forecast.csv in the <Output Directory\>\SAM\Log\SMASchedMan\ directory on the DoBatch machine.
:::

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

## Parameters

This section lists the DoBatch parameters and their descriptions.
Information regarding *Build*, *Check*, *Delete*, and *Forecast* for
each parameter is also provided. The letter '**O**' means optional,
'**R**' means required, and '**NA**' means does not apply.

- **DSN**: (Legacy) DSN should be left blank as DoBatch only executes
    using the database connection defined on the OpCon Server with the
    SMA Connection Configuration tool. Leave this parameter empty to
    support the legacy syntax.
- **UID**: (Required) A valid, case-sensitive OpCon User Login ID.
- **PWD**: (Required) The case-sensitive password corresponding to the
    User Login ID above.
- **Logfile**: (Required) The location where DoBatch creates a
    detailed log file of its activity.
  - If a path is specified with the filename, the file is created in
        the directory specified in the path.
  - If only a file name is specified, the log file is created in the <Output Directory\>\\SAM\\Log\\SMASchedMan\\ directory:
  - The DoBatch.log and the logfile argument are unrelated.
- **Command** (Required): Indicates the command for DoBatch to
    process. Commands include:
- **BUILD\[HLD\]**: Commands the program to build a schedule.     -   If BUILD is specified, the schedule(s) is built in a released
        state. The schedule(s) starts processing as soon as the start
        time arrives.
  - If BUILDHLD is specified, the schedule(s) is built on hold.
  - This parameter must be uppercase.
- **CHECK\[+\]** : Commands the program to check the schedule(s). The     CHECK parameter will only check the named schedule. This parameter
    does not check the subschedules that may be involved with the
    schedule.
  - If CHECK is used for the command, the process runs without
        checking any circular dependencies. SMA Technologies advises this command if the
        process is being used frequently.
  - If CHECK+ is used, circular dependencies are included in the
        process.
  - This parameter must be uppercase.
  - If a circular dependency is detected, the results are written to
        the check.log. If this happens:
  - Print the log or write down the jobs that are listed.
  - Refer to [Checking Daily         Schedules](../../Files/UI/Enterprise-Manager/Checking-Daily-Schedules.md)
         in the **Enterprise Manager** online help for information
        on resolving a circular dependency.

- **DELETE**: Commands the program to delete the schedule(s).
  - This parameter must be uppercase.
- **FORECAST**: Commands the program to complete all the same
    functions as the build, but without actually building.
  - This parameter must be uppercase.
- **Start Date**: (Required) The beginning schedule date.
  - The Start Date and End Date must be an integer.
  - Zero represents the current machine date.
  - A negative integer (-n) represents the number of days before the
        current machine date.
  - A positive integer (n) represents the number of days after the
        current machine date.
  - An absolute date is also valid, but it must conform to the
        syntax recognized by the regional settings of the user running
        the utility.
  - Always use compatible date types. Setting the start date to
        absolute and the end date to relative, or vice versa, can have
        unpredictable results.
  - When setting a range of dates, place the earlier date as the
        Start Date and the latest date as the End Date.
- **End Date**: (Required) Represents the ending schedule date.
- **\[Overwrite?\]**: Overwrite is used to indicate whether to     overwrite an existing schedule or not, and is an optional parameter
    for the BUILD and BUILDHLD commands only.
  - **Y** = Overwrite
  - **N** = Do not overwrite
  - If not specified, DoBatch defaults the setting to **N**.
- **Schedule Name(s)**: The name(s) of the schedule(s) to be built.
    This parameter is Required for the BUILD, BUILDHLD, and FORECAST
    commands. It is optional for the CHECK, CHECK+, and DELETE commands.
  - Any number of schedules may be specified, each separated by a comma.
  - If the database has a binary sort order, schedule names are case-sensitive.
  - If optional and if no schedule names are specified, all schedules in the specified date range are affected.
- **+CSV+**: A switch for DoBatch to create a comma-delimited (.csv)
    file. The file contains schedule date(s), job name(s), and
    associated frequency information. This parameter is Optional for the
    BUILD, BUILDHLD, and FORECAST commands only.
  - For building and forecasting, the utility creates the respective file:
    - *Schedule Name*_FORECAST.csv
    - *Schedule Name*_BUILD.csv
  - The utility places the files in the <Output Directory\>\\SAM\\Log\\SMASchedMan\\ directory on the SAM application server.
  - The file is convenient for generating reports on non-Windows
        platforms. SMA Technologies recommends scheduling an ftp transfer of the file to the target platform.
  - The files are not automatically deleted. SMA Technologies recommends scheduling the
        deletion of these files.
  - There is a file for each schedule. If the schedule is built for
        multiple days, the additional days are appended to the
        schedule's file.
- **+JOBID+\[\[JOBID\]\]** (Optional): A parameter that defines the     unique ID of the job for SMASchedMan to send Detailed Job Messages
    back to.
  - If specified, the SAM will resolve the token at run time to the
        job's unique ID. SMASchedMan will then be able to write all
        Exception Messages and Completion Message to the job's
        "Detailed Job Messages" field.

## Logging

A simple log file DoBatch.log, maintained by the DoBatch program,
resides in the directory <Output Directory\>\\SAM\\Log\\SMASchedMan\\.
DoBatch expects to run on the SAM application server; consequently, the
utility places the log file in the SAM directory to keep all the log
files together.

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

## Exit Codes

The DoBatch.exe program uses the log file in the command-line argument
to determine the success of the command and returns an appropriate error
code. The exit codes are as follows:

|Exit Code|Exit Description|
|--- |--- |
|0|Successful execution.|
|32001|Fatal error in execution. Check DoBatch log for details.|
|32002|Error in execution. Check DoBatch log for details.|
|32003|Warning messages in execution. Check DoBatch log for details.|
|32004|Invalid command line input.|
|32005|Failed to launch SMAPass2Rtr.exe.|
|32006|Insufficient parameters for DoBatch command line.|
|32007|Command line greater than 2000 characters.|
