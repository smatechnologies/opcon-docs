---
title: Schedule and Job Status Change Commands
description: "Schedule and job status change commands are used with events and graphical interfaces."
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

# Schedule and Job Status Change Commands

**Theme:** Configure  
**Who Is It For?** Operations Staff, System Administrator

## What Is It?

Schedule and job status change commands are used with events and graphical interfaces. Results vary depending on the identified object.

- With one or more schedule date(s) identified, Schedule Status Change commands affect **all** schedules on that date. Graphical interfaces also provide a status filter to target schedules in specific statuses
- With one or more schedule(s) identified, Schedule Status Change commands affect only the identified schedule(s)
- With one or more schedule(s) identified, Job Status Change commands affect **all** jobs on those schedules. Graphical interfaces also provide a status filter to target jobs in specific statuses
- With one or more jobs selected, Job Status Change commands affect only the identified job(s)

## When Would You Use It?

- Schedule and job status change commands are used with events and graphical interfaces

## Why Would You Use It?

- **Streamlined workflow**: Schedule and job status change commands are used with events and graphical interfaces

## Schedule Status Change Commands

- **Hold Schedule**: Suspends processing of the identified schedule(s). Running jobs complete, but no new jobs start. Subschedules in a Waiting or In Process status are placed in Parent Hold
- **Release Schedule**: Releases the identified schedule(s) from a Held state. Jobs resume from where they stopped. Subschedules in a Parent Hold status are also released
- **Start Schedule**: Overrides the identified schedule's start date(s) and time(s) and runs them immediately. The SAM begins processing as soon as this option is selected. Subschedules in a Parent Hold status are also started

## Jobs Status Change Commands

- **Hold**: Places the selected job(s) on hold
- **Cancel**: Cancels the selected job(s). The job does not process unless manually started by a user or an event
- **Skip**: Places the selected job(s) in a Job to be Skipped state until they qualify to start. When the job(s) qualify, they are skipped and downstream job dependencies are met
- **Kill**: Sends a request to abort one or more jobs on an agent machine. A successful kill reports the job as Failed in graphical interfaces; an unsuccessful kill continues to show a Running status. Not available for BIS, OpenVMS, and OS 2200 platforms. To enable or disable this feature, refer to [Advanced Machine Configuration](../objects/machines.md#advanced-machine-configuration)
- **Release**: Releases the selected job(s) from a Held state
- **Force Start**: Force starts the selected job(s), ignoring all dependencies and starting immediately
- **Restart Commands**: Return a job to a Qualifying status after it has finished. Options include:
  - **Restart**: Places the selected job(s) back in a Qualifying state. All dependencies must be met before the job(s) are submitted. If Container jobs exist, options display to delete and rebuild completed subschedules, leave subschedules unchanged, or restart jobs with matching statuses in the subschedule
  - **Force Restart**: Force restarts the selected job(s), ignoring the start time and all dependencies. The job(s) restart as soon as a machine is available. Requires privileges to both Force Start and Restart jobs
  - **Restart Without Prerun**: Places the selected job back in a Qualifying state without the associated prerun. All dependencies must be met before submission. Not available for SAP R/3 and CRM, SAP BW, File Transfer, Container, and Null platforms
  - **Restart On Step**: Restarts the job from a selected step. Available only for SAP R/3 and CRM, SAP BW, UNIX, and z/OS platforms
  - **Restart on Hold**: Places the selected job(s) in an On Hold state on restart
- **Mark Finished OK**: Changes the selected job(s) to a Finished OK status regardless of current status. All events process as if the job(s) finished OK without intervention. If marked before the job starts, both start and finish times in history equal the time the job is marked
- **Mark Failed**: Changes the selected job(s) to a Failed status regardless of current status. All events process as if the job(s) failed without intervention. If marked before the job starts, both start and finish times in history equal the time the job is marked
- **Under Review**: Places the selected job(s) in an Under Review status indicating the job is being reviewed while corrective action is taken. Only available for jobs in a Failed, Marked Failed, or Initialization Error status
- **Fixed**: Places the selected job(s) in a Fixed status indicating corrective action has been taken after failure or error. Only available for jobs in a Failed, Marked Failed, Initialization Error, or Under Review status

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Hold Schedule | Suspends processing of the identified schedule(s). | — | — |
| Release Schedule | Releases the identified schedule(s) from a Held state. | — | — |
| Start Schedule | Overrides the identified schedule's start date(s) and time(s) and runs them immediately. | — | — |
| Hold | Places the selected job(s) on hold | — | — |
| Kill | Sends a request to abort one or more jobs on an agent machine. | — | — |
| Release | Releases the selected job(s) from a Held state | — | — |
| Force Start | Force starts the selected job(s), ignoring all dependencies and starting immediately | — | — |
| Restart Commands | Return a job to a Qualifying status after it has finished. | — | — |
| Mark Finished OK | Changes the selected job(s) to a Finished OK status regardless of current status. | — | — |
| Mark Failed | Changes the selected job(s) to a Failed status regardless of current status. | — | — |
| Under Review | Places the selected job(s) in an Under Review status indicating the job is being reviewed while corrective action is taken. | — | — |
| Fixed | Places the selected job(s) in a Fixed status indicating corrective action has been taken after failure or error. | — | — |
## FAQs

**Q: What is the difference between Cancel and Skip for a job?**

Cancel prevents a job from processing unless manually started. Skip places the job in a "Job to be Skipped" state — when the job qualifies to start, it is skipped and downstream job dependencies are still met.

**Q: What is the difference between Restart and Force Restart?**

Restart returns a job to a Qualifying state where all dependencies must be met before it runs again. Force Restart ignores the start time and all dependencies, restarting the job as soon as a machine is available.

**Q: What does Hold Schedule do to subschedules?**

When a schedule is placed on Hold, any subschedules in a Waiting or In Process status are placed in Parent Hold status. They are released when the parent schedule is released.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
