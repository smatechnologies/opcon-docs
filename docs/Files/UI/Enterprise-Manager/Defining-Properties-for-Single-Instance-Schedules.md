---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Defining Properties for Single Instance Schedules
description: "Use this procedure to define Properties for Single Instance Schedules in the Enterprise Manager."
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

#  Defining Properties for Single Instance Schedules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to define Properties for Single Instance Schedules in the Enterprise Manager.

To define a property, complete the following steps:

1.  Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2.  Select the **schedule** in the **Schedule Selection** list
3.  Select the **Schedule** tab in the **Schedule Details** frame
4.  Clear the **Multi-Instance** option if it is selected
5.  Select the **Instance Definition** tab in the **Schedule Details** frame
6.  Define properties using the format **PropertyName=PropertyValue**, separating each definition with a semicolon (**;**)
7.  Select **Add**
8.  Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar to save the property definitions
9.  Select **Close ☒** to close the **Schedule Master** screen
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What is the purpose of defining properties for single instance schedules?**

Defining properties for single instance schedules establishes the configuration or properties that OpCon uses when processing the related job, schedule, or automation object.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
