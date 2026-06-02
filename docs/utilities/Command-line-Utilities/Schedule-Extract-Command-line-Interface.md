---
title: Schedule Extract Command-line Interface
description: "Enterprise Manager provides a command-line interface for Schedule Extract that lets you automate the extraction of selected schedules."
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

# Schedule Extract Command-line Interface

Enterprise Manager provides a command-line interface for Schedule Extract that lets you automate the extraction of selected schedules. For information on using Schedule Extract interactively, refer to [Using Schedule Extract](../../Files/UI/Enterprise-Manager/Using-Schedule-Extract.md) in the **Enterprise Manager** online help.

Two common uses for automating Schedule Extract are:

- **Schedule backup** — Run Schedule Extract nightly to back up a schedule before major changes. If an earlier version needs to be recovered, use SMADDI to recreate the schedule from the previously created XML file. For more information, refer to the [SMA Dynamic Data Input](../SMA-Dynamic-Data-Input/Introduction.md) online help.
- **Test-to-production migration** — Extract a schedule from a test environment, apply the required production changes automatically, then transfer the file to SMADDI in the production environment. For more information, refer to [Automatic Change Files](#automatic-change-files).

Before configuring jobs to run Schedule Extract, configure the command-line behavior in Enterprise Manager preferences. For more information, refer to [Setting Preferences for Schedule Extract](../../Files/UI/Enterprise-Manager/Preferences-for-Schedule-Extract.md) in the **Enterprise Manager** online help.

## Requirements

Schedule Extract command-line jobs must meet the following requirements:

- The job must run on a Windows machine that has an Agent and a compatible Enterprise Manager installed.
  - On a 64-bit machine, install Enterprise Manager from `<media>\Install\Enterprise Manager\x64\`.
  - On a 32-bit machine, install Enterprise Manager from `<media>\Install\Enterprise Manager\x86\`.
- The job must run as a Windows user who has previously logged on to that machine and created an Enterprise Manager profile for the connection to the OpCon database.
- The `-opconprofile` argument value must match the name of the profile created by that user.
- If you want to omit `-opconuser` and `-opconpassword`, the Windows user running the job must also have an OpCon login with **All Administrative Functions** or **All Function Privileges**.
- The path to `schedule_extract.cmd` must be set as the Working Directory for the job.

:::note
If Enterprise Manager is installed from the x86 folder onto a 64-bit machine, edit `schedule_extract.cmd` to replace:

```shell
command=java
```

with the full path to the 32-bit Java executable:

```shell
command="C:\Program Files (x86)\Java\jre6\bin\java"
```

Alternatively, reinstall Enterprise Manager from the x64 folder.
:::

## Syntax

```shell
<Target Directory>\OpConxps\Enterprise Manager\Tools\schedule_extract.cmd -opconprofile <ProfileName> (-s "<ScheduleName>" | -f "<FileName>") [-opconuser <OpConUser>] [-opconpassword <Password>] [-c <Y/N>] [-p <Y/N>] [-v <Y/N>] [-o <OutputFile>] [-chg <ChangeFile>] [-split]
```

### Parameters

The following table describes the command-line parameters.

| Parameter | Required | Description |
|---|---|---|
| `-opconprofile` | Required | The name of a valid Enterprise Manager profile created by the Windows user running the job. To verify or create a profile, log on to the machine and open Enterprise Manager. |
| `-s` | Required if `-f` is not specified | The name of the schedule to extract. Enclose the name in double quotes if it contains spaces. Cannot be used together with `-f`. |
| `-f` | Required if `-s` is not specified | The full path and filename of a file that lists schedules to extract. The file must contain one line per schedule using the syntax `-s;<Schedule Name>`, with optional arguments separated by semicolons. Cannot be used together with `-s`. |
| `-opconuser` | Optional | A valid OpCon user with **All Administrative Functions** or **All Function Privileges**. If omitted, Schedule Extract checks whether the Windows user running the job has a matching OpCon login with the required privileges. |
| `-opconpassword` | Optional | The password for the user defined in `-opconuser`. Do not specify this argument if `-opconuser` is not specified. |
| `-c` | Optional | Set to `Y` to include Holiday Calendar, Additional Holiday, and Annual Plan calendar dates associated with the schedule. When `-f` is used, the value specified on the command line overrides any `-c` values in the file. |
| `-p` | Optional | Set to `Y` to include Global Properties referenced by events or command lines within the schedule. When `-f` is used, the value specified on the command line overrides any `-p` values in the file. |
| `-v` | Optional | Set to `Y` to include Threshold or Resource definitions used by jobs or events within the schedule. When `-f` is used, the value specified on the command line overrides any `-v` values in the file. |
| `-o` | Optional | The filename for the extracted output. The file is created in the directory defined in the Schedule Extract preferences in Enterprise Manager. If omitted, the default filename uses the format `SMADDI_YYYYMMDDHHMM_<ScheduleName>.xml`. |
| `-chg` | Optional | The full path and filename of a file listing automatic changes to apply to all schedules defined in the `-f` file. If only a filename is specified, Schedule Extract looks in the directory defined by **Change File Directory** in Enterprise Manager preferences. If the file cannot be found, schedules are extracted with no automatic changes applied. |
| `-split` | Optional | Splits output files into separate folders by message type, giving you control over the order in which files are provided to SMADDI. This argument is only valid on the command line; it is ignored if specified within a `-f` input file. |

#### Split Output Folder Order

When `-split` is specified, copy files from each folder to the SMADDI directory in the following order to ensure prerequisites are met:

1. **variables** — Threshold and Resource definitions required for dependency processing.
2. **properties** — Global Properties required for schedule and job definitions to work after import.
3. **schedules** — Schedule definitions required before jobs can be added.
4. **jobs** — Job definitions to add to schedules.
5. **documents** — Documentation for jobs and schedules.
6. **dependencies** — All types of job dependencies.
7. **dates** — Calendar dates required for frequency definitions.

### Examples

In the following examples, `[[EManagerTools]]` is an OpCon Global Property containing the path to `schedule_extract.cmd`.

:::tip Example
Extract a single schedule using an OpCon user and password:

```shell
[[EManagerTools]] -opconprofile PRODUCTION -opconuser ocadm -opconpassword opconxps -s Sched001
```

- Profile: `PRODUCTION`
- OpCon user: `ocadm`
- Extracts schedule `Sched001` from the OpCon database master tables
:::

:::tip Example
Extract a schedule whose name contains spaces:

```shell
[[EManagerTools]] -opconprofile PRODUCTION -opconuser ocadm -opconpassword opconxps -s "TEST ONE"
```

- Profile: `PRODUCTION`
- OpCon user: `ocadm`
- Extracts schedule `TEST ONE` from the OpCon database master tables
:::

:::tip Example
Extract a schedule with all optional data and a named output file:

```shell
[[EManagerTools]] -opconprofile PRODUCTION -opconuser ocadm -opconpassword opconxps -s Sched002 -c Y -p Y -v Y -o Sched002-OUT.xml
```

- Profile: `PRODUCTION`
- OpCon user: `ocadm`
- Extracts schedule `Sched002` including associated dates, properties, and variables
- Output written to `Sched002-OUT.xml`
:::

:::tip Example
Extract a list of schedules from a file:

```shell
[[EManagerTools]] -opconprofile PRODUCTION -opconuser ocadm -opconpassword opconxps -f c:/extract/schedules.txt
```

- Profile: `PRODUCTION`
- OpCon user: `ocadm`
- Extracts the schedules listed in `c:\extract\schedules.txt`

The input file contains:

```shell
-s;Sched001
-s;Sched002;-c;Y;-p;Y;-v;Y;-o;Sched002-OUT.xml
-s;TEST ONE;-c;Y;-p;Y;-v;Y
```

:::

## Automatic Change Files

Schedule Extract automatically applies changes to extracted schedule information when an associated change file exists for the schedule. You can also apply change files when extracting schedules manually from the interactive Schedule Extract utility.

During extraction, Schedule Extract checks the directory defined in the **Change File Directory** setting in Enterprise Manager preferences (refer to [Setting Preferences for Schedule Extract](../../Files/UI/Enterprise-Manager/Preferences-for-Schedule-Extract.md)). The change file name must consist of the schedule name followed by the `_GC.xml` extension. If this file is found, Schedule Extract applies the changes as it creates the SMADDI XML file.

Schedule Extract uses string matching for replacements. If the search string is found anywhere within the target field value, Schedule Extract replaces the matching portion with the new value. Each tag ID has a default partial-replacement behavior that you can override with `<global_change_partial_update>`.

### Change Tag IDs

The following tag IDs define the values that can be changed:

| Tag ID | Description | Default Partial Replacement |
|---|---|---|
| `Schedule_Name` | Changes the schedule name in all extracted objects (`new_schedule`, `new_master`, `add_frequency`, `add_dependency`), including schedule name fields in `$SCHEDULE` and `$JOB` events. | Disabled |
| `Frequency_Name` | Changes the matching frequency name in `new_schedule`, `new_master`, `add_frequency`, and `add_dependency` objects. | Disabled |
| `Job_Name` | Changes the matching job name in `new_master`, `add_frequency`, and `add_dependency` objects, including job name fields in `$JOB` events. | Disabled |
| `Job_Machine_Name` | Changes the matching primary machine name in the `new_master` object. | Disabled |
| `Job_Machine_Group_Name` | Changes the matching machine group name in the `new_master` object. | Disabled |
| `Resource_Name` | Changes the matching resource name in `new_variable` and `add_dependency` objects, and in schedule and job events. | Disabled |
| `Threshold_Name` | Changes the matching threshold name in `new_variable` and `add_dependency` objects, and in schedule and job events. | Disabled |
| `Windows_User` | Changes the matching Windows user in the `new_master` object for Windows jobs. | Disabled |
| `Windows_Command_Line` | Changes the matching value in the command line of a Windows job in the `new_master` object. Supports adding text to the start or end of the command line. | Enabled |
| `Windows_Working_Directory` | Changes the matching value in the working directory of a Windows job in the `new_master` object. | Enabled |
| `Unix_User_Id` | Changes the matching UNIX user ID in the `new_master` object for UNIX jobs. | Disabled |
| `Unix_Group_Id` | Changes the matching UNIX group ID in the `new_master` object for UNIX jobs. | Disabled |
| `Unix_Start_Image` | Changes the matching start image value in the `new_master` object for UNIX jobs. Supports adding text to the start or end of the command line. | Enabled |
| `Unix_Parameter` | Changes the matching parameter value in the `new_master` object for UNIX jobs. Supports adding text to the start or end of the command line. | Enabled |

### Change File XML Structure

The change file uses the following XML structure. Multiple `<global_change>` elements are allowed, and the same `<global_change_tag_id>` value can appear in more than one element.

| XML Tag | Description |
|---|---|
| `<global_change_file>` | Root element. |
| `<global_change>` | Container for a single replacement definition. |
| `<global_change_tag_id>` | The field to change. Must be one of the Tag IDs listed above. |
| `<global_change_current_value>` | The existing value to search for. |
| `<global_change_new_value>` | The value to use as the replacement. |
| `<global_change_partial_update>` | Optional. Overrides the default partial-replacement behavior for this tag ID. Valid values: `true`, `false`. |

### Examples

:::tip Example
Change the schedule name from `TTEST` to `S-TEST1` across all extracted objects:

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
Change two Windows user names — `test\test01` to `production\prod01` and `test\test03` to `production\prod03`:

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

### Change File Sample

The following sample contains every supported change tag:

```xml
<?xml version="1.0" encoding="ISO-8859-1" standalone="no"?>
<global_change_file>
<global_change>
<global_change_tag_id>Schedule_Name</global_change_tag_id>
<global_change_current_value>TTEST</global_change_current_value>
<global_change_new_value>S-TEST1</global_change_new_value>
<global_change_partial_update>false</global_change_partial_update>
</global_change>
<global_change>
<global_change_tag_id>Job_Name</global_change_tag_id>
<global_change_current_value>WJOB001</global_change_current_value>
<global_change_new_value>PROD-JOB001</global_change_new_value>
<global_change_partial_update>false</global_change_partial_update>
</global_change>
<global_change>
<global_change_tag_id>Frequency_Name</global_change_tag_id>
<global_change_current_value>SatSun</global_change_current_value>
<global_change_new_value>WeekEnd</global_change_new_value>
<global_change_partial_update>false</global_change_partial_update>
</global_change>
<global_change>
<global_change_tag_id>Job_Machine_Name</global_change_tag_id>
<global_change_current_value>VM-BVH-OPCON45</global_change_current_value>
<global_change_new_value>VM_BVH_NEW</global_change_new_value>
<global_change_partial_update>false</global_change_partial_update>
</global_change>
<global_change>
<global_change_tag_id>Windows_User</global_change_tag_id>
<global_change_current_value>SMAEUROPE\TEST</global_change_current_value>
<global_change_new_value>SMAEUROPE\PRODUCTION</global_change_new_value>
<global_change_partial_update>false</global_change_partial_update>
</global_change>
<global_change>
<global_change_tag_id>Windows_Command_Line</global_change_tag_id>
<global_change_current_value>C:\</global_change_current_value>
<global_change_new_value>D:\</global_change_new_value>
<global_change_partial_update>true</global_change_partial_update>
</global_change>
<global_change>
<global_change_tag_id>Windows_Working_Directory</global_change_tag_id>
<global_change_current_value>C:\</global_change_current_value>
<global_change_new_value>D:\</global_change_new_value>
<global_change_partial_update>true</global_change_partial_update>
</global_change>
<global_change>
<global_change_tag_id>Unix_User_Id</global_change_tag_id>
<global_change_current_value>root</global_change_current_value>
<global_change_new_value>admin</global_change_new_value>
<global_change_partial_update>false</global_change_partial_update>
</global_change>
<global_change>
<global_change_tag_id>Unix_Group_Id</global_change_tag_id>
<global_change_current_value>root</global_change_current_value>
<global_change_new_value>group01</global_change_new_value>
<global_change_partial_update>false</global_change_partial_update>
</global_change>
<global_change>
<global_change_tag_id>Unix_Start_Image</global_change_tag_id>
<global_change_current_value>test.sh</global_change_current_value>
<global_change_new_value>test001.sh</global_change_new_value>
<global_change_partial_update>true</global_change_partial_update>
</global_change>
<global_change>
<global_change_tag_id>Unix_Parameter</global_change_tag_id>
<global_change_current_value>Schedule</global_change_current_value>
<global_change_new_value>Test_Schedule</global_change_new_value>
<global_change_partial_update>true</global_change_partial_update>
</global_change>
</global_change_file>
```

## Logging

The command-line interface for Schedule Extract writes all output to the console. To preserve log information or diagnose failures, redirect output to a file. Use `>` to create a new file or `>>` to append to an existing file.

To use the **View Job Output** feature instead of file redirection, JORS must be enabled for the machine and **Capture Job Output** must be set in the Agent configuration.

:::tip Example
Redirect output to a new log file:

```shell
C:\Program Files\OpConxps\EnterpriseManager\tools>schedule_extract.cmd -opconuser ocadm -opconpassword opconxps -opconprofile OpCon -s AdHoc -o AdHoc.txt -c y -p y -v y > C:\Extract\Log\schedule_extract.log
```

:::

:::tip Example
Append output to an existing log file:

```shell
C:\Program Files\OpConxps\EnterpriseManager\tools>schedule_extract.cmd -opconuser ocadm -opconpassword opconxps -opconprofile OpCon -s AdHoc -o AdHoc.txt -c y -p y -v y >> C:\Extract\Log\schedule_extract.log
```

:::

## Exit Codes

| Exit Code | Description |
|---|---|
| `0` | The schedule extraction completed successfully. |
| `1` | The schedule extraction failed. Use the **View Job Output** feature for details. |
| `98` | The OpCon user or password is invalid. |
| `99` | One or more schedules requested for extraction do not exist in the database. |
