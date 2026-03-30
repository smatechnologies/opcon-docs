---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Departments
description: "Use this procedure to copy Departments in the Enterprise Manager."
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

#  Copying Departments

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Departments in the Enterprise Manager.

To copy a department, complete the following steps:

1.  Select on **Departments** under the **Security** topic. The **Departments** screen displays
2.  Select the **department** in the **Select a department** list
3.  Select the **Copy** button on the **Departments** toolbar. The **Copy Department** dialog displays
4.  Enter the *new department name*
5.  Select the **OK** button
6.  Select **Close ☒** (to the right of the **Departments** tab) to close the **Departments** screen

## When Would You Use It?

- An existing Departments definition needs to be duplicated in Enterprise Manager
- A new Departments with similar settings to an existing one needs to be created quickly

## Why Would You Use It?

- **Save configuration time**: Duplicating an existing Departments eliminates redundant data entry and ensures the new definition inherits proven settings

## FAQs

**Q: Why would you copy departments instead of creating a new one?**

Copying departments is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying departments require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original departments record.

## Glossary


**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. Used with function privileges to restrict which users can view or manage specific jobs.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.
