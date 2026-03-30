---
title: Frequencies Section Overview
description: "Frequencies are calendar rules that determine which days a job or schedule qualifies to build and run."
product_area: Automation Concepts
audience: Automation Engineer, Business Analyst
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Business Analyst
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

**Theme:** Overview | **Who is it for?** Automation engineers who control when jobs and schedules run

## What Is It?

Frequencies are calendar rules that determine which days a job or schedule qualifies to build and run. Each frequency combines a day pattern (daily, weekly, monthly, etc.) with offset rules, start/end dates, and calendar exclusions. Jobs can have multiple frequencies; OpCon selects the most favorable qualifying day.

## When Would You Use It?

- You need to determine which days a job or schedule qualifies to build and run using Frequencies are calendar rules that

## Why Would You Use It?

- **Centralized control**: Frequencies are calendar rules that determine which days a job or schedule qualifies to build and run

## When would you use this section?

- Defining when a new job or schedule should run
- Modeling complex calendaring requirements (e.g., last business day of month, every other Friday, except holidays)
- Understanding how calendars and frequencies interact during schedule build
- Forecasting frequencies to verify qualifying dates before deploying automation

## What is in this section?

| Page | Description |
|------|-------------|
| Frequencies | The frequency object model, day patterns, offsets, and multi-frequency logic |
| Calendars | User-defined and master calendars used to include or exclude specific dates |
| Build Schedules | How OpCon uses frequencies and calendars to build the daily schedule queue |

## Glossary

| Term | Definition |
| --- | --- |
| Calendar | An OpCon object that defines non-working days (Holiday Calendar) or specific run dates (Annual Plan Calendar) used by job and schedule frequencies. |
| Daily Schedule | A schedule instance that OpCon builds for a specific date. Changes to a daily schedule affect only that date and do not modify the master definition. |
| Frequency | A named rule that specifies the recurring days on which a schedule or job runs. OpCon uses frequencies during the Schedule Build process. |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Schedule Build | The process by which OpCon creates daily schedule instances from master schedule definitions, applying frequencies, calendars, and properties. |

## FAQs

**Q: What does the Frequencies Section Overview cover?**

Frequencies are calendar rules that determine which days a job or schedule qualifies to build and run. Each frequency combines a day pattern (daily, weekly, monthly, etc.) with offset rules, start/end dates, and calendar exclusions. Jobs can have multiple frequencies; OpCon selects the most favorable qualifying day.

**Q: Who manages Automation Concepts in OpCon?**

Automation engineers and administrators manage Automation Concepts, including configuration, user access, and monitoring.

**Q: Where should I start in the Automation Concepts section?**

Begin with the overview pages in the sidebar. If you are new to this area, review access and role requirements with your OpCon system administrator before making configuration changes.
