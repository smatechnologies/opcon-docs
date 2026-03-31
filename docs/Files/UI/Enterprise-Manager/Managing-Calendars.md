---
title: Managing Calendars
description: "The Calendars editor defines and maintains OpCon Calendars."
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

# Managing Calendars

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Calendars** editor defines and maintains OpCon Calendars. It contains a list of existing calendars with a date list indicating the month and day(s) involved, and a table showing the schedules, jobs, and frequencies using each calendar. For conceptual information, refer to [Calendars](../../../objects/calendars.md) in the **Concepts** online help.

## When Would You Use It?

- You need to review or update Calendars settings in Enterprise Manager
- Calendars needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Calendars management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Calendars changes are captured in the OpCon audit system, supporting change management and compliance processes

## Calendars Toolbar

The **Calendars** editor has a toolbar for managing calendars. Select any icon on the toolbar below to learn more about its functionality.

![Calendars toolbar](../../../Resources/Images/EM/EMcalendarstoolbar.png "Calendars toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Holidays or Non-Working Days to Calendars](Adding-Days-to-Calendars.md)
- [Applying Master Calendars to Schedules](Applying-Master-Calendars-to-Schedules.md)
- [Creating User-defined Calendars](Creating-User-defined-Calendars.md)
- [Using User-defined Calendars as Additional Holiday Calendars](Using-User-defined-Calendars.md#Using)
- [Using User-defined Calendars as Annual Plan Calendars](Using-User-defined-Calendars.md#Using2)
- [Using User-defined Calendars as Negative Annual Plan Calendars](Using-User-defined-Calendars.md#Using3)
- [Viewing Additional Calendar Information](Viewing-Additional-Calendar-Info.md)
- [Copying Calendars](Copying-Calendars.md)
- [Deleting Un-used User-defined Calendars](Deleting-User-defined-Calendars.md)
- [Deleting Old Dates](Deleting-Old-Dates.md)


## FAQs

**Q: What does managing calendars involve?**

Managing calendars includes Calendars Toolbar. Access calendars through the Enterprise Manager navigation pane.

**Q: Who can manage calendars in OpCon?**

Users with the appropriate privileges assigned through their role can manage calendars. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
