---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Resources
description: "Use this procedure to copy Resources in the Enterprise Manager."
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

#  Copying Resources

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Resources in the Enterprise Manager.

To copy a resource, complete the following steps:

1.  Select on **Resources** under the **Administration** topic. The **Resources** screen displays
2.  Select the **resource** in the **Select Resource** list, or select **Find** to locate the resource
3.  Select **Copy** on the **Resources** toolbar. The **Copy Resource** dialog displays
4.  Enter a new *resource name*
5.  Select **OK**
6.  Select **Close ☒** (to the right of the **Resources** tab) to close the **Resources** screen
:::

## FAQs

**Q: Why would you copy resources instead of creating a new one?**

Copying resources is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying resources require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original resources record.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
