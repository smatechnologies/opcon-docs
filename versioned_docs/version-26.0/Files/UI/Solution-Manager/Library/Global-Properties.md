---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Global Properties
description: "Global Properties in OpCon are listed in the grid under Library > Global Properties."
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

# Managing Global Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Global Properties in OpCon are listed in the grid under Library > Global Properties. Select the Add, Edit, or Copy button to open the Global Property Editor.

![Managing Library](../../../../Resources/Images/SM/Library/ManagingLibrary/ManagingGlobalProperties.png "Managing Library")

## When Would You Use It?

- You need to review or update Global Properties settings in Solution Manager
- Global Properties needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Global Properties management in Solution Manager reduces the time needed to locate and update settings across the environment
- All Global Properties changes are captured in the OpCon audit system, supporting change management and compliance processes

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing global properties involve?**

Managing global properties includes adding, editing, and deleting records. Access global properties through the Enterprise Manager navigation pane.

**Q: Who can manage global properties in OpCon?**

Users with the appropriate privileges assigned through their role can manage global properties. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
