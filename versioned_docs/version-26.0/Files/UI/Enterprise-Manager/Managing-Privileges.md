---
title: Managing Privileges
description: "Select the !Expand arrow to the left of Privileges under the Security topic in the Navigation Panel to expand the following privilege types: - Access Codes Privileges - Schedule Privileges - Function."
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

# Managing Privileges

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) arrow to the left of **Privileges** under the **Security** topic in the **Navigation Panel** to expand the following privilege types:

- [Access Codes Privileges](Managing-Access-Codes-Privileges.md)
- [Schedule Privileges](Managing-Schedule-Privileges.md)
- [Function Privileges](Managing-Function-Privileges.md)
- [Departmental Function Privileges](Managing-Dept-Function-Privileges.md)
- [Batch User Privileges](Managing-Batch-User-Privileges.md)
- [Machine Privileges](Managing-Machine-Privileges.md)
- [Machine Group Privileges](Managing-Machine-Group-Privileges.md)
- [Script Privileges](Managing-Script-Privileges.md)

## When Would You Use It?

- You need to review or update Privileges settings in Enterprise Manager
- Privileges needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Privileges management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Privileges changes are captured in the OpCon audit system, supporting change management and compliance processes


## FAQs

**Q: What does managing privileges involve?**

Managing privileges includes adding, editing, and deleting records. Access privileges through the Enterprise Manager navigation pane.

**Q: Who can manage privileges in OpCon?**

Users with the appropriate privileges assigned through their role can manage privileges. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
