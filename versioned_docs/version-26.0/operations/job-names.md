---
title: OpCon Job Names
description: "Most jobs in Schedule Operations appear as the original job name."
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

# OpCon Job Names

**Theme:** Configure  
**Who Is It For?** Operations Staff, System Administrator

## What Is It?

Most jobs in Schedule Operations appear as the original job name. Two features cause OpCon to append extra characters automatically:

- Multi-Instance Jobs
- Jobs Run on Each Machine in a Group

## When Would You Use It?

- Most jobs in Schedule Operations appear as the original job name

## Why Would You Use It?

- **OpCon Job**: Most jobs in Schedule Operations appear as the original job name

## Multi-Instance Jobs

The naming convention for multi-instance jobs depends on whether Job Instance properties are supplied.

- **Without Job Instance properties:** OpCon appends a dollar sign and four-digit number ($XXXX), incrementing by one for each additional copy
- **With Job Instance properties:** OpCon appends the value of the first property to the job name

Refer to [Defining Properties for Multi-Instance Jobs](../Files/UI/Enterprise-Manager/Defining-Properties-for-Multi-Instance-Jobs.md) in the **Enterprise Manager** online help.

:::tip Example
The following event adds a multi-instance job to the Daily schedule with only required parameters:

```shell
$JOB:ADD,[[$DATE]],MyScheduleName,MyJobName,MyFrequencyName
```

When submitted three times, OpCon creates:

- MyJobName
- MyJobName$0002
- MyJobName$0003
:::

:::note
If a new job request would create a duplicate name even with the first property value, the SAM appends the instance number ($XXXX) instead.
:::

:::tip Example
The following event adds a multi-instance job with Job Instance properties FileName (abc.txt) and NumRecs (100):

```shell
$JOB:ADD,[[$DATE]],MyScheduleName,MyJobName,MyFrequencyName,FileName=abc.txt;NumRecs=100
```

OpCon names the job: `MyJobName_abc`
:::

## Jobs Run on Each Machine in a Group

When a job is configured to *Run on Each Machine* in a machine group, OpCon creates one copy per machine when the job builds into the Daily schedules. Refer to [Adding Jobs](../Files/UI/Enterprise-Manager/Adding-Jobs.md) in the **Enterprise Manager** online help. Each copy uses the following naming syntax:

```shell
JobName_MachineName
```

:::tip Example
A machine group named WindowsMachines contains Saturn, Neptune, and Mars. When MyJobName is configured to run on each machine, OpCon creates:

- MyJobName_Saturn
- MyJobName_Neptune
- MyJobName_Mars

:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How does OpCon name multi-instance jobs without Job Instance properties?**

OpCon appends a dollar sign and four-digit number to the job name (e.g., `MyJobName$0002`), incrementing by one for each additional copy.

**Q: How does OpCon name multi-instance jobs with Job Instance properties?**

OpCon appends the value of the first Job Instance property to the job name (e.g., `MyJobName_abc.txt`). If this would create a duplicate name, OpCon falls back to appending the instance number.

**Q: How does OpCon name jobs configured to run on each machine in a group?**

Each copy is named using the syntax `JobName_MachineName`. One copy per machine is created when the job builds into the Daily schedules.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
