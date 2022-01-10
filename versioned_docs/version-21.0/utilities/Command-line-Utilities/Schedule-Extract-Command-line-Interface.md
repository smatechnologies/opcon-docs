# Schedule Extract Command-line Interface

The EM is equipped with a command-line interface for Schedule Extract to
support the ability for customers to automate the extract of selected
schedules. For information on using Schedule Extract interactively,
refer to [Using Schedule Extract](../../Files/UI/Enterprise-Manager/Using-Schedule-Extract.md)
 in the **Enterprise Manager** online help.

One use case for automating Schedule Extract is to backup a schedule
before major changes are made. Some customers make changes daily and
choose to run Schedule Extract every night. In the future, if an earlier
version of the schedule needs to be recovered, you can use SMADDI to
recreate the schedule from the XML file previously created by Schedule
Extract. For more information about SMADDI, refer to the [SMA Dynamic Data Input](../SMA-Dynamic-Data-Input/Introduction.md) online
help.

Another use case is to facilitate automatic movement of a schedule from
a "test" environment to a "production" environment. Upon extracting
a "test" schedule, all of the changes for "production" can be made
automatically. Then the changed file can be transferred to SMADDI in the
"production" environment to create the schedule. For more information,
refer to [Automatic Change Files](#Automati).

Before configuring jobs to run Schedule Extract, configure the
command-line behavior in the Enterprise Manager preferences. For more
information, refer to [Setting Preferences for Schedule Extract](../../Files/UI/Enterprise-Manager/Preferences-for-Schedule-Extract.md)
 in the **Enterprise Manager** online help.

## Rules for Defining a Job for Schedule Extract

You have to schedule the job on a Windows machine that has an LSAM and
an Enterprise Manager compatible with the operating system installed.

a.  If the machine is 64-bit, make sure to install the EM from the <media\>\\Install\\Enterprise Manager\\x64\\ folder.
b.  If the machine is 32-bit, make sure to install the EM from the <media\>\\Install\\Enterprise Manager\\x86\\ folder.

:::note
If you install the EM from the x86 folder onto a 64-bit machine, you will have to edit the schedule_extract.cmd file to specifically start the 32-bit version of Java. With a default installation of 32-bit Java, replace this string:

```shell
command=java
```

With this string:

```shell
command="C:\Program Files (x86)\Java\jre6\bin\java"
```

:::

You have to run the job as a user that has logged on to the machine and
created a profile in the EM for the connection to the
OpCon database for extracting schedules.

In the command line for schedule_extract.cmd, you have to set the value
for the -opconprofile argument to the name of the profile created by the
user in step 2.

If you want to omit the -opconuser and -opconpassword arguments from the
command line, the user from step 2 must also have an
OpCon login with the required privileges (All
Administrative Functions or All Function Privileges).

You must specify the path to the schedule_extract.cmd file as the
Working Directory.

## Syntax

The syntax for the command-line interface is:

```shell
<Target Directory\>\\OpConxps\\Enterprise Manager\\Tools\\schedule_extract.cmd -opconprofile <ProfileName\> (-s "<ScheduleName\>" OR -f "<File Name\>") \[-opconuser <OpconUser\>\] \[-opconpassword <Password\>\] \[-c <Y/N\>\] \[-p <Y/N\>\] \[-v <Y/N\>\] \[-o <Y/N\>\] \[-chg <change file\>\] \[-split\]
```

### Parameters

The following describes the command-line parameters:

**-opconprofile**: Defines the name of a valid Enterprise Manager
profile that has been created by the user who is executing schedule
extract. To verify the profile name, log in to the machine and start the
Enterprise Manager to view or create a profile for the connection to the
OpCon database for extracting schedules.

:::note
Either the -s or -f argument must be specified on the command line; however, they cannot be specified on the command line at the same time.
:::

**-s**: Defines the name of the schedule to extract.

- Required if -f is not specified.
- Enclose the Schedule Name in double quotes if it contains spaces.

**-f**: Defines the full path and filename of the file containing a list
of schedules to extract.

- Required if -s is not specified.
- The file should contain one line per schedule.
- Use the syntax: `-s;<Schedule Name\>`
  - Following the <Schedule Name\>, you can specify the optional
    arguments, with each argument and value separated with a semicolon
    (;).

**-opconuser** (Optional): The name of a valid OpCon user that has "All
Administrative Functions" or "All Function Privileges". If not
specified, the command line schedule extract will check the OpCon
Database to see if the Windows user that started the job also has an
OpCon login with the required privileges.

**-opconpassword** (Optional): The password associated with the user
defined in -opconuser. Do not specify this argument if -opconuser is not
specified.

**-c** (Optional): Set this value to Y to extract any Holiday Calendar,
Additional Holiday, or Annual Plan calendars and dates associated with
the schedule. If the -f switch is specified, the value for -c on the
command line overrides any -c values defined in the file.

**-p** (Optional): Set this value to Y to extract the Global Properties
referenced by Events or Command lines within the Schedule. If the -f
switch is specified, the value for -p on the command line overrides any
-p values defined in the file.

**-v** (Optional): Set this value to Y to extract the Threshold or
Resource definitions in use by Jobs or Events within the schedule. If
the -f switch is specified, the value for -v on the command line
overrides any -v values defined in the file.

**-o** (Optional): Defines the file name for the extracted information.

- The file will be created in the directory defined in the Schedule
    Extract preferences within Enterprise Manager.
- If not specified, the default file name uses the following syntax:
    SMADDI_YYYYMMDDHHMM\_<ScheduleName\>.xml.

**-chg** (Optional): Defines the full path and filename of a file
listing automatic changes to be applied to all schedules defined in the
file specified by the -f argument.

- The file name can be any name.
- The file contents must be defined in the same way individual
    automatic changes files are defined. For more information, refer to
    [Automatic Change Files](#Automati).
- If you specify only a File Name, Schedule Extract will look in the
    directory defined by the Change File Directory in the Enterprise
    Manager preferences. For more information, refer to [Setting     Preferences for Schedule
    Extract](../../Files/UI/Enterprise-Manager/Preferences-for-Schedule-Extract.md)
     in the **Enterprise Manager** online help.

:::note
If you specify the -chg argument and Schedule Extract is unable to find the file, the schedules will be extracted with no automatic changes.
:::

**-split** (Optional): Indicates if Schedule Extract should split the
output files into separate folders based on the message types. Splitting
the output provides you the option to select the order for providing
information to SMADDI. For more information, refer to the [SMA Dynamic Data Input](../SMA-Dynamic-Data-Input/Introduction.md) online
help.

The split option is only valid on the command line (i.e., if you try to
add it to a line in the file of the -f switch, it will be ignored).

The files in the separate folders should be copied into the SMADDI
directory in the following order to ensure that all prerequisites are
met during SMADDI processing:

1. **Variables**: Contains the files for adding Thresholds and
    Resources. These are required for dependency definitions when the
    dependencies are added.
2. **Properties**: Contains the files for adding Global Properties.
    These are needed for schedule and job definitions to work after they
    are imported.
3. **Schedules**: Contains the files for adding the schedule
    definitions. These are required for job definitions.
4. **Jobs**: Contains the files for adding the job definitions to
    schedules.
5. **Documents**: Contains the files for adding documentation to jobs
    and schedules.
6. **Dependencies**: Contains the files for adding all types of
    dependencies to jobs.
7. **Dates**: Contains the files for adding calendar dates. These are
    required for frequency definitions when the schedules and jobs are
    added.

### Examples

For these next examples, the \[\[EManagerTools\]\] value is an OpCon global property containing the location of the schedule_extract command file.

:::tip Example

```shell
[[EManagerTools]] -opconprofile PRODUCTION -opconuser ocadm -opconpassword opconxps -s Sched001
```

Executes the command line to Schedule Extract with the following parameters:

- Use the PRODUCTION profile
- Use the OpCon user 'ocadm' and its password
- Extract the schedule 'Sched001' from the Master tables of the OpCon database.

:::

:::tip Example

```shell
[[EManagerTools]] -opconprofile PRODUCTION -opconuser ocadm -opconpassword opconxps -s "TEST ONE"
```

Executes the command line to Schedule Extract with the following parameters:

- Use the PRODUCTION profile
- Use the OpCon user 'ocadm' and its password
- Extract the schedule 'TEST ONE' from the Master tables of the OpCon database.

:::

:::tip Example

```shell
[[EManagerTools]] -opconprofile PRODUCTION -opconuser ocadm -opconpassword opconxps -s Sched002 -c Y -p Y -v Y -o Sched002-OUT.xml
```

Executes the command line to Schedule Extract with the following parameters:

- Use the PRODUCTION profile
- Use the OpCon user 'ocadm' and its password
- Extract the schedule 'Sched002' from the Master tables of the OpCon database.
- Include any associated dates, properties and variables and generate the Sched002-OUT.xml file.

:::

:::tip Example

```shell
[[EManagerTools]] -opconprofile PRODUCTION -opconuser ocadm -opconpassword opconxps -f c:/extract/schedules.txt
```

Instructs the Enterprise Manager to execute the Schedule Extract with the following parameters:

- Use the PRODUCTION profile
- Use the OpCon user 'ocadm' and its password
- Extract the list of schedules contained in the c:\extract\schedules.txt file. The text file contains the following information:

```shell
-s;Sched001
-s;Sched002;-c;Y;-p;Y;-v;Y;-o;Sched002-OUT.xml
-s;TEST ONE;-c;Y;-p;Y;-v;Y
```

:::

## Automatic Change Files

The command-line Schedule Extract program will apply changes
automatically to the extracted schedule information if an associated
change file exists for the schedule. When extracting schedules manually
from the interactive Schedule Extract utility, you can also choose if a
change file should be applied.

During the extract process, Schedule Extract will check the directory
defined in the **Change File Directory** setting in the **Enterprise
Manager Preferences** (refer to [Setting Preferences for Schedule Extract](../../Files/UI/Enterprise-Manager/Preferences-for-Schedule-Extract.md)
 in the **Enterprise Manager** online help). The change file name
must consist of the name of the schedule to extract and the "\_GC.xml"
extension. If this file is found, Schedule Extract applies the changes
to the extracted information as it creates the SMADDI XML formatted
file.

When changing values, Schedule Extract will search the target contents
for a string match. If a match is found, the program replaces the
defined string with the new value. Schedule Extract supports partial
replacement for every field. This means that the whole string in the
field does not have to match; if the string to match is found anywhere
within the field, Schedule Extract will replace the matching part with
the replacement text.

The following Tag IDs define the values that can be changed:

- **Schedule_Name**: The schedule name will be changed in all objects
    extracted for this schedule (new_schedule, new_master, add_frequency
    and add_dependency). This includes changing the schedule name if
    discovered on any $SCHEDULE or $JOB events in the schedule name
    field.
  - By default, this replacement element does not do partial string
        replacement. Specify
        <global_change_partial_update\>true</global_change_partial_update\>
        to enable partial replacement.
- **Frequency_Name**: The matching frequency name will be changed in
    the new_schedule, new_master, add_frequency and add_dependency
    objects extracted for this schedule.
  - By default, this replacement element does not do partial string
        replacement. Specify
        <global_change_partial_update\>true</global_change_partial_update\>
        to enable partial replacement.
- **Job_Name**: The matching Job Name will be changed in the
    new_master, add_frequency and add_dependency objects extracted for
    this schedule). This includes changing the job name if discovered on
    any $JOB events in the job name field.
  - By default, this replacement element does not do partial string
        replacement. Specify
        <global_change_partial_update\>true</global_change_partial_update\>
        to enable partial replacement.
- **Job_Machine_Name**: The matching job machine name (primary machine
    name) will be changed in the new_master object extracted for this
    schedule.
  - By default, this replacement element does not do partial string
        replacement. Specify
        <global_change_partial_update\>true</global_change_partial_update\>
        to enable partial replacement.
- **Job_Machine_Group_Name**: The matching job machine group name will
    be changed in the new_master object extracted for this schedule.
  - By default, this replacement element does not do partial string
        replacement. Specify
        <global_change_partial_update\>true</global_change_partial_update\>
        to enable partial replacement.
- **Resource_Name**: The matching value in the threshold descriptor
    will be changed in the new_variable and add_dependency objects. The
    matching value will also be replaced in the schedule events of the
    new_schedule object and the job events of the new_master object.
  - By default, this replacement element does not do partial string
        replacement. Specify
        <global_change_partial_update\>true</global_change_partial_update\>
        to enable partial replacement.
- **Threshold_Name**: The matching value in the threshold descriptor
    will be changed in the new_variable and add_dependency objects. The
    matching value will also be replaced in the schedule events of the
    new_schedule object and the job events of the new_master object.
  - By default, this replacement element does not do partial string
        replacement. Specify
        <global_change_partial_update\>true</global_change_partial_update\>
        to enable partial replacement.
- **Windows_User**: The matching Windows user within a Windows job
    will be changed in the new_master object extracted for this
    schedule.
  - By default, this replacement element does not do partial string
        replacement. Specify
        <global_change_partial_update\>true</global_change_partial_update\>
        to enable partial replacement.
- **Windows_Command_Line**: The matching value in the command line
    within a Windows job will be changed in the new_master object
    extracted for this schedule. This allows information within the
    command line to be replaced as well as adding information to the
    start and end of the command line.
  - By default, this replacement element does partial string
        replacement. Specify
        <global_change_partial_update\>false</global_change_partial_update\>
        to disable partial replacement.
- **Windows_Working_Directory**: The matching value in the working
    directory within a Windows job will be changed in the new_master
    object extracted for this schedule.
  - By default, this replacement element does partial string
        replacement. Specify
        <global_change_partial_update\>false</global_change_partial_update\>
        to disable partial replacement.
- **Unix_User_Id**: The matching UNIX user id within a UNIX job will
    be changed in the new_master object extracted for this schedule.
  - By default, this replacement element does not do partial string
        replacement. Specify
        <global_change_partial_update\>true</global_change_partial_update\>
        to enable partial replacement.
- **Unix_Group_Id**: The matching UNIX group id within a UNIX job will
    be changed in the new_master object extracted for this schedule.
  - By default, this replacement element does not do partial string
        replacement. Specify
        <global_change_partial_update\>true</global_change_partial_update\>
        to enable partial replacement.
- **Unix_Start_Image**: The matching value in start image within a
    UNIX job will be changed in the new_master object extracted for this
    schedule. This allows information within the command line to be
    replaced as well as adding information to the start and end of the
    command line.
  - By default, this replacement element does partial string
        replacement. Specify
        <global_change_partial_update\>false</global_change_partial_update\>
        to disable partial replacement.
- **Unix_Parameter**: The matching value in the parameter within a
    UNIX job will be changed in the new_master object extracted for this
    schedule. This allows information within the command line to be
    replaced as well as adding information to the start and end of the
    command line.
  - By default, this replacement element does partial string
        replacement. Specify
        <global_change_partial_update\>false</global_change_partial_update\>
        to disable partial replacement.

The change file consists of an XML format file with the following XML
tags. It is possible to have multiple definitions of a tag id with
different values.

`<global_change_file\>` is the root tag

`<global_change\>` contains the defined change

`<global_change_tag_id\>` defines the change tag id and consists of one of the following values:

- Schedule_Name
- Frequency_Name
- Job_Name
- Job_Machine_Name
- Job_Machine_Group_Name
- Resource_Name
- Threshold_Name
- Windows_User
- Windows_Command_Line
- Windows_Working_Directory
- Unix_User_Id
- Unix_Group_Id
- Unix_Start_Image
- Unix_Parameter

`<global_change_current_value\>` defines the existing value to search for.

`<global_change_new_value\>` defines the value to replace the existing value.

`<global_change_partial_update\>` defines if Schedule Extract should replace the matching value for the <global_change_current_value\> anywhere within the whole value of the change tag id.

- This element is optional because each <global_change_tag_id\> has a
    default behavior for partial replacement.

Valid Values for this element include *true* and *false*.

### Examples

:::tip Example
This example will change the schedule name within all extracted objects to S-TEST1 when a matching schedule name of TTEST is found.

```xml
<?xml version="1.0" encoding="ISO-8859-1" standalone="no"?>
<global_change_file>
<global_change>
<global_change_tag_id>Schedule_Name</global_change_tag_id>
<global_change_current_value>TTEST</global_change_current_value>
<global_change_new_value>S-TEST1</global_change_new_value>
</global_change>
</global_change_file>
```

:::

:::tip Example
This example will change the Windows User name to production\prod01 if a matching test\test01 Windows user is found and to production\prod03 if a matching test\test03 Windows user is found in a Windows job.

```xml
<?xml version="1.0" encoding="ISO-8859-1" standalone="no"?>
<global_change_file>
<global_change>
<global_change_tag_id>Windows_User</global_change_tag_id>
<global_change_current_value>
test\test01
</global_change_current_value>
<global_change_new_value>
production\prod01
</global_change_new_value>
</global_change>
<global_change>
<global_change_tag_id>Windows_User</global_change_tag_id>
<global_change_current_value>
test\test03
</global_change_current_value>
<global_change_new_value>
production\prod03
</global_change_new_value>
</global_change>
</global_change_file>
```

:::

### Change File Sample Code

The following sample code contains tags for every global change
supported with Schedule Extract:

```xml
<?xml version="1.0" encoding="ISO-8859-1" standalone="no"?\>
<global_change_file\>
<global_change\>
<global_change_tag_id\>Schedule_Name</global_change_tag_id\>
<global_change_current_value\>TTEST</global_change_current_value\>
<global_change_new_value\>S-TEST1</global_change_new_value\>
<global_change_partial_update\>false</global_change_partial_update\>
</global_change\>
<global_change\>
<global_change_tag_id\>Job_Name</global_change_tag_id\>
<global_change_current_value\>WJOB001</global_change_current_value\>
<global_change_new_value\>PROD-JOB001</global_change_new_value\>
<global_change_partial_update\>false</global_change_partial_update\>
</global_change\>
<global_change\>
<global_change_tag_id\>Frequency_Name</global_change_tag_id\>
<global_change_current_value\>SatSun</global_change_current_value\>
<global_change_new_value\>WeekEnd</global_change_new_value\>
<global_change_partial_update\>false</global_change_partial_update\>
</global_change\>
<global_change\>
<global_change_tag_id\>Job_Machine_Name</global_change_tag_id\>
<global_change_current_value\>VM-BVH-OPCON45</global_change_current_value\>
<global_change_new_value\>VM_BVH_NEW</global_change_new_value\>
<global_change_partial_update\>false</global_change_partial_update\>
</global_change\>
<global_change\>
<global_change_tag_id\>Windows_User</global_change_tag_id\>
<global_change_current_value\>SMAEUROPE\\TEST</global_change_current_value\>
<global_change_new_value\>SMAEUROPE\\PRODUCTION</global_change_new_value\>
<global_change_partial_update\>false</global_change_partial_update\>
</global_change\>
<global_change\>
<global_change_tag_id\>Windows_Command_Line</global_change_tag_id\>
<global_change_current_value\>C:\</global_change_current_value\>
<global_change_new_value\>D:\</global_change_new_value\>
<global_change_partial_update\>true</global_change_partial_update\>
</global_change\>
<global_change\>
<global_change_tag_id\>Windows_Working_Directory</global_change_tag_id\>
<global_change_current_value\>C:\</global_change_current_value\>
<global_change_new_value\>D:\</global_change_new_value\>
<global_change_partial_update\>true</global_change_partial_update\>
</global_change\>
<global_change\>
<global_change_tag_id\>Unix_User_Id</global_change_tag_id\>
<global_change_current_value\>root</global_change_current_value\>
<global_change_new_value\>admin</global_change_new_value\>
<global_change_partial_update\>false</global_change_partial_update\>
</global_change\>
<global_change\>
<global_change_tag_id\>Unix_Group_Id</global_change_tag_id\>
<global_change_current_value\>root</global_change_current_value\>
<global_change_new_value\>group01</global_change_new_value\>
<global_change_partial_update\>false</global_change_partial_update\>
</global_change\>
<global_change\>
<global_change_tag_id\>Unix_Start_Image</global_change_tag_id\>
<global_change_current_value\>test.sh</global_change_current_value\>
<global_change_new_value\>test001.sh</global_change_new_value\>
<global_change_partial_update\>true</global_change_partial_update\>
</global_change\>
<global_change\>
<global_change_tag_id\>Unix_Parameter</global_change_tag_id\>
<global_change_current_value\>Schedule</global_change_current_value\>
<global_change_new_value\>Test_Schedule</global_change_new_value\>
<global_change_partial_update\>true</global_change_partial_update\>
</global_change\>
</global_change_file\>
```

## Logging

The command line interface for Schedule Extract writes all of the output
to the "console". This means that to view any log information or
discover why the job has failed, you must "View Job Output" or
redirect the output to your own log file. Use \> to create a new file or
\>\> to append to an existing file. JORS must be enabled for the machine
and the LSAM's configuration file must be set to "Capture Job Output"
if you want to use the View Job Output feature.

:::tip Example
To create a new file:

```shell
C:\Program Files\OpConxps\EnterpriseManager\tools>schedule_extract.cmd -opconuser ocadm -opconpassword opconxps -opconprofile OpCon -s AdHoc -o AdHoc.txt -c y -p y -v y > C:\Extract\Log\schedule_extract.log
```

:::

:::tip Example

```shell
C:\Program Files\OpConxps\EnterpriseManager\tools>schedule_extract.cmd -opconuser ocadm -opconpassword opconxps -opconprofile OpCon -s AdHoc -o AdHoc.txt -c y -p y -v y >> C:\Extract\Log\schedule_extract.log
```

:::

## Exit Codes

The Schedule Extract Command Line Interface uses the following exit codes:

|Error Code|Error Description|
|--- |--- |
|0|The schedule extract was successful.|
|1|The schedule extract process failed. Use the View Job Output feature for more information.|
|98|The OpCon user or OpCon password is invalid.|
|99|One or more schedules for extract do not exist in the database.|
