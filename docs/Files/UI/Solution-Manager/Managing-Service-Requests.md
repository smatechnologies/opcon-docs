---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Service Requests
description: "Select on one of the buttons at top-right corner of each Service Request to edit, copy, or delete that Service Request."
product_area: Solution Manager
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

# Managing Service Requests

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Select on one of the buttons at top-right corner of each Service Request to [edit](Editing-Service-Requests.md), [copy](Copying-Service-Requests.md), or [delete](Deleting-Service-Requests.md) that Service Request.

### Service Request Button Management Options

![Service Request Management Options](../../../Resources/Images/SM/Managing-Service-Requests.png "Service Request Management Options")

### ![Related Topics](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon") Related Topics

- [Enabling Admin Mode Editing](Enabling-Admin-Mode-Editing.md)
- [Creating Service Requests](Creating-Service-Requests.md)

## When Would You Use It?

- You need to review or update Service Requests settings in Solution Manager
- Service Requests needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Service Requests management in Solution Manager reduces the time needed to locate and update settings across the environment
- All Service Requests changes are captured in the OpCon audit system, supporting change management and compliance processes


## FAQs

**Q: What does managing service requests involve?**

Managing service requests includes adding, editing, and deleting records. Access service requests through the Enterprise Manager navigation pane.

**Q: Who can manage service requests in OpCon?**

Users with the appropriate privileges assigned through their role can manage service requests. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Service Request**: A Solution Manager feature that lets operators trigger predefined automation workflows using a simple form. Service Requests encapsulate schedule builds, job submissions, or events without requiring direct access to schedule definitions.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
