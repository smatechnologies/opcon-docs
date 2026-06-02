---
title: SMAHoliday
description: "Use SMAHoliday.exe to populate an OpCon calendar with holiday dates by running a configurable rule set from an INI file."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: procedural
---

# SMAHoliday

:::note
This topic describes running SMAHoliday as a Windows job. For instructions on running this utility in the OpCon Docker container, see [Running on OpCon in Docker](#running-on-opcon-in-docker).
:::

SMAHoliday (`SMAHoliday.exe`) is a utility that updates the OpCon database with calendar dates that represent holidays. The utility is installed to `<Target Directory>\OpConxps\MSLSAM\` with the Microsoft Agent package. You can run SMAHoliday as a scheduled OpCon job so that dependent jobs automatically receive updated calendar dates.

## Backwards Compatibility

SMAHoliday is compatible with the legacy `Holiday.exe` utility. Customers who want to convert should contact Continuous.

### Legacy Parameters

The following forward-slash parameters are accepted for backwards compatibility with `Holiday.exe`:

| Parameter | Description |
|---|---|
| `/C:` | Specifies the calendar name to update with holidays. |
| `/Y:` | Specifies the year for which holiday dates are processed and added to the database. |
| `/S:` | Works with the configuration file and processes only rules that match the specified tag. |

### Forward Slash Arguments

SMAHoliday accepts forward-slash arguments to support users already running `Holiday.exe`. The old `Holiday.exe` is found under the Utilities folder; `SMAHoliday.exe` is under the MSLSAM folder.

The following is an example of the legacy command-line syntax:

```
SMAHoliday.exe /C:"MasterHoliday" /Y:2017 /S:FR
```

:::note
For full utility capability, Continuous recommends using the dash (`-`) argument syntax.
:::

## Requirements

SMAHoliday requires the following:

- Microsoft Agent
- Microsoft .NET Framework 4.5
- `SMAODBCConfig.dat` file

## Configuration

To configure SMAHoliday, update the configuration file (`SMAHoliday.ini`) after installation.

### Configuration File Settings

The `SMAHoliday.ini` file controls the utility's behavior.

#### General Settings

| Setting | Description |
|---|---|
| `CalendarName` | Defines the name of the calendar to update. Default: `Master Holiday`. |
| `StartDate` | Defines the date from which the utility begins calculating holidays. Use MM/DD/YYYY format. |
| `DebugMode` | Controls whether the program outputs diagnostic messages. Valid values: `ON`, `OFF`. Default: `OFF`. |

#### FixedHolidays Settings

The `[FixedHolidays]` section defines rules that describe one or more dates to be calculated and added to a calendar. Each entry contains a rule, an optional tag, and an optional description. There are two types of fixed rules: Customized and Non-customized.

| Field | Description |
|---|---|
| Rule | Defines the FixedHoliday expression. |
| Tag | Optional. Limits processing to rules matching the tag specified on the command line. |
| Description | Optional. Describes the holiday (for example, `Labor Day`). |

:::tip Example
```
09/mo-1=usa ; Labor Day
```

- `09/mo-1` is the Rule (first Monday of September)
- `usa` is the Tag
- `Labor Day` is the Description
:::

**Customized fixed rules** use underscore-prefixed keywords for algorithmically calculated dates:

| Keyword | Calculation |
|---|---|
| `Easter_Sun` | Easter Sunday, calculated using the Paschal algorithm (valid through year 4099 A.D.). |
| `Easter_Monday` | Paschal algorithm Easter date plus one day. |
| `Easter_Friday` | Paschal algorithm Easter date minus two days. |
| `Ass_Thu` | Paschal algorithm Easter date plus 39 days (Ascension Day). |
| `Whit_Sunday` | Paschal algorithm Easter date plus 49 days (Pentecôte). |
| `Whit_Monday` | Paschal algorithm Easter date plus 50 days (Le lundi de Pentecôte). |

**Non-customized fixed rules** use the following expression syntax:

| Expression | Description |
|---|---|
| `MM/DD` | A specific month and day (for example, `01/01` for New Year's Day). To specify February 29, add `02/29`; the utility processes this date only in leap years. |
| `d` + 1–7 | Day of week (for example, `d1` = Sunday, `d7` = Saturday). |
| `w` + 1–4 or `wl` | Week of month (for example, `w3` = third week; `wl` = last week, using lowercase L). |
| `m` + 1–12 | Month (for example, `m12` = December). |
| `DN` + number | Day number of the year, not to exceed 365 or 366 (for example, `DN365`). |
| `MM/dd-N` | Month number, two-letter day abbreviation, and week number (for example, `11/fr-4` for Black Friday). Valid week numbers: 1–3 or `l` (lowercase L) for last week. |

:::tip Example
Common FixedHoliday rules:

- `WN20` — Week 20 is a holiday week
- `d1` — All Sundays (six-day workweek)
- `d7` — All Saturdays (five-day workweek)
- `d1/w1` — First day of the first week for all months
- `wl/m1` — Last week of January
- `d2/w3/m1` or `01/mo-3=usa ; Martin Luther King, Jr. Day`
- `d2/w3/m1` or `02/mo-3=usa ; Presidents Day`
- `d2/wl/m5` or `05/mo-l=usa ; Memorial Day`
- `d2/w1/m9` or `09/mo-1=usa ; Labor Day`
- `d2/w2/m10` or `10/mo-2=usa ; Columbus Day`
- `d5/w4/m11` or `11/th-4=usa ; Thanksgiving Day`
- `Easter_Sun=usa ; Easter Sunday`
- `Easter_Monday=usa ; Easter Monday`
- `Easter_Friday=usa ; Easter Friday`
- `Whit_Sunday=fr ; Pentecôte`
- `Whit_Monday=fr ; Lundi Pentecôte`
- `Ass_Thu=fr ; Jeudi Ascension`
:::

#### VariableHoliday Settings

A `[VariableHoliday#N]` section defines a date with an If-Then condition that shifts the output date when a fixed date falls on a weekend. Each section is numbered sequentially starting from `#1`.

| Field | Description |
|---|---|
| `date` | Defines the base date expression for the variable holiday. |
| `condition` | Defines the If-Then condition. Format: `if outputdate == d1 then +1 \|\| if outputdate == d7 then -1`. Multiple conditions are allowed; combine with `&&` (AND) or `\|\|` (OR). |
| `tag` | Optional. Matches the tag from the command line. Comma-separated values are supported (for example, `Colombia,USA`). |
| `InclusiveDate` | Valid values: `No` (default), `Yes`. When set to `Yes`, the utility yields two dates — the original date and the shifted date — when the condition is true. |

:::tip Example — InclusiveDate=No
```ini
date=01/01
condition=if outputdate == d1 then +1 || if outputdate == d7 then -1
tag=New Years Day
InclusiveDate=No
```

- If 01/01 falls on Sunday (d1), the output date moves forward one day (Monday, 01/02). Result: one date.
- If 01/01 falls on Saturday (d7), the output date moves back one day (Friday, 12/31). Result: one date.
:::

:::tip Example — InclusiveDate=Yes
```ini
date=01/01
condition=if outputdate == d1 then +1 || if outputdate == d7 then -1
tag=New Years Day
InclusiveDate=Yes
```

- If 01/01 falls on Sunday (d1), the output date moves forward one day (Monday, 01/02) and also includes Sunday (01/01). Result: two dates.
- If 01/01 falls on Saturday (d7), the output date moves back one day (Friday, 12/31) and also includes Saturday (01/01). Result: two dates.
:::

#### RangeHoliday Settings

A `[RangeHolidays]` section defines a continuous range of dates to mark in a calendar. Each entry consists of two fixed rules separated by an equal sign (`=`). Range rules cannot include a tag and must be placed in the `[RangeHolidays]` or `[Range]` section.

:::tip Example
```
02/15=02/20
```

This rule adds the following dates: 02/15, 02/16, 02/17, 02/18, 02/19, 02/20.
:::

:::tip Example
```ini
[Range]
01/mo-3=02/mo-1
02/02=02/20
01/01=-4
Easter_Fri=4
```
:::

## Command-Line Syntax

:::note
SMAHoliday is standardized to US English localization. The utility processes only US date formats (MM/DD/YYYY).
:::

To override a setting in `SMAHoliday.ini` without modifying the file, run SMAHoliday as a command-line job. Use the following syntax:

```
SMAHoliday.exe -c MyCalendarName -t USA -i <INIPathAndFileName> -d 01/01/2017
```

### Parameters

| Parameter | Description |
|---|---|
| `-c` | Specifies the calendar name to update with holidays. |
| `-d` | Specifies the start date for this run. Overrides `StartDate` in `SMAHoliday.ini`. |
| `-t` | Specifies the tag to match when processing rules. Only rules with this tag are processed. |
| `-i` | Specifies the path and file name of the configuration file. Use this parameter to read an INI file in a non-default location or with a non-default name. |
| `-o` | Converts a legacy `Holiday.exe` configuration file to the format used by SMAHoliday. Provide the path to the old configuration file. |
| `-b` | Specifies the path to the `SMAODBCConnection.DAT` file. Use when the connection file is in a non-default location. |
| `-p` | Specifies the country-language culture code (for example, `en-US`, `fr-FR`). |
| `-g` | Enables debug mode for this run (flag; no value required). |
| `-y` | Specifies the year to process. Equivalent to setting `StartDate` to January 1 of that year. |
| `-s` | Legacy compatibility alias for `-t` (tag/country filter). |

### Tags

The `-t` parameter works with the tag defined in `[FixedHolidays]` and `[VariableHoliday#N]` sections. A tag is placed after the rule, following an equal sign:

```
d1 = usa ; 6 day workweek
```

When you run the utility with `-t usa`, it processes only rules that include the `usa` tag. Tag matching is case-insensitive, and multiple tags can be specified as comma-separated values in the INI file.

### Sample Configuration File

```ini
[General]
CalendarName=MyHolidays
StartDate=01/01/2015
DebugMode=ON

[FixedHolidays]
d1 =usa; 6 day workweek
d7 =usa; 5 day workweek
01/mo-3 =usa; 3rd Monday of January MLK Day
02/mo-3 =usa; 3rd Monday February Presidents Day
05/mo-l =usa; 4th Monday of May - Memorial Day (uses L versus 1 (one), can be either)
09/mo-1 =usa; 1st Monday of September - Labor Day
10/mo-2 =usa; 2nd Monday of October - Columbus day
11/th-4 =usa; 4th Thursday of November - Thanksgiving Day
Easter_Sun =usa; Easter Sunday
Easter_Monday =usa; Easter Monday
Easter_Friday =usa; Easter Friday
Whit_Sunday =fr; Pentecôte
Whit_Monday =fr; Lundi Pentecôte
Ass_Thu =fr ; Jeudi Ascension

[VariableHoliday#1]
date=05/24
condition=if outputdate == d7 then -5 || if outputdate == d1 then -6
condition=if outputdate == d3 then -1 || if outputdate == d4 then -2
condition=if outputdate == d5 then -3 || if outputdate == d6 then -4
tag=usa
InclusiveDate=No

[VariableHoliday#2]
date=07/04
condition=if outputdate == d1 then +1 || if outputdate == d7 then -1
tag=usa
InclusiveDate=No

[VariableHoliday#3]
date=12/25
condition=if outputdate == d1 then +1 || if outputdate == d7 then -1
tag=usa
InclusiveDate=No
```

## Example INI File Template

```ini
[General]
CalendarName=MasterHoliday
StartDate=01/01/2015
DebugMode=OFF

[FixedHolidays]
d1; All Sundays
d7; All Saturdays
01/mo-3; 3rd Monday of January MLK Day
02/mo-3; 3rd Monday February Presidents Day
05/mo-l; 4th Monday of May - Memorial Day
09/mo-1; 1st Monday of September - Labor Day
10/mo-2; 2nd Monday of October - Columbus day
11/th-4; 4th Thursday of November - Thanksgiving Day

[VariableHoliday#1]
date=01/01
condition=if outputdate == d1 then +1 || if outputdate == d7 then -1
tag=
InclusiveDate=No

[VariableHoliday#2]
date=07/04
condition=if outputdate == d1 then +1 || if outputdate == d7 then -1
tag=
InclusiveDate=No

[VariableHoliday#3]
date=12/25
condition=if outputdate == d1 then +1 || if outputdate == d7 then -1
tag=
InclusiveDate=No
```

## Exit Codes

The following console message codes indicate the result of a SMAHoliday run:

| Code | Description |
|---|---|
| `02` | Warning during holiday processing. |
| `04` | `SMAHoliday.ini` is invalid or cannot be found. |
| `06` | Error applying culture settings. |
| `07` | Invalid calendar name or calendar does not exist. |
| `08` | Incorrect date format. |
| `10` | Could not connect to the database. The `SMAODBCConfiguration.dat` file is missing or invalid. |
| `12` | Calendar not found in the database. |

### Exit Code Override File (E.C.O.F.)

SMAHoliday supports the Exit Code Override File (E.C.O.F.) feature. When an exit code occurs, the utility writes the code and a diagnostic message to the E.C.O.F. file for further processing and debugging. For more information, see [Exit Code Override File (E.C.O.F.)](https://help.smatechnologies.com/opcon/agents/windows/latest/Files/Agents/Microsoft/Exit-Code-Override-File-(E.C.O.F.).md) in the Microsoft Agent online help.

## Running on OpCon in Docker

To run SMAHoliday in a Docker container using the embedded Linux Agent, follow these guidelines:

1. Set up the Linux job with the same parameters you would use for a Windows job.
2. Set the start image to: `dotnet /app/SMAHoliday.dll <arguments>`.
3. Place the `SMAHoliday.ini` file in the `/app/config` directory inside the container, mapped to any folder on the host machine.
4. Use the default **OpConOnLinux** Agent machine (available in the container) to run the utility jobs.
5. Find utility logs in `/app/log/Utilities` inside the container.
