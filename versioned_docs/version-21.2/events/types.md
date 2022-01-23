# Event Types

This section contains the syntax, definition, and parameter descriptions for all supported OpCon events.

## Administrative Events

### $CALENDAR:ADD

The $CALENDAR:ADD event adds one or more dates to an existing calendar. If the calendar does not exist, the event will fail.

:::caution
Adding and removing dates on a calendar can have a direct impact to whether jobs will run or not.
:::

**Syntax**:

```shell
$CALENDAR:ADD,<calendar name>,<calendar dates>
```

**Parameters**:

- **<calendar name\>**: The calendar name to which to add the dates.
- **<calendar dates\>**: A semicolon (;) separated list of dates to add to the calendar. The dates must be defined using a date syntax recognized by the regional settings of the user running SMA Service Manager.

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>CALENDAR</TYPE>
   <ACTION>ADD</ACTION>
   <CALNAME></CALNAME>
   <DATES>
       <CALDATE></CALDATE>
       <CALDATE></CALDATE>\...</DATES>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $CALENDAR:DEL

The $CALENDAR:DEL event deletes one or more dates a calendar. If the calendar does not exist, the event will fail.

:::caution
Adding and removing dates on a calendar can have a direct impact to whether jobs will run or not.
:::

**Syntax**:

```shell
$CALENDAR:DEL,<calendar name>,<calendar dates>
```

**Parameters**:

- **<calendar name\>**: The calendar name to which to add the dates.
- **<calendar dates\>**: A semicolon (;) separated list of dates to remove from the calendar. The dates must be defined using a date syntax recognized by the regional settings of the user running SMA Service Manager.

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>CALENDAR</TYPE>
   <ACTION>DEL</ACTION>
   <CALNAME></CALNAME>
   <DATES>
       <CALDATE></CALDATE>
       <CALDATE></CALDATE>\...</DATES>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:MACHGRP

The $JOB:MACHGRP event changes the Machine Group for a job in the Daily.

**Syntax**:

```shell
$JOB:MACHGRP,<schedule date>,<schedule name>,<job name>,<machine group name>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job to affect on in the Daily schedule.
- **<machine group name\>**: The new Machine Group name for the job to use in the Daily schedule.

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>MACHGRP</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <MACHGRPNAME></MACHGRPNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:MAXRUNTIME

The $JOB:MAXRUNTIME event updates the maximum runtime for the job in the Daily.

**Syntax**:

```shell
$JOB:MAXRUNTIME,<schedule date>,<schedule name>,<job name>,<minutes>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**:The name of the schedule containing the job.
- **<job name\>**: The name of the job to affect on in the Daily schedule.
- **<minutes\>**: The number of minutes to set the Max Run Time for the job to use in the Daily schedule.

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>MAXRUNTIME</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <MAXMINS></MAXMINS>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:PRIORITY

The $JOB:PRIORITY event updates the SAM Priority for the job in the Daily.

**Syntax**:

```shell
$JOB:PRIORITY,<schedule date>,<schedule name>,<job name>,<SAM priority>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job to affect on in the Daily schedule.
- **<SAM priority\>**: The new SAM priority value for the job to use in the Daily schedule.

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>PRIORITY</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <PRIORITY></PRIORITY>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:TAGADD

The $JOB:TAGADD event adds one or more tags to the job in the Daily.

**Syntax**:

```shell
$JOB:TAGADD,<schedule date>,<schedule name>,<job name>,<tags>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**:The name of the schedule containing the job.
- **<job name\>**: The name of the job to affect on in the Daily schedule.
- **<tags\>**: A semicolon (;) separated list of tags to add to the Daily job.

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>TAGADD</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <TAGS>
       <TAG></TAG>
       <TAG></TAG>\...</TAGS>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:TAGDEL

The $JOB:TAGDEL event deletes one or more tags from the job in the Daily.

**Synax**:

```shell
$JOB:TAGDEL,<schedule date>,<schedule name>,<job name>,<tags>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**:The name of the schedule containing the job.
- **<job name\>**: The name of the job to affect on in the Daily schedule.
- **<tags\>**: A semicolon (;) separated list of tags to delete from the Daily job.

**Required Privileges**:

- All Adminstrative Functions

**XML Syntax**:

```xml
<EVENT\>
   <TYPE\>JOB</TYPE\>
   <ACTION\>TAGDEL</ACTION\>
   <SKDDATE\></SKDDATE\>
   <SKDNAME\></SKDNAME\>
   <JOBNAME\></JOBNAME\>
   <TAGS\>
       <TAG\></TAG\>
       <TAG\></TAG\>\...</TAGS\>
   <USERNAME\></USERNAME\>
   <USERPWD\></USERPWD\>
</EVENT\>
```

### $JOB:USER

The $JOB:USER event changes the Batch User on the job in the Daily.

**Syntax**:

```shell
$JOB:USER,<schedule date\>,<schedule name\>,<job name\>,<batch user\>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job to affect on in the Daily schedule.
- **<batch user\>**: The name of the new Batch User account for the job to use in the Daily schedule.

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>USER</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <USER></USER>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOBMASTER:BUILDSTATE

The $JOBMASTER:BUILDSTATE event changes the build status for the frequency of the job in the Master.

**Syntax**:

```shell
$JOBMASTER:BUILDSTATE,<schedule name>,<job name>,<frequency name>,<build state>
```

**Parameters**:

- **<schedule name\>**:The name of the schedule containing the job.
- **<job name\>**: The name of the job to affect on in the Master schedule.
- **<frequency name\>**: The frequency name of the job to associate the Build Status with in the Master schedule.
- **<build state\>**: The build status to set for the frequency on the job in the Master. Valid values include:
  - **D**, **Disable Frequency**, or **Disabled**
  - **R**, or **Released**
  - **S**, **To Be Skipped**, or **Skipped**
  - **N**, **Do Not Schedule**, or **Not Scheduled**
  - **H**, **On Hold**, or **Held**

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOBMASTER</TYPE>
   <ACTION>BUILDSTATE</ACTION>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <FREQNAME></FREQNAME>
   <BLDSTATE></BLDSTATE>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOBMASTER:TAGADD

The $JOBMASTER:TAGADD event adds one or more tags to the job in the Master.

**Syntax**:

```shell
$JOBMASTER:TAGADD,<schedule name>,<job name>,<frequency name>,<tags>
```

**Parameters**:

- **<schedule name\>**:The name of the schedule containing the job.
- **<job name\>**: The name of the job to affect on in the Master schedule.
- **<frequency name\>**: The frequency name of the job to associate the tag with in the Master schedule. To associate the tag at the job level, leave this field blank.
- **<tags\>**: A semicolon (;) separated list of tags to add to the Master job.

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOBMASTER</TYPE>
   <ACTION>TAGADD</ACTION>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <FREQNAME></FREQNAME>
   <TAGS>
       <TAG></TAG>
       <TAG></TAG>\...</TAGS>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOBMASTER:TAGDEL

The $JOBMASTER:TAGDEL event deletes one or more tags from the job in the Master.

**Syntax**:

```shell
$JOBMASTER:TAGDEL,<schedule name>,<job name>,<frequency name>,<tags>
```

**Parameters**:

- **<schedule name\>**:The name of the schedule containing the job.
- **<job name\>**: The name of the job to affect on in the Master schedule.
- **<frequency name\>**: The frequency name the tag is associated with on the job with in the Master schedule. To delete the tag at the job level, leave this field blank.
- **<tags\>**: A semicolon (;) separated list of tags to delete from the Master job.

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOBMASTER</TYPE>
   <ACTION>TAGDEL</ACTION>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <FREQNAME></FREQNAME>
   <TAGS>
       <TAG></TAG>
       <TAG></TAG>\...</TAGS>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $RESOURCE:DEL

The $RESOURCE:DEL event deletes the resource from the administrative tables. This event will only succeed if a cross reference check reveals that there are no jobs in the Master or Daily using this resource for a Resource Dependency or Resource Update.

:::warning
When you delete a resource, internal and external events that reference the resource will begin failing unless you modify them.
:::

**Syntax**:

```shell
$RESOURCE:DEL,<resource name>
```

**Parameters**:

- **<resource name\>**: The name of the resource to delete.

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>RESOURCE</TYPE>
   <ACTION>DEL</ACTION>
   <RESOURCENAME></RESOURCENAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $RESOURCE:RENAME

The $RESOURCE:RENAME event renames a resource in the administrative tables.

:::warning
When you rename a resource, internal and external events that reference the resource will begin failing unless you modify them.
:::

**Syntax**:

```shell
$RESOURCE:RENAME,<old resource name>, <new resource name>
```

**Parameters**:

- **<old resource name\>**: An OpCon Resource Name.
- **<new resource name\>**: An update value for the resource.

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>RESOURCE</TYPE>
   <ACTION>RENAME</ACTION>
   <OLDNAME></OLDNAME>
   <NEWNAME></NEWNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $THRESHOLD:DEL

The $THRESHOLD:DEL event deletes the threshold from the administrative tables. This event will only succeed if a cross reference check reveals that there are no jobs in the Master or Daily using this resource for a Threshold Dependency or Threshold Update.

:::warning
When you delete a threshold, internal and external events that reference the threshold will begin failing unless you modify them.
:::

**Syntax**:

```shell
$THRESHOLD:DEL,<threshold name>
```

**Parameters**:

- **<threshold name\>**: The name of the threshold to delete.

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>THRESHOLD</TYPE>
   <ACTION>DEL</ACTION>
   <THRESHNAME></THRESHNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $THRESHOLD:RENAME

The $THRESHOLD:RENAME event renames a threshold in the administrative tables.

:::warning
When you rename a threshold, internal and external events that reference the threshold will begin failing unless you modify them.
:::

**Syntax**:

```shell
$THRESHOLD:RENAME,<old threshold name>,<new threshold name>
```

**Parameters**:

- **<old threshold name\>**: An OpCon Threshold Name.
- **<new threshold name\>**: An update value for the threshold.

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>THRESHOLD</TYPE>
   <ACTION>RENAME</ACTION>
   <OLDNAME></OLDNAME>
   <NEWNAME></NEWNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

## Job-Related Events

For all job-related events, only valid job status changes are allowed. For more information, refer to [Job Statuses](../operations/status-descriptions.md#Job) in the **Concepts** online help.

### $JOB:ADD

The $JOB:ADD event adds the job from the Master tables to the Daily tables for the specified parameters. Depending on the job's "Allow Multi-Instance" setting, requesting a running job will start a duplicate job. For more information, refer to [Adding Jobs to Daily Schedules](../operations/adding-jobs.md)  in the **Concepts** online help.

**Syntax**:

```shell
$JOB:ADD,<schedule date>,<schedule name>,<job name>,<frequency name>,\[job instance property definitions\],\[reopen schedule: Y/N\],\[apply exceptions: Y/N\]
```

**Parameters**:

- **<schedule date\>**: The date to which to add the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job to add to the Daily schedule.
- **<frequency name\>**: The frequency to use for adding the correct dependencies and events for the job. If a frequency name is not specified, the job will default to its first frequency.
- **\[job instance property definitions\]**: Defines properties and values for the job being added. This parameter is optional. If not specified, the comma preceding this parameter is not required. For information on creating valid property definitions, refer to [Defining Properties](../objects/defining-properties.md) in the **Concepts** online help. Define Properties using the following syntax in the event:

    ```shell
    PropertyName1=PropertyValue1;PropertyName2=PropertyName2
    ```

    :::note
    If the job is configured to "Run on Each Machine" in a group, the MACHINENAME=<machine name\> property can be defined as the first property to add only an instance of the job for one machine.
    :::
- **\[reopen schedule: Y/N\]**: Indicates whether or not a completed parent schedule is reopened. This parameter is optional. Valid values are:
  - **Y**: Reopen a parent schedule that is closed (has run and is completed) so that any new jobs that are added via the $JOB:ADD event will run. When set to Yes (Y), this new parameter will override the "Job Events to Restart Schedules" setting in the Server Options if it is set to False.
  - **N**: Do not reopen a parent schedule that is closed (has run and is completed). Any new jobs that are added via the $JOB:ADD event will remain in a Qualifying state and never run. When set to No (N), this new parameter will override the "Job Events to Restart Schedules" setting in the Server Options if it is set to True.
  - If the parameter is not set or specified, the default value will be set to **N**.
    :::note
    SAM will reject $JOB:ADD events for Container jobs whose subschedules are In Process.
    :::
- **\[apply exceptions: Y/N\]**: Indicates whether or not exceptions will be applied to the job when the job is added. This parameter is optional. Valid values are:
  - **Y**: Apply exceptions to the job.
  - **N**: Do not apply exceptions to the job.
  - If the parameter is not set or specified, the default value will be set to **N**.

**Required Privileges**:

- Add Jobs to Daily Schedules

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>ADD</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <FREQNAME></FREQNAME>
   <PROPERTIES>
       <PROPERTY></PROPERTY>
       <PROPERTY></PROPERTY>\...</PROPERTIES>
   <REOPENSKD></REOPENSKD>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:ADDHLD

The $JOB:ADDHLD event adds the job from the Master tables to the Daily tables with a status of Held for the specified parameters. Depending on the job's "Allow Multi-Instance" setting, requesting a running job will start a duplicate job.

**Syntax**:

```shell
$JOB:ADDHLD,<schedule date>,<schedule name>,<job name>,<frequency name>,\[job instance property definitions,\[reopen schedule: Y/N\]
```

**Parameters**:

- **<schedule date\>**: The date to which to add the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job to add to the Daily schedule.
- **<frequency name\>**: The frequency to use for adding the correct dependencies and events for the job. If a frequency name is not specified, the job will default to its first frequency.
- **\[job instance property definitions\]**: Defines properties and values for the job being added. This parameter is optional. If not specified, the comma preceding this parameter is not required. For information on creating valid property definitions, refer to [Defining Properties](../objects/defining-properties.md) in the **Concepts** online help. Define Properties using the following syntax in the event:

    ```shell
    PropertyName1=PropertyValue1;PropertyName2=PropertyName2
    ```

    :::note
    If the job is configured to "Run on Each Machine" in a group, the MACHINENAME=<machine name\> property can be defined as the first property to add only an instance of the job for one machine.
    :::
- **\[reopen schedule: Y/N\]**: Indicates whether or not a completed parent schedule is reopened. This parameter is optional. Valid values are:
  - **Y**: Reopen a parent schedule that is closed (has run and is completed) so that any new jobs that are added via the $JOB:ADD event will run. When set to Yes (Y), this new parameter will override the "Job Events to Restart Schedules" setting in the Server Options if it is set to False.
  - **N**: Do not reopen a parent schedule that is closed (has run and is completed). Any new jobs that are added via the $JOB:ADD event will remain in a Qualifying state and never run. When set to No (N), this new parameter will override the "Job Events to Restart Schedules" setting in the Server Options if it is set to True.
  - If the parameter is not set or specified, the default value will be set to **N**.
    :::note
    SAM will reject $JOB:ADD events for Container jobs whose subschedules are In Process.
    :::
- **\[apply exceptions: Y/N\]**: Indicates whether or not exceptions will be applied to the job when the job is added. This parameter is optional. Valid values are:
  - **Y**: Apply exceptions to the job.
  - **N**: Do not apply exceptions to the job.
  - If the parameter is not set or specified, the default value will be set to **N**.

**Required Privileges**:

- Add Jobs to Daily Schedules.

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>ADDHLD</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <FREQNAME></FREQNAME>
   <PROPERTIES>
       <PROPERTY></PROPERTY>
       <PROPERTY></PROPERTY>\...</PROPERTIES>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:BAD

The $JOB:BAD event marks the job as Failed.

**Syntax**:

```shell
$JOB:BAD,<schedule date>,<schedule name>,<job name>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.

**Required Privileges**:

- Mark Jobs Failed

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>BAD</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:CANCEL

The $JOB:CANCEL event cancels the job. Any jobs dependent on this job does not have the dependency met. This event is allowed for jobs on 'hold'.

**Syntax**:

```shell
$JOB:CANCEL,<schedule date>,<schedule name>,<job name>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.

**Required Privileges**:

- Cancel Jobs

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>CANCEL</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:DELETE

The $JOB:DELETE event deletes the job from the Daily schedule. If the job is Running, the event is rejected.

**Syntax**:

```shell
$JOB:DELETE,<schedule date>,<schedule name>,<job name>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.

**Required Privileges**:

- Delete Jobs from Daily Schedules

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>DELETE</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:FIXED

The $JOB:FIXED event marks the job as Fixed.

**Syntax**:

```shell
$JOB:FIXED,<schedule date>,<schedule name>,<job name>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.

**Required Privileges**:

- Delete Jobs from Daily Schedules

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>DELETE</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:GOOD

The $JOB:GOOD event marks the job as Finished OK.

**Syntax**:

```shell
$JOB:GOOD,<schedule date>,<schedule name>,<job name>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.

**Required Privileges**:

- Mark Jobs Finished OK

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>GOOD</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:HOLD

The $JOB:HOLD event places the job on hold. The SAM does not start the job until it is released.

**Syntax**:

```shell
$JOB:HOLD,<schedule date>,<schedule name>,<job name>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.

**Required Privileges**:

- Hold Jobs

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>HOLD</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:KILL

The $JOB:KILL event aborts the job on the LSAM machine. OpCon reports a killed job as Failed. This event is not available for the BIS, OpenVMS, and OS 2200 platforms.

**Syntax**:

```shell
$JOB:KILL,<schedule date>,<schedule name>,<job name>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.

**Required Privileges**:

- Kill Jobs

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>KILL</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:QUESTATE

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>QUESTATE</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <JOBSTATUS></JOBSTATUS>
   <JOBPDATA></JOBPDATA>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:QUEUED

The $JOB:QUEUED event tracks user-submitted jobs on the IBM i and z/OS platforms. This event is only passed between the LSAM and the SAM. If a running job is requested, the multi-instance setting on the job is honored. By default, this event must be submitted to an active schedule, or the event is rejected.

:::note
If the job is not multi-instance and it is already associated with an OpCon job in Operations that is Waiting or Running, the SAM rejects the event. If the job is Finished OK or Failed, SAM accepts the event for processing.
:::

**Parameters**:

None

**Required Privileges**:

- TBD

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>QUEUED</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <FREQNAME></FREQNAME>
   <JOBPDATA></JOBPDATA>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

:::info More Info
For IBM i, visit the following section in the **IBM i LSAM** online help: [Adding New Schedule Frequencies](../Files/UI/Enterprise-Manager/Adding-Schedule-Frequencies.md#Adding_New_Schedule_Frequency)

For z/OS, visit the following section in the **Concepts** online help: [Tracking Externally Submitted Batch Job Events in OpCon](../job-types/zos.md#Tracking)
:::

### $JOB:RELEASE

The $JOB:RELEASE event releases the job from a Held state. The SAM starts this job once all its dependencies have been satisfied.

**Syntax**:

```shell
$JOB:RELEASE,<schedule date>,<schedule name>,<job name>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.

**Required Privileges**:

- Release Jobs

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>RELEASE</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:RESCHEDHLD

The $JOB:RESCHEDHLD reschedules the job start time after the number of minutes specified. This job will be rescheduled, but put in a Held state.

**Syntax**:

```shell
$JOB:RESCHEDHLD,<schedule date>,<schedule name>,<job name>,<T/S/N>,<minutes>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.
- **<T/S/N\>**:
  - **T**: The new start time is calculated based on the time the job Terminated.
    - If the job is on a schedule in the future that has not started, SAM uses the future schedule start date and intended start time of the job.
  - **S**: The new start time is calculated based on the time the job Started.
    - If the job is on a schedule in the future that has not started, SAM uses the future schedule start date and intended start time of the job.
  - **N**: The new start time is calculated based on Now, which is the current time the event is processed.
    :::note
    The start time of a running job cannot be rescheduled. SAM will reject $JOB:RESCHEDHLD events for Container jobs whose subschedules are In Process.
    :::
    - If the job has not run yet in an active schedule, the SAM always uses the current time the event is processed plus the number of minutes specified in the event.
    - SAM uses N by default if the value is not specified in the event.
  - **<minutes\>**: Define the number of minutes in the future to set the start time based on the setting in the T/S/N field. The maximum value is 1439.
    - For jobs that have not yet started, you can use the plus (+) and minus (-) symbols to increment or decrement the current start offset value of a job. The <T/S/N\> value is ignored in this case.

**Required Privileges**:

- Restart Jobs

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>RESCHEDHLD</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <OFFSETFROM></OFFSETFROM>
   <OFFSETMIN></OFFSETMIN>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:RESCHEDULE

The $JOB:RESCHEDULE reschedules the job start time after the number of minutes specified. The event updates the job's status to Qualifying; consequently, the event releases a Hold status and clears a To Be
Skipped status.

:::note
If the job should reschedule itself on a Finished OK or Failed status, SMA Technologies recommends using the [Job Frequency](../job-components/frequency.md) and [Other Job Details](../job-components/frequency.md#other-job-details) features in the Concepts online help.

The Job Recurrence and Retry on Job Failure features are much more efficient than the $JOB:RESCHEDULE event when used in those scenarios.
:::

By default if a schedule is Completed, the reschedule event will not automatically re-open the schedule. For information on changing the setting to "Allow Job Events to Restart Schedules", refer to [Time Settings](../administration/server-options.md#time-settings) in the **Concepts** online help.

**Syntax**:

```shell
$JOB:RESCHEDULE,<schedule date>,<schedule name>,<job name>,<T/S/N>,<minutes>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.
- **<T/S/N\>**:
  - **T**: The new start time is calculated based on the time the job Terminated.
    - If the job is on a schedule in the future that has not started, SAM uses the future schedule start date and intended start time of the job.
  - **S**: The new start time is calculated based on the time the job Started.
    - If the job is on a schedule in the future that has not started, SAM uses the future schedule start date and intended start time of the job.
  - **N**: The new start time is calculated based on Now, which is the current time the event is processed.
    :::note
    The start time of a running job cannot be rescheduled. SAM will reject $JOB:RESCHEDULE events for Container jobs whose subschedules are In Process.
    :::
    - If the job has not run yet in an active schedule, the SAM always uses the current time the event is processed plus the number of minutes specified in the event.
    - SAM uses N by default if the value is not specified in the event.
  - **<minutes\>**: Define the number of minutes in the future to set the start time based on the setting in the T/S/N field. The maximum value is 1439.
    - For jobs that have not yet started, you can use the plus (+) and minus (-) symbols to increment or decrement the current start offset value of a job. The <T/S/N\> value is ignored in this case.

**Required Privileges**:

- Restart Jobs

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>RESCHEDULE</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <OFFSETFROM></OFFSETFROM>
   <OFFSETMIN></OFFSETMIN>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:RESTART

The $JOB:RESTART event places the job back in a Qualifying state. The job is started as soon as all dependencies are met. By default, the job must be restarted in an active schedule, or the event is rejected.

**Syntax**:

```shell
$JOB:RESTART,<schedule date>,<schedule name>,<job name>,\[Force Restart (optional)\],\[Restart Step (optional)\]
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.
- **\[Force Restart (optional)\]:** Indicates whether or not to force start the job. This parameter is optional. Valid values are:
  - **Y**: Force start the job.
  - **N**: Do not force start the job.
  - If the parameter is not set or specified, the default value will be set to **N**.
- **\[Restart Step (optional)\]**: Specifies whether or not to restart the job on a pre-configured step setting. This parameter is optional and is only supported for the SAP R/3 and CRM, SAP BW, UNIX, and z/OS platforms. Valid values are dependent on the host system:
  - SAP: For more information about the valid values for the SAP system, refer to the [SAP LSAM Advanced Features](https://help.smatechnologies.com/opcon/agents/sap/latest/Files/Agents/SAP/Advanced-Features.md) in the SAP agent documentation.
  - SAP BW: For more information about the valid values for the SAP BW system, refer to the [SAP BW LSAM Advanced Features](https://help.smatechnologies.com/opcon/agents/sapbw/latest/Files/Agents/SAP-BW/Advanced-Features.md)in the SAP BW agent documentation.
  - UNIX: For more information about the valid values for the UNIX system, refer to [sma_job_step](https://help.smatechnologies.com/opcon/agents/unix/latest/Files/Agents/UNIX/sma_job_step.md#UNIX/Operations-and-Component/Operating-the-LSAM/Utilities/sma_job_step) in the UNIX agent documentation.
  - z/OS: The start and end steps can be specified in the 'JCL' format (jobstep or jobstep.procstep), separated by a pipe character. If there is no pipe, or it is not followed by a step name, the job will run to the end. If there is no starting step (i.e., the restart step starts with a pipe), then the job will be restarted without using the step restart feature.

**Required Privileges**:

- Restart Jobs

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>RESTART</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:RESTARTHLD

The $JOB:RESTARTHLD event places the job back in a Held state. The job will be started as soon as all dependencies are met and it is **Released**. By default, the job must be restarted in an active schedule, or the event will be rejected.

**Syntax**:

```shell
$JOB:RESTARTHLD,<schedule date>,<schedule name>,<job name>,\[Force Restart (optional)\],\[Restart Step (optional)\]
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.
- **\[Force Restart (optional)\]:** Indicates whether or not to force start the job. This parameter is optional. Valid values are:
  - **Y**: Force start the job.
  - **N**: Do not force start the job.
  - If the parameter is not set or specified, the default value will be set to **N**.
- **\[Restart Step (optional)\]**: Specifies whether or not to restart the job on a pre-configured step setting. This parameter is optional and is only supported for the SAP R/3 and CRM, SAP BW, UNIX, and z/OS platforms. Valid values are dependent on the host system:
  - SAP: For more information about the valid values for the SAP system, refer to the [SAP LSAM Advanced Features](https://help.smatechnologies.com/opcon/agents/sap/latest/Files/Agents/SAP/Advanced-Features.md) in the SAP agent documentation.
  - SAP BW: For more information about the valid values for the SAP BW system, refer to the [SAP BW LSAM Advanced Features](https://help.smatechnologies.com/opcon/agents/sapbw/latest/Files/Agents/SAP-BW/Advanced-Features.md)in the SAP BW agent documentation.
  - UNIX: For more information about the valid values for the UNIX system, refer to [sma_job_step](https://help.smatechnologies.com/opcon/agents/unix/latest/Files/Agents/UNIX/sma_job_step.md#UNIX/Operations-and-Component/Operating-the-LSAM/Utilities/sma_job_step) in the UNIX agent documentation.
  - z/OS: The start and end steps can be specified in the 'JCL' format (jobstep or jobstep.procstep), separated by a pipe character. If there is no pipe, or it is not followed by a step name, the job will run to the end. If there is no starting step (i.e., the restart step starts with a pipe), then the job will be restarted without using the step restart feature.

**Required Privileges**:

- Restart Jobs

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>RESTARTHLD</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:SKIP

The $JOB:SKIP event places the job in a Job to be Skipped state until the job qualifies to start. When the job qualifies, it is canceled and the job dependency of all subsequent jobs is met.

**Syntax**:

```shell
$JOB:SKIP,<schedule date>,<schedule name>,<job name>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.

**Required Privileges**:

- Skip Jobs

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>SKIP</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:START

The $JOB:START event triggers SAM to disregard all dependencies and start the job immediately. This event is invalid for jobs that are in a Skipped status.

**Syntax**:

```shell
$JOB:START,<schedule date>,<schedule name>,<job name>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.

**Required Privileges**:

- Start Jobs

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>START</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:TRACK

The $JOB:TRACK event tracks user-submitted jobs on the IBM i, MCP, and z/OS platforms. This event is only passed between the LSAM and the SAM. By default, this event must be submitted to an active schedule, or the event is rejected.

Tracked jobs can be controlled by the multi-instance box to prevent or allow duplicate jobs.

:::info
Provided here are references for implementing the Job Tracking concept.

For IBM i, visit the following section in the **IBM i LSAM** online help: [Adding New Schedule Frequencies](../Files/UI/Enterprise-Manager/Adding-Schedule-Frequencies.md#Adding_New_Schedule_Frequency)

For MCP, visit the following section in the **MCP LSAM** online help: [Using SMA/Announce](https://help.smatechnologies.com/opcon/agents/mcp/latest/Files/Agents/MCP/Using-SMA_ANNOUNCE.md)

For z/OS, visit the following section in the **Concepts** online help: [Tracking Externally Submitted Batch Job Events in OpCon](../job-types/zos.md#tracking)
:::

**Parameters**:

None

**XML Syntax**:

```xml
<EVENT>
   <TYPE>JOB</TYPE>
   <ACTION>TRACK</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <JOBNAME></JOBNAME>
   <FREQNAME></FREQNAME>
   <JOBPDATA></JOBPDATA>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $JOB:UNDERREVIEW

The$JOB:UNDERREVIEW event marks the job as Under Review.

**Syntax**:

```shell
$JOB:UNDERREVIEW,<schedule date>,<schedule name>,<job name>
```

**Parameters**:

- **<schedule date\>**: The date of the Daily schedule containing the job.
- **<schedule name\>**: The name of the schedule containing the job.
- **<job name\>**: The name of the job on which to execute command in the Daily schedule.

## Machine-Related Events

### $MACHINE:MAXJOBS

**XML Syntax**:

```xml
<EVENT>
   <TYPE>MACHINE</TYPE>
   <ACTION>MAXJOBS</ACTION>
   <MACHNAME></MACHNAME>
   <MACHMAX></MACHMAX>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $MACHINE:STATUS

The $MACHINE:STATUS event changes the communication status of a machine.

:::note
Placing a machine in a down state instructs the SAM to stop communicating with the specified machine. Jobs currently active on the specified machine run until completion.
:::

**Syntax**:

```shell
$MACHINE:STATUS,<machine name>,<U/D/L>
```

**Parameters**:

- **<machine name\>**: An OpCon Machine Name.
- **<U/D/L\>**: The requested machine state.
  - **U**: Places the machine in an up state.
  - **D**: Places the machine in a down state.
  - **L**: Places the machine in a limited state (no job starts will be sent).

**Required Privileges**:

- All Administrative Functions

**XML Syntax**:

```xml
<EVENT>
   <TYPE>MACHINE</TYPE>
   <ACTION>STATUS</ACTION>
   <MACHNAME></MACHNAME>
   <MACHSTATUS></MACHSTATUS>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

## Notification Events

### $NOTIFY:COMMAND

The $NOTIFY:COMMAND event runs a command.

:::note
This notification event is disabled on Linux. Events defined prior to Release 20.0.0 will be disabled.
:::

**Syntax**:

```shell
$NOTIFY:COMMAND,<path and command to run>,\[workingdir\],<batch user>
```

**Parameters**:

- **<path and command to run\>**: Full path and name of the program to run as well as any arguments to be passed to it.
- **\[workingdir\]**: Working directory used by the program.
- **<batch user\>**: The user with permissions to run the program.

**Required Privileges**:

- ?

**XML Syntax**:

```xml
<EVENT>
   <TYPE>NOTIFY</TYPE>
   <ACTION>COMMAND</ACTION>
   <WINCOMMAND></WINCOMMAND>
   <WORKDIR></WORKDIR>
   <BATCHUSER></BATCHUSER>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $NOTIFY:EMAIL

The $NOTIFY:EMAIL event sends an SMTP mail message.

**Syntax**:

```shell
$NOTIFY:EMAIL,<to>,\[cc\],\[ccc\],<subject>,<message>,\[attachments\],\[exclude prefix information from header: Y/N\]
```

**Parameters**:

- **<to\>**: One or more email address (including distribution groups), separated by semicolons (;), to receive the message.
- **\[cc\]**: One or more email address (including distribution groups), separated by semicolons (;), to be copied on the message.
- **\[bcc\]**: One or more email address (including distribution groups), separated by semicolons (;), to be blind copied on the message.
- **<subject\>**: The subject of the email.
- **<message\>**: Defines a complete, detailed message in the body of the email. By default, no machine, schedule, or job information is passed with this notification.
- **\[attachments\]**: Defines the full UNC path to one or more attachments. This parameter is optional. Separate multiple attachments using pipes (\|) (e.g., \\\\server1\\file1\|\\\\Server1\\file2).
- **\[exclude prefix information from header: Y/N\]**: Specifies whether or not to include all prefix (system-generated) information in the header of the notification. This parameter is optional.

  :::note
  By default, this parameter is set to N (No). This means that the SMA Notify Handler will insert the system-generated information , which includes a Notification ID, before any other information in the message so users can look up the source of a notification. For more information, refer to [Looking up Notification Sources](../Files/UI/Enterprise-Manager/Looking-up-Notification-Sources.md) in the **Enterprise Manager** online help.
  :::

**XML Syntax**:

```xml
<EVENT>
   <TYPE>NOTIFY</TYPE>
   <ACTION>EMAIL</ACTION>
   <MAILTO></MAILTO>
   <MAILCC></MAILCC>
   <MAILBCC></MAILBCC>
   <MAILSUBJ></MAILSUBJ>
   <MAILBODY></MAILBODY>
   <ATTACHMENTS>
       <ATTACH></ATTACH>
       <ATTACH></ATTACH>\...</ATTACHMENTS>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $NOTIFY:LOG

The $NOTIFY:LOG event logs a notification message to the Windows Event Log.

:::note
This notification event is disabled on Linux. Events defined prior to Release 20.0.0 will be disabled.
:::

**Syntax**:

```shell
$NOTIFY:LOG,<severity>,<eventid>,<message>,\[event source\],\[exclude prefix information from header: Y/N\]
```

**Parameters**:

- **<severity\>**: The event severity to be placed in the Windows
    Event Log. Valid values are: **I**, **W**, and **E**. **I** is
    Informational, **W** is Warning, and **E** is Error.
- **<eventid\>**: The same Event ID used in the Notification Manager
    when defining an Windows Event Log notification. A third-party
    notification tool uses this number to process the notification.
- **<message\>**: Defines a complete, detailed message. By default,
    no machine, schedule, or job information is passed with this
    notification.
- **\[event Source\]**: Defines a custom Source ID for OpCon to use when writing to the Windows
    Event Log.
- **\[exclude prefix information from header: Y/N\]**: Specifies whether or not to include all prefix (system-generated) information in the header of the notification. This parameter is optional.

**XML Syntax**:

```xml
<EVENT>
   <TYPE>NOTIFY</TYPE>
   <ACTION>LOG</ACTION>
   <LOGSEV></LOGSEV>
   <LOGID></LOGID>
   <LOGMSG></LOGMSG>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $NOTIFY:NETSEND

The $NOTIFY:NETSEND event sends a network pop-up message.

:::note
This notification event is disabled on Linux. Events defined prior to Release 20.0.0 will be disabled.
:::

**Syntax**:

```shell
$NOTIFY:NETSEND,<machine>,<message>,\[exclude prefix information from header: Y/N\]
```

**Parameters**:

- **<machine\>**: A single machine to receive the network pop-up message.
- **<message\>**: The message for the network window. Defines a complete, detailed message. By default, no machine, schedule, or job information is passed with this notification.
- **\[exclude prefix information from header: Y/N\]**: Specifies whether or not to include all prefix (system-generated) information in the header of the notification. This parameter is optional.

**XML Syntax**:

```xml
<EVENT>
   <TYPE>NOTIFY</TYPE>
   <ACTION>NETSEND</ACTION>
   <NETMACH></NETMACH>
   <NETMSG></NETMSG>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $NOTIFY:SNMP

The $NOTIFY:SNMP event sends an SNMP trap to an SNMP Trap manager. The SMA Notify Handler must be configured for SNMP notifications.

:::note
This notification event is disabled on Linux. Events defined prior to Release 20.0.0 will be disabled.
:::

**Syntax**:

```shell
$NOTIFY:SNMP,<severity>,<eventid>,<message>,\[exclude notification id from header: Y/N\]
```

**Parameters**:

- **<severity\>**: The SNMP severity for the SNMP trap. Valid values range from 1 to 5. 1 is Critical, 2 is Major, 3 is Minor, 4 is Warning, and 5 is Information.
- **<eventid\>**: The same Event ID used in the Notification Manager when defining an SNMP notification. A third-party notification tool uses this number to process the notification.
- **<message\>**: The SNMP trap's text. Defines a complete, detailed message. By default, no machine, schedule, or job information is passed with this notification.
- **\[exclude notification id from header: Y/N\]**: Specifies whether or not to include the Notification ID in the header of the notification. This parameter is optional.

**XML Syntax**:

```xml
<EVENT>
   <TYPE>NOTIFY</TYPE>
   <ACTION>SNMP</ACTION>
   <SNMPTRAP></SNMPTRAP>
   <SNMPID></SNMPID>
   <SNMPMSG></SNMPMSG>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $NOTIFY:SPOAL

The $NOTIFY:SPOAL event sends and AL event report to SPO. The SMA Notify Handler must be configured for SPO notifications.

:::note
This notification event is disabled on Linux. Events defined prior to Release 20.0.0 will be disabled.
:::

**Syntax**:

```shell
$NOTIFY:SPOAL,<text\>,<severity>,<alarmid>,<alarmqual>,\[exclude notification id from header: Y/N\]
```

**Parameters**:

- **<text\>**:The text for the AL event report. To send the default <lsam_mach_name\> <schedule_date\> <schedule_name\> <job_name\>, do not type any text and enter a comma to indicate the start of the next parameter.
- **<severity\>**: The SPO severity. Valid values are Critical, Major, Minor, Warning, Informational, Indeterminate, and Clear.
- **<alarmid\>**: The SPO Alarmid.
- **<alarmqual\>**: The SPO Alarmqual
- **\[exclude notification id from header: Y/N\]**: Specifies whether or not to include the Notification ID in the header of the notification. This parameter is optional.

**XML Syntax**:

```xml
<EVENT>
   <TYPE>NOTIFY</TYPE>
   <ACTION>SPOAL</ACTION>
   <SPOALARMMSG></SPOALARMMSG>
   <SPOSEV></SPOSEV>
   <SPOALARMID></SPOALARMID>
   <SPOALARMQUAL></SPOALARMQUAL>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $NOTIFY:SPOCO

The $NOTIFY:SPOCO event sends a CO event report to SPO. The SMA Notify Handler must be configured for SPO notifications.

:::note
This notification event is disabled on Linux. Events defined prior to Release 20.0.0 will be disabled.
:::

**Syntax**:

```shell
$NOTIFY:SPOCO,<instance>,<command>
```

**Parameters**:

- **<instance\>**: The SPO instance to process the command.
- **<command\>**: The command for SPO to process.

**XML Syntax**:

```xml
<EVENT>
   <TYPE>NOTIFY</TYPE>
   <ACTION>SPOCO</ACTION>
   <SPOINST></SPOINST>
   <SPOCOMMAND></SPOCOMMAND>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $NOTIFY:TASKS

The $NOTIFY:TASKS event sends an SMTP mail message (or multiple if needed) with the email body containing:

- **Task Counts for <Customer Name from License File\>**: This section contains a comma-separated list of:
  - Period: The date or month for which the report processed.
  - LSAM Type: The type of LSAM that processed the tasks.
  - Number of Days with tasks: The number of days on which tasks processed in the period.
  - Total Tasks in Period: The total number of tasks that processed in the selected period.
  - Avg Tasks per Day: The average number of tasks that processed each day in the selected period.
  - Following the first list, there is a comma-separated list of:
    - Exceeded Max Date: The date on which the total number of tasks per day was exceeded.
    - LSAM Type: The LSAM type that processed too many tasks.
    - Total Tasks: The total number of tasks that were processed by the LSAM Type on the date the tasks were exceeded.
- **Tasks Counted for SMA Utility Jobs**: In a comma-separated list, this section contains the list of jobs that were not counted against the task based license:
  - Period: The date or month for which the report processed.
  - LSAM Type: The type of LSAM that processed the tasks.
  - Number of Days with tasks: Within the LSAM Type, the number of days on which tasks processed in the period.
  - Total Tasks in Period: Within the LSAM Type, the total number of tasks that processed in the selected period.
  - Avg Tasks per Day: Within the LSAM Type, the average number tasks that processed each day in the selected period.
- **Tasks Counts by Department**: This section contains a list of tasks by Department in a comma-separated list of:
  - Period: The date or month for which the report processed.
  - Dept Name: The Department in which the tasks processed.
  - Number of Days with tasks: Within the Department, the number of days on which tasks processed in the selected period.
  - Total Tasks in Period: Within the Department, the total number of tasks that processed in the selected period.
  - Avg Tasks per Day: Within the Department, the average number of tasks that processed each day in the selected period.

**Syntax**:

```shell
$NOTIFY:TASKS,<To>,<Cc>,<Bcc>,<Subject>,<Date Desired>
```

**Parameters**:

- **<To\>**: One or more email address (including distribution groups), separated by semicolons (;), to receive the message.
  - To generate specific task based license reporting information to send to SMA Technologies, enter the license email address for your SMA Technologies sales and support office:
    - For SMA Europe, use <license-eu@smatechnologies.com>.
    - For SMA France, use <license-fr@smatechnologies.com>.
    - For SMA USA, use <license@smatechnologies.com>.
  - If the Send Email to SMA Office value in the Global Options is set to Disabled, SAM will write the license reporting information to the SAM.log file only, and no email is sent as a result of the event.
  - If the Send Email to SMA Office value in the Global Options has and SMA Technologies             office selected, the license reporting information will be emailed to SMA Technologies.
- **<Cc\>**: One or more email address (including distribution groups), separated by semicolons (;), to be copied on the message.
- **<Bcc\>**: One or more email address (including distribution groups), separated by semicolons (;), to be blind copied on the message.
- **<Subject\>**: The subject of the email.
- **<Date Desired\>**: Define a single date or a month name defined using the syntax recognized by the regional settings of the user running SMA Service Manager.

```xml
<EVENT>
   <TYPE>NOTIFY</TYPE>
   <ACTION>TASKS</ACTION>
   <MAILTO></MAILTO>
   <MAILCC></MAILCC>
   <MAILBCC></MAILBCC>
   <MAILSUBJ></MAILSUBJ>
   <DATEDESIRED></DATEDESIRED>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $NOTIFY:TEXTMSG

The $NOTIFY:TEXTMSG event sends a text message.

**Syntax**:

```shell
$NOTIFY:TEXTMSG,<to>,<message>,\[exclude notification id from header: Y/N\]
```

**Parameters**:

- **<to\>**: A single SMTP email address to an SMS-capable device.
- **<message\>**: The notification message's text. Defines a complete, detailed message. By default, no machine, schedule, or job information is passed with this notification.
- **\[exclude notification id from header: Y/N\]**: Specifies whether or not to include the Notification ID in the header of the notification. This parameter is optional.

**XML Syntax**:

```xml
<EVENT>
   <TYPE>NOTIFY</TYPE>
   <ACTION>TEXTMSG</ACTION>
   <TEXTTO></TEXTTO>
   <TEXTMSG></TEXTMSG>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

## Property-Related Events

For each of the property events, the specified Property Name must completely identify the property. The syntax for identifying a property depends on whether the property is an OpCon Instance, Machine Instance, Schedule Instance, or Job Instance property. Machine, Schedule, and Job Instance properties have optional qualifiers to specifically identify an instance. For additional information, refer to [Fully Qualified Property Name Syntax](../objects/using-properties.md#Fully) in the **Concepts** online help. For more information on creating valid property definitions, refer to [Defining Properties](../objects/defining-properties.md) in the **Concepts** online help.

:::note
If the property name or any of the qualifiers contain periods (.), square brackets ( [ or ] ), or curly brackets ( { or } ) in their names, the name must be enclosed in quotes to preserve the syntax of the property name. For example, a JI property could look like this:

JI."File.Name"."08.01.2010"."Sched[Name]"."Job{Name}"
:::

### $PROPERTY:ADD

The $PROPERTY:ADD event adds a new property (of any type) to the database with the value specified. If the event attempts to add a property that already exists, the event merely sets the property value.

:::note
This replaced $TOKEN:ADD.
:::

**Syntax**:

```shell
$PROPERTY:ADD,<property name>,<initial value>
```

**Parameters**:

- **<property name\>**: The property name.
- **<initial value\>**: The initial value given to the property name.

:::tip Example
For a $PROPERTY:ADD event attached to a Schedule or Job (internal event), the following are valid for adding a property to a subschedule whose parent schedule is a multi-instance schedule:

$PROPERTY:ADD,JI.FileName.[[$SCHEDULE DATE]]."

Schedule.Name_InstanceName[subSched]".Job Name,Value - or -

$PROPERTY:ADD,JI.FileName.[[$SCHEDULE DATE]].

[[$SCHEDULE NAME]]_InstanceName[subSched].Job Name,Value

For an External $PROPERTY:ADD event, the following would be valid:

$PROPERTY:ADD,JI.FileName.[[$DATE]]."Schedule.Name_InstanceName

[SubSched]".Job Name,Value - or -

$PROPERTY:ADD,JI.FileName.SpecificDate.Schedule.Name_InstanceName
[SubSched].Job Name,Value
:::

**Required Privileges**:

- Manage Global Properties

**XML Syntax**:

```xml
<EVENT>
   <TYPE>PROPERTY</TYPE>
   <ACTION>ADD</ACTION>
   <PROPNAME></PROPNAME>
   <PROPVALUE></PROPVALUE>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $PROPERTY:DELETE

The $PROPERTY:DELETE event deletes an existing property from the database.

:::note
This replaced $TOKEN:DELETE.
:::

**Syntax**:

```shell
$PROPERTY:DELETE,<property name
```

**Parameters**:

- **<property name\>**: The property name.

**Required Privileges**:

- Maintain Global Properties

**XML Syntax**:

```xml
<EVENT>
   <TYPE>PROPERTY</TYPE>
   <ACTION>DELETE</ACTION>
   <PROPNAME></PROPNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $PROPERTY:SET

The $PROPERTY:SET event sets the value of any existing property to the specified value.

:::note
This replaced $TOKEN:SET.
:::

:::note
If a $PROPERTY:SET event is created for a global property that is encrypted, then the value of the property will get updated and stored as a clear text value and NOT as an encrypted value.
:::

**Syntax**:

```shell
$PROPERTY:SET,<property name>,<value>
```

**Parameters**:

- **<property name\>**: The property name.
- **<value\>**: The value of the property defined.

**Required Privileges**:

- Maintain Global Properties

**XML Syntax**:

```xml
<EVENT>
   <TYPE>PROPERTY</TYPE>
   <ACTION>SET</ACTION>
   <PROPNAME></PROPNAME>
   <PROPVALUE></PROPVALUE>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

## SAM Log Events

### $CONSOLE:DISPLAY

The $CONSOLE:DISPLAY event writes a message to the SAM.log file.

**Syntax**:

```shell
$CONSOLE:DISPLAY,<message>
```

**Parameters**:

- **<message\>**: A user-defined message.

**XML Syntax**:

```xml
<EVENT>
   <TYPE>CONSOLE</TYPE>
   <ACTION>DISPLAY</ACTION>
   <MSG></MSG>
   <USERNAME>SYSTEM</USERNAME>
   <USERPWD>MESSAGE</USERPWD>
</EVENT>
```

## Schedule-Related Events

For all schedule-related events, only valid schedule status changes are allowed. For more information, refer to [Schedule Statuses](../operations/status-descriptions.md#schedule-statuses) in the **Concepts** online help.

### $SCHEDULE:BUILD

If the **SMA_SKD_BUILD** job exists on the AdHoc schedule in the Master and the event fails for some reason, the SAM will process any events defined on the SMA_SKD_BUILD job for the Failed status. The job will not actually be added to the Daily for processing. Only the notifications and other events associated with "Build Failure" will be processed.

**Syntax**:

```shell
$SCHEDULE:BUILD,<schedule date>,<schedule name>,\[log file\],<Y/N>,\[schedule instance property definitions\],\[Named Instance to build\]
```

**Parameters**:

- **<schedule date\>**: The date for which to build the schedule.
  :::note
  By default, if the date resolves to a date in the past, the schedule will be built On Hold.
  :::
- **<schedule name\>**: The name of the schedule to build.
- **\[log file\]**: An optional argument specifying the path and/or file name for creating a detailed log file of the build. The default path and filename is: <Output Directory\>\\SAM\\Log\\SMASchedMan\\ScheduleName_Build_ScheduleDate_RequestID.log
- **<Y/N\>**: Determines whether to overwrite an existing schedule or not. Valid entries include:
  - **Y**: Overwrite
  - **N**: Do Not Overwrite (N is the default)
- **\[schedule instance property definitions\]**: Defines Schedule Instance Properties for the schedule being built. This parameter is optional. If not specified, the comma preceding this parameter is not required. For information on creating valid property definitions, refer to [Defining Properties](../objects/defining-properties.md) in the **Concepts** online help. Use the following syntax to
define properties in the event:

  ```shell
  PropertyName1=value;PropertyName2=value,etc...
  ```

  :::tip Example
  $SCHEDULE:BUILD,[[$DATE]],ProcessCreditCards,,Y,StoreNumber=2682;FileDate=123456,batchuser,batchpassword
  :::
  - If the schedule has Schedule Instance definitions, and all instances should be built, do not specify Schedule Instance Property Definitions on the event. By default, all predefined instances will build.
  - If the schedule is configured to "Build an instance for each machine in Machine Group," and the build is intended for only one specific Machine, specify the machine by adding a property named MACHINENAME as the first property definition.
    :::tip Example
    $SCHEDULE:BUILD,[[$DATE]],NightlyBackup,,Y,MACHINENAME=WinServer2,batchuser,batchpassword
    :::
- **\[Named Instance to build\]**: Defines the named instance of the schedule to build. This parameter is optional. If not specified, the comma preceding this parameter is not required. For information on referencing valid named instances, refer to [Named Schedule Instances](../automation-concepts/named-schedule-instances.md) in the **Concepts** online help. Use the following syntax to define the instance name in the event:

  ```shell
  InstanceName=value
  ```
  
  :::tip Example
  $SCHEDULE:BUILD,[[$DATE]],ProcessCreditCards,,Y,,InstanceName=WinServer2
  :::
  - If the instance name is specified in the event string, SMASchedMan will build the named instance of the schedule, copy all properties defined for that instance, and copy any user-defined properties in the event string.
  - If the instance name specified in the event string, but the schedule being built is not associated with any named instances, then the build will fail.
  - If no instance name is specified in the event and the schedule is associated with named instances, then all named instances will get built (with any user-defined properties added to each instance).

**Required Privileges**:

- Build Daily Schedules

**XML Syntax**:

```xml
<EVENT>
   <TYPE>SCHEDULE</TYPE>
   <ACTION>BUILD</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <OVERWRITE></OVERWRITE>
   <PROPERTIES>
       <PROPERTY></PROPERTY>
       <PROPERTY></PROPERTY>\...</PROPERTIES>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $SCHEDULE:BUILDHLD

If the **SMA_SKD_BUILD** job exists on the AdHoc schedule in the Master and the event fails for some reason, the SAM will process any Events defined on the SMA_SKD_BUILD job for the Failed status. The job will not actually be added to the Daily for processing. Only the notifications and other events associated with "Build Failure" will be processed.

**Syntax**:

```shell
$SCHEDULE:BUILDHLD,<schedule date>,<schedule name>,\[log file\], <Y/N>,\[schedule instance property definitions\],\[Named Instance to build\]
```

**Parameters**:

- **<schedule date\>**: The date for which to build the schedule.
- **<schedule name\>**: The name of the schedule to build.
- **\[log file\]**: An optional argument specifying the path and/or file name for creating a detailed log file of the build. The default path and filename is: <Output Directory\>\\SAM\\Log\\SMASchedMan\\ScheduleName_Build_ScheduleDate_RequestID.log
- **<Y/N\>**: Determines whether to overwrite an existing schedule or not. Valid entries include:
  - **Y**: Overwrite
  - **N**: Do Not Overwrite (N is the default)
- **\[schedule instance property definitions\]**: Defines Schedule Instance Properties for the schedule being built. This parameter is optional. If not specified, the comma preceding this parameter is not required. For information on creating valid property definitions, refer to [Defining Properties](../objects/defining-properties.md) in the **Concepts** online help. Use the following syntax to
define properties in the event:

  ```shell
  PropertyName1=value;PropertyName2=value,etc...
  ```

  :::tip Example
  $SCHEDULE:BUILDHLD,[[$DATE]],ProcessCreditCards,,Y,StoreNumber=2682;FileDate=123456,batchuser,batchpassword
  :::
  - If the schedule has Schedule Instance definitions, and all instances should be built, do not specify Schedule Instance Property Definitions on the event. By default, all predefined instances will build.
  - If the schedule is configured to "Build an instance for each machine in Machine Group," and the build is intended for only one specific Machine, specify the machine by adding a property named MACHINENAME as the first property definition.
    :::tip Example
    $SCHEDULE:BUILDHLD,[[$DATE]],NightlyBackup,,Y,MACHINENAME=WinServer2,batchuser,batchpassword
    :::
- **\[Named Instance to build\]**: Defines the named instance of the schedule to build. This parameter is optional. If not specified, the comma preceding this parameter is not required. For information on referencing valid named instances, refer to [Named Schedule Instances](../automation-concepts/named-schedule-instances.md) in the **Concepts** online help. Use the following syntax to define the instance name in the event:

  ```shell
  InstanceName=value
  ```
  
  :::tip Example
  $SCHEDULE:BUILDHLD,[[$DATE]],ProcessCreditCards,,Y,,InstanceName=WinServer2
  :::
  - If the instance name is specified in the event string, SMASchedMan will build the named instance of the schedule, copy all properties defined for that instance, and copy any user-defined properties in the event string.
  - If the instance name specified in the event string, but the schedule being built is not associated with any named instances, then the build will fail.
  - If no instance name is specified in the event and the schedule is associated with named instances, then all named instances will get built (with any user-defined properties added to each instance).

**Required Privileges**:

- Build Daily Schedules

**XML Syntax**:

```xml
<EVENT>
   <TYPE>SCHEDULE</TYPE>
   <ACTION>BUILDHLD</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <OVERWRITE></OVERWRITE>
   <PROPERTIES>
       <PROPERTY></PROPERTY>
       <PROPERTY></PROPERTY>\...</PROPERTIES>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $SCHEDULE:CHECK

If the **SMA_SKD_CHECK** job exists on the AdHoc schedule in the Master and the event fails for some reason, the SAM will process any Events defined on the SMA_SKD_CHECK job for the Failed status. The job will not actually be added to the Daily for processing. Only the notifications and other events associated with "Check Failure" will be processed.

**Syntax**:

```shell
$SCHEDULE:CHECK,<schedule date>,<schedule name>,\[log file\],<Y/N/S>
```

**Parameters**:

- **<schedule date\>**: The date to check the schedule on.
- **<schedule name\>**: The exact schedule name to check. To check all instances of a multi-instance schedule, specify the master schedule name.
- **\[log file\]**: An optional argument specifying the path and/or file name for creating a detailed log file of the check. The default path and filename is: <Output Directory\>\\SAM\\Log\\SMASchedMan\\ScheduleName_RequestID.log
- **<Y/N/S\>**: Indicates if circular dependencies are included in the process. Valid values are:
  - **Y**: Check for circular dependencies
  - **N**: Do not check for circular dependencies (**N** is the default)
  - **S**: Perform a simple check which skips after, conflict, and circular dependencies.

**Required Privileges**:

- Build Daily Schedules

**XML Syntax**:

```xml
<EVENT>
   <TYPE>SCHEDULE</TYPE>
   <ACTION>CHECK</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <CIRCCHECK></CIRCCHECK>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $SCHEDULE:CHECKALL

- If the **SMA_SKD_CHECK** job exists on the AdHoc schedule in the Master and the event fails for some reason, the SAM will process any Events defined on the SMA_SKD_CHECK job for the Failed status. The job will not actually be added to the Daily for processing. Only the notifications and other events associated with "Check Failure" will be processed.
- If the **SMA_SKD_CHECK** job does not exist, the check request is inserted directly into the database for processing, and notification will *not* be sent if the process fails.

**Syntax**:

```shell
$SCHEDULE:CHECKALL,<schedule date>,\[log file\],<Y/N/S>
```

**Parameters**:

- **<schedule date\>**: The date to check the schedule on.
- **\[log file\]**: An optional argument specifying the path and/or file name for creating a detailed log file of the check. The default path and filename is: <Output Directory\>\\SAM\\Log\\SMASchedMan\\ScheduleDate_RequestID.log
- **<Y/N/S\>**: Indicates if circular dependencies are included in the process. Valid values are:
  - **Y**: Check for circular dependencies
  - **N**: Do not check for circular dependencies (**N** is the default)
  - **S**: Perform a simple check which skips after, conflict, and circular dependencies.

**Required Privileges**:

- Build Daily Schedules

**XML Syntax**:

```xml
<EVENT>
   <TYPE>SCHEDULE</TYPE>
   <ACTION>CHECKALL</ACTION>
   <SKDDATE></SKDDATE>
   <CIRCCHECK></CIRCCHECK>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $SCHEDULE:CANCEL

The $SCHEDULE:CANCEL event cancels all jobs on the schedule.

**Syntax**:

```shell
$SCHEDULE:CANCEL,<schedule date>,<schedule name>
```

**Parameters**:

- **<schedule date\>**: A date entered in the same date format as the syntax recognized by the regional settings of the user running SMA Service Manager.
- **<schedule name\>**: An OpCon Schedule Name.

**Required Privileges**:

- Cancel Jobs

**XML Syntax**:

```xml
<EVENT>
   <TYPE>SCHEDULE</TYPE>
   <ACTION>CANCEL</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $SCHEDULE:DELETE

The $SCHEDULE:DELETE event causes the schedule to be deleted from a specific schedule date.

If the **SMA_SKD_DELETE** job exists on the AdHoc schedule in the Master and the event fails for some reason, the SAM will process any Events defined on the SMA_SKD_delete job for the Failed status. The job will not actually be added to the Daily for processing. Only the notifications and other events associated with "Delete Failure" will be processed.

**Syntax**:

```shell
$SCHEDULE:DELETE,<schedule date>,<schedule name>,\[log file\]
```

**Parameters**:

- **<schedule date\>**: The date from which to delete the schedule.
- **<schedule name\>**: The exact schedule name to delete. To delete all instances of a multi-instance schedule, specify the master schedule name.
- **\[log file\]**: An optional argument specifying the path and/or file name for creating a detailed log file of the delete. The default path and filename is: <Output Directory\>\\SAM\\Log\\SMASchedMan\\ScheduleName_Delete_ScheduleDate_RequestID.log

**Required Privileges**:

- Delete Daily Schedules

**XML Syntax**:

```xml
<EVENT>
   <TYPE>SCHEDULE</TYPE>
   <ACTION>DELETE</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $SCHEDULE:HOLD

The $SCHEDULE:HOLD event places the schedule On Hold; no additional jobs are initiated until the schedule is released. If there are subschedules under the defined schedule and they are in a status of In Process or Completed, those subschedules are placed in a status of Parent Hold.

**Syntax**:

```shell
$SCHEDULE:HOLD,<schedule date>,<schedule name>
```

**Parameters**:

- **<schedule date\>**: A date entered in the same date format as the syntax recognized by the regional settings of the user running SMA Service Manager.
- **<schedule name\>**: An OpCon Schedule Name.

**Required Privileges**:

- Hold Schedules

**XML Syntax**:

```xml
<EVENT>
   <TYPE>SCHEDULE</TYPE>
   <ACTION>HOLD</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $SCHEDULE:RELEASE

The $SCHEDULE:RELEASE event releases the schedule; the SAM will resume processing of the schedule. If there are subschedules under the defined schedule and they are in a status of Parent Hold, those subschedules will also be released.

**Syntax**:

```shell
$SCHEDULE:RELEASE,<schedule date>,<schedule name>
```

**Parameters**:

- **<schedule date\>**: A date entered in the same date format as the syntax recognized by the regional settings of the user running SMA Service Manager.
- **<schedule name\>**: An OpCon Schedule Name.

**Required Privileges**:

- Release Schedules

**XML Syntax**:

```xml
<EVENT>
   <TYPE>SCHEDULE</TYPE>
   <ACTION>RELEASE</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $SCHEDULE:START

The $SCHEDULE:START event causes the SAM to start processing the schedule immediately, ignoring the defined start date and time of the schedule. If there are subschedules under the defined schedule and they are in a status of Parent Hold, those subschedules will also be started.

**Syntax**:

```shell
$SCHEDULE:START,<schedule date>,<schedule name>
```

**Parameters**:

- **<schedule date\>**: A date entered in the same date format as the syntax recognized by the regional settings of the user running SMA Service Manager.
- **<schedule name\>**: An OpCon Schedule Name.

**Required Privileges**:

- Force Start Schedule

**XML Syntax**:

```xml
<EVENT>
   <TYPE>SCHEDULE</TYPE>
   <ACTION>START</ACTION>
   <SKDDATE></SKDDATE>
   <SKDNAME></SKDNAME>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

## Threshold/Resource-Related Events

### $THRESHOLD:SET

The $THRESHOLD:SET event sets the threshold to the value specified. If a plus (+) or minus (-) sign is used in front of the value, the Threshold is incremented or decremented accordingly.

**Syntax**:

```shell
$THRESHOLD:SET,<threshold name>,<value>
```

**Parameters**:

- **<threshold name\>**: An OpCon Threshold Name.
- **<value\>**: An update value for the threshold.

**Required Privileges**:

- Maintain Threshold/Resources

**XML Syntax**:

```xml
<EVENT>
   <TYPE>THRESHOLD</TYPE>
   <ACTION>SET</ACTION>
   <THRESHNAME></THRESHNAME>
   <THRESHVALUE></THRESHVALUE>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```

### $RESOURCE:SET

The $RESOURCE:SET event changes the Max Resources for the Resource to the value specified.

**Syntax**:

```shell
$RESOURCE:SET,<resource name>,<value>
```

**Parameters**:

- **<resource name\>**: An OpCon Resource Name.
- **<value\>**: The maximum value for the resource.

**Required Privileges**:

- Maintain Thresholds/Resources

**XML Syntax**:

```xml
<EVENT>
   <TYPE>RESOURCE</TYPE>
   <ACTION>SET</ACTION>
   <RESOURCENAME></RESOURCENAME>
   <RESOURCEVALUE></RESOURCEVALUE>
   <USERNAME></USERNAME>
   <USERPWD></USERPWD>
</EVENT>
```
