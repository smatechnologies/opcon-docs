---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Adding Scripts
description: "Use this procedure to add Scripts in the Enterprise Manager."
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

#  Adding Scripts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Scripts in the Enterprise Manager.

:::note
By default, new scripts are assigned to the role of a user who belongs to only one role.

Users who are super users (ocadm role or All UI Functions) or members of more than one role are prompted with an **Assign Script Roles** dialog during script creation. If role assignment is bypassed, only OpCon users with adequate privileges can later assign roles using the [Script Privileges](Managing-Script-Privileges.md) editor.
:::

To add a script, complete the following steps:

1. Select on **Repository** under the **Scripts** topic. The **Script Repository** screen displays
2. Select **Add** on the toolbar. The **Add Script** dialog displays
3. Enter a *name* for the script

:::note
Continuous recommends including the script type as a prefix or suffix in the name for easier searching in the job definition.
:::

4. Enter a *description* for the script
5. Provide the *script content* by typing in the **Scripts** text box or selecting **Open File** to import a script file

:::note
You can import and store up to a 900KB script file per version.
:::

6. Select the **script type** from the **Type** list. To add a new script type:
   a. Select **Add** next to the **Type** list.
   b. Enter the *information* in the **Add Script Type** dialog.
   c. Select **Save** in the **Add Script Type** dialog.
   d. Select the **newly-added script type** from the **Type** list.
7. Enter *any relevant notes or comments* about the script
8. Select **Save** in the **Add Script** dialog
9. *(If prompted)* Assign a role or roles in the **Assign Script Roles** dialog and select **Save**
10. Select **Close ☒** (to the right of the **Script Repository** tab) to close the **Script Repository** screen

## FAQs

**Q: How do you save a new scripts record?**

After completing the required fields, select the **Save** button on the toolbar to save the scripts record.

## Glossary

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
