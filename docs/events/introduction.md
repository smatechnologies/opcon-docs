---
title: Introduction
description: "Events are strings that run commands within OpCon."
product_area: Events
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Events
last_updated: 2026-03-18
doc_type: conceptual
---

# Introduction

**Theme:** Overview  
**Who Is It For?** Automation Engineer

## What Is It?

Events are strings that run commands within OpCon. Events can be defined to run upon Schedule Completion, Job Statuses, String Match on agent Feedback for Jobs, Job Exit Description, Event Triggers from the Notification Manager, and external events. These events cause the SAM to take several different actions.

Any number of events may be defined for each job. Events can be defined at the job or at the frequency level. All events can be passed to the SAM externally through [MSGIN](./defining.md#MSGIN).

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What are OpCon events?**

Events are command strings that run actions within OpCon. They can be triggered by schedule completion, job status changes, agent feedback, exit descriptions, Notification Manager triggers, or external sources.

**Q: Can events be defined at the frequency level instead of the job level?**

Yes. Events can be defined at either the job level or the frequency level, allowing different events to fire depending on which frequency a job runs under.

**Q: How can external systems send events to OpCon?**

Any event can be passed to the SAM externally through the MSGIN directory. External systems write event strings to this monitored directory, and the SAM processes them as they arrive.

## Glossary

**MSGIN**: A directory monitored by an agent for incoming OpCon event files. Placing a properly formatted event file in MSGIN causes the agent to forward it to SAM for processing.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
