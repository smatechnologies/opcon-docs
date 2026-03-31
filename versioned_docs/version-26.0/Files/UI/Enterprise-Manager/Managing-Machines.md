---
title: Managing Machines
description: "The Machines editor defines and maintains OpCon Machines, providing a list of machines, general settings (e.g., Socket Number, NetComName, IP address), machine group assignments, and communication."
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

# Managing Machines

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Machines** editor defines and maintains OpCon Machines, providing a list of machines, general settings (e.g., Socket Number, NetComName, IP address), machine group assignments, and communication status. For conceptual information, refer to [Machines](../../../objects/machines.md) in the **Concepts** online help.

:::note
Before adding a new machine, verify with the OpCon administrator that there is an available license for the machine. If a license is unavailable, contact Continuous Technical Support([<support@smatechnologies.com>]).
:::

## When Would You Use It?

- You need to review or update Machines settings in Enterprise Manager
- Machines needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Machines management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Machines changes are captured in the OpCon audit system, supporting change management and compliance processes

## Machines Toolbar

The **Machines** editor has a toolbar for managing machines. Select on any specific icon on the toolbar below to learn more about its functionality.

![Machines toolbar](../../../Resources/Images/EM/EMcalendarstoolbar.png "Machines toolbar")

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Adding Machines](Adding-Machines.md)
- [Configuring Advanced Machine Properties](Configuring-Advanced-Machine-Properties.md)
- [Adjusting Stop/Start Communication with Machines](Adjusting-Stop_Start-Communication.md)
- [Disabling/Enabling Job Starts for Machines](Disabling-and-Enabling-Job-Starts.md)
- [Viewing Additional Machine Information](Viewing-Additional-Machine-Info.md)
- [Copying Machines](Copying-Machines.md)
- [Editing Machines](Editing-Machines.md)
- [Adding Machines to Machine Groups](Adding-Machines-to-Machine-Groups.md)
- [Removing Machines from Machine Groups](Removing-Machines-from-Machine-Groups.md)
- [Changing Case of Machine Names](Changing-Case-of-Machine-Names.md)
- [Deleting Machines](Deleting-Machines.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing machines involve?**

Managing machines includes Machines Toolbar. Access machines through the Enterprise Manager navigation pane.

**Q: Who can manage machines in OpCon?**

Users with the appropriate privileges assigned through their role can manage machines. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
