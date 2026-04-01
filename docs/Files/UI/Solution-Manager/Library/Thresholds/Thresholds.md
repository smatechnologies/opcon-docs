---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Thresholds
description: "Available Thresholds in OpCon are shown in the following Grid under Library -> Thresholds."
product_area: Solution Manager
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

# Thresholds

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Available Thresholds in OpCon are shown in the following Grid under Library -> Thresholds.
![Resource Grid](../../../../../Resources/Images/SM/Library/Thresholds/Threshold-Grid.png "Resource Grid")

Select the **Add** or **Edit** button to open the add/edit screen:
![Resource Add](../../../../../Resources/Images/SM/Library/Thresholds/Threshold-Add.png "Threshold Add Screen")

:::note
The **Name** field is unique across Resources _and_ Thresholds
:::

Select the **Cross References** button to see the list of master and daily jobs that use a particular Threshold:
![Threshold CrossReferences](../../../../../Resources/Images/SM/Library/Thresholds/Threshold-CrossReference.png "Threshold Cross References")

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Thresholds do?**

viewport: width=device-width, initial-scale=1.0

**Q: Where can you find Thresholds in OpCon?**

Access Thresholds through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
