---
title: Managing Global Properties
description: "The Global Properties editor defines and maintains OpCon Properties."
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

# Managing Global Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Global Properties** editor defines and maintains OpCon Properties. It provides a list of global properties and their values. For conceptual information, refer to [Properties](../../../objects/properties.md) in the **Concepts** online help.

## When Would You Use It?

- You need to review or update Global Properties settings in Enterprise Manager
- Global Properties needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Global Properties management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Global Properties changes are captured in the OpCon audit system, supporting change management and compliance processes

## Global Properties Toolbar

The **Global Properties** editor has a toolbar for managing global properties. Select any icon on the toolbar below to learn more about its functionality.

![Global Properties toolbar](../../../Resources/Images/EM/EMglobalpropertytoolbar.png "Global Properties toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Global Properties](Adding-Global-Properties.md)
- [Editing Global Properties](Editing-Global-Properties.md)
- [Copying Global Properties](Copying-Global-Properties.md)
- [Adding User-defined System Properties](Adding-System-Properties.md)
- [Deleting Global Properties](Deleting-Global-Properties.md)


## FAQs

**Q: What does managing global properties involve?**

Managing global properties includes Global Properties Toolbar. Access global properties through the Enterprise Manager navigation pane.

**Q: Who can manage global properties in OpCon?**

Users with the appropriate privileges assigned through their role can manage global properties. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
