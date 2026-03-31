---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Adding Machine Groups
description: "Use this procedure to add Machine Groups in the Enterprise Manager."
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

#  Adding Machine Groups

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Machine Groups in the Enterprise Manager.

To add a machine group, complete the following steps:

1. Select on **Machine Groups** under the **Administration** topic
2. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Machine Groups** toolbar
3. Enter the *machine group name* in the **Name** text box
4. *(Optional)* Enter any *documentation* about the machine group
5. Select the **type of operating system** for the group in the **Machine Type** list
6. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Machine Groups** toolbar
7. *(Optional)* Assign machines to the group:
   - Select a **machine** in the **Unassigned Machines** list to move it directly to **Assigned Machines**, or
   - Use Shift+select or Ctrl+select to select multiple machines, then select the **Right Arrow** to move them
8. Select **Close ☒** (to the right of the **Machine Groups** tab) to close the **Machine Groups** screen

## FAQs

**Q: What information is required to add machine groups?**

The required fields include **Name**. Select **Save** on the toolbar to save the new record.

**Q: Is documentation required when adding machine groups?**

No. The Documentation field is optional. You can enter notes about the machine groups to track its purpose, but it is not required to save the record.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
