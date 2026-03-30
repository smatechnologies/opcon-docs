---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Tags
description: "The Tags tab in the Job Master editor allows you to define and maintain tags associated with a job."
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

#  Tags

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Tags** tab in the [**Job Master**](Using-Job-Master.md) editor allows you to define and maintain tags associated with a job. Tags can label a job as "Critical" or associate it with a program group. An unlimited number of tags can be defined per job. Tag names are built into the Daily tables during the Schedule Build process, and **Operations** views can be filtered by these tags.

 

Within the tab, you will be able to:

-   [Add Tags](#)
-   [Find Tags](Finding-Tags.md)
-   [Delete Tags](Deleting-Tags.md)
:::

 

## When Would You Use It?

- You need to allows you to define and maintain tags associated with a job using The **Tags** tab in the [**Job Master**](Using-Job-Master.md) editor

## Why Would You Use It?

- **Operational value**: Allows you to define and maintain tags associated with a job

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Tags do?**

viewport: width=device-width, initial-scale=1.0

**Q: Where can you find Tags in OpCon?**

Access Tags through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
