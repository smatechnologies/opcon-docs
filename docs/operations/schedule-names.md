---
title: OpCon Schedule Names
description: "Most schedules appear with their original name, but some features cause OpCon to append characters automatically."
product_area: Operations
audience: Operations Staff, System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Operations Staff
  - System Administrator
  - Schedules
last_updated: 2026-03-18
doc_type: conceptual
---

# OpCon Schedule Names

**Theme:** Configure  
**Who Is It For?** Operations Staff, System Administrator

## What Is It?

Most schedules appear with their original name, but some features cause OpCon to append characters automatically.

- [Multi-Instance Schedules](#Multi-In)
- [SubSchedules](#SubSched)

## When Would You Use It?

- Most schedules appear with their original name, but some features cause OpCon to append characters automatically

## Why Would You Use It?

- **OpCon Schedule**: Most schedules appear with their original name, but some features cause OpCon to append characters automatically

## Multi-Instance Schedules

When building additional copies of a multi-instance schedule, the naming convention depends on whether Schedule Instance properties were supplied.

- **Without properties**: The SAM appends a dollar sign and four-digit number (`$XXXX`), incrementing by one each time
- **With properties**: OpCon appends the value of the first property. See [Instance Definition](../job-components/instances.md) and [Schedule Instance Definition](../Files/UI/Enterprise-Manager/Schedule-Instance-Definition.md)

:::tip Example
The following event builds a schedule into the Daily schedule using only the required parameters for the event. The schedule "MyScheduleName" is configured as a multi-instance schedule.

```shell
$SCHEDULE:BUILD,[[$DATE]],MyScheduleName,,y
```

When the same event is submitted three times, OpCon creates the following schedule names in Schedule Operations:

- MyScheduleName
- MyScheduleName$0002
- MyScheduleName$0003
:::

:::note
OpCon validates the value for valid characters. Any characters that are invalid for a schedule name will be converted to asterisks (\*) (Note that this conversion is only done to generate the schedule name, but does not change the value of the property stored with the schedule.)
:::

:::tip Example
The following event builds a schedule while defining Schedule Instance properties called FileName (with a value of abc.txt) and NumRecs (with a value of 100).

The schedule "MyScheduleName" is configured as a multi-instance schedule.

```shell
$SCHEDULE:BUILD,[[$DATE]],MyScheduleName,,y,FileName=abc.txt;NumRecs=100
```

When OpCon builds the schedule into the Daily tables, it will name the schedule:

MyScheduleName_abc.txt
:::

To prevent duplicates, OpCon checks whether the build request is unique:

- **Unique name**: OpCon builds the schedule and stores Schedule Instance properties in the Available Properties field
- **Non-unique name**: OpCon compares the Schedule Instance properties against all matching instances in the database
  - **Identical properties**: OpCon checks the "Overwrite?" switch and applies standard overwrite rules
  - **Different properties**: OpCon builds the schedule using the following syntax:

:::tip Example
The following event builds a schedule while defining Schedule Instance properties called FileName (with a value of abc.txt) and NumRecs (with a value of 100).

The schedule "MyScheduleName" is configured as a Multi-Instance schedule. Also, the exact same build request already created a schedule named MySchedulename_abc for the day.

```shell
$SCHEDULE:BUILD,[[$DATE]],MyScheduleName,,Y,FileName=abc.txt;NumRecs=100
```

Because the original schedule from the previous identical request was in process at the time, this event was submitted, and OpCon rejected the event to allow the original schedule to finish processing. If the original schedule had been complete, OpCon would have re-built the schedule because the overwrite switch was set to yes.

After the previous event, another build event is submitted, but this time with a different list of properties:

```shell
$SCHEDULE:BUILD,[[$DATE]],MyScheduleName,,Y,FileName=abc.txt;NumRecs=100;StoreNumber=985
```

Because the list of Schedule Instance Properties is unique, OpCon builds the schedule with the following name:

MyScheduleName_abc$0002
:::

## SubSchedules

When OpCon builds schedules with Container jobs, the "Schedule to Run as a Subschedule" is also built into the Daily schedules as a subschedule. The subschedule name uses the following syntax:

```shell
ParentSchedule_ContainerJobName\[SubSchedule\]
```

:::tip Example
A schedule named MyParentSchedule has a Container job on it named RunAnotherProcess. The job RunAnotherProcess calls the schedule ImportantReusableProcess as the SubSchedule. When OpCon builds the schedule MyParentSchedule into the Daily tables, the following two schedules are built:

- MyParentSchedule
- MyParentSchedule_RunAnotherProcess[ImportantReusableProcess]

:::

Any schedule, including subschedules, can have Container jobs that call further subschedules. Nesting depth is limited only by the 255-character maximum schedule name length in the Daily tables. See [Adding Schedules](../Files/UI/Enterprise-Manager/Adding-Schedules.md) and [Editing Job Master Details](../Files/UI/Enterprise-Manager/Editing-Job-Master-Details.md) in the **Enterprise Manager** online help.

Embedded schedule names have the following naming syntax:

```shell
ParentSchedule1_ContainerJob1\[SubSchedule1\]\_ContainerJob2\[SubSchedule2\]
```

In the syntax, SubSchedule1 also acts as a Parent schedule.

:::tip Example
A schedule named MyParentSchedule has a Container job on it named RunAnotherProcess. The job RunAnotherProcess calls the schedule ImportantReusableProcess as the subschedule. Additionally, the schedule ImportantReusableProcess has a Container job named RunBackupProcess that uses the schedule BackupProcess as the subschedule. When OpCon builds the schedule MyParentSchedule into the Daily tables, the following three schedules are built:

- MyParentSchedule
- MyParentSchedule_RunAnotherProcess[ImportantReusableProcess]
- MyParentSchedule_RunAnotherProcess[ImportantReusableProcess]_RunBackupProcess[BackupProcess]

:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Without properties | The SAM appends a dollar sign and four-digit number (`$XXXX`), incrementing by one each time | — | — |
| With properties | OpCon appends the value of the first property. | — | — |
| Unique name | OpCon builds the schedule and stores Schedule Instance properties in the Available Properties field | — | — |
| Non-unique name | OpCon compares the Schedule Instance properties against all matching instances in the database | — | — |
## FAQs

**Q: How does OpCon name multi-instance schedules?**

Without Schedule Instance properties, the SAM appends `$XXXX` (e.g., `MyScheduleName$0002`). With properties, OpCon appends the value of the first property (e.g., `MyScheduleName_abc.txt`).

**Q: What is the naming format for a subschedule?**

Subschedules use the format `ParentSchedule_ContainerJobName[SubSchedule]`. When subschedules are nested, the full chain is reflected in the name, limited only by the 255-character maximum schedule name length.

**Q: What happens if a multi-instance schedule build request is not unique?**

If the name is not unique, OpCon compares Schedule Instance properties. If properties are identical and the overwrite switch is set, OpCon rebuilds the schedule. If properties differ, OpCon builds a new instance by appending a `$XXXX` suffix to the name.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
