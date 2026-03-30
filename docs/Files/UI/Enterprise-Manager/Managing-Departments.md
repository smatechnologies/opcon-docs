---
title: Managing Departments
description: "The Departments editor defines and maintains OpCon Departments."
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

# Managing Departments

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Departments** editor defines and maintains OpCon Departments. It contains a list of department names and related documentation. For conceptual information, refer to [Departments](../../../objects/departments.md) in the **Concepts** online help.

## When Would You Use It?

- You need to review or update Departments settings in Enterprise Manager
- Departments needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Departments management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Departments changes are captured in the OpCon audit system, supporting change management and compliance processes

## Departments Toolbar

The **Departments** editor has a toolbar for managing departments. Select any icon on the toolbar below to learn more about its functionality.

![Departments toolbar](../../../Resources/Images/EM/EMcalendarstoolbar.png "Departments toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Departments](Adding-Departments.md)
- [Copying Departments](Copying-Departments.md)
- [Granting Department Function Privileges](Managing-Dept-Function-Privileges.md#Granting)
- [Adding Departments to Job Details](Adding-Departments-to-Job-Details.md)
- [Renaming Departments](Renaming-Departments.md)
- [Deleting Departments](Deleting-Departments.md)
- [Viewing Additional Department Information](Viewing-Additional-Department-Info.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing departments involve?**

Managing departments includes Departments Toolbar. Access departments through the Enterprise Manager navigation pane.

**Q: Who can manage departments in OpCon?**

Users with the appropriate privileges assigned through their role can manage departments. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
