---
title: Threshold/Resource Update
description: "The Threshold/Resource Update tab in the Job Master editor allows you to define and maintain threshold and resource updates related to a job."
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

# Threshold/Resource Update

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Threshold/Resource Update** tab in the **[Job Master](Using-Job-Master.md)** editor allows you to define and
maintain threshold and resource updates related to a job. Within the
tab, you will be able to:

- [Add Threshold/Resource Updates](Adding-Threshold-and-Resource-Updates.md)
- [Edit Threshold/Resource Updates](Editing-Threshold-and-Resouce-Updates.md)
- [Delete Threshold/Resource Updates](Deleting-Threshold-and-Resource-Updates.md)

For conceptual information, refer to [Threshold Updates](../../../job-components/threshold-resource-updates.md#threshold-updates) or [Resource Updates](../../../job-components/threshold-resource-updates.md#resource-updates) in the **Concepts** online help.
:::

## When Would You Use It?

- You need to allows you to define and using The **Threshold/Resource Update** tab in the **[Job Master](Using-Job-Master.md)** editor

## Why Would You Use It?

- **Operational value**: Allows you to define and maintain threshold and resource updates related to a job

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Threshold/Resource Update do?**

The **Threshold/Resource Update** tab in the **[Job Master](Using-Job-Master.md)** editor allows you to define and

**Q: Where can you find Threshold/Resource Update in OpCon?**

Access Threshold/Resource Update through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
