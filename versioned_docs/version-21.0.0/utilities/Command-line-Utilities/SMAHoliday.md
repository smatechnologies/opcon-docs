# SMAHoliday

:::note
The information presented in this topic pertains largely to running the SMAHoliday utility as a Windows job. For instructions on running this utility in the OpCon Docker container, please refer to [Running on OpCon in Docker](#Running).
:::

SMAHoliday (SMAHoliday.exe) is a utility that updates the OpCon database
with Calendar dates that represent holidays. SMAHoliday.exe is installed
to the <Target Directory\>\\OpConxps\\ MSLSAM\\ directory with the
Microsoft LSAM package. The SMAHoliday utility can be run as a job if
desired.

## Backwards Compatibility

This utility is compatible with Holiday.exe. Customers who wish to
convert should contact SMA Technologies.

### Legacy Parameters

  Parameter   Description
  ----------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  /C:         This parameter specifies the CalendarName that will be updated with holidays.
  /Y:         This parameter specifies the year where the holiday dates must be processed and added to the database.
  /S:         This parameter works in conjunction with the configuration file and will only read and process rules that match the tag entered in the command-line parameter.

### Forward Slash Arguments

The SMAHoliday utility accepts arguments using the forward slash to
provide backwards compatibility for users already running the old
version called Holiday.exe. This program can be found under the
Utilities folder and the new utility can be found under the MSLSAM
folder.

The following is an example of the old command-line syntax:

SMAHoliday.exe /C:"MasterHoliday"/Y:2017 /S:FR

:::note
To get the full capability of this utility, SMA Technologies recommends using the dash (-) argument.
:::

## Requirements

The SMAHoliday utility requires the following:

- Microsoft LSAM
- Microsoft .NET Framework 4.5
- SMAODBCConfig.dat file

## Configuration

To configure SMAHoliday, update the SMAHoliday configuration file
(SMAHoliday.ini) after installation.

### Configuration File Settings

The SMAHoliday configuration file (SMAHoliday.ini) is used to configure
the utility.

#### General Settings

+------------------+--------------------------------------------------+
| General Settings | Definition                                       |
+==================+==================================================+
| CalendarName     | Defines the name of the calendar being           |
|                  | configured.                                      |
+------------------+--------------------------------------------------+
| StartDate        | -   Defines the date the utility begins          |
|                  |     calculating holidays.                        |
|                  | -   Use the following format:                    |
|                  |     -   MM/DD/YYYY (for US)                      |
+------------------+--------------------------------------------------+
| DebugMode        | -   Indicates whether or not the program         |
|                  |     provides messages that can help debug the    |
|                  |     program.                                     |
|                  | -   Valid values:                                |
|                  |     -   ON                                       |
|                  |     -   OFF                                      |
+------------------+--------------------------------------------------+

: SMAHoliday Configuration: General Settings

#### FixedHolidays Settings

FixedHolidays defines rules that describe one or more dates to be
calculated and entered in a calendar. Each FixedHoliday contains a rule,
tag, and description. There are two types of FixedRules: Customized and
Non-customized.

  FixedHolidays Settings   Description
  ------------------------ -------------------------------------------------------------------------------------------------
  Rule                     Defines the FixedHoliday expression.
  Tag                      Defines the tag for the rule. This tag will only work with the tag entered in the command line.
  Description              Defines the description of the rule, e.g., a description of the holiday.

  : SMAHoliday Configuration: FixedHolidays Settings

:::tip Example
09/mo-1=usa ; Labor Day

- 09/mo-1 defines the Rule.
- usa defines the Tag.
- Labor Day defines the Description.

:::

  FixedHolidays Customized Settings     Description
  ------------------------------------- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  Easter Sunday                         The Easter Sunday date is currently calculated by an astrological algorithm for all years until 4099 A.D (refer to [www.assa.org.au/edm](http://www.assa.org.au/edm "Calculate the Date of Easter Sunday") for more information). The additional Customized settings are calculated based on the same algorithm.
  Easter Monday (Le lundi de Pâques)    Calculated based on the Paschal-algorithm Easter date plus one day.
  Good Friday (Vendredi saint)          Calculated based on the Paschal-algorithm Easter date minus two days.
  Ascension Day (L'Ascension)          Calculated based on the Paschal-algorithm Easter date plus thirty-nine days.
  Whit Sunday (Pentecôte)               Calculated based on the Paschal-algorithm Easter date plus forty-nine days.
  Whit Monday (Le lundi de Pentecôte)   Calculated based on the Paschal-algorithm Easter date plus fifty days.

  : SMAHoliday Configuration: FixedHolidays Customized Settings

+----------------------------------+----------------------------------+
| FixedHolidays Non-customized     | Description                      |
| Settings                         |                                  |
+==================================+==================================+
| Short Date composed by month and | The month is written as a number |
| day                              | and the day is written as a      |
|                                  | number. use Month/Day format to  |
|                                  | specify individual dates as a    |
|                                  | holiday (e.g., 01/01 is New      |
|                                  | Years' Day, 02/29 is the leap   |
|                                  | year date).                      |
|                                  |                                  |
|                                  |                                  |
|                                  |                                  |
|                                  | **Note**: [To specify February   | |                                  | 29th as a holiday, add the date  |
|                                  | to the configuration file. A     |
|                                  | year does not need to be         |
|                                  | specified; the utility only      |
|                                  | processes February 29th as a     |
|                                  | holiday during leap              |
|                                  | years.]              |
+----------------------------------+----------------------------------+
| d = day of week                  | The day of week abbreviation     |
|                                  | must be followed by a number     |
|                                  | between 1 and 7 (e.g., d1).      |
+----------------------------------+----------------------------------+
| w = week of month                | The week can be followed by a    |
|                                  | number between 1 and 4 (e.g.,    |
|                                  | w3). You must enter the letter   |
|                                  | "l" (lowercase L) for the last |
|                                  | week of the month (e.g., wl).    |
+----------------------------------+----------------------------------+
| m = month                        | The month must be followed by a  |
|                                  | number between 1 and 12 (e.g.    |
|                                  | m12).                            |
+----------------------------------+----------------------------------+
| DN = day number                  | The day number abbreviation must |
|                                  | be followed by a number no       |
|                                  | greater than the maximum number  |
|                                  | of days in a year (e.g., 365 or  |
|                                  | 366).                            |
+----------------------------------+----------------------------------+
| Month number/Short day name-Week | The month is written as a        |
| number                           | number, the day is written using |
|                                  | a two-letter abbreviation, and   |
|                                  | the week is written as a number  |
|                                  | (e.g., 11/fr-4 ; Black Friday).  |
|                                  | Valid values for week number are |
|                                  | 1 to 3; you must enter the       |
|                                  | letter "l" (lowercase L) for   |
|                                  | the last week of the month       |
|                                  | (e.g., wl).                      |
+----------------------------------+----------------------------------+

: SMAHoliday Configuration: FixedHolidays Non-customized Settings

:::tip Example
The following examples describe FixedHoliday scenarios:

- WN20 = Week 20 is a holiday week
- d1 = All Sundays; 6 day workweek
- d7 = All Saturdays; 5 day workweek
- d1/w1 = First day of first week for all months
- wl/m1 = Last week of first month
- d2/w3/m1 or 01/mo-3=usa ; Martin Luther King, Jr. Day
- d2/w3/m1 or 02/mo-3=usa ; Presidents Day
- d2/wl/m5 or 05/mo-l=usa ; Memorial Day
- d2/w1/m9 or 09/mo-1=usa ; Labor Day
- d2/w2/m10 or 10/mo-2=usa ; Columbus Day
- d5/w4/m11 or 11/th-4=usa ; Thanksgiving Day
- Easter_Sun = Easter Sunday
- Easter_Monday = Easter Monday
- Easter_Friday = Easter Friday
- Whit_Sunday = Pentecoste
- Whit_Monday = Lundi Pentecoste
- Ass_Thu = Jeudi Assencion

:::

#### VariableHoliday Settings

VariableHoliday defines a type of FixedHoliday composed of a date,
condition, and description that can change the output date based on an
If-Then condition. A variable rule is a fixed rule with additional
parameters that allow conditional expressions to manipulate the output
date result of the rule.

+--------------------------+------------------------------------------+
| VariableHoliday Settings | Description                              |
+==========================+==========================================+
| Date                     | Defines the VariableHoliday expression.  |
+--------------------------+------------------------------------------+
| Condition                | -   The If-Then condition must be        |
|                          |     configured using the following       |
|                          |     format:                              |
|                          | -   Conditions can be simple or complex. |
|                          |     Complex conditions can use AND or OR |
|                          |     using the && or the \|\| respective. |
|                          |                                          |
|                          | **Note**: More than one condition can be |
|                          | defined.                                 |
+--------------------------+------------------------------------------+
| Tag                      | -   Defines the tag for the date.        |
|                          | -   This tag will only work with the tag |
|                          |     defined in the command line.         |
+--------------------------+------------------------------------------+
| Inclusive Date           | Valid values:                            |
|                          |                                          |
|                          | -   No (Default)                         |
|                          | -   Yes - Use yes to yield two dates:    |
|                          |     the Date input in the configuration  |
|                          |     file and the Output date from the    |
|                          |     conditional expression if equal to   |
|                          |     True.                                |
+--------------------------+------------------------------------------+

: SMAHoliday Configuration: VariableHoliday Settings

:::tip Example
The following example describes a VariableHoliday scenario where InclusiveDate=No:

- date=01/01
- condition=if outputdate == d1 then +1 || if outputdate == d7 then -1
- tag=New Years Day
- InclusiveDate=No

If 01/01 falls on a d1=Sunday, then the output date will move one day forwards (the holiday will be Monday=01/02) This will yield one date as a result.
**\- or \-**
If 01/01 falls on a d7=Saturday, then the output date will move one day backwards (the holiday will be Friday=12/31) This will yield one date as a result.
:::

:::tip Example
The following example describes a VariableHoliday scenario where InclusiveDate=Yes:

- date=01/01
- condition=if outputdate == d1 then +1 || if outputdate == d7 then -1
- tag=New Years Day
- InclusiveDate=Yes

If 01/01 falls on a d1=Sunday, then the output date will move one day forwards (the holiday will be Monday=01/02 and will also include Sunday=01/01). This will yield two dates as a result.
**\- or \-**
If 01/01 falls on a d7=Saturday, then the output date will move one day backwards (the holiday will be Friday=12/31 and it will also include Saturday=01/01). This will yield two dates as a result.
:::

#### RangeHoliday Settings

RangeHoliday defines a range of dates that need to be marked in a
calendar. A RangeHoliday is composed of two fixed rules (Customized or
Non-customized) separated by an equal sign (=). Range holidays have the
following restrictions: they must be included in the Range section and
they cannot be a Tag.

:::tip Example
02/15=02/20

This rule will result in the following dates:

02/15
02/16
02/17
02/18
02/19
02/20
:::

:::tip Example
The following is an example of different Range rules that can be configured in a calendar:

```ini
[Range]
01/mo-3=02/mo-1
02/02=02/20
01/01=-4
Easter_Fri=4
```

:::

## Command-line Syntax

This utility supports the following types of arguments: dash and forward
slash.

:::note
SMAHoliday is standardized to use (US) English localization, exclusively. The utility only processes US date formats.
:::

To override a setting in the SMAHoliday.ini file without having to
modify the configuration file, you can run SMAHoliday as a command-line
job. Use the following command-line syntax for the SMAHoliday.exe
program:

SMAHoliday.exe -c MyCalendarName -t USA -i <INIPathAndFileName\> -d
01/01/2017

### Optional Parameters

  Parameter   Description
  ----------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  -c          This parameter specifies the CalendarName that will be updated with holidays.
  -d          This parameter specifies the StartDate for this job. Use this parameter to override the StartDate in the main ini file.
  -t          This parameter specifies the tag SMAHoliday.exe will include when this job runs. Only holidays with the tag specified will be processed.
  -i          This parameter specifies the configuration path and ini file name to be read for this job. Use this parameter to read ini files saved in a different location or by a different name than the main ini file.
  -o          This parameter is for conversion purposes only. This parameter reads the path to the configuration file from the old Holiday.exe and generates a new configuration file to be processed by SMAHoliday.exe.

### Tags

Tag is an optional command-line parameter that works in conjunction with
the configuration (ini) file. You must set the tag in the configuration
file. Right after the rule, you need to add an equal sign then type the
desired tag.

For example, `d1 = usa ; 6 day workweek`. When running the program, enter `-t usa` and the program will only read
and process rules that match the tag entered in the command-line
parameter, which is *usa* in this case.

The following is a sample configuration file for SMAHoliday.exe:

\[General\]
CalendarName=MyHolidays

StartDate=01/01/2015

DebugMode=ON

\[FixedHolidays\]
d1 =usa; 6 day workweek

d7 =usa; 5 day workweek

01/mo-3 =usa; 3rd Monday of January MLK Day

02/mo-3 =usa; 3rd Monday February Presidents Day

05/mo-l =usa; 4th Monday of May - Memorial Day (uses L versus 1 (one),
can be either)

09/mo-1 =usa; 1st Monday of September - Labor Day

10/mo-2 =usa; 2nd Monday of October - Colombus day

11/th-4 =usa; 4th Thursday of November - Thanksgiving Day

Easter_Sun =usa; Easter Sunday

Easter_Monday =usa; Easter Monday

Easter_Friday =usa; Easter Friday

Whit_Sunday =fr; Pentecôte

Whit_Monday =fr; Lundi Pentecôte

Ass_Thu =fr ; Jeudi Assencion

\[VariableHoliday\#1\]
date=05/24

condition=if outputdate == d7 then -5 \|\| if outputdate == d1 then -6

condition=if outputdate == d3 then -1 \|\| if outputdate == d4 then -2

condition=if outputdate == d5 then -3 \|\| if outputdate == d6 then -4

tag=usa

InclusiveDate=No

\[VariableHoliday\#2\]
date=07/04

condition=if outputdate == d1 then +1 \|\| if outputdate == d7 then -1

tag=usa

InclusiveDate=No

\[VariableHoliday\#3\]
date=12/25

condition=if outputdate == d1 then +1 \|\| if outputdate == d7 then -1

tag=usa

InclusiveDate=No

## Example ini File Template

The following is an example of a SMAHoliday.ini file:

\[General\]
CalendarName=MasterHoliday

StartDate=01/01/2015

DebugMode=OFF

\[FixedHolidays\]
d1; All Sundays

d7; All Saturdays

01/mo-3; 3rd Monday of January MLK Day

02/mo-3; 3rd Monday February Presidents Day

05/mo-l; 4th Monday of May - Memorial Day

09/mo-1; 1st Monday of September - Labor Day

10/mo-2; 2nd Monday of October - Colombus day

11/th-4; 4th Thursday of November - Thanksgiving Day

\[VariableHoliday\#1\]
date=01/01

condition=if outputdate == d1 then +1 \|\| if outputdate == d7 then -1

tag=

InclusiveDate=No

\[VariableHoliday\#2\]
date=07/04

condition=if outputdate == d1 then +1 \|\| if outputdate == d7 then -1

tag=

InclusiveDate=No

\[VariableHoliday\#3\]
date=12/25

condition=if outputdate == d1 then +1 \|\| if outputdate == d7 then -1

tag=

InclusiveDate=No

## Exit Codes

The SMAHoliday.exe program can exit with the following codes:

  Status Number   Status Description
  --------------- --------------------------------------------------------------------------------------
  02              Warning during holiday process.
  04              The file SMAHoliday.ini is invalid or cannot be found.
  06              Error setting culture settings.
  07              Invalid calendar name or calendar does not exist.
  08              Incorrect date format.
  10              Could not connect to the database. Invalid or missing SMAODBCConfiguration.dat file.
  12              Calendar not found in the database.

  : SMAHoliday Exit Codes

### Exit Code Override File (E.C.O.F.)

SMAHoliday supports the Exit Code Override File (E.C.O.F.) feature for
further processing and debugging by writing the exit code and a message
into this file. For more information, refer to [Exit Code Override File (E.C.O.F.)](https://help.smatechnologies.com/opcon/agents/windows/latest/Files/Agents/Microsoft/Exit-Code-Override-File-(E.C.O.F.).md)
 in the **Microsoft LSAM** online help.

## Running on OpCon in Docker

In order to run the utility successfully in a Docker container, using
the Linux agent embedded in it, keep the following things in mind:

1. When running in Docker, the Linux job needs to be set up similar to
    a Windows job with the same parameters.
2. The start image for the Linux job should be: *dotnet
    /app/SMAHoliday.dll <arguments\>*.
3. The SMAHoliday.ini file will be located in the **/app/config**
    directory in the container, mapped to any folder on the host machine
    just like all other INI files.
4. Use the default **OpConOnLinux** agent machine (available in the
    container) to run the utility jobs.
5. Logs are found in **/app/log/Utilities** in the container.
