---
title: Defining Schedule Instances for Machines in Machine Groups
description: "Use this procedure to define Schedule Instances for Machines in Machine Groups in the Enterprise Manager."
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

# Defining Schedule Instances for Machines in Machine Groups

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to define Schedule Instances for Machines in Machine Groups in the Enterprise Manager.

To define a schedule instance, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select the **schedule** in the **Schedule Selection** list
3. Select the **Schedule** tab in the **Schedule Details** frame
4. Select the **Multi-Instance** option in the **Schedule Properties** frame
5. Select the **Instance Definition** tab in the **Schedule Details** frame
6. Select the **Build an instance for each machine in Machine Group** radio button
7. Select a **machine group** in the **Machine Group** list
8. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
9. Select **Close ☒** to close the **Schedule Master** screen

## When Would You Use It?

- A new Schedule Instances for Machines in Machine Groups definition needs to be established in Enterprise Manager

## Why Would You Use It?

- **Establish reusable definitions**: Defining Schedule Instances for Machines in Machine Groups in OpCon creates a reusable reference that schedules, jobs, and events can share

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What is the purpose of defining schedule instances for machines in machine groups?**

Defining schedule instances for machines in machine groups establishes the configuration or properties that OpCon uses when processing the related job, schedule, or automation object.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
