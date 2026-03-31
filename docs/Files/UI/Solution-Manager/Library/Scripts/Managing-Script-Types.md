---
title: Managing Script Types
description: "The Script Types module allows you to add, edit, delete, and check cross-references for script types."
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

# Managing Script Types

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Script Types** module allows you to add, edit, delete, and check cross-references for script types.

### Creating Script Types

To create Script Types, complete the following steps:

1. Select the Add button above the list
   ![A screen showing script types module with location of add button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Add-Type-01.png "Add Script Type Button")
2. Fill out the Script Type form
   ![A screen showing add script type form](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Add-Type-02.png "Add Script Type Form")

### Editing Script Types

To edit Script Types, complete the following steps:

1. Select a Script Type and select the Edit button above the list
   ![A screen showing script types module with location of edit button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Edit-Type-01.png "Edit Script Type Button")
2. Fill out the Script Type form
   ![A screen showing edit script type form](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Edit-Type-02.png "Edit Script Type Form")

### Deleting Script Types

To delete Script Types, complete the following steps:

1. Select a Script Type and select the Delete button above the list
   ![A screen showing script types module with location of delete button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Delete-Type-01.png "Delete Script Type Button")
2. Select **Yes** to confirm the deletion
   ![A screen asking for confirmation to delete a script type](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Delete-Type-02.png "Delete Script Type Confirmation")

Delete is not allowed if the Script Type has cross-references.
![A screen showing cross references of a script type](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Delete-Type-02-Cross-Refs.png "Delete Script Type with Cross References")

### Checking Cross References

To check Cross References, complete the following steps:

1. Select a Script Type and select the Cross References button above the list
   ![A screen showing script types module with location of cross references button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Type-01.png "Script Type Cross References Button")
2. A dialog will show the Cross References
   ![A screen showing cross references of a script](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Type-02.png "Script Type Cross References Dialog")

![White "person reading" icon on blue circular background](../../../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Managing Scripts](Managing-Scripts.md)
- [Managing Script Versions](Managing-Script-Versions.md)
- [Managing Script Runners](Managing-Script-Runners.md)

## FAQs

**Q: What does managing script types involve?**

Managing script types includes adding, editing, and deleting records. Access script types through the Enterprise Manager navigation pane.

**Q: Who can manage script types in OpCon?**

Users with the appropriate privileges assigned through their role can manage script types. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
