---
title: Resources
description: "A resource is a user-defined value with a name and a numeric limit."
product_area: Core Concepts
audience: Automation Engineer, Application Owner
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Application Owner
  - Getting Started
last_updated: 2026-03-18
doc_type: conceptual
---

# Resources

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Application Owner

## What Is It?

A *resource* is a user-defined value with a name and a numeric limit. Resources limit the number of concurrently running jobs across schedules and machines in OpCon. While agent maximum job counts and conflict dependencies can also constrain concurrency, resources are more flexible because they are platform independent, easy to manage, and can be influenced by external events (refer to [External Events](../events/defining.md#external) in the **OpCon Events** online help).

Resource definition fields:

- **Name**: The name of the resource
- **Documentation**: Descriptions, explanations, and notes for the resource
- **Max Resources**: The numeric maximum number of resources
- **Resources in Use**: The number of resources currently in use by OpCon jobs

:::tip Example
Jamie has 30 jobs that use tape drives on a mainframe with only 10 physical tape drives. The jobs can run at any time based on dependencies, but no more than 10 can run concurrently.

- Jamie creates a resource called **TapeDrive** with Max Resources set to **10**
- For each job (Job1 through Job30), Jamie adds a resource requirement for one TapeDrive

**Result**: The SAM uses one TapeDrive resource per submitted job. If all 10 are in use, the SAM waits until one is available before submitting the next job.
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Name | The name of the resource | — | — |
| Documentation | Descriptions, explanations, and notes for the resource | — | — |
| Max Resources | The numeric maximum number of resources | — | — |
| Resources in Use | The number of resources currently in use by OpCon jobs | — | — |
| Result | The SAM uses one TapeDrive resource per submitted job. | — | — |
## FAQs

**Q: How do resources limit job concurrency?**

Each job that requires a resource consumes one unit from the resource's Max Resources count when it runs. The SAM waits to submit additional jobs that need the resource until a unit becomes available.

**Q: How are resources different from agent max concurrent job counts?**

Resources are platform independent, easy to manage, and can be influenced by external events. agent max job counts are machine-specific and cannot be controlled by external automation.

**Q: Can external events affect resource counts?**

Yes. Resources can be updated by external events, allowing external applications or processes to influence job scheduling concurrency in OpCon.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
