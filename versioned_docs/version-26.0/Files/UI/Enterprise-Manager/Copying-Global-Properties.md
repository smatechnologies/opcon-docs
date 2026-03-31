---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Global Properties
description: "Use this procedure to copy Global Properties in the Enterprise Manager."
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

#  Copying Global Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Global Properties in the Enterprise Manager.

To copy a global property, complete the following steps:

1.  Select on **Global Properties** under the **Administration** topic. The **Global Properties** screen displays
2.  Select a **global property** in the **Global Properties** list, or select the **Find** button to locate the property
3.  Select the **Copy** button on the **Global Property** toolbar. The **Copy Global Property** dialog displays
4.  Enter a new *global property name*
5.  Select the **OK** button
6.  Select **Close ☒** (to the right of the **Global Properties** tab) to close the **Global Properties** screen

## When Would You Use It?

- An existing Global Properties definition needs to be duplicated in Enterprise Manager
- A new Global Properties with similar settings to an existing one needs to be created quickly

## Why Would You Use It?

- **Save configuration time**: Duplicating an existing Global Properties eliminates redundant data entry and ensures the new definition inherits proven settings

## FAQs

**Q: Why would you copy global properties instead of creating a new one?**

Copying global properties is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying global properties require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original global properties record.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using the [[PropertyName]] syntax to pass dynamic values at runtime.
