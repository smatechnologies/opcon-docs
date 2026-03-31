---
title: Managing Access Codes
description: "The Access Codes editor defines and maintains OpCon Access Codes."
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

# Managing Access Codes

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Access Codes** editor defines and maintains OpCon Access Codes. It contains a list of all access codes and related documentation. For conceptual information, refer to [Access Codes](../../../objects/access-codes.md) in the **Concepts** online help.

## When Would You Use It?

- You need to review or update Access Codes settings in Enterprise Manager
- Access Codes needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Access Codes management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Access Codes changes are captured in the OpCon audit system, supporting change management and compliance processes

## Access Codes Toolbar

The **Access Codes** editor toolbar provides functions for managing access codes. Select any icon below to learn more about its functionality.

![Access Codes toolbar](../../../Resources/Images/EM/EMcalendarstoolbar.png "Access Codes toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Access Codes](Adding-Access-Codes.md)
- [Copying Access Code](Copying-Access-Codes.md)
- [Granting Privileges to Access Codes](Managing-Access-Codes-Privileges.md#Granting)
- [Adding Access Codes to Jobs](Adding-Access-Codes-to-Jobs.md)
- [Renaming Access Codes](Renaming-Access-Codes.md)
- [Deleting Access Codes](Deleting-Access-Codes.md)
- [Viewing Additional Access Code Information](Viewing-Additional-Access-Code-Info.md)


## FAQs

**Q: What does managing access codes involve?**

Managing access codes includes Access Codes Toolbar. Access access codes through the Enterprise Manager navigation pane.

**Q: Who can manage access codes in OpCon?**

Users with the appropriate privileges assigned through their role can manage access codes. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
