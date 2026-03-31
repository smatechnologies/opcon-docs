---
title: Automating Across Time Zones
description: "OpCon bases all date and time automation on the OpCon server's date and time, providing a consistent reference for all graphical interfaces and agent machines."
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

# Automating Across Time Zones

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Business Analyst

## What Is It?

OpCon bases all date and time automation on the OpCon server's date and time, providing a consistent reference for all graphical interfaces and agent machines. In multi-location environments, without a central time reference, coordinating events across time zones is error-prone.

The OpCon administrator may configure the server to use Coordinated Universal Time (UTC). Continuous strongly recommends UTC when users and agents span widely varied time zones. If the environment spans only two or three time zones, all users must know the OpCon server time to configure jobs for the correct start times.

OpCon supports cross-time-zone communication through the following:

- Machine definitions can include a Time Zone Name and Offset from UTC
- The SAM maintains its Time Zone Name and Offset from UTC, displayed with the Last SAM Pulse in Operations Views
- If machine definitions include time zone information, it combines with the SAM's time zone data to show an agent's time offset from the SAM

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What time reference does OpCon use for all scheduling?**

OpCon bases all date and time automation on the OpCon server's date and time, providing a consistent reference for all graphical interfaces and agent machines.

**Q: When is it recommended to configure the OpCon server to use UTC?**

Continuous strongly recommends UTC when users and agents span widely varied time zones. If the environment spans only two or three time zones, all users must know the OpCon server time to configure jobs for the correct start times.

**Q: Can OpCon show the time difference between the server and an agent on a remote machine?**

Yes. If machine definitions include a Time Zone Name and Offset from UTC, OpCon combines that with the SAM's time zone data to display the agent's time offset from the SAM.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
