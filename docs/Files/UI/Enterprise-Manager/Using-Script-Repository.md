---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Script Repository
description: "The Script Repository editor stores job scripts in the OpCon database."
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

# Using Script Repository

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Script Repository** editor stores job scripts in the OpCon database. Scripts can be sent to any Agent machine that supports the [runner](Managing-Script-Runners.md) for that script. For more information, refer to [Embedded Scripts](../../../automation-concepts/embedded-scripts.md) in the **Concepts** online help.

In the Script Repository, you can:

- Browse a host file system to select and import a script file
- Edit and update the content of a script
- Create versions of a script to associate the correct version with a job
- Delete a script or any versions of a script

## Script Repository Toolbar

The toolbar resides at the top-right corner of the screen.

![Script Repository toolbar](../../../Resources/Images/EM/EMscriptstoolbar.png "Script Repository toolbar")

## Right-click Menu

right-clicking on a script opens a menu with the same options as the toolbar.

Related Topics

- [Adding Scripts](Adding-Scripts.md)
- [Editing Scripts](Editing-Scripts.md)
- [Deleting Scripts](Deleting-Scripts.md)
- [Showing Script Cross References](Showing-Script-Cross-References.md)
- [Creating Script Versions](Creating-Script-Versions.md)
- [Editing Script Versions](Editing-Script-Versions.md)
- [Deleting Script Versions](Deleting-Script-Versions.md)
- [Showing Script Version Cross References](Showing-Script-Version-Cross-References.md)
- [Deploying Script Versions](Deploying-Script-Versions.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What can you do with Script Repository?**

Script Repository allows you to script repository toolbar, right-click menu.

**Q: Who has access to Script Repository?**

Access to Script Repository is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**Embedded Script**: A script stored and versioned directly within the OpCon database. Embedded scripts can be assigned to Windows jobs and run at runtime without requiring the script file to exist on the target machine.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
