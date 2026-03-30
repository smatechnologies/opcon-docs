---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Named Schedule Instance Definitions
description: "Use Copy functionality to replace properties or exceptions in a target named instance with those from a source instance."
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

#  Copying Named Schedule Instance Definitions

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use Copy functionality to replace properties or exceptions in a target named instance with those from a source instance.

To copy named instance definitions, complete the following steps:

1.  Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2.  Select the **schedule** in the **Schedule Selection** list
3.  Select the **Instance Definition** tab in the **Schedule Details** frame
4.  Select on the **instance name** that is the source of the definitions to copy
5.  Select the target **named instance(s)** from the **Instance(s) to Replace** field
6.  Select the **Replace Properties** and/or **Replace Exceptions** radio button(s) to specify which details to replicate
7.  Select **OK**
8.  Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
9.  Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen
:::

## When Would You Use It?

- An existing Named Schedule Instance Definitions definition needs to be duplicated in Enterprise Manager
- A new Named Schedule Instance Definitions with similar settings to an existing one needs to be created quickly

## Why Would You Use It?

- **Save configuration time**: Duplicating an existing Named Schedule Instance Definitions eliminates redundant data entry and ensures the new definition inherits proven settings

## FAQs

**Q: Why would you copy named schedule instance definitions instead of creating a new one?**

Copying named schedule instance definitions is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying named schedule instance definitions require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original named schedule instance definitions record.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
