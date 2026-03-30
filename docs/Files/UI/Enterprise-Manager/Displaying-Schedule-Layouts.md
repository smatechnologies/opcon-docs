---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Displaying Schedule Layouts
description: "Schedule layouts in Workflow Designer show the visual dependency map for a master schedule, including its jobs, thresholds, and resources."
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

#  Displaying Schedule Layouts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Schedule layouts in Workflow Designer show the visual dependency map for a master schedule, including its jobs, thresholds, and resources. Operators can navigate between schedules and subschedules and optionally hide thresholds and resources from the display.

To display the schedule layout, complete the following steps:

1. Select on **Workflow Designer** under the **Administration** topic
2. Select a **schedule** in the **Select Schedule** tree view, or expand a **schedule** to see its subschedules. Use the **filter** text box to narrow results. Alternatively, right-click a Container job in the display area to see its subschedule
3. *(Optional)* Select **Hide Thresholds and Resources** on the **Workflow Designer** toolbar to toggle the display of thresholds and resources
4. *(Optional)* Select **Marquee** in the **Tools** frame, then select and drag to select a group of items and drag them to a new location in the display area
:::

## When Would You Use It?

- To display the schedule layout:

## Why Would You Use It?

- **Displaying Schedule**: To display the schedule layout:

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Displaying Schedule Layouts procedure involve?**

The Displaying Schedule Layouts procedure involves 4 steps. Complete all steps in order and save your changes.

## Glossary

**Subschedule**: A schedule that runs as a child process within a Container job, allowing hierarchical, nested workflow automation where a parent schedule can trigger and monitor an entire child schedule.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
