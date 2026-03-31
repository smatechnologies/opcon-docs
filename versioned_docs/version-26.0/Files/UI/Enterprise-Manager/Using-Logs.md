---
title: Using Logs
description: "The Logs option provides links to display the SAM server log files."
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

# Using Logs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Logs** option provides links to display the [SAM server log files](Types-of-Logs.md). To enable this feature, share the **OpConxps** folder on the SAM server and configure the Enterprise Manager connection profile to point to that directory. For more information, refer to [Setting up New Profiles](Managing-Connection-Profiles.md) and [Setting Preferences for Log Viewer](Preferences-for-Log-Viewer.md).

## Logs Toolbar and Right-click Menu

The **Logs** have a standard toolbar for managing logs. Select any icon to learn more about its functionality. All toolbar options are also available by right-clicking inside any log you are viewing.

![Logs toolbar](../../../Resources/Images/EM/EMlogstoolbar.png)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Logs?**

Logs allows you to logs toolbar and right-click menu.

**Q: Who has access to Logs?**

Access to Logs is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
