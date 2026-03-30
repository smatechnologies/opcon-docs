---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Operations
description: "The !Build Button button on the main Operations page takes you to the Schedule Build page where you can manage building schedules."
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

# Managing Operations

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The ![Build Button](../../../Resources/Images/SM/Schedule-Build-Operations-Summary-Build-Button.png "Build Button")
button on the main **Operations** page takes you to the **Schedule Build** page where you can manage building schedules.

<!-- ![Build Button](../Resources/Images/SM/Schedule-Build-Operations-Summary-Build-Button.png "Build Button") -->

Operations Summary Page

![Solution ManagerOperations Summary Build](../../../Resources/Images/SM/Schedule-Build-Operations-Summary.png "Solution ManagerOperations Summary Build")

There are several pages you can use to build and manage schedules. These subsections describe these options in detail.

Please check back for more content.

## When Would You Use It?

- You need to review or update Operations settings in Solution Manager
- Operations needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Operations management in Solution Manager reduces the time needed to locate and update settings across the environment
- All Operations changes are captured in the OpCon audit system, supporting change management and compliance processes

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing operations involve?**

Managing operations includes adding, editing, and deleting records. Access operations through the Enterprise Manager navigation pane.

**Q: Who can manage operations in OpCon?**

Users with the appropriate privileges assigned through their role can manage operations. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
