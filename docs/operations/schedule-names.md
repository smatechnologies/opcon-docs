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

Most schedules appear with their original name. Two features cause OpCon to append characters to a schedule name automatically: multi-instance schedules and subschedules built from Container jobs.

## Multi-Instance Schedules

When OpCon builds additional copies of a multi-instance schedule, the naming convention depends on whether Schedule Instance properties were supplied.

- **Without properties**: OpCon appends a dollar sign and four-digit number (`$XXXX`), incrementing by one for each additional instance.
- **With properties**: OpCon appends the value of the first property to the base name.

See [Instance Definition](../job-components/instances.md) and [Schedule Instance Definition](../Files/UI/Enterprise-Manager/Schedule-Instance-Definition.md) for details on configuring Schedule Instance properties.

:::tip Example — no Schedule Instance properties
The following event builds a schedule into the Daily schedule using only the required parameters. The schedule `MyScheduleName` is configured as a multi-instance schedule.

```
$SCHEDULE:BUILD,[[$DATE]],MyScheduleName,,y
```

When the same event is submitted three times, OpCon creates the following schedule names in Schedule Operations:

- `MyScheduleName`
- `MyScheduleName$0002`
- `MyScheduleName$0003`
:::

:::tip Example — with Schedule Instance properties
The following event builds a schedule while defining Schedule Instance properties `FileName` (value `abc.txt`) and `NumRecs` (value `100`). The schedule `MyScheduleName` is configured as a multi-instance schedule.

```
$SCHEDULE:BUILD,[[$DATE]],MyScheduleName,,y,FileName=abc.txt;NumRecs=100
```

When OpCon builds the schedule into the Daily tables, it names the schedule:

`MyScheduleName_abc.txt`
:::

:::note
OpCon validates the property value for valid characters. Any invalid characters are removed from the generated schedule name. This affects only the generated schedule name; it does not change the property value stored with the schedule.
:::

### Duplicate name handling

To prevent duplicates, OpCon checks whether each build request produces a unique name:

- **Unique name**: OpCon builds the schedule and stores Schedule Instance properties in the **Available Properties** field.
- **Non-unique name**: OpCon compares the Schedule Instance properties against all matching instances in the database.
  - **Identical properties**: OpCon checks the **Overwrite?** option and applies standard overwrite rules.
  - **Different properties**: OpCon builds the schedule and appends `$XXXX` to the first-property value to create a distinct name.

:::tip Example — non-unique name with different properties
The schedule `MyScheduleName` is a multi-instance schedule. A previous build request already created a schedule named `MyScheduleName_abc.txt` for the day.

A new event is submitted with a different property list:

```
$SCHEDULE:BUILD,[[$DATE]],MyScheduleName,,Y,FileName=abc.txt;NumRecs=100;StoreNumber=985
```

Because the Schedule Instance properties are unique, OpCon builds the schedule with the name:

`MyScheduleName_abc$0002`
:::

## SubSchedules

When OpCon builds a schedule that contains Container jobs, it also builds each referenced subschedule into the Daily tables. The subschedule name uses the following syntax:

```
ParentSchedule_ContainerJobName[SubSchedule]
```

:::tip Example — single subschedule
A schedule named `MyParentSchedule` has a Container job named `RunAnotherProcess`. That job calls the schedule `ImportantReusableProcess` as its subschedule. When OpCon builds `MyParentSchedule` into the Daily tables, two schedules are created:

- `MyParentSchedule`
- `MyParentSchedule_RunAnotherProcess[ImportantReusableProcess]`
:::

Any schedule, including a subschedule, can contain Container jobs that call further subschedules. Nesting depth is limited only by the 255-character maximum schedule name length in the Daily tables.

Nested subschedule names use the following syntax:

```
ParentSchedule1_ContainerJob1[SubSchedule1]_ContainerJob2[SubSchedule2]
```

In this syntax, `SubSchedule1` also acts as the parent schedule for `SubSchedule2`.

:::tip Example — nested subschedules
`MyParentSchedule` has a Container job `RunAnotherProcess` that calls `ImportantReusableProcess` as a subschedule. `ImportantReusableProcess` also has a Container job `RunBackupProcess` that uses `BackupProcess` as its subschedule. When OpCon builds `MyParentSchedule` into the Daily tables, three schedules are created:

- `MyParentSchedule`
- `MyParentSchedule_RunAnotherProcess[ImportantReusableProcess]`
- `MyParentSchedule_RunAnotherProcess[ImportantReusableProcess]_RunBackupProcess[BackupProcess]`
:::

For more information, see [Adding Schedules](../Files/UI/Enterprise-Manager/Adding-Schedules.md) and [Editing Job Master Details](../Files/UI/Enterprise-Manager/Editing-Job-Master-Details.md) in the Enterprise Manager online help.
