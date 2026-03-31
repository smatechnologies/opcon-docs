---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Additional Calendar Information
description: "To view Additional Calendar Information in the Enterprise Manager, complete the following steps: 1."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

#  Viewing Additional Calendar Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

To view Additional Calendar Information in the Enterprise Manager, complete the following steps:

1.  Select on **Calendars** under the **Administration** topic
2.  Select a **calendar** in the **Calendar** list
3.  Select the ![Cross Reference icon](../../../Resources/Images/EM/EMcrossref.png "Cross Reference icon") **Cross Reference** button on the toolbar to view a list of schedules, jobs, and frequencies using the calendar, then select **OK**
4.  Select the ![View Audit icon](../../../Resources/Images/EM/EMviewaudit.png "View Audit icon") **View Audit** button to view audit records for changes to the calendar, then select **Close**

## When Would You Use It?

- You need to inspect or audit Additional Calendar Information records in Enterprise Manager
- An audit, compliance review, or operational check requires inspection of current Additional Calendar Information state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting Additional Calendar Information records in Enterprise Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Enterprise Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How many steps does the Viewing Additional Calendar Information procedure involve?**

The Viewing Additional Calendar Information procedure involves 4 steps. Complete all steps in order and save your changes.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
