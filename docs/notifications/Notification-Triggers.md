---
title: Notification Triggers
description: "Notification triggers write notification information to the OpCon database when the status of one or more items in a group changes."
product_area: Notifications
audience: Operations Staff, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - Operations Staff
  - Automation Engineer
  - Notifications
last_updated: 2026-03-18
doc_type: procedural
---

# Notification Triggers

**Theme:** Configure  
**Who Is It For?** Operations Staff, Automation Engineer

## What Is It?

Notification triggers write notification information to the OpCon database when the status of one or more items in a group changes.

- Machine and Job triggers can be placed on Machine groups
- Schedule and Job triggers can be placed on Schedule groups
- Job triggers can be placed on Job groups

:::tip Example
In Notification Manager, a trigger for Job Failed is set on a Job Group containing a job named "Backup." The job "Backup" is configured to run on each machine in a group.

When the schedule builds, the single job from Job Master becomes several jobs visible in any Operation view:

- Backup_WinMach1
- Backup_WinMach2
- Backup_WinMach3

Because "Backup" was selected in the Job Group, if any one of the jobs fails, the notification is sent, including the exact job name so customers know which instance failed.
:::

## When Would You Use It?

- Use this feature when the status of one or more items in a group changes

## Why Would You Use It?

- **Notification Triggers**: Notification triggers write notification information to the OpCon database when the status of one or more items in a group changes

## Machine Triggers

|Status|Definition|
|--- |--- |
|Machine Marked Down|Machine has been marked down by a user.|
|Machine Marked Limited|Job Starts have been disabled on the machine.|
|Machine Marked Up|Machine has been marked up by a user.|
|Machine Status Changed|Machine has been marked up, limited (i.e., disabled job starts), or down by a user.|
|Network Down|SMANetCom has lost communication with the agent.|
|Network Up|SMANetCom has re-established communication with the agent.|
|Network Status Changed|Communication status has changed since the last SMANetCom poll of the agent.|

## Schedule Triggers

A schedule qualifies for a schedule event trigger if it is a schedule in the Daily tables that contains jobs. The trigger does not fire because the schedule name appears in a subschedule name. For a subschedule, the schedule name at the end of the concatenated name qualifies if it is in the Notification Manager Group.

:::tip Example
In Notification Manager, a trigger for a schedule placed on Hold is set on a Notification Manager Group containing a schedule named "ImportantProcess." This schedule is configured as a subschedule on other schedules and has Container jobs calling other schedules.

When schedules build for the day, the following schedules contain the schedule name:

To schedule Triggers, complete the following steps:

1. ImportantProcess
2. ImportantProcess_Container1\[OtherSchedule]
3. ProcessFiles_Container1\[ImportantProcess]
4. ProcessFiles_Container1\[ImportantProcess]_Container1\[OtherSchedule]

Because ImportantProcess is in the Notification Manager Group, if schedule 1 or 3 is placed On Hold, the trigger fires. It does not fire for schedules 2 or 4 because "OtherSchedule" is the schedule containing jobs. The trigger would fire for those schedules only if "OtherSchedule" was in the Notification Manager Group.
:::

|Status|Definition|
|--- |--- |
|Schedule Start|The time qualification has been met and the schedule has started. Subschedules in a Parent Hold status started by the parent will not fire this trigger — only the parent schedule status change triggers notification.|
|Schedule Complete|All jobs on the schedule have finished and the schedule is complete.|
|Schedule Placed On Hold|An OpCon event or a user has placed the schedule on hold. Subschedules in a Parent Hold status will not fire this trigger — only the parent schedule status change triggers notification.|
|Schedule Released From Hold|An OpCon event or a user has released the schedule from hold. Subschedules in a Parent Hold status released by the parent will not fire this trigger — only the parent schedule status change triggers notification.|

## Job Triggers

A job qualifies for a job event trigger if the job name in the Daily was derived from the selected job in the Master.

:::tip Example
In Notification Manager, a trigger for Job Failed is set on a Notification Manager Group containing a job named "Backup." The job "Backup" is configured to run on each machine in a group.

When the schedule builds, the single job from Master becomes several Daily jobs:

- Backup_WinMach1
- Backup_WinMach2
- Backup_WinMach3

Because "Backup" was selected in the Notification Manager Group, if any Daily job fails, the notification is sent, including the exact job name so customers know which instance failed.
:::

|Status|Definition|
|--- |--- |
|Job Wait Machine|The job has entered a Wait Machine status. If a machine is placed into a Limited state (job starts disabled), all qualified jobs on that machine enter a Wait Machine state. Notifications based on this trigger may produce unwanted results.|
|Job Late to Start|Fires when SAM sets a job status to Late to Start.|
|Job Late to Finish|Fires when SAM sets a job status to Running; Late to Finish.|
|Job Submitted|SAM has sent job start information to the agent via SMANetCom.|
|Job Still Attempting to Start|Fires when SAM checks on a job still in Start Attempted status. To change the check frequency, modify the "Minutes between checking running jobs" parameter in Time Settings for the machine.|
|Job Initialization Error|The job could not start due to a server or agent failure — for example, an invalid Batch User ID, an unresolvable token in the command line, or another failed precondition.|
|Job Prerun Failed|The Prerun job finished with an exit condition that did not meet the defined Failure Criteria.|
|Job Missed Start Time|A job was not submitted because the latest start time passed.|
|Job Running|Fires in three scenarios: a job transitions from Submitted to Running; a very short job transitions directly from Submitted to Finished OK; a very short job transitions directly from Submitted to Failed. This trigger does not fire for jobs that go directly to a prerun or initialization failure.|
|Job to be Killed|A kill command was issued via a graphical interface or a $JOB:KILL event. The trigger fires when SAM sends the kill message to the agent. It does not fire if the job was killed manually on the agent machine.|
|Job Exceeded Max Runtime|The job has run longer than the user-defined maximum runtime.|
|Job Finished OK|The job completed with a status of Finished OK.|
|Job Failed|The job completed with a status of Failed.|
|Job Marked Finished OK|The job was marked Finished OK by an OpCon event or a user.|
|Job Marked Failed|The job was marked Failed by an OpCon event or a user.|
|Job Cancelled|A job was cancelled by an OpCon event or a user.|
|Job Restarted|A job was placed back in a Qualifying state by an OpCon event or a user.|
|Job Skipped|A job was placed in a Skipped status by an OpCon event or a user.|
|Job Under Review|A job was placed in an Under Review status by an OpCon event or a user.|
|Job Fixed|A job was placed in a Fixed status by an OpCon event or a user.|

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## Operations

### Monitoring
- Use **Machine Triggers** to detect network status changes: **Network Down** fires when SMANetCom loses communication with an agent; **Network Up** fires when communication is re-established; **Network Status Changed** fires on any status transition.
- Use **Job Triggers** to detect operational conditions: **Job Late to Start**, **Job Late to Finish**, **Job Exceeded Max Runtime**, **Job Initialization Error**, and **Job Failed** are the primary alert-generating triggers.
- The **Job Still Attempting to Start** trigger fires when SAM checks a job still in Start Attempted status; adjust the check frequency via the "Minutes between checking running jobs" machine parameter.

### Common Tasks
- Place Machine and Job triggers on Machine groups; place Schedule and Job triggers on Schedule groups; place Job triggers on Job groups.
- When monitoring multi-instance jobs, select the job name from Job Master in the notification group — the trigger fires for any daily instance derived from that master job and includes the exact daily job name in the notification.
- Schedule triggers only fire for schedules that directly contain jobs; subschedules fire their own triggers only if the subschedule name itself is in the notification group.

## FAQs

**Q: What is a notification trigger?**

A notification trigger fires when the status of one or more items in a notification group changes. When the trigger fires, OpCon writes notification information to the database, and the SMA Notify Handler delivers the notification.

**Q: Can a notification trigger monitor multiple job types in the same group?**

Yes. Job groups can contain multiple jobs, including multi-instance jobs. If any job in the group matches the trigger condition (such as Job Failed), the notification is sent with the exact job name that caused the trigger.

**Q: What object types can have notification triggers applied to them?**

Machine and Job triggers can be placed on Machine groups. Schedule and Job triggers can be placed on Schedule groups. Job triggers can be placed on Job groups.

## Glossary

**SMANetCom (SMA Network Communications Module)**: Handles TCP/IP communication of platform-specific automation information between SAM and all agents. Uses database tables to maintain reliable communication and data integrity.

**SMA Notify Handler**: Processes notifications triggered by Machine, Schedule, and Job status changes. Can send emails, text messages, Windows Event Log entries, SNMP traps, and SPO notifications.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.
