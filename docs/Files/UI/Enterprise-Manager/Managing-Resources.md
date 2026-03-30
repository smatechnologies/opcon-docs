---
title: Managing Resources
description: "The Resources editor defines and maintains OpCon Resources, providing a list of Resources and their corresponding values."
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

# Managing Resources

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Resources** editor defines and maintains OpCon Resources, providing a list of Resources and their corresponding values. For additional information, refer to [Resources](../../../objects/resources.md) in the **Concepts** online help.

## When Would You Use It?

- You need to review or update Resources settings in Enterprise Manager
- Resources needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Resources management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Resources changes are captured in the OpCon audit system, supporting change management and compliance processes

## Resources Toolbar

The **Resources** editor has a toolbar for managing resources. Select on any specific icon on the toolbar below to learn more about its functionality.

![Resources toolbar](../../../Resources/Images/EM/EMcalendarstoolbar.png "Resources toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Resources](Adding-Resources.md)
- [Resetting Resources in Use](Resetting-Resources-in-Use.md)
- [Editing Resources](Editing-Resources.md)
- [Viewing Additional Resource Information](Viewing-Additional-Resource-Info.md)
- [Copying Resources](Copying-Resources.md)
- [Deleting Resources](Deleting-Resources.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing resources involve?**

Managing resources includes Resources Toolbar. Access resources through the Enterprise Manager navigation pane.

**Q: Who can manage resources in OpCon?**

Users with the appropriate privileges assigned through their role can manage resources. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
