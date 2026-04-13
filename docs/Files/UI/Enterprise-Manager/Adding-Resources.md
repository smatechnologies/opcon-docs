---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Adding Resources
description: "Use this procedure to add Resources in the Enterprise Manager."
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

#  Adding Resources

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Resources in the Enterprise Manager.

To add a resource, complete the following steps:

1.  Select on **Resources** under the **Administration** topic. The **Resources** screen displays
2.  Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Resources** toolbar
3.  Enter an *alphanumeric name* in the **Resource Name** text box
4.  *(Optional)* Enter the documentation in the **Documentation** text box
5.  Enter a *numeric limit* (default = 0) in the **Max Resources** box
6.  Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Resources** toolbar
7.  Select **Close ☒** (to the right of the **Resources** tab) to close the **Resources** screen
:::

## FAQs

**Q: What information is required to add resources?**

The required fields include **Resource Name**. Select **Save** on the toolbar to save the new record.

**Q: Is documentation required when adding resources?**

No. The Documentation field is optional. You can enter notes about the resources to track its purpose, but it is not required to save the record.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
