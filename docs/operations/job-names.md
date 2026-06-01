---
title: OpCon Job Names
description: "How OpCon names jobs in Schedule Operations, including the automatic suffixes applied to multi-instance jobs and jobs configured to run on each machine in a group."
product_area: Operations
audience: Operations Staff, System Administrator
tags:
  - Conceptual
  - Operations Staff
  - System Administrator
  - Schedules
last_updated: 2026-06-01
doc_type: conceptual
---

# OpCon Job Names

Most jobs in Schedule Operations appear with the original job name defined in the master schedule. Two features cause OpCon to append extra characters to the job name automatically:

- Multi-Instance Jobs
- Jobs Run on Each Machine in a Group

## Multi-Instance Jobs

When a job is marked as multi-instance, the naming convention depends on whether Job Instance properties are supplied at the time the job is added.

- **Without Job Instance properties:** The first copy of the job uses the original job name. Each additional copy that is added while a previous copy is still active receives a dollar sign and four-digit number suffix (`$XXXX`), starting at `$0001` and incrementing by one for each additional active copy.
- **With Job Instance properties:** OpCon appends the value of the first Job Instance property to the job name, separated by an underscore. If using that value would create a duplicate name, OpCon falls back to the `$XXXX` suffix instead.

For information about configuring multi-instance jobs, refer to [Defining Properties for Multi-Instance Jobs](../Files/UI/Enterprise-Manager/Defining-Properties-for-Multi-Instance-Jobs.md).

:::tip Example — no Job Instance properties

The following event adds a multi-instance job to the daily schedule with only required parameters:

```
$JOB:ADD,[[$DATE]],MyScheduleName,MyJobName,MyFrequencyName
```

When submitted three times while each copy is still active, OpCon creates:

- `MyJobName`
- `MyJobName$0001`
- `MyJobName$0002`

:::

:::tip Example — with Job Instance properties

The following event adds a multi-instance job with Job Instance properties `FileName=abc.txt` and `NumRecs=100`:

```
$JOB:ADD,[[$DATE]],MyScheduleName,MyJobName,MyFrequencyName,FileName=abc.txt;NumRecs=100
```

OpCon names the job: `MyJobName_abc.txt`

:::

:::note
If appending the first Job Instance property value would produce a duplicate job name, OpCon uses the `$XXXX` instance number suffix instead.
:::

## Jobs Run on Each Machine in a Group

When a job is configured to run on each machine in a machine group, OpCon creates one copy per machine when the schedule builds into the daily schedule. Each copy uses the following naming format:

```
JobName_MachineName
```

:::tip Example

A machine group named `WindowsMachines` contains `Saturn`, `Neptune`, and `Mars`. When `MyJobName` is configured to run on each machine in the group, OpCon creates:

- `MyJobName_Saturn`
- `MyJobName_Neptune`
- `MyJobName_Mars`

:::

For information about configuring this option when defining a job, refer to [Adding Jobs](../Files/UI/Enterprise-Manager/Adding-Jobs.md).
