---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Defining Global Properties
description: "The Schedule Master editor is used to define and maintain OpCon Schedules."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

#  Defining Global Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Schedule Master** editor is used to define and maintain OpCon Schedules.

## When Would You Use It?

- A new Global Properties definition needs to be established in Enterprise Manager

## Why Would You Use It?

- **Establish reusable definitions**: Defining Global Properties in OpCon creates a reusable reference that schedules, jobs, and events can share

## Schedule Master Tabs

The editor contains a list of schedules and uses tabs to provide schedule details, instance definitions, frequencies, and events for each schedule.

![Schedule Master tab bar](../../../Resources/Images/EM/EMschedmastertabbar.png "Schedule Master tab bar")

## Schedule Master Toolbar

The **Schedule Master** toolbar allows you to manage schedules.

![Schedule Master toolbar](../../../Resources/Images/EM/EMschedmastoolbar.png "Schedule Master toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

-   [Adding Schedules](Adding-Schedules.md)
-   [Copying Schedules](Copying-Schedules.md)
-   [Deleting Schedules](Deleting-Schedules.md)
-   [Merging Schedules](Merging-Schedules.md)
-   [Viewing Additional Schedule Information](Viewing-Additional-Schedule-Info.md)
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What is the purpose of defining global properties?**

Defining global properties establishes the configuration or properties that OpCon uses when processing the related job, schedule, or automation object.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
