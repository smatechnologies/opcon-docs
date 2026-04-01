---
title: Managing Scripts
description: "The Scripts module allows you to add, edit, delete, deploy, and check cross-references for scripts."
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

# Managing Scripts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Scripts** module allows you to add, edit, delete, deploy, and check cross-references for scripts.

### Creating Scripts

To create Scripts, complete the following steps:

1. Select the Add button above the list
   ![A screen showing scripts module with location of add button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Add-Script-01.png "Add Script Button")
2. Fill out the Script form
   ![A screen showing add script form](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Add-Script-02.png "Add Script Form")
   :::note
    1. Editor Language is only for formatting the syntax highlighter. It won't have any effect on the Script itself
    2. Script content will be created as a new Version
   :::

### Editing Scripts

To edit Scripts, complete the following steps:

1. Select a Script and select the Edit button above the list
   ![A screen showing scripts module with location of edit button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Edit-Script-01.png "Edit Script Button")
2. Fill out the Script form
   ![A screen showing edit script form](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Edit-Script-02.png "Edit Script Form")
   :::note
    You cannot edit Script content with this function. To edit Script content, create a new Version.
   :::

### Deleting Scripts

To delete Scripts, complete the following steps:

1. Select a Script and select the Delete button above the list
   ![A screen showing scripts module with location of delete button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Delete-Script-01.png "Delete Script Button")

2. Select Yes to confirm the delete operation
   ![A screen asking for confirmation to delete a script](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Delete-Script-02.png "Delete Script Confirmation")

Delete operation is not allowed if the Script has any cross-references.
![A screen showing cross references of a script](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Delete-Script-02-Cross-Refs.png "Delete Script with Cross References")

### Deploying Scripts

To deploy Scripts, complete the following steps:

1. Select a Script and select the Deploy button above the list
   ![A screen showing scripts module with location of deploy button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Deploy-Script-01.png "Deploy Script Button")
2. Fill out the Script deploy form
   ![A screen showing deploy script form](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Deploy-Script-02.png "Deploy Script Form")

### Checking Cross References

To check Cross References, complete the following steps:

1. Select a Script and select the Cross References button above the list
   ![A screen showing scripts module with location of cross references button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Script-01.png "Script Cross References Button")
2. A dialog will show the Cross References
   ![A screen showing cross references of a script](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Script-02.png "Script Cross References Dialog")

![White "person reading" icon on blue circular background](../../../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Managing Script Versions](Managing-Script-Versions.md)
- [Managing Script Types](Managing-Script-Types.md)
- [Managing Script Runners](Managing-Script-Runners.md)

## FAQs

**Q: What does managing scripts involve?**

Managing scripts includes adding, editing, and deleting records. Access scripts through the Enterprise Manager navigation pane.

**Q: Who can manage scripts in OpCon?**

Users with the appropriate privileges assigned through their role can manage scripts. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
