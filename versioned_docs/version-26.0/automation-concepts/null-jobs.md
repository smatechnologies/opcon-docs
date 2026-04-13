---
title: Null Jobs
description: "The Null job generates OpCon events and/or sets thresholds without running a job."
product_area: Automation Concepts
audience: Automation Engineer, Business Analyst
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Business Analyst
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# Null Jobs

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Business Analyst

## What Is It?

The Null job generates OpCon events and/or sets thresholds without running a job.

- The **Job Type** is set to Null. No job-specific details are required
- A Null job supports all job automation components (frequencies, dependencies, etc.) like any other job
- A Null job always finishes **OK** as soon as it starts

Common uses:

- Keep schedules open
- Initialize thresholds at a specific point in a schedule
- Send notifications

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does a Null job do?**

A Null job generates OpCon events and/or sets thresholds without running any actual task. It always finishes OK as soon as it starts.

**Q: Can a Null job have dependencies and frequencies like other jobs?**

Yes. A Null job supports all job automation components — frequencies, dependencies, events, and threshold updates — just like any other job type.

**Q: When would you use a Null job to keep a schedule open?**

If all other jobs in a schedule complete but you want the schedule to remain In Process (for example, to allow events to be added later), a Null job with a dependency on other jobs can be held or delayed to prevent the schedule from closing.

## Glossary

**Null Job**: A job type that performs no execution on any platform. Null jobs are used to hold dependencies, trigger OpCon events, and keep schedules open after all other jobs complete.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
