---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Master Schedules
description: "Master schedules are the template definitions that OpCon uses to build daily schedules. Manage them in Solution Manager."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: conceptual
---

# Managing Master Schedules

**Theme:** Overview  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

A master schedule is the template definition of a schedule that OpCon stores in its master tables. During schedule build, OpCon copies the master schedule into the daily tables to create that day's automation. Changes you make to a master schedule affect future builds but do not change daily schedules that are already built.

Use master schedules to:

- Group related jobs into a single business process.
- Define the build settings, start time, work days, and holiday handling that apply each time the schedule is built.
- Control whether multiple instances of the same schedule can run, and whether the schedule is a sub-schedule called by a Container job.

A master schedule must exist before any job can be defined within it. For the field-by-field meaning of each schedule setting, refer to [Schedules](../../../../objects/schedules.md) in the **Concepts** online help.

![Managing master schedules](../../../../Resources/Images/SM/Library/ManagingLibrary/ManagingMasterSchedules.png "Managing master schedules")

## How It Works

When you build schedules in Solution Manager, you select from a list of the master schedules defined in your OpCon environment. Each row represents one master schedule. The list does not include sub-schedules.

You can sort the list by **Name** and filter it by the following criteria:

| Filter | Description |
| --- | --- |
| **Name** | Shows only master schedules whose name matches the pattern you enter. |
| **Auto-build** | Shows only master schedules that have auto build enabled or disabled. |
| **Multi Instance** | Shows only master schedules that allow, or do not allow, multiple concurrent instances. |

<!-- GAP: In the source (Core-SolutionManager), the master schedule list with Name / Auto-build / Multi Instance columns and sort/filter, and the exclusion of sub-schedules (criteria.setSubSchedule(false)), is the master schedule selection grid inside the Schedule Build view (OperationsScheduleBuildView, "Schedule Build"). No standalone "Master Schedules" management screen was found in source. The exact location and name of any dedicated Master Schedules screen in Solution Manager (Library vs. Studio vs. the Schedule Build workflow) is unconfirmed. The Adding Master Schedules procedure directs users to Studio, while the screenshot path references Library. Needs SME confirmation. -->

## What Is in This Section?

| Page | Description |
| --- | --- |
| [Adding Master Schedules](../Studio/Canvas/Adding-Master-Schedules.md) | Create a new master schedule definition, including its name, settings, start time, work days, holiday calendar, and build settings. |

<!-- GAP: Additional management tasks for master schedules (for example, editing, copying, or deleting a master schedule) are not confirmed as Solution Manager pages in the available source. Needs SME/source. -->

## FAQs

**Q: What is the difference between a master schedule and a daily schedule?**

A master schedule is the stored template definition. A daily schedule is an instance that OpCon creates from the master schedule during schedule build for a specific date.

**Q: Do changes to a master schedule affect schedules that are already built?**

No. Changes to a master schedule apply to future builds. Daily schedules that are already built are not changed.

**Q: Are sub-schedules shown in the master schedule list?**

No. The master schedule list excludes sub-schedules.

## Related Topics

- [Adding Master Schedules](../Studio/Canvas/Adding-Master-Schedules.md)
- [Schedules](../../../../objects/schedules.md)

## Glossary

| Term | Definition |
| --- | --- |
| Job | A task or activity defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Master Schedule | The template definition of a schedule stored in OpCon's master tables. Changes to the master affect future builds but not daily schedules that are already built. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Schedule Build | The process by which OpCon creates daily schedule instances from master schedule definitions, applying frequencies, calendars, and properties. |
| Sub-Schedule | A schedule that is called by a Container job within another schedule rather than started on its own. |
| Solution Manager | OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system. |
