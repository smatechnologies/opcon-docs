---
title: Managing Machine Groups
description: "The Machine Groups editor defines and maintains OpCon Machine Groups."
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

# Managing Machine Groups

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Machine Groups** editor defines and maintains OpCon Machine Groups. It lists machine groups with their machine type and lets you view and edit assigned and unassigned machines. For conceptual information, refer to [Machine Groups](../../../objects/machine-groups.md) in the **Concepts** online help.

## When Would You Use It?

- You need to review or update Machine Groups settings in Enterprise Manager
- Machine Groups needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Machine Groups management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Machine Groups changes are captured in the OpCon audit system, supporting change management and compliance processes

## Machine Groups Toolbar

The **Machine Groups** editor has a toolbar for managing machine groups. Select any icon on the toolbar below to learn more about its functionality.

![Machine Groups toolbar](../../../Resources/Images/EM/EMcalendarstoolbar.png "Machine Groups toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Machine Groups](Adding-Machine-Groups.md)
- [Viewing Additional Machine Group Information](Viewing-Additional-Machine-Group-Info.md)
- [Copying Machine Groups](Copying-Machine-Groups.md)
- [Excluding Machines from Machine Groups](Excluding-Machines-from-Machine-Groups.md)
- [Adding Machine Groups to Jobs details](Adding-Machine-Groups-to-Job-Details.md)
- [Deleting Machine Groups](Deleting-Machine-Groups.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing machine groups involve?**

Managing machine groups includes Machine Groups Toolbar. Access machine groups through the Enterprise Manager navigation pane.

**Q: Who can manage machine groups in OpCon?**

Users with the appropriate privileges assigned through their role can manage machine groups. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
