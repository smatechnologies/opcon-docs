# Properties

Properties are attributes of other objects in OpCon. The values of properties can be retrieved by tokenizing the property name and using that token in OpCon events or on job definition details.

## Property Types

There are three types of properties in OpCon:

- [System Properties](#System): System properties are read-only and are included with the OpCon installation.
- [Managed System Properties](#Managed): Managed system properties are ones that are date- or time-related and require a definition for the desired format.
- [User-defined Properties](#User-def): User-defined properties are any name with an associated value.

### System Properties

System Properties are default OpCon variables. System properties beginning with a dollar sign ($) have values that are not configurable. Other system properties allow you to access values of other OpCon objects.

All of the system properties below can be resolved through [Tokens](./using-properties.md#tokens) when placed in schedule completion events, job definitions, job events, and notifications defined in Notification Manager; however, only the $OPCONVER property can be used in external OpCon events.

The System Properties beginning with a dollar sign ($) in the table below are:

- Automatically provided
- Case-sensitive
- Read-only

| System Property | Description |
| --- | --- |
| JI.$ACTUAL RUN TIME | Resolves to the run time of the job calculated from the difference between End Time and Start Time of the job to which the property is attached. The value returns in the standard format: hh:mm:ss. If the job has not yet finished, the value returns N/A. |
| JI.$ARRIVED BASE FILE NAME | Resolves to the file name returned by a File Arrival job.<br /><br />**Example:** "File20180506" |
| JI.$ARRIVED FILE EXTENSION | Resolves to the file extension returned by a File Arrival job.<br /><br />**Example:** ".txt" |
| JI.$ARRIVED FILE NAME | Resolves to the full path and file name returned by a File Arrival job.<br /><br />**Example:** "D:\NewFiles\File20180506.txt" |
| JI.$ARRIVED FILE PATH | Resolves to the directory path returned by a File Arrival job.<br /><br />**Example:** "D:\NewFiles" |
| JI.$ARRIVED SHORT FILE NAME | Resolves to the file name and extension returned by a File Arrival job.<br /><br />**Example:** "File20180506.txt" |
| JI.$DEPARTMENT NAME | Resolves to the name of the department associated with the job in the Daily tables. |
| JI.$EST RUN TIME | Resolves to the estimated run time of the job to which the property is attached. The value returns in the standard format: hh:mm:ss. |
| $FREQUENCY NAME | Resolves to the name of the frequency of the job to which the property is attached. |
| $JOB NAME | Resolves to the full name of the job (from the Daily tables) to which the property is attached. |
| $JOB STATUS | Resolves to the status of the job (from the Daily tables) to which the property is attached. |
| $JOB STATUS CATEGORY | Resolves to the status category of the job (from the Daily tables) to which the property is attached. |
| $JOB TERMINATION | Resolves to the full exit condition of the job to which the property is attached. |
| $JOBID | Resolves to the 10-digit unique number of the job to which the property is attached.<br /><br />**Example:** 0000049895. |
| $JOBID CMP | Resolves to the full name of the job (from the Daily tables) and unique number of the job to which the property is attached. The value is a compressed value with no spaces.<br /><br />**Example:** Backup0000049895. |
| $JOBID LONG | The SAM resolves this property to the first 12 characters of the full name of the job (from the Daily tables) and unique number of the job to which the property is attached.<br /><br />The long format contains 27 characters:<ul><li>12 characters of the Job name are the first 12 characters</li><li>Spaces in the next 5 characters</li><li>10-digit unique number in the last 10 characters</li></ul>**Example:** Backup 0000049895 |
| $MACHINE NAME | Resolves to the name of the machine assigned to the job to which the property is attached. If a machine has not yet been assigned to the job, the value returns N/A. |
| MI.$MACHINE OPER STATUS | Resolves to the Operator Status of the machine assigned to the job to which the property is attached. The Operator Status is the status set by an OpCon administrator. |
| MI.$MACHINE NET STATUS | Resolves to the Network Status of the machine assigned to the job to which the property is attached. The Network Status is the status according to the SMA Network Communications(SMA NetCom) component. |
| MI.$MACHINE RUNNING JOBS | Resolves to the string  value for the number of jobs currently running on the machine. |
| $MASTER JOB NAME | Resolves to the original Master name of the job (as it was when the job was built or added to the Daily) to which the property is attached. |
| $MASTER SCHEDULE NAME | Resolves to the original master name of the schedule (as it was when the schedule was built into the Daily) to which the property is attached. |
| JI.$MAX RUN TIME | Resolves to the maximum run time of the job from the Daily tables. The value returns in the standard format: hh:mm:ss. |
| $NOTIFYID | Resolves to the Notification ID of the event that caused the current notification.<br /><br />*NOTE: This property can be only be resolved by SMA Notify Handler and no other OpCon component.* |
| $OPCONVER | Resolves to the CD Build Version of OpCon Instance as defined in the OpCon database. |
| JI.$RESTART STEP | Resolves to the alphanumeric value defined for the job’s restart step. |
| RM.ResourceName | Resolves to the maximum number of available resources for the resource named after the period. This value always returns as an integer. |
| RU.ResourceName | Resolves to the number of Resources in Use for the resource named after the period. This value always returns as an integer. |
| $SCHEDULE NAME | Resolves to the full name of the schedule (from the Daily tables) to which the property is attached. |
| $SCHEDULE ID | Resolves to the ID number of the schedule to which the property is attached. |
| $SCHEDULE INST | Resolves to the instance number of the schedule to which the property is attached. |
| JI.$SKD STATUS | Resolves to the status of the schedule (from the Daily tables) to which the property is attached. |
| SI.$SKD STATUS | Resolves to the status of the schedule (from the Daily tables) to which the property is attached. |
| JI.$SKD STATUS CATEGORY | Resolves to the status category of the schedule (from the Daily tables) to which the property is attached. |
| SI.$SKD STATUS CATEGORY | Resolves to the status category of the schedule (from the Daily tables) to which the property is attached. |
| $START COMMAND|Resolves to the value of the start command the LSAM attempted when the job was submitted to the operating system. This property will only have a value after the job starts and if the agent is a high enough version to support this feature.<br /><br />The following platforms support this feature as of the version listed:<ul><li>Microsoft LSAM - Version 16.01.00</li><li>z/OS LSAM - Version 15.07.01 (refer to Start Command for more information)</li><li>MCP LSAM - Version 16.0</li><li>UNIX LSAM - Version 17.1.0</li></ul> |
| TH.ThresholdName | Resolves to the current value of the threshold named after the period. This value always returns as an integer. |

### Managed System Properties

Managed System Properties are default Date- and Time-related variables with values that are configurable. These properties require an entry to be made in their value to define the format.

All of the managed system properties below can be resolved through [Tokens](./using-properties.md#tokens) when placed in Schedule Completion Events, Job Definitions, Job Events, and notifications defined in the Notification Manager; however, only the $DATE, $TIME, and $NOW properties may be used with external OpCon events. All Managed System Properties are case-sensitive.

The default values for the Managed System Properties are provided in the table.

| Managed System Property | Description | Default Format |
| --- | --- | --- |
| $DATE | Resolves to the current date. | Short Date |
| $JOB STARTTIME | Resolves to the start time of the associated job. If the job has not yet started, the value returns N/A. | yyyy/MM/dd hh:mm:ss |
| $JOB ENDTIME | Resolves to the end time of the associated job. If the job has not yet ended, the value returns N/A. | yyyy/MM/dd hh:mm:ss |
| $NOW | Resolves to the current date and time. | General Date |
| $SCHEDULE DATE | Resolves to the schedule date of the associated schedule. | dd-mmm-yyyy |
| $SCHEDULE DATEMS | Resolves to the Microsoft Formatted date format for the associated schedule. | ##### | 
| $TIME | Resolves to the current time. | Long Time |

To change the value of a Managed System Property, use one of the predefined formats or create a user-defined format.

Predefined formats must be specified by name, as listed in the Predefined Date and Time Formats table. User-defined formats must be specified based on specific characters listed in the User-defined Date and Time Format Characters table and must be in the same syntax recognized by the regional settings of the user running SMA Service Manager.

:::caution
The date calculation is incorrect if the two formats are in opposition. For example, if the Regional Settings have a format of mm/dd/yyyy and the property has a format of dd/mm/yyyy, the calculation would be imprecise.
:::

| Character | Meaning |
| --- | --- |
| ##### | Substitute the date as a Microsoft formatted numeric date (Number of days since January 1, 1900). |
| a/p | Use the 12-hour clock and substitute a lowercase 'a' with any hour before noon; substitute a lowercase 'p' with any hour between noon and midnight. |
| A/P | Use the 12-hour clock and substitute an uppercase 'A' with any hour before noon; substitute an uppercase P with any hour between noon and midnight. |
| am/pm | Use the 12-hour clock and substitute a lowercase a.m. with any hour before noon; substitute a lowercase p.m. with any hour between noon and midnight. |
| AM/PM | Use the 12-hour clock and substitute an uppercase A.M. with any hour before noon; substitute an uppercase P.M. with any hour between noon and midnight. |
| c | Substitutes the date as ddddd and displays the time as ttttt, in that order. Only date information is displayed if there is no fractional part to the date serial number; only time information is displayed if there is no integer portion. |
| d | Substitute the day as a number without a leading zero (1 – 31).<br /><br />**Examples**<br />6/1/2009 1:45:30 PM --> 1<br />6/15/2009 1:45:30 PM --> 15 |
| dd | Substitute the day as a number with a leading zero (01 – 31).<br /><br />**Examples**<br />6/1/2009 1:45:30 PM --> 01<br />6/15/2009 1:45:30 PM --> 15 |
| ddd | Substitute the day as an abbreviation (Sun-Sat).<br /><br />**Examples**<br />6/15/2009 1:45:30 PM --> Mon (en-US)<br />6/15/2009 1:45:30 PM --> Пн (ru-RU)<br />6/15/2009 1:45:30 PM --> lun. (fr-FR) |
| dddd | Substitute the day as a full name (Sunday-Saturday).<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> Monday (en-US)<br />6/15/2009 1:45:30 PM -> понедельник (ru-RU)<br />6/15/2009 1:45:30 PM -> lundi (fr-FR) |
| ddddd | Substitute a short date pattern (including day, month, and year).<br /><br />**Example**<br />6/15/2009 (en-US) |
| dddddd | Substitute a long date pattern (including day, month, and year).<br /><br />**Example**<br />Monday, June 15, 2009 (en-US) |
| f | Substitute a full date/time pattern with short time.<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> Monday, June 15, 2009 1:45 PM (en-US)<br />6/15/2009 1:45:30 PM -> den 15 juni 2009 13:45 (sv-SE)<br />6/15/2009 1:45:30 PM -> Δευτέρα, 15 Ιουνίου 2009 1:45 μμ (el-GR) |
| F | Substitute a full date/time pattern with long time.<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> Monday, June 15, 2009 1:45:30 PM (en-US)<br />6/15/2009 1:45:30 PM -> den 15 juni 2009 13:45:30 (sv-SE)<br />6/15/2009 1:45:30 PM -> Δευτέρα, 15 Ιουνίου 2009 1:45:30 μμ (el-GR) |
| g | Substitute a general date/time pattern with short time.<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> 6/15/2009 1:45 PM (en-US)<br />6/15/2009 1:45:30 PM -> 15/06/2009 13:45 (es-ES)<br />6/15/2009 1:45:30 PM -> 2009/6/15 13:45 (zh-CN) |
| G | Substitute a general date/time pattern with long time. <br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> 6/15/2009 1:45:30 PM (en-US)<br />6/15/2009 1:45:30 PM -> 15/06/2009 13:45:30 (es-ES)<br />6/15/2009 1:45:30 PM -> 2009/6/15 13:45:30 (zh-CN) |
| h/H | Substitute the hour as a number without leading zeros (0 – 23).<br /><br />**Examples**<br />6/15/2009 1:45:30 AM -> 1<br />6/15/2009 1:45:30 PM -> 13 |
| hh/HH | Substitute the hour as a number with leading zeros (00 – 23).<br /><br />**Examples**<br />6/15/2009 1:45:30 AM -> 01<br />6/15/2009 1:45:30 PM -> 13 |
| j | Substitute the day of the year as a Julian date with leading zeros (001 – 366). |
| m | Substitute the month as a number without a leading zero (1 – 12). If m immediately follows h or hh, the minute rather than the month is displayed. |
| mm | Substitute the month as a number with a leading zero (01 – 12). If m immediately follows h or hh, the minute rather than the month is displayed. |
| mmm | Substitute the month as an abbreviation (Jan-Dec).<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> Jun (en-US)<br />6/15/2009 1:45:30 PM -> juin (fr-FR)<br />6/15/2009 1:45:30 PM -> Jun (zu-ZA) |
| mmmm | Substitute the month as a full month name (January-December).<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> June (en-US)<br />6/15/2009 1:45:30 PM -> juni (da-DK)<br />6/15/2009 1:45:30 PM -> uJuni (zu-ZA) |
| n | Substitute the minute as a number without leading zeros (0 – 59).<br /><br />**Examples**<br />6/15/2009 1:09:30 AM -> 9<br />6/15/2009 1:09:30 PM -> 9 |
| nn | Substitute the minute as a number with leading zeros (00 – 59).<br /><br />**Examples**<br />6/15/2009 1:09:30 AM -> 09<br />6/15/2009 1:09:30 PM -> 09 |
| q | Substitute the quarter of the year as a number (1 –  4).<br /><br />**Examples**<br />3/15/2009 1:09:30 AM -> 1<br />6/15/2009 1:09:30 PM -> 2<br />9/15/2009 1:09:30 PM -> 3<br />12/15/2009 1:09:30 PM -> 4 |
| R, r | Substitute a RFC1123 pattern.<br /><br />**Example**<br />6/15/2009 1:45:30 PM -> Mon, 15 Jun 2009 20:45:30 GMT |
| s | Substitute the second as a number without leading zeros (0 – 59).<br /><br />**Example**<br />6/15/2009 1:45:09 PM -> 9 |
| ss | Substitute the second as a number with leading zeros (00 – 59).<br /><br />**Example**<br />6/15/2009 1:45:09 PM -> 09 |
| t | Substitute a short time pattern.<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> 1:45 PM (en-US)<br />6/15/2009 1:45:30 PM -> 13:45 (hr-HR)<br />6/15/2009 1:45:30 PM -> 01:45 م (ar-EG) |
| T | Substitute a long time pattern.<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> 1:45:30 PM (en-US)<br />6/15/2009 1:45:30 PM -> 13:45:30 (hr-HR)<br />6/15/2009 1:45:30 PM -> 01:45:30 م (ar-EG) |
| tttt | Substitute a time in long time format (including hour, minute, and second).<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> 1:45:30 PM (en-US)<br />6/15/2009 1:45:30 PM -> 13:45:30 (hr-HR)<br />6/15/2009 1:45:30 PM -> 01:45:30 م (ar-EG) |
| u | Substitute a universal sortable date/time pattern.<br /><br />**Example**<br />6/15/2009 1:45:30 PM -> 2009-06-15 20:45:30Z<br /><br />*Note: This format character displays a pattern defined by the DateTimeFormatInfo.FullDateTimePattern property associated with the current thread or by a specified format provider. Note that the time displayed is for the universal, rather than local time.* |
| U | Substitute a universal full date/time pattern.<br /><br />**Examples**<br />6/15/2009 1:45:30 PM -> Monday, June 15, 2009 8:45:30 PM (en-US)<br />6/15/2009 1:45:30 PM -> den 15 juni 2009 20:45:30 (sv-SE)<br />6/15/2009 1:45:30 PM -> Δευτέρα, 15 Ιουνίου 2009 8:45:30 μμ (el-GR)<br /><br />*Note: This format character displays a pattern defined by the "DateTimeFormatInfo.FullDateTimePattern" property associated with the current thread or by a specified format provider. Note that the time displayed is for the universal, rather than local time.* |
| w | Substitute the day of the week as a number (1 for Sunday through 7 for Saturday). |
| ww | Substitute the week of the year as a number (1 – 53). |
| y | Substitute the day of the year as a Julian date (1 – 366). Leading zeros are suppressed. |
| yy | Substitute the year as a two-digit number (00 – 99).<br /><br />**Examples**<br />1/1/0001 12:00:00 AM -> 01<br />1/1/0900 12:00:00 AM -> 00<br />1/1/1900 12:00:00 AM -> 00<br />6/15/2009 1:45:30 PM -> 09 |
| yyyy | Substitute the year as a four-digit number (100 – 9999).<br /><br />**Examples**<br />1/1/0001 12:00:00 AM -> 0001<br />1/1/0900 12:00:00 AM -> 0900<br />1/1/1900 12:00:00 AM -> 1900<br />6/15/2009 1:45:30 PM -> 2009 |
| zz | Hours offset from UTC, with a leading zero for a single-digit value.<br /><br />**Example**<br />6/15/2009 1:45:30 PM -07:00 -> -07 |
| zzz | Hours and minutes offset from UTC.<br /><br />**Example**<br />6/15/2009 1:45:30 PM -07:00 -> -07:00 |

#### Modified Managed System Properties

Modified managed system properties are copies of existing managed system properties with different formats.

The modified properties must be named as follows (x\...x represent any user-specified combination of characters):

- $DATExxxxxxxxxxxxxxx
- $TIMExxxxxxxxxxxxxxx
- $NOWxxxxxxxxxxxxxxxx
- $SCHEDULE DATExxxxxx

A value must be entered for the modified properties according one of the predefined formats in the [Predefined Date and Time Formats](#Predefined_Date_and_Time_Formats) table or a user-defined format using characters in the [User-defined Date and Time Format Characters](#User-defined_Date_and_Time_Format_Characters) table.

:::tip Examples

The following are examples of values and how they resolve when creating User-Defined Managed System Properties. Best practice is to create a new System Property with the Property Value appended to the end of its name.

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

Managed System Properties may be resolved with offsets. The syntax for using offsets is: [[$XXXX(-nf)]].

| Element | Meaning |
| --- | --- |
| $XXXX | This element is any valid managed system property ($DATE, $NOW, $SCHEDULE DATE, $TIME, and any user-defined variations to these). |
| - | This element is a plus (+) or minus (-) sign to indicate the direction of the offset. |
| n | This element is a numeric occurrence for the offset 1 through 32000. |
| f | This element is any valid format character denoting the unit of measure.<br /><br />If omitted, d (day) is used.<br /><br />Valid characters are:<ul><li>yy (year)</li><li>q (quarter)</li><li>m (month)</li><li>eom (end of month)</li><li>wk or ww (week)</li><li>d (day)</li><li>wd (working day)</li><li>h (hour)</li><li>n (minute)</li><li>s (second)</li></ul>The logic is derived by taking the calculated property value then adding or subtracting the n occurrences of the unit of measure. |

:::tip Examples

Some examples of the use or Offsets are:

[[$SCHEDULE DATE(+3d)]] -> If schedule date is Dec 19th, 2016, will evaluate as Dec 22nd, 2016
[[$SCHEDULE DATE (+3q)]] -> If schedule date is Dec 19th, 2016, will evaluate as Sep 19th, 2017
[[$SCHEDULE DATE (+1m)]] -> If schedule date is Dec 19th, 2016, will evaluate as Jan 19th, 2017
[[$SCHEDULE DATE (+1eom)]] -> If date is Dec 19th, 2016, 2016, will evaluate as Dec 31st, 2016

:::

### User-defined Properties

A User-defined Property is a variable with any name associated with any character value. A User-defined Property is resolved to the exact text in the value. These properties can be associated with the following objects:

- Remote Instance (RI)
- OpCon Instance (OI)
- Machines (Machine Instance (MI))
- Schedules (Schedule Instance (SI))
- Jobs (Job Instance (JI))
- Source Schedules (Source Schedule Instance (SSI))
- Source Jobs (Source Job Instance (SJI))

For additional information on implementing this concept, refer to [Using Properties for Automation](./using-properties.md).

# Defining Properties

The following basic information applies to defining properties:

- **Name**: Defines the property name.
  - For Global Properties (OpCon Instance (OI) properties), the
        property name must not exceed 64 characters and must be unique.
  - For Machine, Schedule, and Job Instance properties, the name has no restriction on length and should be unique for an instance.
    :::note
    If duplicate property names exist for Machine, Schedule, or Job Instance properties, OpCon will resolve tokens for that property name only to the value of the first property it finds.
    :::
  - Although not actually invalid, some characters will cause
        problems with OpCon event processing
        and token resolution. Avoid the following characters: ' (single
        quote), " (double quote), ( ) (open and closed parentheses), \\
        (backslash) , (comma), = (equals), ; (semi-colon), and \|
        (pipe).
    - Property names should not have a preceding dollar sign ($).
            This symbol is reserved for System Properties.
    - The @ symbol cannot be the first or last character of the
            property name, and it cannot appear consecutively more than
            once within the name.
  - If the database has a binary sort order, the property names are
        case-sensitive.
- **Documentation**: For Global Properties (OpCon Instance (OI)
    properties), provides an area for descriptions, explanations, and
    notes that can be updated for the defined property.
- **Encrypted**: Allows the Value to be encrypted. Once an encrypted
    value is saved, the value cannot be decrypted.
- **Value**: Defines the property value. If a token references the
    associated property when submitting a job for processing or
    processing OpCon events,
    OpCon resolve the token to this value.
- The final value of the property must be usable by the job or
    OpCon event at the time of processing.
- Property Expressions are allowed in the value of a property. For
    more information, refer to [Property Expressions API Syntax](../reference/property-expressions-syntax.md).
- If defining the final value, you should avoid using the following
    characters: , (comma), = (equals), ; (semi-colon), and \| (pipe).
    These characters can cause problems with
    OpCon event processing and token
    resolution.
- The value **should not** be enclosed in quotes. If quotes are
    entered, they will be used as part of the value.
- The value must not exceed 4000 characters.
- Leading and trailing spaces are removed from property values.

:::tip Example
In this use case, we have the need to dynamically supply different values as parameters to a job through an OpCon event. One of these values contains a character that would cause a problem with the event. The solution for this problem is to define multiple properties instead, and place the problem character in the job definition. For this example, the problem character in question is a comma (,).

On the Job Definition, the first parameter to the job must be a string of alpha characters (e.g., DAILY), and the second parameter must be a string of alpha characters with a comma in the middle (e.g., TEST,JOB).

The incorrect approach is:

    In the Job Details for the platform, we use the following tokens separated by commas:

    [[JI.PARAM1]],[[JI.PARAM2]
    In the OpCon event to add the job, we use this syntax:

    $JOB:ADD,$DATE,SCHEDULE,JOB,FREQCODE,PARAM1=DAILY;PARAM2=TEST,JOB

**Result**:

The job will fail because a comma is used by OpCon as a delimiter for events, and when the tokens resolve, the value becomes DAILY,TEST instead of DAILY,TEST,JOB.

The correct approach is:

    In the Job Details for the platform, we use the following tokens separated by commas:

    [[JI.PARAM1]],[[JI.PARAM2]],[[JI.PARAM3]].
    In the OpCon event to add the job, we use this syntax:

    $JOB:ADD,$DATE,SCHEDULE,JOB,FREQCODE,PARAM1=DAILY;PARAM2=TEST;PARAM3=JOB

**Result**:

When those tokens are resolved at job run time, they will become: DAILY,TEST,JOB
:::

## Methods for Defining Properties

:::note
Properties and values may not begin or end with a space.
:::

From some locations, multiple properties can be defined at one time by listing properties and their values in a string. The following syntax must be followed:

```shell
PropertyName1=value;PropertyName2=value...
```

### Enterprise Manager

- User-defined OpCon Instance (OI) properties and values are maintained in [Properties](./properties.md). For information on Adding, Editing, or Deleting Properties, refer to [Managing Global Properties](../Files/UI/Enterprise-Manager/Managing-Global-Properties.md) in the **Enterprise Manager** online help.
- Users can define Schedule Instance Properties from the [Schedule Instance Definition](../Files/UI/Enterprise-Manager/Schedule-Instance-Definition.md) frame in the **Enterprise Manager** online help.
- Users can define Job Instance Properties from the [Job Instance Definition](../Files/UI/Enterprise-Manager/Job-Instance-Definition.md) frame in the **Enterprise Manager** online help.
- From Schedule Build, users can define Schedule Instance properties
    when building a schedule. Properties will automatically be
    associated with the defined schedule when it builds. Refer to [Managing Schedules](../Files/UI/Enterprise-Manager/Managing-Schedules.md)
    .
- From Daily Maintenance, users can define Job Instance properties
    when adding a job. Properties will automatically be associated with
    the defined job to add to the daily schedule. Refer to [Adding Jobs from Job Master to Daily Schedule](../Files/UI/Enterprise-Manager/Adding-Jobs-from-Job-Master-to-Daily-Schedule.md)
    .

### OpCon Events

- The [Property-Related Events](../events/types.md#property) ($PROPERTY:ADD, SET, and DELETE) support maintenance of user-defined properties for any object (e.g., OpCon Instance, Machine Instance, Schedule Instance, and Job Instance).
- $SCHEDULE:BUILD type events have an optional parameter for defining
    properties for the schedule being built. Properties will
    automatically be associated with the defined schedule to build. A
    job is created in the AdHoc schedule and causes the schedule to
    build in a released state so the schedule will start processing as
    soon as its start time arrives. For more information, refer to
    [$SCHEDULE:BUILD](../events/types.md#$SCHEDULE:BUILD,%3Cschedule_date%3E,_%3Cschedule_name%3E,%3Clog_file_name%3E,_%3Coverwrite_flag%3E,_%5BSchedule_Instance_Property_Definitions%5D)
    in the **OpCon Events** online help.
- $JOB:ADD type events have an optional parameter for defining
    properties for the job being added. Properties will automatically be
    associated with the defined job to add to the daily schedule. For
    more information, refer to
    [$JOB:ADD](../events/types.md#$JOB:ADD) in the
    **OpCon Events** online help.

### SMADDI

- The "new_token" message type supports adding a new
    OpCon Instance user property value to the
    Master tables. Refer to [new_token and update_token Element Structures](../utilities/SMA-Dynamic-Data-Input/Data-Input-Message-Elements.md#new_token_and_update_token_Element_Structures)
    .
- The "update_token" message type supports updating an
    OpCon Instance user property value in the
    Master tables. Refer to [new_token and update_token Element Structures](../utilities/SMA-Dynamic-Data-Input/Data-Input-Message-Elements.md#new_token_and_update_token_Element_Structures)
    .

# Using Properties for Automation

The values of properties can be retrieved by tokenizing the property name and using the token in Job Definitions, Schedule Completion Events, Job Events, External Events, and notifications defined in the Notification Manager.

## Tokens

A *token* is a placeholder for the value of a property. OpCon will resolve tokens to their property values before processing.

Properties are tokenized (turned into tokens) by placing the supported token delimiters around the desired property name. The supported token delimiters are either double brackets (e.g., \[\[name\]\]) or double braces (e.g., {{name}}).

:::note
Tokens using encrypted properties cannot be decrypted in OpCon, they can only be decrypted by an agent. It is recommended to only use encrypted tokens when they can be sent to an agent for decryption, e.g., using an encrypted token in a command line.
:::

### Recursive Tokens and Property Expressions

Just like each property field can itself be a property, it can also be a complete property expression. The only requirement for this is to enclose the property expression that is specified in place of a property filed with "\[\[=" and "\]\]". For more information, refer to [Property Expressions API Syntax](../reference/property-expressions-syntax.md).

:::tip Example
The following is a valid property name:

```shell
[[SI.PropertyName.[[$DATE]].[[=[[Property1]] + [[Property2]]]]]]
```

This will resolve to the value of a schedule instance property whose property name is "PropertyName" and references the schedule built for today and whose schedule name is constructed by a property expression. This expression concatenates the value of Property1 and Property2 to make the Schedule Name.
:::

### General Syntax for Referencing Property Names

ObjectType.PropertyName.Qualifier.Qualifier...

- The ObjectType tells OpCon where the property belongs.
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

| Object Type | Qualifiers | Notes |
| --- | --- | --- |
| RI | Remote Instance Name | The primary use for this feature is to define a token to reference a property in a remote OpCon environment. |
| OI | None | Defined for future use. |
| MI | Machine Name |  | 
| SI | Schedule Date, Schedule Name |  |
| JI | Schedule Date, Schedule Name, Job Name |  |
| SSI | None | The primary use for this feature is to define a token in a job of a subschedule to access a Schedule Instance property of the direct parent schedule of the parent Container job. There is no practical use for SSI properties with external events. |
| SJI | None | The primary use for this feature is to define a token in a job of a subschedule to access a Job Instance property of the direct parent Container job. Although Container job properties are passed down to the subschedule at build time so they can be referenced as SI properties in the child jobs, new properties can still be added to the parent Container job after build time. The SJI object type provides access to these properties. There is no practical use for SJI properties with external events. |

## Simple Property Name Syntax

The simplest references to property names require no qualifiers. Simple property name syntax can be used in the following scenarios:

- Job Detail Definitions when the desired property is associated with the current Job Definition's schedule, machine, or job.
- OpCon events associated with a job when the desired property is associated with the current job's schedule, machine, or job.
- Schedule Completion Events when the desired property is associated with the current schedule.
- Notifications in the [Export Records to CSV](../Files/UI/Enterprise-Manager/Viewing-and-Exporting-History-Records.md#Exportin) button (to the right of Run Dates) will open the Export to CSV file pop-up in order to provide the export comma-separated value format and export information when the desired property is associated with a different job, schedule, or machine than the one that triggered the OpCon event.

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
If the property name contain periods ( . ), square brackets ( \[ or \] ), backslash ( \ ) or curly brackets ( { or } ) in their names, the name must be enclosed in quotes to preserve the syntax of the property name. 

**Example**<br />
A Job Instance property would look like this: [[JI.<property name\>]].
:::

:::tip Example
The command line below is defined for a job named CrunchNumbers in a Subschedule called by a Container job whose name is MainProcessing. CrunchNumbers has a parameter that needs the value of the "Numbers" property on Parent schedule name for the MainProcessing job. Because more than one parent schedule can call the same subschedule, we choose to use the SSI object type.

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

# Property Expressions API

For programmers who need advanced functionality for controlling Job
Dependencies and Events, OpCon exposes the
Property Expressions API. Property expressions allow you to access many
system and user-defined properties to perform different operations on
them, the result of which helps you make a decision. For more
information, refer to [Property Expressions API Syntax](../reference/property-expressions-syntax.md).

The following use cases are discussed at the end of that reference
section:

- A job dependency on the specific string value of a property
- A job dependency on the specific numeric (integer) value of a
    property
- A job dependency on a machine running no jobs
- Triggering events based on deviation from estimated run time
- Setting the value of a property with an expression
