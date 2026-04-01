---
title: Defining Properties for Multi-Instance Jobs
description: "Use this procedure to define Properties for Multi-Instance Jobs in the Enterprise Manager."
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

# Defining Properties for Multi-Instance Jobs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to define Properties for Multi-Instance Jobs in the Enterprise Manager.

To define a property, complete the following steps:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Job Details** tab in the **Job Properties** frame
5. Select the **Multi-Instance** option
6. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
7. Select the **Instance Definition** tab
8. Define properties using the format **PropertyName=PropertyValue**, separating each definition with a semicolon (**;**)
9. Select **Add**
10. Repeat Steps 8 and 9 for additional instances
11. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar to save the property definitions
12. Select **Close ☒** to close the **Job Master** screen

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What is the purpose of defining properties for multi-instance jobs?**

Defining properties for multi-instance jobs establishes the configuration or properties that OpCon uses when processing the related job, schedule, or automation object.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
