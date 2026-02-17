---
sidebar_label: 'Frequencies'
---

# Job and Schedule Frequencies

Frequencies specify the recurring days on which a schedule or a job should run. Frequencies are defined with a schedule or with a job in the Master, and are used during the Schedule Build process to determine which jobs should be run on a given day.

While a job frequency applies to an individual job, a schedule frequency applies to all jobs in a schedule. The following are the general characteristics of schedule and job frequencies:

- A schedule frequency is the frequency for all existing and future jobs in a schedule.
- Additions, deletions, and modifications of a schedule frequency affect all jobs on a schedule.

:::note
You cannot add a schedule frequency to a schedule if any jobs on the schedule already have other frequencies.
:::

## Multiple Frequencies and Frequency Priority

OpCon supports multiple frequency definitions on jobs and schedules for two reasons:

1. To provide for complex date patterns.
2. To provide a way to associate different job automation components with different frequencies (refer to [Job Automation Components](../job-components/overview.md)).

When multiple frequencies qualify for overlapping days, the priority of the frequencies becomes very important.

- When a schedule is built for a specific date, OpCon checks the highest priority frequency first. If that frequency qualifies for the build date, the job is added using that frequency. All lower priority frequencies are ignored for that date.
- When a schedule is built for a specific date and the highest priority frequency does qualify for that date, OpCon works down the priority list until it finds a frequency that does qualify. If no frequencies qualify, the job is not added to the schedule for that date.

To decide how to prioritize your frequencies, use these rules:

- Place frequencies that rarely qualify with a higher priority than frequencies that qualify more often.
- If you want it to subtract a pattern of days from other frequencies, set a Build Status of "Do Not Schedule," and place the frequency with a higher priority than the other frequencies. For more information, refer to [Job Build Status](../job-components/frequency.md#job).

:::info Example
If jobs must run every Monday, Friday, and the last day of the month, two frequency definitions are necessary.

- One frequency schedules for Monday and Friday for All Weeks.
- The second frequency schedules for the End of Period with the Month option.

Because we are using two frequencies, we will place the End of Month frequency as the highest priority. On the days the End Of Month frequency overlaps with Monday or Friday, the End Of Month frequency will be used for scheduling.
:::

:::info Example

- **Scenario**: A job is defined with two frequencies because on the last day of the month, the job has additional components (dependencies and events) that must be considered. The Daily frequency qualifies for every day. The Monthly frequency only qualifies on the last working day of the Month. The administrator sets the Monthly frequency to a higher priority than the Daily frequency to ensure the Monthly related job components are considered.
- **Result**: Because the Daily and Monthly frequencies resolve to the same day, at the end of the month builds the job with the Monthly frequency and its related job components. If the administrator had set the Daily frequency to the higher priority, the Monthly frequency and related job components would have been ignored.

:::

## Frequency Naming

The frequency name identifies the frequency definition. All frequency names are unique user-defined names with up to twenty characters. The frequency can be re-used on as many schedules and jobs as necessary. SMA Technologies recommends defining a frequency naming convention for the environment so it is easy to identify frequencies for reuse. The examples below provide suggested names for some common frequencies:

- **EveryMon-Fri-N**: Monday through Friday every week, and if there is a holiday, do "Not Schedule."
- **EndOfMonth-B**: The last day of the month, and if there is a holiday, schedule the day, i.e., "Before Date."
- **BegOfQuarter-A**: The first day of the quarter, and if there is a holiday, schedule the day, i.e., "After Date."

:::note
There are some scenarios that can cause duplicate frequency names to be created. SMA Technologies recommends resolving duplicate names with the SMA Frequency Utility. Refer to [Using Frequency Manager](../Files/UI/Enterprise-Manager/Using-Frequency-Manager.md) in the **Enterprise Manager** online help.
:::

## Frequency Definition

The frequency definition includes a value for "When to Schedule" and the related options for that value.

### When to Schedule

The "When to Schedule" options define logical scheduling groups. For each option, a table shows the related frequency options and their default settings. The tables also show frequency calculations for each option to explain the order OpCon applies all of the frequency options to calculate the list of qualifying dates.

- **On Occurrence**: The frequency defines an occurrence of a day in a month, quarter, or year. For example, a frequency can be defined for the third Tuesday and third Thursday of each month.

  |Frequency Options|Default|
  |--- |--- |
  |Day of the Week|None|
  |Calendar|None|
  |A/O/B/N|Before Date|
  |Day Type|Working|
  |On Occurrence|1st|
  |Periods|Month|

  - Frequency Calculations:
    1. OpCon calculates an initial list of qualifying dates using the Day of the Week selections, Occurrence, and Period.
    2. If a Calendar is associated, OpCon matches the dates in the Calendar to the initial list of qualifying dates and removes any matching dates from the list. For more information, refer to [Negative Annual Plan Calendars](../objects/calendars.md#negative-annual-plan-calendars).
    3. If the Day Type is set to Working, and a date in the list of qualifying dates is on a non-working day, OpCon applies the [A/O/B/N setting](#aobn). For more information on non-working days, refer to [Holiday Calendars](../objects/calendars.md#holiday-calendars).
    4. If there are any Advanced Frequency options defined for a job, those options override all other calculations. For more information, refer to [Advanced Frequency Settings](#advanced-frequency-settings).

- **Odd Weeks**: The frequency defines odd weeks of the year. OpCon considers a full week to begin on a Sunday. Therefore, the first odd week of every year begins with the first Sunday in January. Each alternate week for the rest of the year is considered an odd week.

  :::caution
  Be careful when using the Odd Weeks group because it is possible to have an extra week between odd weeks at year-end.
  :::

  |Frequency Options|Default|
  |--- |--- |
  |Day of the Week|None|
  |Calendar|None|
  |A/O/B/N|Before Date|
  |Day Type|Working|

  - Frequency Calculations:
    1. OpCon calculates an initial list of qualifying dates using the Day of the Week selections.
    2. If a Calendar is associated, OpCon matches the dates in the Calendar to the initial list of qualifying dates and removes any matching dates from the list. For more information, refer to [Negative Annual Plan Calendars](../objects/calendars.md#negative-annual-plan-calendars).
    3. If the Day Type is set to Working, and a date in the list of qualifying dates is on a non-working day, OpCon applies the [A/O/B/N setting](#aobn). For more information on non-working days, refer to [Holiday Calendars](../objects/calendars.md#holiday-calendars).
    4. If there are any Advanced Frequency options defined for a job, those options override all other calculations. For more information, refer to [Advanced Frequency Settings](#advanced-frequency-settings).

- **Even Weeks**: The frequency defines even weeks of the year. OpCon considers a full week to begin on a Sunday. Therefore, the first even week of every year begins with the second Sunday in January. Each alternate week for the rest of the year is an even week.

  :::caution
  Be careful when using the Even Weeks group because it is possible to have an extra week between even weeks at year-end.
  :::

  |Frequency Options|Default|
  |--- |--- |
  |Day of the Week|None|
  |Calendar|None|
  |A/O/B/N|Before Date|
  |Day Type|Working|

  - Frequency Calculations
    1. OpCon calculates an initial list of qualifying dates using the Day of the Week selections.
    2. If a Calendar is associated, OpCon matches the dates in the Calendar to the initial list of qualifying dates and removes any matching dates from the list. For more information, refer to [Negative Annual Plan Calendars](../objects/calendars.md#negative-annual-plan-calendars).
    3. If the Day Type is set to Working, and a date in the list of qualifying dates is on a non-working day, OpCon applies the [A/O/B/N setting](#aobn). For more information on non-working days, refer to [Holiday Calendars](../objects/calendars.md#holiday-calendars).
    4. If there are any Advanced Frequency options defined for a job, those options override all other calculations. For more information, refer to [Advanced Frequency Settings](#advanced-frequency-settings).

- **All Weeks**: The frequency defines every week of the year.

  |Frequency Options|Default|
  |--- |--- |
  |Day of the Week|None|
  |Calendar|None|
  |A/O/B/N|Before Date|
  |Day Type|Working|

  - Frequency Calculations
    1. OpCon calculates an initial list of qualifying dates using the Day of the Week selections.
    2. If a Calendar is associated, OpCon matches the dates in the Calendar to the initial list of qualifying dates and removes any matching dates from the list. For more information, refer to [Negative Annual Plan Calendars](../objects/calendars.md#negative-annual-plan-calendars).
    3. If the Day Type is set to Working, and a date in the list of qualifying dates is on a non-working day, OpCon applies the [A/O/B/N setting](#aobn). For more information on non-working days, refer to [Holiday Calendars](../objects/calendars.md#holiday-calendars).
    4. If there are any Advanced Frequency options defined for a job, those options override all other calculations. For more information, refer to [Advanced Frequency Settings](#advanced-frequency-settings).

- **On Request**: The frequency defines a specific date. This group may occur only one time or annually.

  - For a one-time request, the frequency qualifies for the requested date and then becomes inactive until it is reset.
    :::note
    If "Every Year" is checked, the database will store 1900 in the year field. The year will be displayed in the Enterprise Manager as 1900 with a checkbox marked for "Every Year." If the "every Year" box is checked, the year portion of the date is ignored.
    :::
    :::note
    This frequency can be useful for recovery jobs. If the date is in the past, the job never qualifies during the schedule build. If the job is required on a given day, it can be added to a schedule manually or through an OpCon event.
    :::
  - For an annual request, the frequency qualifies for the requested day of a month every year. Without a specific year, define the month and day for the request.

  |Frequency Options|Default|
  |--- |--- |
  |Request Date|Today's Date|
  |Every Year|No|
  |A/O/B/N|On Date|

  - Frequency Calculations:
    1. OpCon determines the qualifying date using the Request Date.
    2. If the qualifying date is on a non-working day, OpCon applies the [A/O/B/N setting](#aobn). For more information on non-working days, refer to [Holiday Calendars](../objects/calendars.md#holiday-calendars).
    3. If there are any Advanced Frequency options defined for a job, those options override all other calculations. For more information, refer to [Advanced Frequency Settings](#advanced-frequency-settings).

- **On Day**: The frequency defines the Nth day of a month. Valid values for the day range from 1 to 31.
  - If the Day Type is Any, the job is scheduled on the Nth day of the month, whether it is working, weekend, or holiday.
  - If the Day Type is Working, the job is scheduled on the Nth working day of the month. While counting to the Nth day, all non-working days are skipped. Non-working days include weekends and holidays as defined on the Holiday Calendars associated with the schedule.
  - If a Negative Annual Plan Calendar is in use with the frequency, jobs are not scheduled on any date defined on the Negative Annual Plan Calendar. The A/O/B/N flag applies only to dates on the associated Holiday Calendars.

  :::caution
  Be careful when selecting high Working Day values. If the number of workdays exceeds the number of workdays in a month, the job is not scheduled for that month.
  :::

  |Frequency Options|Default|
  |--- |--- |
  |Calendar|None|
  |Month Days|On 1st Day|
  |Day Type|1st Working Day|
  |A/O/B/N|On Date|

  - Frequency Calculations:
    1. OpCon calculates an initial list of qualifying dates using the Day of the Month and the Day Type.
    2. If a Calendar is associated, OpCon matches the dates in the Calendar to the initial list of qualifying dates and removes any matching dates from the list. For more information, refer to [Negative Annual Plan Calendars](../objects/calendars.md#negative-annual-plan-calendars).
    3. If the Day Type is set to Any, and a date in the list of qualifying dates is on a non-working day, OpCon applies the [A/O/B/N setting](#aobn). For more information on non-working days, refer to [Holiday Calendars](../objects/calendars.md#holiday-calendars).
    4. If there are any Advanced Frequency options defined for a job, those options override all other calculations. For more information, refer to [Advanced Frequency Settings](#advanced-frequency-settings).

- **Annual Plan**: The frequency defines dates specified on an Annual Plan Calendar. Annual Plan is the only group that uses the Positive Annual Plan Calendar.
  - The Annual Plan group can be used to schedule jobs on special dates (e.g., fiscal dates, national holidays, etc.)
  - This group requires a user-defined calendar.
  - The Positive Annual Plan dates override all other calendar dates. Jobs using the Positive Annual Plan build for the dates specified on the defined calendar even if the same dates are listed as holidays on the Individual Holiday or Master Holiday Calendars.

  :::note
  With the Annual Plan option, the default Offset Days of zero indicates scheduling on the defined calendar date(s). If a calendar date falls on a holiday or weekend, the job is scheduled on the defined date.
  :::

  |Frequency Options|Default|
  |--- |--- |
  |Calendar|None|
  |Offset Days|0|

  - Frequency Calculations:
    1. OpCon calculates a list of qualifying dates by adjusting the Calendar days with the Offset Days number.
    2. If there are any Advanced Frequency options defined for a job, those options override all other calculations. For more information, refer to [Advanced Frequency Settings](#advanced-frequency-settings).

- **Beg of Period**: The frequency defines a day on or around the beginning of a period. The first day of the period depends on the Day Type:
  - If the Day Type is Working, the beginning of period is the first Working Day of the period (calculated with consideration to the schedule's Workdays per Week and any holiday calendars associated with the schedule).
  - If the Day Type is Any, the actual calendar beginning of period is used as reference. The Beg of Period group can use an offset of ±N Working Days from the defined beginning of the period.
  - If an offset is defined, the A/O/B/N is forced in the direction of the offset the offset is calculated for Working Days.

  |Frequency Options|Default|
  |--- |--- |
  |Calendar|None|
  |Offset Days|0|
  |Day Type|Working|
  |A/O/B/N|On Date|
  |Periods|Month|

  - Frequency Calculations:
    1. OpCon calculates an initial list of qualifying dates using the Period.
    2. If the Day Type is set to Working, and a date in the list of qualifying dates is on a non-working day, OpCon applies the [A/O/B/N setting](#aobn). For more information on non-working days, refer to [Holiday Calendars](../objects/calendars.md#holiday-calendars).
    3. If the Offset Days value is not zero (0), OpCon moves the list of qualifying dates backward or forward depending on the Offset Days value, but never moves a day into the previous or next period.
    4. If a Calendar is associated, OpCon matches the dates in the Calendar to the initial list of qualifying dates and removes any matching dates from the list. For more information, refer to [Negative Annual Plan Calendars](../objects/calendars.md#negative-annual-plan-calendars).
    5. If there are any Advanced Frequency options defined for a job, those options override all other calculations. For more information, refer to [Advanced Frequency Settings](#advanced-frequency-settings).

- **Mid of Period**: The frequency defines a day on or around the middle of a period (month, quarter or year). It is the only group that allows the Day of the Week to have no day defined.
  - If no Day of the Week is defined, the job is scheduled in the middle of the defined period.
  - If one or more Days of the Week are defined, the job is scheduled on the specified days that are closest to the middle of the defined period (e.g., if Monday is defined to run on the middle of the month, the days of the month is divided in half and the closest Monday to that date is scheduled).

  :::note
  This group does not allow a working day offset like the End of Period group does.
  :::

  |Frequency Options|Default|
  |--- |--- |
  |Day of the Week|None|
  |Calendar|None|
  |Day Type|Working|
  |A/O/B/N|Before date|
  |Periods|Month|

  - Frequency Calculations:
    1. OpCon calculates an initial list of qualifying dates using the Period.
    2. If a Calendar is associated, OpCon matches the dates in the Calendar to the initial list of qualifying dates and removes any matching dates from the list. For more information, refer to [Negative Annual Plan Calendars](../objects/calendars.md#negative-annual-plan-calendars).
    3. If the Day Type is set to Working, and a date in the list of qualifying dates is on a non-working day, OpCon applies the [A/O/B/N setting](#aobn). For more information on non-working days, refer to [Holiday Calendars](../objects/calendars.md#holiday-calendars).
    4. If there are any Advanced Frequency options defined for a job, those options override all other calculations. For more information, refer to [Advanced Frequency Settings](#advanced-frequency-settings).

- **End of Period**: The frequency defines a day on or around the end of a period. The definition of the last day of the period depends on the Day Type.
  - If the Day Type is Working, the end of period is the last Working Day of the period (calculated with consideration to the schedule's Workdays per Week and any holiday calendars associated with the schedule).
  - If the Day Type is Any, the actual calendar end of period is used as reference. The End of Period group can use an offset of ±N Working Days from the defined end of the period.
  - If an offset is defined, the A/O/B/N is forced in the direction of the offset the offset is calculated for Working Days.

  |Frequency Options|Default|
  |--- |--- |
  |Calendar|None|
  |Offset Days|0|
  |Day Type|Working|
  |A/O/B/N|On Date|
  |Periods|Month|

  - Frequency Calculations:
    1. OpCon calculates an initial list of qualifying dates using the Period.
    2. If the Day Type is set to Working, and a date in the list of qualifying dates is on a non-working day, OpCon applies the [A/O/B/N setting](#aobn). For more information on non-working days, refer to [Holiday Calendars](../objects/calendars.md#holiday-calendars).
    3. If the Offset Days value is not zero (0), OpCon moves the list of qualifying dates backward or forward depending on the Offset Days value, but never moves a day into the previous or next period.
    4. If a Calendar is associated, OpCon matches the dates in the Calendar to the initial list of qualifying dates and removes any matching dates from the list. For more information, refer to [Negative Annual Plan Calendars](../objects/calendars.md#negative-annual-plan-calendars).
    5. If there are any Advanced Frequency options defined for a job, those options override all other calculations. For more information, refer to [Advanced Frequency Settings](#advanced-frequency-settings).

- **On Intervals**: The frequency defines one of the two types of intervals.
  - Any combination of the 5th, 10th, 15th, 20th, 25th, and 30th day of a month **- or -**
  - Set a defined number of days apart starting with a specific calendar date. Enable the every year option to make the start date reset every year.

  :::note
  Selecting the 30th of the month does not schedule the job for that date in February. Selecting Working as the Day Type does not schedule the job on the Nth working day of the month. The scheduling engine still schedules the job on the Nth day of the month, but allows it to move according to A/O/B/N. To schedule a job on the Nth working day, use the On Day group.
  :::

  |Frequency Options|Default|
  |--- |--- |
  |Calendar|None|
  |Day Type|Working|
  |A/O/B/N|Before Date|
  |On Intervals|None|

  - Frequency Calculations:
    1. OpCon calculates an initial list of qualifying dates using the Interval selections.
    2. If a Calendar is associated, OpCon matches the dates in the Calendar to the initial list of qualifying dates and removes any matching dates from the list. For more information, refer to [Negative Annual Plan Calendars](../objects/calendars.md#negative-annual-plan-calendars).
    3. If the Day Type is set to Any, and a date in the list of qualifying dates is on a non-working day, OpCon applies the [A/O/B/N setting](#aobn). For more information on non-working days, refer to [Holiday Calendars](../objects/calendars.md#holiday-calendars).
    4. If there are any Advanced Frequency options defined for a job, those options override all other calculations. For more information, refer to [Advanced Frequency Settings](#advanced-frequency-settings).

### Day of the Week

Determines the days (Sunday through Saturday) a job/schedule may run. Any combination is valid. At least one day must be defined to avoid a validation error. The only exception is the Mid of Period group, which does not require the Day of the Week to be defined.

### On Intervals

Sets the frequency to schedule on intervals. OpCon supports two different types of intervals:

1. Defines the calendar days of the month to schedule a job. These values are preset to five days apart. Any combination is valid. At least one day must be defined.
2. Defines the interval to start on a specific date and repeat on a user-defined interval every "X" number of days:
   - The start date is the first date for which the frequency qualifies and is any date in the format recognized by the OpCon SQL Server.
     - Along with the start date is an option to indicate every year. If this value is enabled, the job will only schedule from the Start Date for each year and then on the defined interval until December 31 of each year.
   - Valid values for the user-defined interval range from 1 through 32,767.

### Calendar

Defines the name of a user-defined calendar to associated with the frequency. The defined calendar has two functions: it contains the days the frequency qualifies for with the Annual Plan scheduling group (positive) and the days the frequency will not qualify for with all other scheduling groups (negative).

- For the Annual Plan scheduling group, the calendar is required.
- Calendar definition is optional for all the other scheduling groups.

### Day Type

Determines whether the non-working days on a calendar are taken into account when the frequency is calculated.

:::note
An exception to this functionality is the On Day group, for which the Working option instructs the scheduling engine to seek out the Nth working day of the month.
:::

- **Working**: Indicates the frequency will offset dates according to the [[A/O/B/N setting](#aobn)](#A/O/B/N) if the day falls on a non-working day.
- **Any**: Indicates the frequency will ignore all standard non-working days. Only Negative Annual Plan days can override a frequency using Any as the day type.

:::note
The A/O/B/N value is forced to "On Date" and cannot be modified when the Day Type is set to Any.
:::

### Month Days

Determines the day of the month the frequency qualifies for. Depending on the Day Type, the days are counted based on Working Day or Any calendar day. Valid values for the day range from 1 to 31.

### Offset Days

Determines the number of Working Days to offset the scheduled day, either positively or negatively, from the basic frequency.

- If the Period option is set to Month, Quarter, or Year, the range is -15 to +15 days offset.
- If the Period option is set to Week:
  - and the schedule is a 5-day week, the range is -4 to +4 days offset.
  - and the schedule is a 6-day week, the range is -5 to +5 days offset.
  - and the schedule is a 7-day week, the range is -6 to +6 days offset.

### Request Date

The Request Date determines the date on which the frequency will qualify. Turn on the every year option to indicate the request is made annually on a day of a month.

### On Occurrence

Determines on which occurrence of a day in a specified period (month,
quarter or year) a frequency should qualify for. Only one occurrence is
allowed per frequency. However, any combination of weekdays is allowed
for that occurrence. The occurrence of a day in a period does not
necessarily coincide with the ordinal number of the week in that period.

### A/O/B/N

Determines when a date on a frequency should qualify if it happens to fall on a Non-Working day. Non-Working days include Saturdays and Sundays for a 5-day workweek, Sundays for a 6-day workweek, all user-defined holidays, and can include Negative Annual Plan days.

- For additional information, refer to [Negative Annual Plan Calendars](../objects/calendars.md#Negative). Special calculation is necessary with a Negative Annual Plan Calendar:
- The A/O/B/N option is not applied to Negative Annual Plan dates that exist on a qualifying date since, by definition, no scheduling occurs on these dates.
- Valid options for the A/O/B/N setting include:
  - **After Date (A)**: Moves the job to the first working day following the scheduled day.
  - **On Date (O)**: Indicates the jobs runs on the scheduled day.
  - **Before Date (B)**: Moves the job to the first working day prior to the scheduled day.
  - **Not Schedule (N)**: Indicates the job does not get scheduled.

### Periods

Determines the type of period for the On Occurrence, Mid of Period, and End of Period scheduling groups. Only one period can be defined per frequency. The valid options are Week, Month, Quarter, and Year. The Week option is only valid for Beg of Period and End of Period.

## Advanced Frequency Settings

The Advanced Frequency Settings determine the scheduling of a frequency on specific schedule dates or for periods of time. The options are described in the table.

|Option Parameter|Multiple Entries|Description|
|--- |--- |--- |
|Start Scheduling on|N|Define a date to begin scheduling a frequency. With the parameter End Scheduling On, allows the user to set a scheduling range. By default, the range is without limits.|
|End Scheduling on|N|Define a date to discontinue scheduling a frequency. With the parameter Start Scheduling On, allows the user to set a scheduling range. By default, the range is without limits.|
|Include in Schedule on|Y|Forces the scheduling of a frequency on the defined date despite all other frequency settings. When dates conflict between Include and Exclude parameters, the Include overrides the Exclude.|
|Exclude from Schedule on|Y|Forces a job's build status to Do Not Schedule on the defined date despite all other frequency settings. When dates conflict between Include and Exclude parameters, the Include overrides the Exclude.|
|Exclude Month from Schedule|Y|Forces a job's build status to Do Not Schedule on the defined month despite all other frequency settings. When dates conflict between Include and Exclude parameters, the Include overrides the Exclude.|
