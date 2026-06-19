---
title: Managing Script Versions
description: "The Script Versions module allows you to add, edit, delete, deploy, and check cross-references for script versions."
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

# Managing Script Versions

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Script Versions** module allows you to add, edit, delete, deploy, and check cross-references for script versions.

### Creating Script Versions

To create a script version, complete the following steps:

1. Select a script, then select the **New Script Version** button above the Script Version list.

<!--
   ![A screen showing script versions module with location of add button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Add-Version-01.png "Add Script Version Button")
-->

2. Fill out the Script Version form.

<!--
   ![A screen showing add script version form](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Add-Version-02.png "Add Script Version Form")
-->

:::note
Editor Language is only for formatting the syntax highlighter. It has no effect on the script itself.
:::

**Result:** The new script version is saved and appears in the Script Version list.

### Copying Script Versions

Create a new script version based on an existing version.

To copy a script version, complete the following steps:

1. Select a script, select a script version, then select the **Copy** button above the Script Version list.

<!--

   ![A screen showing script versions module with location of copy button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Copy-Version-01.png "Copy Script Version Button")

-->

2. Fill out the Script Version form.

<!--

   ![A screen showing pre-filled edit script version form](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Copy-Version-02.png "Copy Script Version Form")

-->

**Result:** A new script version is created based on the selected version.

### Deleting Script Versions

To delete a script version, complete the following steps:

1. Select a script, select a script version, then select the **Delete** button above the Script Version list.

<!--
   ![A screen showing script versions module with location of delete button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Delete-Version-01.png "Delete Script Version Button")

-->

2. Select **Yes** to confirm the deletion.

<!--
   ![A screen asking for confirmation to delete a script version](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Delete-Version-02.png "Delete Script Version Confirmation")
-->


:::note
The delete operation is not allowed if:
- The script version has cross-references
- The script version is the only version for the script
:::

:::note
If you are deleting the Latest Version of a deployed script, the previous version becomes the new Latest version.

<!--
   ![A screen asking for confirmation to delete a script version with additional information](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Delete-Version-02-Will-Set-Latest.png "Delete Deployed Latest Script Version Confirmation")
-->

:::

**Result:** The script version is deleted from the system.

### Deploying Script Versions

To deploy a script version, complete the following steps:

1. Select a script, select a script version, then select the **Deploy** button above the Script Version list.
2. Complete the deployment steps as described in [Deploying a Script](Managing-Scripts#deploying-a-script).

**Result:** The script version is deployed.

### Checking Cross References

To check cross-references for a script version, complete the following steps:

1. Select a script, select a script version, then select the **Cross References** button above the Script Version list.

<!--
   ![A screen showing script versions module with location of cross references button](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Version-01.png "Script Version Cross References Button")
-->


2. Review the cross-references displayed in the dialog.

<!--
   ![A screen showing cross references of a script version](../../../../../Resources/Images/SM/Library/Scripts/Scripts-Cross-References-Version-02.png "Script Version Cross References Dialog")
-->


**Result:** The dialog displays all jobs and schedules that reference the selected script version.

![White "person reading" icon on blue circular background](../../../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Managing Scripts](Managing-Scripts.md)
- [Managing Script Types](Managing-Script-Types.md)
- [Managing Script Runners](Managing-Script-Runners.md)

## FAQs

**Q: What does managing script versions involve?**

Managing script versions includes adding, copying, deleting, deploying, and checking cross-references for script versions in Solution Manager.

**Q: Who can manage script versions in OpCon?**

Users with the appropriate privileges assigned through their role can manage script versions. Contact your OpCon system administrator if you do not have access.

## Glossary

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
