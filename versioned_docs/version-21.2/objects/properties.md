# Properties

Properties are attributes of other objects in OpCon. The values of properties can be retrieved by tokenizing the property name and using that token in OpCon events or on job definition details.

## Property Types

There are three types of properties in OpCon:

- [System Properties](#System): System properties are read-only and are included with the OpCon installation.
- [Managed System Properties](#Managed): Managed system properties are ones that are date- or time-related and require a definition for the desired format.
- [User-defined Properties](#User-def): User-defined properties are any name with an associated value.

### System Properties

System Properties are default OpCon variables. System properties beginning with a dollar sign ($) have values that are not configurable. Other system properties allow you to access values of other OpCon objects.

All of the system properties below can be resolved through
[Tokens](./using-properties.md#tokens)
 when placed in schedule completion events, job definitions, job
events, and notifications defined in Notification Manager; however, only
the $OPCONVER property can be used in external OpCon events.

The System Properties beginning with a dollar sign ($) in the table
below are:

- Automatically provided
- Case-sensitive
- Read-only

|System Property|Description|
|--- |--- |
|JI.$ACTUAL RUN TIME|Resolves to the run time of the job calculated from the difference between End Time and Start Time of the job to which the property is attached. The value returns in the standard format: hh:mm:ss. If the job has not yet finished, the value returns N/A.|
|JI.$ARRIVED BASE FILE NAME|Resolves to the file name returned by a File Arrival job. For example: "File20180506"|
|JI.$ARRIVED FILE EXTENSION|Resolves to the file extension returned by a File Arrival job. For example: ".txt"|
|JI.$ARRIVED FILE NAME|Resolves to the full path and file name returned by a File Arrival job. For example: "D:\NewFiles\File20180506.txt"|
|JI.$ARRIVED FILE PATH|Resolves to the directory path returned by a File Arrival job. For example: "D:\NewFiles"|
|JI.$ARRIVED SHORT FILE NAME|Resolves to the file name and extension returned by a File Arrival job. For example: "File20180506.txt"|
|JI.$DEPARTMENT NAME|Resolves to the name of the department associated with the job in the Daily tables.|
|JI.$EST RUN TIME|Resolves to the estimated run time of the job to which the property is attached. The value returns in the standard format: hh:mm:ss.|
|$FREQUENCY NAME|Resolves to the name of the frequency of the job to which the property is attached.|
|$JOB NAME|Resolves to the full name of the job (from the Daily tables) to which the property is attached.|
|$JOB STATUS|Resolves to the status of the job (from the Daily tables) to which the property is attached.|
|$JOB STATUS CATEGORY|Resolves to the status category of the job (from the Daily tables) to which the property is attached.|
|$JOB TERMINATION|Resolves to the full exit condition of the job to which the property is attached.|
|$JOBID|Resolves to the 10-digit unique number of the job to which the property is attached (e.g., 0000049895).|
|$JOBID CMP|Resolves to the full name of the job (from the Daily tables) and unique number of the job to which the property is attached. The value is a compressed value with no spaces (e.g., Backup0000049895).|
|$JOBID LONG|The SAM resolves this property to the first 12 characters of the full name of the job (from the Daily tables) and unique number of the job to which the property is attached. The long format contains 27 characters: the 12 characters of the Job name in the first 12 characters, spaces in the next 5 characters, and a 10-digit unique number in the last 10 characters (e.g., Backup 0000049895).|
|$MACHINE NAME|Resolves to the name of the machine assigned to the job to which the property is attached. If a machine has not yet been assigned to the job, the value returns N/A.|
|MI.$MACHINE OPER STATUS|Resolves to the Operator Status of the machine assigned to the job to which the property is attached. The Operator Status is the status set by an OpCon administrator.|
|MI.$MACHINE NET STATUS|Resolves to the Network Status of the machine assigned to the job to which the property is attached. The Network Status is the status according to the SMA Network Communications component (SMANetCom).|
|MI.$MACHINE RUNNING JOBS|Resolves to the string  value for the number of jobs currently running on the machine.|
|$MASTER JOB NAME|Resolves to the original Master name of the job (as it was when the job was built or added to the Daily) to which the property is attached.|
|$MASTER SCHEDULE NAME|Resolves to the original master name of the schedule (as it was when the schedule was built into the Daily) to which the property is attached.|
|JI.$MAX RUN TIME|Resolves to the maximum run time of the job from the Daily tables. The value returns in the standard format: hh:mm:ss.|
|$NOTIFYID|Resolves to the Notification ID of the event that caused the current notification. NOTE: This property can be only be resolved by SMA Notify Handler and no other OpCon component.|
|$OPCONVER|Resolves to the CD Build Version of OpCon Instance as defined in the OpCon database.|
|JI.$RESTART STEP|Resolves to the alphanumeric value defined for the job’s restart step.|
|RM.ResourceName|Resolves to the maximum number of available resources for the resource named after the period. This value always returns as an integer.|
|RU.ResourceName|Resolves to the number of Resources in Use for the resource named after the period. This value always returns as an integer.|
|$SCHEDULE NAME|Resolves to the full name of the schedule (from the Daily tables) to which the property is attached.|
|$SCHEDULE ID|Resolves to the ID number of the schedule to which the property is attached.|
|$SCHEDULE INST|Resolves to the instance number of the schedule to which the property is attached.|
|JI.$SKD STATU|Resolves to the status of the schedule (from the Daily tables) to which the property is attached.|
|SI.$SKD STATUS|Resolves to the status of the schedule (from the Daily tables) to which the property is attached.|
|JI.$SKD STATUS CATEGORY|Resolves to the status category of the schedule (from the Daily tables) to which the property is attached.|
|SI.$SKD STATUS CATEGORY|Resolves to the status category of the schedule (from the Daily tables) to which the property is attached.|
|$START COMMAND|Resolves to the value of the start command the LSAM attempted when the job was submitted to the operating system. This property will only have a value after the job starts and if the agent is a high enough version to support this feature. The following platforms support this feature as of the version listed:Microsoft LSAM - Version 16.01.00z/OS LSAM - Version 15.07.01 (refer to Start Command for more information)MCP LSAM - Version 16.0UNIX LSAM - Version 17.1.0|
|TH.ThresholdName|Resolves to the current value of the threshold named after the period. This value always returns as an integer.|

### Managed System Properties

Managed System Properties are default Date- and Time-related variables with values that are configurable. These properties require an entry to be made in their value to define the format.

All of the managed system properties below can be resolved through [Tokens](./using-properties.md#tokens) when placed in Schedule Completion Events, Job Definitions, Job Events, and notifications defined in the Notification Manager; however, only the $DATE, $TIME, and $NOW properties may be used with external OpCon events. All Managed System Properties are case-sensitive.

The default values for the Managed System Properties are provided in the table.

|Managed System Property|Description|Default Format|
|--- |--- |--- |
|$DATE|Resolves to the current date.|Short Date|
|$JOB STARTTIME|Resolves to the start time of the associated job. If the job has not yet started, the value returns N/A.|yyyy/MM/dd hh:mm:ss|
|$JOB ENDTIME|Resolves to the end time of the associated job. If the job has not yet ended, the value returns N/A.|yyyy/MM/dd hh:mm:ss|
|$NOW|Resolves to the current date and time.|General Date|
|$SCHEDULE DATE|Resolves to the schedule date of the associated schedule.|dd-mmm-yyyy|
|$SCHEDULE DATEMS|Resolves to the Microsoft Formatted date format for the associated schedule.|#####|
|$TIME|Resolves to the current time.|Long Time|

To change the value of a Managed System Property, use one of the predefined formats or create a user-defined format.

Predefined formats must be specified by name, as listed in the Predefined Date and Time Formats table. User-defined formats must be specified based on specific characters listed in the User-defined Date and Time Format Characters table and must be in the same syntax recognized by the regional settings of the user running SMA Service Manager.

:::caution
The date calculation is incorrect if the two formats are in opposition. For example, if the Regional Settings have a format of mm/dd/yyyy and the property has a format of dd/mm/yyyy, the calculation would be imprecise.
:::

|Character|Meaning|
|--- |--- |
|#####|Substitute the date as a Microsoft formatted numeric date (Number of days since January 1, 1900).|
|a/p|Use the 12-hour clock and substitute a lowercase 'a' with any hour before noon; substitute a lowercase 'p' with any hour between noon and midnight.|
|A/P|Use the 12-hour clock and substitute an uppercase 'A' with any hour before noon; substitute an uppercase P with any hour between noon and midnight.|
|am/pm|Use the 12-hour clock and substitute a lowercase a.m. with any hour before noon; substitute a lowercase p.m. with any hour between noon and midnight.|
|AM/PM|Use the 12-hour clock and substitute an uppercase A.M. with any hour before noon; substitute an uppercase P.M. with any hour between noon and midnight.|
|c|Substitutes the date as ddddd and displays the time as ttttt, in that order. Only date information is displayed if there is no fractional part to the date serial number; only time information is displayed if there is no integer portion.|
|d|Substitute the day as a number without a leading zero (1 – 31). Examples:

                                    6/1/2009 1:45:30 PM -> 1
                                    6/15/2009 1:45:30 PM -> 15|
|dd|Substitute the day as a number with a leading zero (01 – 31). Examples:

                                    6/1/2009 1:45:30 PM -> 01
                                    6/15/2009 1:45:30 PM -> 15|
|ddd|Substitute the day as an abbreviation (Sun-Sat). Examples:

                                    6/15/2009 1:45:30 PM -> Mon (en-US)
                                    6/15/2009 1:45:30 PM -> Пн (ru-RU)
                                    6/15/2009 1:45:30 PM -> lun. (fr-FR)|
|dddd|Substitute the day as a full name (Sunday-Saturday). Examples:

                                    6/15/2009 1:45:30 PM -> Monday (en-US)
                                    6/15/2009 1:45:30 PM -> понедельник (ru-RU)
                                    6/15/2009 1:45:30 PM -> lundi (fr-FR)|
|ddddd|Substitute a short date pattern (including day, month, and year). For example: 6/15/2009 (en-US)|
|dddddd|Substitute a long date pattern (including day, month, and year). For example: Monday, June 15, 2009 (en-US).|
|f|Substitute a full date/time pattern with short time. Examples:

                                    6/15/2009 1:45:30 PM -> Monday, June 15, 2009 1:45 PM (en-US)
                                    6/15/2009 1:45:30 PM -> den 15 juni 2009 13:45 (sv-SE)
                                    6/15/2009 1:45:30 PM -> Δευτέρα, 15 Ιουνίου 2009 1:45 μμ (el-GR)|
|F|Substitute a full date/time pattern with long time. Examples:

                                    6/15/2009 1:45:30 PM -> Monday, June 15, 2009 1:45:30 PM (en-US)
                                    6/15/2009 1:45:30 PM -> den 15 juni 2009 13:45:30 (sv-SE)
                                    6/15/2009 1:45:30 PM -> Δευτέρα, 15 Ιουνίου 2009 1:45:30 μμ (el-GR)|
|g|Substitute a general date/time pattern with short time. Examples:

                                    6/15/2009 1:45:30 PM -> 6/15/2009 1:45 PM (en-US)
                                    6/15/2009 1:45:30 PM -> 15/06/2009 13:45 (es-ES)
                                    6/15/2009 1:45:30 PM -> 2009/6/15 13:45 (zh-CN)|
|G|Substitute a general date/time pattern with long time. Examples:

                                    6/15/2009 1:45:30 PM -> 6/15/2009 1:45:30 PM (en-US)
                                    6/15/2009 1:45:30 PM -> 15/06/2009 13:45:30 (es-ES)
                                    6/15/2009 1:45:30 PM -> 2009/6/15 13:45:30 (zh-CN)|
|h/H|Substitute the hour as a number without leading zeros (0 – 23). Examples:

                                    6/15/2009 1:45:30 AM -> 1
                                    6/15/2009 1:45:30 PM -> 13|
|hh/HH|Substitute the hour as a number with leading zeros (00 – 23). Examples:

                                    6/15/2009 1:45:30 AM -> 01
                                    6/15/2009 1:45:30 PM -> 13|
|j|Substitute the day of the year as a Julian date with leading zeros (001 – 366).|
|m|Substitute the month as a number without a leading zero (1 – 12). If m immediately follows h or hh, the minute rather than the month is displayed.|
|mm|Substitute the month as a number with a leading zero (01 – 12). If m immediately follows h or hh, the minute rather than the month is displayed.|
|mmm|Substitute the month as an abbreviation (Jan-Dec). Examples:

                                    6/15/2009 1:45:30 PM -> Jun (en-US)
                                    6/15/2009 1:45:30 PM -> juin (fr-FR)
                                    6/15/2009 1:45:30 PM -> Jun (zu-ZA)|
|mmmm|Substitute the month as a full month name (January-December). Examples:

                                    6/15/2009 1:45:30 PM -> June (en-US)
                                    6/15/2009 1:45:30 PM -> juni (da-DK)
                                    6/15/2009 1:45:30 PM -> uJuni (zu-ZA)|
|n|Substitute the minute as a number without leading zeros (0 – 59). Examples:

                                    6/15/2009 1:09:30 AM -> 9
                                    6/15/2009 1:09:30 PM -> 9|
|nn|Substitute the minute as a number with leading zeros (00 – 59). Examples:

                                    6/15/2009 1:09:30 AM -> 09
                                    6/15/2009 1:09:30 PM -> 09|
|q|Substitute the quarter of the year as a number (1 –  4). Examples:

                                    3/15/2009 1:09:30 AM -> 1
                                    6/15/2009 1:09:30 PM -> 2
                                    9/15/2009 1:09:30 PM -> 3
                                    12/15/2009 1:09:30 PM -> 4|
|R, r|Substitute a RFC1123 pattern. Example:

                                    6/15/2009 1:45:30 PM -> Mon, 15 Jun 2009 20:45:30 GMT|
|s|Substitute the second as a number without leading zeros (0 – 59). Example:

                                    6/15/2009 1:45:09 PM -> 9|
|ss|Substitute the second as a number with leading zeros (00 – 59). Example:

                                    6/15/2009 1:45:09 PM -> 09|
|t|Substitute a short time pattern. Examples:

                                    6/15/2009 1:45:30 PM -> 1:45 PM (en-US)
                                    6/15/2009 1:45:30 PM -> 13:45 (hr-HR)
                                    6/15/2009 1:45:30 PM -> 01:45 م (ar-EG)|
|T|Substitute a long time pattern. Examples:

                                    6/15/2009 1:45:30 PM -> 1:45:30 PM (en-US)
                                    6/15/2009 1:45:30 PM -> 13:45:30 (hr-HR)
                                    6/15/2009 1:45:30 PM -> 01:45:30 م (ar-EG)|
|tttt|Substitute a time in long time format (including hour, minute, and second),  Examples:

                                    6/15/2009 1:45:30 PM -> 1:45:30 PM (en-US)
                                    6/15/2009 1:45:30 PM -> 13:45:30 (hr-HR)
                                    6/15/2009 1:45:30 PM -> 01:45:30 م (ar-EG)|
|u|Substitute a universal sortable date/time pattern. Example:

                                    6/15/2009 1:45:30 PM -> 2009-06-15 20:45:30Z
                                
                                 
                                Note: This format character displays a pattern defined by the DateTimeFormatInfo.FullDateTimePattern property associated with the current thread or by a specified format provider. Note that the time displayed is for the universal, rather than local time.|
|U|Substitute a universal full date/time pattern. Examples:

                                    6/15/2009 1:45:30 PM -> Monday, June 15, 2009 8:45:30 PM (en-US)
                                    6/15/2009 1:45:30 PM -> den 15 juni 2009 20:45:30 (sv-SE)
                                    6/15/2009 1:45:30 PM -> Δευτέρα, 15 Ιουνίου 2009 8:45:30 μμ (el-GR)
                                
                                 
                                Note: This format character displays a pattern defined by the DateTimeFormatInfo.FullDateTimePattern property associated with the current thread or by a specified format provider. Note that the time displayed is for the universal, rather than local time.|
|w|Substitute the day of the week as a number (1 for Sunday through 7 for Saturday).|
|ww|Substitute the week of the year as a number (1 – 53).|
|y|Substitute the day of the year as a Julian date (1 – 366). Leading zeros are suppressed.|
|yy|Substitute the year as a two-digit number (00 – 99). Examples:

                                    1/1/0001 12:00:00 AM -> 01
                                    1/1/0900 12:00:00 AM -> 00
                                    1/1/1900 12:00:00 AM -> 00
                                    6/15/2009 1:45:30 PM -> 09|
|yyyy|Substitute the year as a four-digit number (100 – 9999). Examples:

                                    1/1/0001 12:00:00 AM -> 0001
                                    1/1/0900 12:00:00 AM -> 0900
                                    1/1/1900 12:00:00 AM -> 1900
                                    6/15/2009 1:45:30 PM -> 2009|
|zz|Hours offset from UTC, with a leading zero for a single-digit value. Example:

                                    6/15/2009 1:45:30 PM -07:00 -> -07|
|zzz|Hours and minutes offset from UTC. Example:

                                    6/15/2009 1:45:30 PM -07:00 -> -07:00|

:::caution
The user-defined format characters listed in the table below are case-sensitive.
:::

|Character|Meaning|
|--- |--- |
|#####|Substitute the date as a Microsoft formatted numeric date (Number of days since January 1, 1900).|
|a/p|Use the 12-hour clock and substitute a lowercase 'a' with any hour before noon; substitute a lowercase 'p' with any hour between noon and midnight.|
|A/P|Use the 12-hour clock and substitute an uppercase 'A' with any hour before noon; substitute an uppercase P with any hour between noon and midnight.|
|am/pm|Use the 12-hour clock and substitute a lowercase a.m. with any hour before noon; substitute a lowercase p.m. with any hour between noon and midnight.|
|AM/PM|Use the 12-hour clock and substitute an uppercase A.M. with any hour before noon; substitute an uppercase P.M. with any hour between noon and midnight.|
|c|Substitutes the date as ddddd and displays the time as ttttt, in that order. Only date information is displayed if there is no fractional part to the date serial number; only time information is displayed if there is no integer portion.|
|d|Substitute the day as a number without a leading zero (1 – 31). Examples:

                                    6/1/2009 1:45:30 PM -> 1
                                    6/15/2009 1:45:30 PM -> 15|
|dd|Substitute the day as a number with a leading zero (01 – 31). Examples:

                                    6/1/2009 1:45:30 PM -> 01
                                    6/15/2009 1:45:30 PM -> 15|
|ddd|Substitute the day as an abbreviation (Sun-Sat). Examples:

                                    6/15/2009 1:45:30 PM -> Mon (en-US)
                                    6/15/2009 1:45:30 PM -> Пн (ru-RU)
                                    6/15/2009 1:45:30 PM -> lun. (fr-FR)|
|dddd|Substitute the day as a full name (Sunday-Saturday). Examples:

                                    6/15/2009 1:45:30 PM -> Monday (en-US)
                                    6/15/2009 1:45:30 PM -> понедельник (ru-RU)
                                    6/15/2009 1:45:30 PM -> lundi (fr-FR)|
|ddddd|Substitute a short date pattern (including day, month, and year). For example: 6/15/2009 (en-US)|
|dddddd|Substitute a long date pattern (including day, month, and year). For example: Monday, June 15, 2009 (en-US).|
|f|Substitute a full date/time pattern with short time. Examples:

                                    6/15/2009 1:45:30 PM -> Monday, June 15, 2009 1:45 PM (en-US)
                                    6/15/2009 1:45:30 PM -> den 15 juni 2009 13:45 (sv-SE)
                                    6/15/2009 1:45:30 PM -> Δευτέρα, 15 Ιουνίου 2009 1:45 μμ (el-GR)|
|F|Substitute a full date/time pattern with long time. Examples:

                                    6/15/2009 1:45:30 PM -> Monday, June 15, 2009 1:45:30 PM (en-US)
                                    6/15/2009 1:45:30 PM -> den 15 juni 2009 13:45:30 (sv-SE)
                                    6/15/2009 1:45:30 PM -> Δευτέρα, 15 Ιουνίου 2009 1:45:30 μμ (el-GR)|
|g|Substitute a general date/time pattern with short time. Examples:

                                    6/15/2009 1:45:30 PM -> 6/15/2009 1:45 PM (en-US)
                                    6/15/2009 1:45:30 PM -> 15/06/2009 13:45 (es-ES)
                                    6/15/2009 1:45:30 PM -> 2009/6/15 13:45 (zh-CN)|
|G|Substitute a general date/time pattern with long time. Examples:

                                    6/15/2009 1:45:30 PM -> 6/15/2009 1:45:30 PM (en-US)
                                    6/15/2009 1:45:30 PM -> 15/06/2009 13:45:30 (es-ES)
                                    6/15/2009 1:45:30 PM -> 2009/6/15 13:45:30 (zh-CN)|
|h/H|Substitute the hour as a number without leading zeros (0 – 23). Examples:

                                    6/15/2009 1:45:30 AM -> 1
                                    6/15/2009 1:45:30 PM -> 13|
|hh/HH|Substitute the hour as a number with leading zeros (00 – 23). Examples:

                                    6/15/2009 1:45:30 AM -> 01
                                    6/15/2009 1:45:30 PM -> 13|
|j|Substitute the day of the year as a Julian date with leading zeros (001 – 366).|
|m|Substitute the month as a number without a leading zero (1 – 12). If m immediately follows h or hh, the minute rather than the month is displayed.|
|mm|Substitute the month as a number with a leading zero (01 – 12). If m immediately follows h or hh, the minute rather than the month is displayed.|
|mmm|Substitute the month as an abbreviation (Jan-Dec). Examples:

                                    6/15/2009 1:45:30 PM -> Jun (en-US)
                                    6/15/2009 1:45:30 PM -> juin (fr-FR)
                                    6/15/2009 1:45:30 PM -> Jun (zu-ZA)|
|mmmm|Substitute the month as a full month name (January-December). Examples:

                                    6/15/2009 1:45:30 PM -> June (en-US)
                                    6/15/2009 1:45:30 PM -> juni (da-DK)
                                    6/15/2009 1:45:30 PM -> uJuni (zu-ZA)|
|n|Substitute the minute as a number without leading zeros (0 – 59). Examples:

                                    6/15/2009 1:09:30 AM -> 9
                                    6/15/2009 1:09:30 PM -> 9|
|nn|Substitute the minute as a number with leading zeros (00 – 59). Examples:

                                    6/15/2009 1:09:30 AM -> 09
                                    6/15/2009 1:09:30 PM -> 09|
|q|Substitute the quarter of the year as a number (1 –  4). Examples:

                                    3/15/2009 1:09:30 AM -> 1
                                    6/15/2009 1:09:30 PM -> 2
                                    9/15/2009 1:09:30 PM -> 3
                                    12/15/2009 1:09:30 PM -> 4|
|R, r|Substitute a RFC1123 pattern. Example:

                                    6/15/2009 1:45:30 PM -> Mon, 15 Jun 2009 20:45:30 GMT|
|s|Substitute the second as a number without leading zeros (0 – 59). Example:

                                    6/15/2009 1:45:09 PM -> 9|
|ss|Substitute the second as a number with leading zeros (00 – 59). Example:

                                    6/15/2009 1:45:09 PM -> 09|
|t|Substitute a short time pattern. Examples:

                                    6/15/2009 1:45:30 PM -> 1:45 PM (en-US)
                                    6/15/2009 1:45:30 PM -> 13:45 (hr-HR)
                                    6/15/2009 1:45:30 PM -> 01:45 م (ar-EG)|
|T|Substitute a long time pattern. Examples:

                                    6/15/2009 1:45:30 PM -> 1:45:30 PM (en-US)
                                    6/15/2009 1:45:30 PM -> 13:45:30 (hr-HR)
                                    6/15/2009 1:45:30 PM -> 01:45:30 م (ar-EG)|
|tttt|Substitute a time in long time format (including hour, minute, and second),  Examples:

                                    6/15/2009 1:45:30 PM -> 1:45:30 PM (en-US)
                                    6/15/2009 1:45:30 PM -> 13:45:30 (hr-HR)
                                    6/15/2009 1:45:30 PM -> 01:45:30 م (ar-EG)|
|u|Substitute a universal sortable date/time pattern. Example:

                                    6/15/2009 1:45:30 PM -> 2009-06-15 20:45:30Z
                                
                                 
                                Note: This format character displays a pattern defined by the DateTimeFormatInfo.FullDateTimePattern property associated with the current thread or by a specified format provider. Note that the time displayed is for the universal, rather than local time.|
|U|Substitute a universal full date/time pattern. Examples:

                                    6/15/2009 1:45:30 PM -> Monday, June 15, 2009 8:45:30 PM (en-US)
                                    6/15/2009 1:45:30 PM -> den 15 juni 2009 20:45:30 (sv-SE)
                                    6/15/2009 1:45:30 PM -> Δευτέρα, 15 Ιουνίου 2009 8:45:30 μμ (el-GR)
                                
                                 
                                Note: This format character displays a pattern defined by the DateTimeFormatInfo.FullDateTimePattern property associated with the current thread or by a specified format provider. Note that the time displayed is for the universal, rather than local time.|
|w|Substitute the day of the week as a number (1 for Sunday through 7 for Saturday).|
|ww|Substitute the week of the year as a number (1 – 53).|
|y|Substitute the day of the year as a Julian date (1 – 366). Leading zeros are suppressed.|
|yy|Substitute the year as a two-digit number (00 – 99). Examples:

                                    1/1/0001 12:00:00 AM -> 01
                                    1/1/0900 12:00:00 AM -> 00
                                    1/1/1900 12:00:00 AM -> 00
                                    6/15/2009 1:45:30 PM -> 09|
|yyyy|Substitute the year as a four-digit number (100 – 9999). Examples:

                                    1/1/0001 12:00:00 AM -> 0001
                                    1/1/0900 12:00:00 AM -> 0900
                                    1/1/1900 12:00:00 AM -> 1900
                                    6/15/2009 1:45:30 PM -> 2009|
|zz|Hours offset from UTC, with a leading zero for a single-digit value. Example:

                                    6/15/2009 1:45:30 PM -07:00 -> -07|
|zzz|Hours and minutes offset from UTC. Example:

                                    6/15/2009 1:45:30 PM -07:00 -> -07:00|

|Format|Display|
|--- |--- |
|m/d/yy|12/7/08|
|d-mmmm-yy|7-December-08|
|d mmmm|7 December|
|mmmm-yy|December 08|
|hh:mm am/pm|08:50 p.m.|
|h:mm:ss a/p|8:50:35 p|
|h:mm|20:50|
|h:mm:ss|20:50:35|
|m/d/yy h:mm|12/7/08 20:50|

#### Offsets

Managed System Properties may be resolved with offsets. The syntax for
using offsets is: \[\[$XXXX(-nnnf)\]\].

|||
|--- |--- |
|$XXXX|This element is any valid managed system property ($DATE, $NOW, $SCHEDULE DATE, $TIME, and any user-defined variations to these).|
|-|This element is a plus (+) or minus (-) sign to indicate the direction of the offset.|
|n|This element is a numeric occurrence for the offset 1 through 32000.|
|f|This element is any valid format character denoting the unit of measure.
                                    If omitted, d (day) is used.
                                    Valid characters are: yy (year), q (quarter), m (month), eom (end of month), wk or ww (week), d (day), wd (working day), h (hour), n (minute), or s (second).
                                    The logic is derived by taking the calculated property value then adding or subtracting the n occurrences of the unit of measure. Examples:[[$SCHEDULE DATE(+3d)]] -> If schedule date is Dec 19th, 2016, this will evaluate to Dec 22nd, 2016[[$SCHEDULE DATE (+3q)]] -> If schedule date is Dec 19th, 2016, this will evaluate to Sep 19th, 2017[[$SCHEDULE DATE (+1m)]] -> If schedule date is Dec 19th, 2016, this will evaluate to Jan 19th, 2017[[$SCHEDULE DATE (+1eom)]] -> If date is Dec 19th, 2016, 2016, this will evaluate to Dec 31st, 2016|

#### Modified Managed System Properties

Modified managed system properties are copies of existing managed system
properties with different formats.

The modified properties must be named as follows (x\...x represent any
user-specified combination of characters):

- $DATExxxxxxxxxxxxxxx
- $TIMExxxxxxxxxxxxxxx
- $NOWxxxxxxxxxxxxxxxx
- $SCHEDULE DATExxxxxx

A value must be entered for the modified properties according one of the predefined formats in the [Predefined Date and Time Formats](#Predefined_Date_and_Time_Formats) table or a user-defined format using characters in the [User-defined Date and Time Format Characters](#User-defined_Date_and_Time_Format_Characters) table.

### User-defined Properties

A User-defined Property is a variable with any name associated with any
character value. A User-defined Property is resolved to the exact text
in the value. These properties can be associated with the following
objects:

- Remote Instance (RI)
- OpCon Instance (OI)
- Machines (Machine Instance (MI))
- Schedules (Schedule Instance (SI))
- Jobs (Job Instance (JI))
- Source Schedules (Source Schedule Instance (SSI))
- Source Jobs (Source Job Instance (SJI))

For additional information on implementing this concept, refer to [Using Properties for Automation](./using-properties.md).
