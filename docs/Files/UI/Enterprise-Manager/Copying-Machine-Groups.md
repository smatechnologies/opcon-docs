---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Machine Groups
description: "Use this procedure to copy Machine Groups in the Enterprise Manager."
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

#  Copying Machine Groups

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Machine Groups in the Enterprise Manager.

To copy a machine group, complete the following steps:

1.  Select on **Machine Groups** under the **Administration** topic. The **Machine Groups** screen displays
2.  Select the **machine group** in the **Select Machine Group** list, or select the **Find** button to locate the machine group
3.  Select the **Copy** button on the **Machines Groups** toolbar. The **Copy Machine Group** dialog displays
4.  Select the **OK** button
5.  Select **Close ☒** (to the right of the **Machine Groups** tab) to close the **Machine Groups** screen

## When Would You Use It?

- An existing Machine Groups definition needs to be duplicated in Enterprise Manager
- A new Machine Groups with similar settings to an existing one needs to be created quickly

## Why Would You Use It?

- **Save configuration time**: Duplicating an existing Machine Groups eliminates redundant data entry and ensures the new definition inherits proven settings

## FAQs

**Q: Why would you copy machine groups instead of creating a new one?**

Copying machine groups is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying machine groups require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original machine groups record.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
