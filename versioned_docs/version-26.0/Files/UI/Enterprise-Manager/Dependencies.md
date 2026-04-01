---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Dependencies
description: "The Dependencies tab in the Job Master editor has three sub-tabs for defining and maintaining dependency types: - Job Dependency - Threshold/Resource Dependency - Expression Dependency"
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

#  Dependencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Dependencies** tab in the **[Job Master](Using-Job-Master.md)** editor has three sub-tabs for defining and maintaining dependency types:

-   [Job Dependency](Job-Dependency.md)
-   [Threshold/Resource Dependency](Threshold-and-Resource-Dependency.md)
-   [Expression Dependency](Expression-Dependency.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Dependencies do?**

viewport: width=device-width, initial-scale=1.0

**Q: Where can you find Dependencies in OpCon?**

Access Dependencies through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
