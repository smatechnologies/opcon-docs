---
title: Managing Remote Instances
description: "The Remote Instances editor defines and manages connection information for accessing remote instances of OpCon."
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

# Managing Remote Instances

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Remote Instances** editor defines and manages connection information for accessing remote instances of OpCon. For conceptual information, refer to [Remote Instances](../../../objects/remote-instances.md) in the **Concepts** online help.

:::note
Only users in the ocadm role can add, edit, or delete remote instances.
:::

## When Would You Use It?

- You need to review or update Remote Instances settings in Enterprise Manager
- Remote Instances needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Remote Instances management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Remote Instances changes are captured in the OpCon audit system, supporting change management and compliance processes

## Remote Instances Toolbar

The **Remote Instances** editor has a toolbar for managing remote instances. Select on any specific icon on the toolbar below to learn more about its functionality.

![Remote Instances toolbar](../../../Resources/Images/EM/EMdashboardtoolbar.png "Remote Instances toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Remote Instances](Adding-Remote-Instances.md)
- [Editing Remote Instances](Editing-Remote-Instances.md)
- [Deleting Remote Instances](Deleting-Remote-Instances.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing remote instances involve?**

Managing remote instances includes Remote Instances Toolbar. Access remote instances through the Enterprise Manager navigation pane.

**Q: Who can manage remote instances in OpCon?**

Users with the appropriate privileges assigned through their role can manage remote instances. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
