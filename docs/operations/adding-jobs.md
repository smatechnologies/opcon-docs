---
title: Adding Jobs to Daily Schedules
description: "Adding jobs to Daily schedules takes a job from the Job Master and adds it to a specific Daily schedule."
product_area: Operations
audience: Operations Staff, System Administrator
version_introduced: "[see release notes]"
tags:
  - Procedural
  - Operations Staff
  - System Administrator
  - Schedules
last_updated: 2026-03-18
doc_type: procedural
---

# Adding Jobs to Daily Schedules

**Theme:** Configure  
**Who Is It For?** Operations Staff, System Administrator

## What Is It?

Adding jobs to Daily schedules takes a job from the Job Master and adds it to a specific Daily schedule. To add a job, specify the schedule, job, and desired frequency for a schedule date that is already built. The frequency defines all frequency-related job components.

:::note
The only frequency-related component not included is the Job Build Status. The only available default statuses for a manually added job are Released and On Hold.
:::

When adding jobs, you can set specific property definitions for each job instance:

- If the job has no defined instances (refer to [Instance Definition](../job-components/instances.md)), you can enter property definitions for a specific job instance
- In graphical interfaces, if the job is configured to [Run on each Machine](../objects/jobs.md#run) in a machine group, you can select a specific machine from the group
- In graphical interfaces, if the job has one or more Instance Definitions with predefined user properties (refer to [Instance Definition](../job-components/instances.md)), you can enter property definitions for a specific job instance

:::note
If specific definitions are not supplied for each job instance, OpCon automatically adds all defined instances for the job.
:::

Jobs can be added to Daily schedules using:

- OpCon events (refer to [Job-Related Events](../events/types.md#job-related-events) in the **OpCon Events** online help)
- Graphical interfaces

## When Would You Use It?

- You need to add Jobs to Daily Schedules in OpCon Operations
- The environment is expanding and requires additional Jobs to Daily Schedules to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Jobs to Daily Schedules to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Jobs to Daily Schedules and when

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What is required to add a job to a Daily schedule?**

You must specify the schedule, job, and desired frequency. The schedule date must already be built. The frequency defines all frequency-related job components except Job Build Status, which defaults to Released or On Hold.

**Q: Can you add a specific machine when adding a job that is configured to run on a machine group?**

Yes. In graphical interfaces, if the job is configured to "Run on each Machine" in a machine group, you can select a specific machine from the group when adding the job.

**Q: What happens if you don't supply specific property definitions when adding a job with multiple instances?**

OpCon automatically adds all defined instances for the job without prompting for individual instance property definitions.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
