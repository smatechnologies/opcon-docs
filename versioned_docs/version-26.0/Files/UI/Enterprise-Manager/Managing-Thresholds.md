---
title: Managing Thresholds
description: "The Thresholds editor defines and maintains OpCon Thresholds, displaying a list of thresholds and their corresponding values."
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

# Managing Thresholds

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Thresholds** editor defines and maintains OpCon Thresholds, displaying a list of thresholds and their corresponding values. For additional information, refer to [Thresholds](../../../objects/thresholds.md) in the **Concepts** online help.

## When Would You Use It?

- You need to review or update Thresholds settings in Enterprise Manager
- Thresholds needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Thresholds management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Thresholds changes are captured in the OpCon audit system, supporting change management and compliance processes

## Thresholds Toolbar

The toolbar allows you to perform threshold management functions. Select any icon to learn more about its functionality.

![Thresholds toolbar](../../../Resources/Images/EM/EMcalendarstoolbar.png "Thresholds toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Thresholds](Adding-Thresholds.md)
- [Editing Thresholds](Editing-Thresholds.md)
- [Viewing Additional Threshold Information](Viewing-Additional-Threshold-Info.md)
- [Copying Thresholds](Copying-Thresholds.md)
- [Deleting Thresholds](Deleting-Thresholds.md)


## FAQs

**Q: What does managing thresholds involve?**

Managing thresholds includes Thresholds Toolbar. Access thresholds through the Enterprise Manager navigation pane.

**Q: Who can manage thresholds in OpCon?**

Users with the appropriate privileges assigned through their role can manage thresholds. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
