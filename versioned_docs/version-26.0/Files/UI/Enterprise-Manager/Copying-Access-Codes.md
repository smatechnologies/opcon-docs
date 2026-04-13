---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Access Codes
description: "Use this procedure to copy Access Codes in the Enterprise Manager."
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

#  Copying Access Codes

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Access Codes in the Enterprise Manager.

To copy an access code, complete the following steps:

1.  Select on **Access Codes** under the **Security** topic. The **Access Codes** screen displays
2.  Select the **access code** in the **Select Access Code** list
3.  Select the **Copy** button on the **Access Codes** toolbar. The **Copy Access Code** dialog displays
4.  Enter the *new access code name*
5.  Select the **OK** button
6.  Select **Close ☒** (to the right of the **Access Codes** tab) to close the **Access Codes** screen

## FAQs

**Q: Why would you copy access codes instead of creating a new one?**

Copying access codes is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying access codes require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original access codes record.

## Glossary


**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching privilege to view or act on objects tagged with a given Access Code.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.
