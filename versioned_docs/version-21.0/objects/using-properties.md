# Using Properties for Automation

The values of properties can be retrieved by tokenizing the property name and using the token in Job Definitions, Schedule Completion Events, Job Events, External Events, and notifications defined in the Notification Manager.

## Tokens

A *token* is a placeholder for the value of a property.
OpCon will resolve tokens to their property
values before processing.

Properties are tokenized (turned into tokens) by placing the supported
token delimiters around the desired property name. The supported token
delimiters are either double brackets (e.g., \[\[name\]\]) or double braces (e.g., {{name}}).

:::note
Tokens using encrypted properties cannot be decrypted in OpCon, they can only be decrypted by an agent. It is recommended to only use encrypted tokens when they can be sent to an agent for decryption, e.g., using an encrypted token in a command line.
:::

### Recursive Tokens and Property Expressions

Just like each property field can itself be a property, it can also be a
complete property expression. The only requirement for this is to
enclose the property expression that is specified in place of a property
filed with "\[\[=" and "\]\]". For more information, refer to [Property Expressions API Syntax](../reference/property-expressions-syntax.md).

:::tip Example
The following is a valid property name:

```shell
[[SI.PropertyName.[[$DATE]].[[=[[Property1]] + [[Property2]]]]]]
```

This will resolve to the value of a schedule instance property whose property name is "PropertyName" and references the schedule built for today and whose schedule name is constructed by a property expression. This expression concatenates the value of Property1 and Property2 to make the Schedule Name.
:::

### General Syntax for Referencing Property Names

ObjectType.PropertyName.Qualifier.Qualifier...

- The ObjectType tells OpCon where the
    property belongs.
  - **RI** = Remote Instance (This is the remote instance of OpCon.)
  - **OI** = OpCon Instance
  - **MI** = Machine Instance
  - **SI** = Schedule Instance
  - **JI** = Job Instance
  - **SSI** = Source Schedule Instance (This is the parent schedule one level above a subschedule.)
  - **SJI** = Source Job Instance (This is the parent Container job for a subschedule.)
- The PropertyName is the name of the property.
  - If the property name contains a period, the name must be enclosed in quotes (e.g., "File.Name").
- The *qualifiers* are additional descriptions of the object for unique identification. The Property Name and each qualifier can be filled by a token or property expression if desired. The object types can use the qualifiers specified in the table.

|Object Type|Qualifiers|Notes|
|--- |--- |--- |
|RI|Remote Instance Name|The primary use for this feature is to define a token to reference a property in a remote OpCon environment.|
|OI|None|Defined for future use.|
|MI|Machine Name||
|SI|Schedule Date, Schedule Name||
|JI|Schedule Date, Schedule Name, Job Name||
|SSI|None|The primary use for this feature is to define a token in a job of a subschedule to access a Schedule Instance property of the direct parent schedule of the parent Container job. There is no practical use for SSI properties with external events.|
|SJI|None|The primary use for this feature is to define a token in a job of a subschedule to access a Job Instance property of the direct parent Container job. Although Container job properties are passed down to the subschedule at build time so they can be referenced as SI properties in the child jobs, new properties can still be added to the parent Container job after build time. The SJI object type provides access to these properties. There is no practical use for SJI properties with external events.|

## Simple Property Name Syntax

The simplest references to property names require no qualifiers. Simple property name syntax can be used in the following scenarios:

- Job Detail Definitions when the desired property is associated with the current Job Definition's schedule, machine, or job.
- OpCon events associated with a job when the desired property is associated with the current job's schedule, machine, or job.
- Schedule Completion Events when the desired property is associated with the current schedule.
- Notifications in the [Export Records to CSV](../Files/UI/Enterprise-Manager/Viewing-and-Exporting-History-Records.md#Exportin)
    button (to the right of Run Dates) will open the Export to CSV file
    pop-up in order to provide the export comma-separated value format
    and export information when the desired property is associated with
    a different job, schedule, or machine than the one that triggered
    the OpCon event.

The complete simple syntax for each object is the following:

- OpCon Instance:

```shell
OI.PropertyName -or- PropertyName
```

- Machine Instance:

```shell
MI.PropertyName
```

- Schedule Instance:

```shell
SI.PropertyName
```

- Source Schedule Instance:

```shell
SSI.PropertyName
```

- Job Instance:

```shell
JI.PropertyName
```

- Source Job Instance:

```shell
SJI.PropertyName
```

If the desired property is **not** associated with the job, schedule, or machine in the above locations, use the fully qualified property name syntax.

:::caution
If the property name contain periods (.), square brackets ( \[ or \] ),\ or curly brackets ( { or } ) in their names, the name must be enclosed in quotes to preserve the syntax of the property name. For example, a JI property could look like this: [JI."File.Name"].
:::

:::tip Example
The command line below is defined for a job named CrunchNumbers on a Subschedule called by a Container job named MainProcessing. CrunchNumbers has a parameter that needs the value of the "Numbers" property on Parent schedule name for the MainProcessing job. Because more than one parent schedule can call the same subschedule, we choose to use the SSI object type.

```shell
C:\\Progra~1\\CoolProgram\\crunch.exe [[SSI.Numbers]]
```

If the parent schedule name is GetData, the structure in the Daily List view would look like this:

- Schedule Date
  - GetData (Parent schedule. The "Numbers" property is defined at this level.)
    - MainProcessing (Container job)
      - CrunchNumbers
:::

:::tip Example
When subschedules build, the properties of the Container job automatically propagate down to the subschedules. An alternate solution to the previous example is simply to use the SI property.

```shell
C:\\Progra~1\\CoolProgram\\crunch.exe [[SI.Numbers]]
```

If the parent schedule name is GetData, the structure in the Daily List view would look like this:

- Schedule Date
  - GetData (Parent schedule.)
    - MainProcessing (Container Job. The "Numbers" property is defined at this level as well as in the subschedule called by this Container job.)
      - CrunchNumbers
:::

## Fully Qualified Property Name Syntax

Fully qualified property name syntax is required when the property is
being used in one of the following scenarios:

- Job Detail Definitions when the desired property is associated with
    a different Job Definition's schedule, machine, or job.
- OpCon events associated with a job when
    the desired property is associated with a different job's schedule,
    machine, or job.
- All [Property-Related Events](../events/types.md#Property).
- Schedule Completion Events when the desired property is associated
    with a different schedule.
- Notifications in the [Export Records to CSV](../Files/UI/Enterprise-Manager/Viewing-and-Exporting-History-Records.md#Exportin)
    button (to the right of Run Dates) will open the Export to CSV file
    pop-up in order to provide the export comma-separated value format
    and export information when the desired property is associated with
    a different job, schedule, or machine than the one that triggered
    the OpCon event.
- All [External Events](../events/defining.md#external).
- The OpCon server allows you to specify
    specific text, tokens, and property expressions within the syntax of
    the fully qualified syntax strings.

:::tip Example
The following are all valid tokens when specified on a command line or job event:

- [[DiskSpace]]
  - This will resolve to the value of the "DiskSpace" global property.
- [[MI.[[WindowsProperty]].Machine1]]
  - This will resolve to the value of a machine instance property named by the value of the global property named "WindowsProperty" for Machine1.
- [[SI.[[PropertyName]].[[ScheduleDate]].[[ScheduleName]]]]
  - This will resolve to the value of a schedule instance property whose property name, date and schedule name are stored in the global properties "PropertyName", "ScheduleDate", and "ScheduleName", respectively.
:::

For each object that supports properties, there are different syntax rules.

- [Remote Instance Property Name Syntax](#Remote_Instance_Property_Name_Syntax)
- [OpCon Instance Property Name Syntax](#OpCon/xp)
- [Machine Instance Property Name Syntax](#Machine)
- [Schedule Instance Property Name Syntax](#Schedule)
- [Job Instance Property Name Syntax](#Job)

:::caution
If the property name or any of the qualifiers contain periods (.), square brackets ( [ or ] ), or curly brackets ( { or } ) in their names, the name must be enclosed in quotes to preserve the syntax of the property name. For example, a JI property could look like this:

```shell
JI."File.Name"."08.01.2010"."Sched[Name]"."Job{Name}"
```

:::

### Remote Instance Property Name Syntax

RI.RemoteInstanceName.FullyQualifiedProperty

- *RI* is the **required** property type and indicates that the property will be associated with a remote instance.
- *RemoteInstanceName* is the name assigned to the remote instance. For more information, refer to [Remote Instances](../objects/remote-instances.md).
- *FullyQualifiedProperty* is the fully qualified property name for the property.

:::tip Example
This example shows the use of a Remote Instance property.

**Scenario**: A job called JobB must not run until another job called JobA has Finished OK on a remote instance called OpCon2.

- To access JobA, the administrator defines the remote instance named OpCon2 on the Administration screen for Remote Instances in Enterprise Manager.
- For JobB, the administrator adds the following expression dependency to get and check the status of JobA on the remote system, OpCon2, in the ApplicationSchedule from today's current date:

```shell
[[RI.OpCon2.JI.$JOB STATUS.$DATE.ApplicationSchedule.JobA]]=="Finished OK"
```

Where:
$DATE resolves to the date on the primary OpCon server.

**Result**: When JobA has a status of Finished OK, then JobB will run.
:::

### OpCon Instance Property Name Syntax

:::note
In the graphical interfaces, the Global Properties screens are used to manage the OpCon Instance properties because they have a "global" availability within the OpCon instance.
:::

OI.PropertyName

- *OI* is an optional indicator for the OpCon Instance property. If not specified, an OpCon Instance property is assumed (e.g., OI.MyOpConxpsProperty and MyOpConxpsProperty will both be interpreted as OpCon Global Properties).
- *PropertyName* is the name assigned to the property.

The table displays sample property names that are associated with the OpCon instance and the tokens that access them.

|Property Name|Token|
|--- |--- |
|$DATE|[[$DATE]] -or- [[OI.$DATE]]|
|MySpecialProperty|[[MySpecialProperty]] -or- [[OI.MySpecialProperty]]|

:::tip Example
This example shows the definition and use of a user-defined OpCon Instance property.

**Scenario**: For every working day, the Accounting schedule runs and has a job named ProcessCreditTransactions which is built On Hold. The Accounting schedule is built for multiple days, but it must run on each day and complete before the next day can begin processing. An external process must execute before ProcessCreditTransactions can be released. That external process could occur any time between 10:00 PM and 4:00 AM each day.

- Because ProcessCreditTransactions must be released on the correct date, on the Administration screen for Global Properties, the administrator creates an OpCon Instance property named ProcessingDate and sets the initial value to the current date.
- On the Administration screen for Schedule Master, the administrator marks the checkbox to Conflict with Other Days for the Accounting schedule. This setting will ensure that the Accounting schedule will only process one day at a time.
- On the Accounting schedule, the administrator creates a Null job with an OpCon event to set the value of the ProcessingDate property to the Schedule Date as soon as the Accounting schedule begins processing.

  ```shell
  $PROPERTY:SET,ProcessingDate,[[$SCHEDULE DATE]]
  ```

- When setting up the external OpCon event to release ProcessCreditTransactions, the administrator uses a token to call the ProcessingDate property for the Schedule Date in the event.

  ```shell
  $JOB:RELEASE,[[ProcessingDate]],Accounting,ProcessCreditTransactions,username,eventpassword
  ```

**Result**: Each day when the Accounting schedule begins processing in the morning, the Null job sets the ProcessingDate to the current Schedule Date. Some time between 10:00 PM and 4:00 AM the next day, the external event arrives using the ProcessingDate to release ProcessCreditTransactions on the correct date. Because it is the last job on the schedule, when ProcessCreditTransaction finishes, the Accounting schedule completes for that date. The Accounting schedule on the next date can then begin processing.
:::

### Machine Instance Property Name Syntax

MI.PropertyName.MachineName

- *MI* is the **required** property type and indicates that the property will be associated with a machine.
- *PropertyName* is a **required** user-defined name assigned to the property.
- *MachineName* is the qualifier for the OpCon machine name.
  - The MachineName qualifier is required for [External Events](../events/defining.md#external) and is optional for scenarios that support the [Simple Property Name Syntax](#Simple). If required for the automation scenario, specify the machine name in the OpCon database to which the property belongs.
  - If the machine name contains a period, the name must be enclosed in quotes (e.g., MIPropertyName. "Machine.Name").

:::tip Example
The following event is attached to a job and executes when the job Fails. In the notification event, the message references a Machine Instance Property called "App.DriveLetter" using simple property name syntax. The [[MI."App.DriveLetter"]] token will resolve to the value of the App.DriveLetter property associated with the Machine the job ran on:

$NOTIFY:EMAIL,admin@customer.com,,,Job Failed, The job ran on machine [[$MACHINE NAME]] on drive letter [[MI."App.DriveLetter"]]and failed with exit code [[$JOB TERMINATION]]
:::

:::tip Example
The following event is submitted through MSGIN as an external OpCon event. In the notification event, the message references a Machine Instance Property called "App.DriveLetter" using fully qualified property name syntax. The [[MI."App.DriveLetter".UNIXMACH1]] token will resolve to the value of the App.DriveLetter property associated with the Machine named UNIXMACH1:

$NOTIFY:EMAIL,admin@customer.com,,,Job Failed, The job ran on machine [[$MACHINE NAME]] on drive letter [[MI."App.DriveLetter".UNIXMACH1]]and failed with exit code [[$JOB TERMINATION]],username,eventpassword
:::

:::tip Example
This shows the definition and use of a user-defined Machine Instance property.

**Scenario**: A job needs to run on all machines in a machine group to delete old files in a directory. The job uses the SMADirectory utility to accomplish this, but the path to the program is different for each machine. A user-defined Machine Instance property is created for the path to the program for each machine in the desired machine group. The Machine Instance property is then referenced with a token on the command line for the job.

- Create a Machine Instance property called SMAUtilitiesPath with a value of the path to the SMADirectory program. (Do this for each machine in the group from the EM Machines screen. Use navigation path: Administration > Machines. Then, click the Open Advanced Settings Panel link and add a new "Available Property" field.)

  ```shell
  SMAUtilitiesPath="C:\Program Files\OpConxps\MSLSAM
  ```

- In the Command Line field for the job, use a token with the "MI" preface to indicate a reference to a Machine Instance (MI) property for SMAUtilitiesPath. When resolving the token, the SAM will know to look up the value for the property in the Machine's Advanced settings.

  ```shell
  [[MI.SMAUtilitiesPath]]\SMADirectory.exe" C:\Temp,5,tmp
  ```

- When the job builds into the Daily tables, because it was set to Run on Each Machine in the group, one copy of the job was created for each machine. When the SAM resolves the token on the command line for each job, the path will resolve to the correct path on each machine. Based on the above example, the resulting command line would be:

  ```shell
  "C:\Program Files\OpConxps\MSLSAM\SMADirectory.exe" C:\Temp,5,tmp
  ```

:::

### Schedule Instance Property Name Syntax

SI.PropertyName.ScheduleDate.ScheduleName

- *SI* is the **required** property type and indicates that the property will be associated with a schedule.
- *PropertyName* is a **required** user-defined name assigned to the property.
- *ScheduleDate* is the first qualifier for the Schedule Instance property.
  - The ScheduleDate qualifier is required for [External Events](../events/defining.md#external) and [Defining Events](../events/defining.md#property) and is optional for scenarios that support the [Simple Property Name Syntax](#Simple). If required for the automation scenario, specify the schedule date containing the schedule in the OpCon database to which the property belongs.
  - If the ScheduleDate qualifier is omitted, OpCon uses the default value of the date associated with the object referencing the property. To omit the ScheduleDate and still specify the ScheduleName qualifier, use the following syntax:

    ```shell
    SI.PropertyName..ScheduleName
    ```

- *ScheduleName* is the last qualifier for the Schedule Instance property.
  - The ScheduleName qualifier is required for [External Events](../events/defining.md#external) and is optional for scenarios that support the [Simple Property Name Syntax](#Simple). If required for the automation scenario, specify the schedule name in the OpCon database to which the property belongs.
  - If the schedule name contains a period, the name must be enclosed in quotes (e.g., SI.PropertyName."Schedule.Name").
  - If specifying a full subschedule name, enclose the schedule name in double quotes (e.g.,
        \[\[SI.ScheduleProperty.8/28/2009."ParentSchedule_Container\[SubSchedule\]"\]\]).
  - If the ScheduleName qualifier is omitted, OpCon uses the default value of the schedule name associated with the object referencing the property. To omit the ScheduleName after specifying the ScheduleDate, use the following syntax:

      ```shell
      SI.Propertyname.ScheduleDate
      ```

:::tip Example
The event below is attached to a multiple-instance schedule and executes when each schedule instance completes. Each instance of the schedule is created to process information for a city; therefore, each instance has a property named "City" defining the city it is processing for. In the notification event, the message references the Schedule Instance property called "City" using simple property name syntax. The [[SI.City]] token will resolve to the value of the City property associated with the Schedule instance:

```shell
$NOTIFY:EMAIL,admin@customer.com,,,Schedule Complete,The schedule finished for [[SI.City]].
```

:::

:::tip Example
The command line below is defined for a job named CrunchNumbers on a schedule named MainProcessing. CrunchNumbers has a parameter that needs the value of the "Numbers" property on another schedule named GetData that is built for the same date as the MainProcessing schedule.

```shell
C:\Progra~1\CoolProgram\crunch.exe [[SI.Numbers..GetData]]
```

:::

::tip Example
The command line below is defined for a job named CrunchNumbers on a schedule named MainProcessing. CrunchNumbers has a parameter that needs the value of the "Numbers" property from the MainProcessing schedule on another date.

```shell
C:\Progra~1\CoolProgram\crunch.exe [[SI.Numbers.12/21/2012]]
```

:::

:::tip Example
The command line below is defined for a job named CrunchNumbers on a schedule named MainProcessing. CrunchNumbers has a parameter that needs the value of the "Numbers" property from the Get.Data schedule on another date.

```shell
C:\Progra~1\CoolProgram\crunch.exe [[SI.Numbers.12/21/2012."Get.Data"]]
```

:::

:::tip Example
This shows the definition and use of a user-defined Schedule Instance property in a scenario where the schedule is built based on the arrival of a file.

**Scenario**: Jamie is the OpCon administrator and has a Windows job on "My Schedule Name" requiring parameters that define a file name to process and the number of records in that file.

- In the Command Line field for the job, Jamie places brackets around the desired property names to identify tokens for SAM to resolve:

  ```shell
  C:\progs\checkthefile.bat [[SI.FileName]] [[SI.NumRecs]]
  ```

- On a machine that receives files for processing, Jamie configures SMA Resource Monitor to watch for a file and then send an external OpCon event to build the schedule and process the detected file. Just before the user name and password in the OpCon event, Jamie defines FileName and NumRecs as schedule properties (the SMA Resource Monitor supplies the values for the properties). When the SMA Resource Monitor sends the event to the SAM, it looks like this:

  ```shell
  $SCHEDULE:BUILD,[[$DATE]],My Schedule Name,,Y,City=Houston;FileName=abc.txt;NumRec=100,builduser,buildpwd
  ```

- When the SAM generates the message to start the job, SAM will resolve the tokens on the command line to the Schedule Instance property values and the command line will become:

  ```shell
  C:\progs\checkthefile.bat abc.txt 100
  ```

:::

### Job Instance Property Name Syntax

JI.PropertyName.ScheduleDate.ScheduleName.JobName

- *JI* is the **required** property type and indicates that the property will be associated with a job.
- *PropertyName* is a **required** user-defined name assigned to the property.
  - If the Job Instance property is for the current Schedule Date, current Schedule Name, and current Job Name, the optional qualifiers can be omitted and the trailing periods are not required (e.g., JI.MyJobProperty).
- *ScheduleDate* is the first qualifier for the Job Instance property.
  - The ScheduleDate qualifier is required for [External Events](../events/defining.md#external)
         and [Defining Events](../events/defining.md#property)
         and is optional for scenarios that support the [Simple Property Name Syntax](#Simple). If required for
        the automation scenario, specify the schedule date containing
        the job in the OpCon database to
        which the property belongs.
  - If the ScheduleDate qualifier is omitted,
        OpCon uses the default value of the
        date associated with the object referencing the property.
  - To omit the ScheduleDate and still specify the ScheduleName and JobName qualifiers, use the following syntax:

    ```shell
    JI.PropertyName..ScheduleName.JobName
    ```

  - To omit the ScheduleName and JobName after specifying the ScheduleDate, use the following syntax:

    ```shell
    JI.PropertyName.ScheduleDate
    ```

- *ScheduleName* is the second qualifier for the Job Instance property.
  - The ScheduleName qualifier is required for [External Events](../events/defining.md#external)
         and is optional for scenarios that support the [Simple Property Name Syntax](#Simple). If required for
        the automation scenario, specify the schedule name containing
        the job in the OpCon database to
        which the property belongs.
  - If the schedule name contains a period, the name must be
        enclosed in quotes (e.g.,
        JI.PropertyName."Schedule.Name".JobName).
  - If the Job Instance property is for the current Schedule Date,
        Schedule Name, but a different Job Name, insert the period (.)
        for the schedule date and schedule name placeholder (e.g.,
        JI.MyJobProperty\...Job1).
  - To omit the ScheduleDate and ScheduleName qualifiers and still specify the JobName qualifier, use the following syntax:

    ```shell
    JI.PropertyName\...JobName
    ```

  - To omit the JobName after specifying the ScheduleDate and ScheduleName, use the following syntax:

    ```shell
    JI.PropertyName.ScheduleDate.ScheduleName
    ```

- *JobName* is the third qualifier for the Job Instance property.
  - The JobName qualifier is required for [External Events](../events/defining.md#external) and is optional for scenarios that support the [Simple Property Name Syntax](#Simple). If required for the automation scenario, specify the job name in the OpCon database to which the property belongs.
  - If the job name contains a period, the name must be enclosed in quotes (e.g., JI.PropertyName.ScheduleName."Job.Name").

:::tip Example
The event below is attached to a multiple-instance job and executes when each job instance Finishes OK. Each instance of the job is created to process information for a city; therefore, each instance has a property named "City" defining the city it is processing for. In the notification event, the message references the Job Instance property called "City" using simple property name syntax. The [[JI.City]] token will resolve to the value of the City property associated with the job instance:

```shell
$NOTIFY:EMAIL,admin@customer.com,,,Job Finished OK,The job finished OK for [[JI.City]]
```

:::

:::tip Example
The command line below is defined for a job named CrunchNumbers on a schedule named MainProcessing. CrunchNumbers has a parameter that needs the value of the "Numbers" property on a job named DatabaseRetrieve on another schedule named Get.Data that is built for the same date as the MainProcessing schedule.

```shell
C:\Progra~1\CoolProgram\crunch.exe [[JI.Numbers.."Get.Data".DatabaseRetrieve]]
```

:::

:::tip Example
The command line below is defined for a job named CrunchNumbers on a schedule named MainProcessing. CrunchNumbers has a parameter that needs the value of the "Numbers" property on a job named DatabaseRetrieve on the same schedule name and on the same schedule date.

```shell
C:\Progra~1\CoolProgram\crunch.exe [[JI.Numbers...DatabaseRetrieve]]
```

:::

:::tip Example
The command line below is defined for a job named CrunchNumbers on a schedule named MainProcessing. CrunchNumbers has a parameter that needs the value of the "Numbers" property from the CrunchNumbers job on the MainProcessing schedule on another date.

```shell
C:\Progra~1\CoolProgram\crunch.exe [[JI.Numbers.12/21/2012]]
```

:::

:::tip Example
The command line below is defined for a job named CrunchNumbers on a schedule named MainProcessing. CrunchNumbers has a parameter that needs the value of the "Numbers" property from the DatabaseRetrieve job on the Get.Data schedule on another date.

```shell
C:\Progra~1\CoolProgram\crunch.exe [[JI.Numbers.12/21/2012."Get.Data".DatabaseRetrieve]]
```

:::

:::tip Example
This shows the definition and use of a user-defined Job Instance property.

**Scenario**: Jamie is the OpCon administrator and has a Windows job on "My Schedule Name" requiring parameters that define a file name to process and the number of records in that file.

- In the Command Line field for the job, Jamie places brackets around the desired property names to identify tokens for SAM to resolve:

  ```shell
  C:\progs\checkthefile.bat [[JI.FileName]] [[JI.NumRecs]]
  ```

- On a machine that receives files for processing, Jamie configures SMA Resource Monitor to watch for a file and then send an external OpCon event to add a job to process that file. Just before the user name and password in the OpCon event, Jamie defines FileName and NumRecs as properties (the SMA Resource Monitor supplies the values for the properties). When the SMA Resource Monitor sends the event to the SAM, it looks like this:

  ```shell
  $JOB:ADD,[[$DATE]],My Schedule Name,MyJobName,MyFrequencyName,FileName=abc.txt;NumRecs=100,JobAddUser,JobAddpwd
  ```

- When SAM generates the message to start the job, SAM will resolve the tokens to the Job Instance property values and the command line will become:

  ```shell
  C:\progs\checkthefile.bat abc.txt 100
  ```

:::
