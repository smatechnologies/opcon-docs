---
title: Dependencies
description: "The Dependencies tab in the Job Master editor has three sub-tabs for defining dependency types: Job Dependency, Threshold/Resource Dependency, and Expression Dependency."
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
doc_type: conceptual
last_updated: 2026-03-18
---

# Dependencies

## What Is It?

The **Dependencies** tab in the **[Job Master](Using-Job-Master.md)** editor is where you define and maintain the conditions a job must satisfy before it can run. Use dependencies to control the order in which jobs run, to gate a job on the state of a shared resource, or to evaluate a custom condition at runtime.

The **Dependencies** tab contains three sub-tabs, one for each dependency type:

| Sub-tab | What it defines |
|---|---|
| **[Job Dependency](Job-Dependency.md)** | A relationship to another job (a predecessor) that must reach a defined state before this job runs. |
| **[Threshold/Resource Dependency](Threshold-and-Resource-Dependency.md)** | A condition based on the value of a threshold or the availability of a resource. |
| **[Expression Dependency](Expression-Dependency.md)** | A custom expression that OpCon evaluates to determine whether the job runs. |

## Glossary

**Enterprise Manager**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Threshold**: A numeric variable stored in the OpCon database used to control when jobs run. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent jobs and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.

## Related Topics

- [Job Dependency](Job-Dependency.md)
- [Threshold/Resource Dependency](Threshold-and-Resource-Dependency.md)
- [Expression Dependency](Expression-Dependency.md)
- [Using Job Master](Using-Job-Master.md)
