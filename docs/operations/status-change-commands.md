---
title: Schedule and Job Status Change Commands
description: "Schedule and job status change commands are used with events and graphical interfaces to control processing of schedules and jobs in OpCon."
product_area: Operations
audience: Operations Staff, System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Operations Staff
  - System Administrator
  - Schedules
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# Schedule and Job Status Change Commands

Schedule and job status change commands are used with events and graphical interfaces to control the processing of schedules and jobs. Results vary depending on the identified object.

- With one or more schedule date(s) identified, Schedule Status Change commands affect **all** schedules on that date. Graphical interfaces also provide a status filter to target schedules in specific statuses.
- With one or more schedule(s) identified, Schedule Status Change commands affect only the identified schedule(s).
- With one or more schedule(s) identified, Job Status Change commands affect **all** jobs on those schedules. Graphical interfaces also provide a status filter to target jobs in specific statuses.
- With one or more jobs selected, Job Status Change commands affect only the identified job(s).

## Schedule Status Change Commands

- **Hold Schedule**: Suspends processing of the identified schedule(s). Running jobs complete, but no new jobs start. Subschedules in a Waiting or In Process status are placed in Parent Hold.
- **Release Schedule**: Releases the identified schedule(s) from a Held state. Jobs resume from where they stopped. Subschedules in a Parent Hold status are also released.
- **Start Schedule**: Overrides the identified schedule's start date(s) and time(s) and runs them immediately. The Schedule Activity Monitor begins processing as soon as this command is issued. Subschedules in a Parent Hold status are also started.

## Job Status Change Commands

- **Hold**: Places the selected job(s) on hold.
- **Cancel**: Cancels the selected job(s). The job does not process unless manually started by a user or an event.
- **Skip**: Places the selected job(s) in a Job to be Skipped state until they qualify to start. When the job(s) qualify, they are skipped and downstream job dependencies are met.
- **Kill**: Sends a request to abort one or more jobs on an agent machine. A successful kill reports the job as Failed in graphical interfaces; an unsuccessful kill continues to show a Running status. <!-- GAP: claim "Not available for BIS, OpenVMS, and OS 2200 platforms" is pre-existing documentation — source uses a machine-level Allow Kill Job flag, not hardcoded platform exclusions; Null and Container job types are explicitly excluded in source. Verify platform list against agent documentation. --> Not available for BIS, OpenVMS, and OS 2200 platforms. To enable or disable this feature, refer to [Advanced Machine Configuration](../objects/machines.md#advanced-machine-configuration).
- **Release**: Releases the selected job(s) from a Held state.
- **Force Start**: Force starts the selected job(s), ignoring all dependencies and starting immediately.
- **Restart Commands**: Place a job back into a waiting state after it has finished. Depending on the restart type, the job returns to a Qualifying state or proceeds directly to start. Options include:
  - **Restart**: Places the selected job(s) back in a Qualifying state. All dependencies must be met before the job(s) are submitted. If Container jobs exist, options display to delete and rebuild completed subschedules, leave subschedules unchanged, or restart jobs with matching statuses in the subschedule.
  - **Force Restart**: Force restarts the selected job(s), ignoring the start time and all dependencies. The job(s) restart as soon as a machine is available. Requires both the Force Start Jobs and Restart Jobs privileges.
  - **Restart Without Prerun**: Places the selected job back in a Qualifying state without the associated prerun. All dependencies must be met before submission. <!-- GAP: "Not available for SAP R/3 and CRM, SAP BW, File Transfer, Container, and Null job types" is pre-existing content — source uses LSAM type registry SKIP_PRERUN_FLAG feature flag; hardcoded platform list unverifiable from source. --> Not available for SAP R/3 and CRM, SAP BW, File Transfer, Container, and Null job types.
  - **Restart On Step**: Restarts the job from a selected step. <!-- GAP: "Available only for SAP R/3 and CRM, SAP BW, UNIX, and z/OS job types" is pre-existing content — source uses LSAM type registry RESTART_STEP feature flag; hardcoded platform list unverifiable from source. --> Available only for SAP R/3 and CRM, SAP BW, UNIX, and z/OS job types.
  - **Restart on Hold**: Places the selected job(s) in an On Hold state on restart.
- **Mark Finished OK**: Changes the selected job(s) to a Finished OK status regardless of current status. All events process as if the job(s) finished OK without intervention. If marked before the job starts, both start and finish times in history equal the time the job is marked.
- **Mark Failed**: Changes the selected job(s) to a Failed status regardless of current status. All events process as if the job(s) failed without intervention. If marked before the job starts, both start and finish times in history equal the time the job is marked.
- **Mark Under Review**: Places the selected job(s) in an Under Review status indicating the job is being reviewed while corrective action is taken. Only available for jobs in a Failed, Marked Failed, or Initialization Error status.
- **Mark Fixed**: Places the selected job(s) in a Fixed status indicating corrective action has been taken after failure or error. Only available for jobs in a Failed, Marked Failed, Initialization Error, or Under Review status.

## Frequently Asked Questions

**What is the difference between Cancel and Skip for a job?**

Cancel prevents a job from processing unless manually started. Skip places the job in a Job to be Skipped state — when the job qualifies to start, it is skipped and downstream job dependencies are still met.

**What is the difference between Restart and Force Restart?**

Restart returns a job to a Qualifying state where all dependencies must be met before it runs again. Force Restart ignores the start time and all dependencies, restarting the job as soon as a machine is available.

**What does Hold Schedule do to subschedules?**

When a schedule is placed on Hold, any subschedules in a Waiting or In Process status are placed in a Parent Hold status. They are released when the parent schedule is released.

## Glossary

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.
