---
title: Calendars
description: "OpCon supports two types of calendars for flexible scheduling around holidays and non-working days."
product_area: Core Concepts
audience: Automation Engineer, Application Owner
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Application Owner
  - Getting Started
last_updated: 2026-03-18
doc_type: conceptual
---

# Calendars

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Application Owner

## What Is It?

OpCon supports two types of calendars for flexible scheduling around holidays and non-working days. All calendars must be manually updated each year: delete old dates, then add dates for the coming year.

- [Holiday Calendars](#Holiday)
- [Annual Plan Calendars](#Annual)

The following fields apply to all calendars:

- **Name**: The calendar name
- **Documentation**: Descriptions, explanations, and notes for the calendar
- **Date List**: All dates defined for the calendar
- **Schedules using for holidays (\#)**: Schedules using this calendar to define holidays in addition to the schedule's default Holiday Calendar (HC). The number indicates the total count
- **Schedules/Jobs/Frequencies Using this Calendar (\#)**: Each schedule, job, and frequency using the calendar

## Holiday Calendars

When a [Job and Schedule Frequencies](../automation-concepts/frequencies.md) uses working days to determine included days, non-working days come from associated Holiday Calendars.

- Dates from [Individual Holiday Calendars](#Individu) are always included
- [Master Holiday Calendar](#Master) dates are included only if the schedule is configured to use it
- [Additional Holiday Calendar](#Addition) dates are included only if an Additional Holiday Calendar is associated with the schedule

### Individual Holiday Calendars

An individual Holiday Calendar stores non-working days for a single schedule. It is automatically created when a schedule is created, named `HC:<schedule name>`. By default, OpCon sets Sundays as non-working days for a 6-day workweek, or Saturdays and Sundays for a 5-day workweek. Administrators must set any additional non-working days.

### Master Holiday Calendar

The Master Holiday Calendar stores non-working days for multiple schedules. It is installed with the OpCon database with no non-working days by default. Administrators set desired non-working days, which affect all schedules configured to use this calendar.

### Additional Holiday Calendars

Additional Holiday Calendars are user-defined calendars of non-working dates that can be associated with multiple schedules. Administrators can create as many as needed. Non-working days on these calendars affect only the schedules that have the calendar selected for Additional Holidays.

## Annual Plan Calendars

Annual Plan Calendars are user-defined date lists. When associated with a [Job and Schedule Frequencies](../automation-concepts/frequencies.md), a calendar can have a positive or negative effect depending on the frequency type defined for each job or schedule.

### Positive Annual Plan Calendars

Positive Annual Plan Calendars schedule jobs on non-repetitive days. For example, jobs that must run on March 20th, June 23rd, September 30th, and December 17th can use an Annual Plan Calendar with the [When to Schedule](../automation-concepts/frequencies.md#frequency-definition) option set to Annual Plan. Jobs may also run up to 15 days before or after these dates, useful for fiscal cycle scheduling. Annual Plan Calendars can be used by any job on any schedule.

:::note
The Master Holiday Calendar may also be defined as a Positive Annual Plan Calendar with the Annual Plan frequency setting.
:::

### Negative Annual Plan Calendars

When any [When to Schedule](../automation-concepts/frequencies.md#frequency-definition) option other than Annual Plan is defined, calendar dates are treated as Negative Annual Plan dates — days on which jobs **cannot** be scheduled.

- If the calculated frequency date falls in the Negative Annual Plan Calendar, the job is not scheduled
- If the calculated frequency date is a non-workday and not in the Negative Annual Plan Calendar, surrounding Negative Annual Plan dates are treated as additional holidays for A/O/B/N resolution

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Name | The calendar name | Holiday Calendar | — |
| Documentation | Descriptions, explanations, and notes for the calendar | Holiday Calendar | — |
| Date List | All dates defined for the calendar | Holiday Calendar | — |
| Schedules using for holidays (\#) | Schedules using this calendar to define holidays in addition to the schedule's default Holiday Calendar (HC). | Holiday Calendar | — |
| Schedules/Jobs/Frequencies Using this Calendar (\#) | Each schedule, job, and frequency using the calendar | — | — |
## FAQs

**Q: What is the difference between a Holiday Calendar and an Annual Plan Calendar?**

A Holiday Calendar stores non-working days that prevent jobs from running on those dates when the frequency uses working days. An Annual Plan Calendar stores specific dates that positively or negatively affect when jobs are scheduled, depending on the frequency type configured for the job.

**Q: Do calendars require manual updates every year?**

Yes. All calendars must be manually updated each year — delete old dates, then add the new dates for the coming year.

**Q: What is the Master Holiday Calendar?**

The Master Holiday Calendar is installed with the OpCon database and stores non-working days that apply to all schedules configured to use it. It has no non-working days by default; administrators must add any desired non-working days.

**Q: Can an Additional Holiday Calendar be used by more than one schedule?**

Yes. Additional Holiday Calendars are user-defined and can be associated with multiple schedules. Their non-working days only affect the schedules that have the calendar selected for Additional Holidays.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
