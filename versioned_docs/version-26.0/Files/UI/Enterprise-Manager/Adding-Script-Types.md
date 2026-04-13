---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Adding Script Types
description: "Use this procedure to add Script Types in the Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

#  Adding Script Types

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Script Types in the Enterprise Manager.

To add a script type, complete the following steps:

1.  Select on **Types** under the **Scripts** topic. The **Script Types** screen displays
2.  Select **Add Type** on the toolbar. The **Add Script Type** dialog displays
3.  Enter a *name* for the script type (e.g., PERL)
4.  *(Optional)* Enter the *file extension* for the script type (e.g., pl)
5.  *(Optional)* Enter a *description* for the script type
6.  Select **Save** in the dialog
7.  Select **Close ☒** (to the right of the **Script Types** tab) to close the **Script Types** screen
:::

## FAQs

**Q: How do you save a new script types record?**

After completing the required fields, select the **Save** button on the toolbar to save the script types record.

**Q: Is documentation required when adding script types?**

No. The Documentation field is optional. You can enter notes about the script types to track its purpose, but it is not required to save the record.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
