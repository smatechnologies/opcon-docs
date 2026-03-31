---
title: Displaying Schedules showing Job-Related/Frequency-Related Information
description: "Workflow Designer can display schedule dependencies filtered by job-related or frequency-related dependency types."
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

# Displaying Schedules showing Job-Related/Frequency-Related Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Workflow Designer can display schedule dependencies filtered by job-related or frequency-related dependency types. This view helps automation engineers understand how a schedule's jobs are connected within a specific frequency or across all frequencies.

To display the schedule, complete the following steps:

1. Select on **Workflow Designer** under the **Administration** topic
2. Select a **schedule** in the **Select Schedule** tree view, or expand a **schedule** to see its subschedules. Use the **filter** text box to narrow results. Alternatively, right-click a Container job in the display area to see its subschedule
3. Select the **schedule instance** from the **Schedule Instance** list
4. Select the **Job Related** option to display job-related dependency types
5. Select the **Frequency Related** option to display all frequency-related dependency types. To display specific frequencies, clear **Frequency Related** and select the desired **frequencies** in the associated list box

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Displaying Schedules showing Job-Related/Frequency-Related Information procedure involve?**

The Displaying Schedules showing Job-Related/Frequency-Related Information procedure involves 5 steps. Complete all steps in order and save your changes.

## Glossary

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
