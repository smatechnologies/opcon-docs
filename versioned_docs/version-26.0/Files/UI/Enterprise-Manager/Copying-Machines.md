---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Machines
description: "Use this procedure to copy Machines in the Enterprise Manager."
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

#  Copying Machines

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Machines in the Enterprise Manager.

To copy a machine, complete the following steps:

1.  Select on **Machines** under the **Administration** topic. The **Machines** screen displays
2.  Select a **machine** in the **Select Machine** list, or select the **Find** button to locate the machine
3.  Select the **Copy** button on the **Machines** toolbar. The **Copy Machine** dialog displays
4.  Enter a new *machine name*
5.  Select the **OK** button
6.  Select **Close ☒** (to the right of the **Machines** tab) to close the **Machines** screen

## When Would You Use It?

- An existing Machines definition needs to be duplicated in Enterprise Manager
- A new Machines with similar settings to an existing one needs to be created quickly

## Why Would You Use It?

- **Save configuration time**: Duplicating an existing Machines eliminates redundant data entry and ensures the new definition inherits proven settings

## FAQs

**Q: Why would you copy machines instead of creating a new one?**

Copying machines is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying machines require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original machines record.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
