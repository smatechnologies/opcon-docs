---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Container Jobs' SubSchedules
description: "Use this procedure to view Container Jobs' SubSchedules in the Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

#  Viewing Container Jobs' SubSchedules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view Container Jobs' SubSchedules in the Enterprise Manager.

To view the SubSchedule, complete the following steps:

1.  Select on **PERT** under the **Operation** topic. The **PERT** screen displays
2.  Select on the **schedule** that contains the job
3.  Right-click on the **Container job box**
4.  Select on **Open SubSchedule** from the menu
5.  Work with the jobs in the subschedule, as needed
:::

## FAQs

**Q: How many steps does the Viewing Container Jobs' SubSchedules procedure involve?**

The Viewing Container Jobs' SubSchedules procedure involves 5 steps. Complete all steps in order and save your changes.

## Glossary

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
