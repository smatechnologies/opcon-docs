---
title: Schedule Instance Definition
description: "The Instance Definition tab in the Schedule Master editor allows you to define, edit, and manage schedule instances and named schedule instances."
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

# Schedule Instance Definition

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Instance Definition** tab in the [**Schedule Master**](Using-Schedule-Master.md) editor allows you to define, edit, and manage schedule instances and named schedule instances. Within the tab, you can:

- [Define Schedule Instances for Machines in Machine Groups](Defining-Schedule-Instances-for-Machines.md)
- [Define Properties for Single Instance Schedules](Defining-Properties-for-Single-Instance-Schedules.md)
- [Define Properties for Multi-Instance Schedules](Defining-Properties-for-Multi-Instance-Schedules.md)
- [Update Schedule Instance Properties](Updating-Schedule-Instance-Properties.md)
- [Delete Schedule Instance Properties](Deleting-Schedule-Instance-Properties.md)
- [Define Named Schedule Instances](Defining-Named-Schedule-Instances.md)
- [Delete Name Schedule Instances](Deleting-Named-Schedule-Instances.md)
- [Update Named Schedule Instance Properties](Updating-Named-Schedule-Instance-Properties.md)
- [Delete Named Schedule Instance Properties](Deleting-Named-Schedule-Instance-Properties.md)
- [Update Named Schedule Instance Exceptions](Updating-Named-Schedule-Instance-Exceptions.md)
- [Delete Named Schedule Instance Exceptions](Deleting-Named-Schedule-Instance-Exceptions.md)

For conceptual information, refer to [Instance Definition](../../../job-components/instances.md) in the **Concepts** online help.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Schedule Instance Definition do?**

The **Instance Definition** tab in the [**Schedule Master**](Using-Schedule-Master.md) editor allows you to define, edit, and manage schedule instances and named schedule instances. Within the tab, yo

**Q: Where can you find Schedule Instance Definition in OpCon?**

Access Schedule Instance Definition through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
