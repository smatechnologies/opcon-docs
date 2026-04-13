---
title: Threshold/Resource Dependency
description: "The Threshold/Resource Dependency tab allows you to define and maintain job dependencies on threshold and resource values."
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

# Threshold/Resource Dependency

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Threshold/Resource Dependency** tab allows you to define and
maintain job dependencies on threshold and resource values. Within the
tab, you will be able to:

- [Add Threshold/Resource Dependencies](Adding-Threshold-and-Resource-Dependencies.md)
- [Edit Threshold/Resource Dependencies](Editing-Threshold-and-Resource-Dependencies.md)
- [Delete Threshold/Resource Dependencies](Deleting-Threshold-and-Resource-Dependencies.md)

For conceptual information, refer to [Threshold Dependencies](../../../job-components/threshold-resource-dependencies.md#threshold-dependencies) or [Resource Dependencies](../../../job-components/threshold-resource-dependencies.md#resource-dependencies) in the **Concepts** online help.
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Threshold/Resource Dependency do?**

The **Threshold/Resource Dependency** tab allows you to define and

**Q: Where can you find Threshold/Resource Dependency in OpCon?**

Access Threshold/Resource Dependency through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
