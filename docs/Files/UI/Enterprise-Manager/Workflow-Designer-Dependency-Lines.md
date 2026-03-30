---
title: Workflow Designer Dependency Lines
description: "In Workflow Designer, each dependency type is represented by a different line style and image at the end."
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

# Workflow Designer Dependency Lines

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

In **[Workflow Designer](Using-Workflow-Designer.md)**, each dependency type is represented by a different line style and image at the end.

|||
|--- |--- |
||Requires Failed: A solid red line with arrow. The dependent job must exist in the Daily tables and must fail before the selected job runs. If the dependent job is not in the Daily tables, the selected job will not run unless overridden.|
||Requires Finished OK: A solid green line with arrow. The dependent job must exist in the Daily tables and must complete successfully before the selected job runs. If the dependent job is not in the Daily tables, the selected job will not run unless overridden.|
||Requires Ignore Exit Code: A solid black line with arrow. The dependent job must exist in the Daily tables. The selected job runs when the dependent job completes, regardless of exit status. If the dependent job is not in the Daily tables, the selected job will not run unless overridden.|
||After Failed: A dashed red line with arrow. If the dependent job is in the Daily tables, the selected job waits until the dependent job fails. If the dependent job is not in the Daily tables, the selected job runs without waiting.|
||After Finished OK: A dashed green line with arrow. If the dependent job is in the Daily tables, the selected job waits until the dependent job completes successfully. If the dependent job is not in the Daily tables, the selected job runs without waiting.|
||After Ignore Exit Code: A dashed black line with arrow. If the dependent job is in the Daily tables, the selected job waits until the dependent job completes, regardless of exit status. If the dependent job is not in the Daily tables, the selected job runs without waiting.|
||Excludes: A solid pink line with X. The job on the end with the X is excluded by the job where the line starts.|
||Conflict: A dashed magenta line with a circle. The job with the circle will not run if the job at the start of the line is running.|
||Resource Dependency: A solid gold line with arrow. The job at the arrow end requires the resource where the line starts.|
||Threshold Dependency: A solid royal blue line with arrow. The job at the arrow end depends on the threshold where the line starts.|
||Multiple frequency level Dependencies: Jobs with multiple frequency level dependencies show multiple lines that start and end together but separate to show different paths. The frequency color appears as a diamond on the path; a tooltip on the diamond shows the frequency name.|

## When Would You Use It?

- In **[Workflow Designer](Using-Workflow-Designer.md)**, each dependency type is represented by a different line style and image at the end

## Why Would You Use It?

- **Workflow Designer**: In **[Workflow Designer](Using-Workflow-Designer.md)**, each dependency type is represented by a different line style and image at the end

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Workflow Designer Dependency Lines do?**

In **[Workflow Designer](Using-Workflow-Designer.md)**, each dependency type is represented by a different line style and image at the end.

**Q: Where can you find Workflow Designer Dependency Lines in OpCon?**

Access Workflow Designer Dependency Lines through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
