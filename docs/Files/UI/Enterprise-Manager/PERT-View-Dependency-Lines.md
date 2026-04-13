---
title: PERT View Dependency Lines
description: "In PERT view, each dependency type is represented by a different line style and image at the end."
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

# PERT View Dependency Lines

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

In **[PERT](Using-PERT-View.md)** view, each dependency type is represented by a different line style and image at the end.

|||
|--- |--- |
||Requires Failed: A solid red line with arrow. The selected job (arrow end) requires the dependent job (line start) to exist in the Daily tables and fail before the selected job runs. If the dependent job is not in the Daily tables, the selected job will not run unless overridden.|
||Requires Finished OK: A solid green line with arrow. The selected job (arrow end) requires the dependent job (line start) to exist in the Daily tables and complete successfully before the selected job runs. If the dependent job is not in the Daily tables, the selected job will not run unless overridden.|
||Requires Ignore Exit Code: A solid black line with arrow. The selected job (arrow end) requires the dependent job (line start) to exist in the Daily tables. The selected job runs when the dependent job completes, regardless of exit status. If the dependent job is not in the Daily tables, the selected job will not run unless overridden.|
||After Failed: A dashed red line with arrow. The selected job (arrow end) has an After dependency on the dependent job (line start). If the dependent job is in the Daily tables, the selected job waits until it fails. If not in the Daily tables, the selected job runs without waiting.|
||After Finished OK: A dashed green line with arrow. The selected job (arrow end) has an After dependency on the dependent job (line start). If the dependent job is in the Daily tables, the selected job waits until it completes successfully. If not in the Daily tables, the selected job runs without waiting.|
||After Ignore Exit Code: A dashed black line with arrow. The selected job (arrow end) has an After dependency on the dependent job (line start). If the dependent job is in the Daily tables, the selected job waits until it completes, regardless of exit status. If not in the Daily tables, the selected job runs without waiting.|
||Resource Dependency: A solid gold line with arrow. The job at the arrow end has a requirement for the resource where the line starts.|
||Threshold Dependency: A solid royal blue line with arrow. The job at the arrow end has a dependency on the threshold where the line starts.|

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does PERT View Dependency Lines do?**

In **[PERT](Using-PERT-View.md)** view, each dependency type is represented by a different line style and image at the end.

**Q: Where can you find PERT View Dependency Lines in OpCon?**

Access PERT View Dependency Lines through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
