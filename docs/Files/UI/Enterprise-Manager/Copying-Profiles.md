---
title: Copying Profiles
description: "Use this procedure to copy Profiles in the Enterprise Manager."
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

# Copying Profiles

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Profiles in the Enterprise Manager.

To copy a profile, complete the following steps:

1. Open the Enterprise Manager application
2. Go to **EnterpriseManager > Preferences**. The **Preferences** dialog displays
3. Select the arrow (![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow")) next to **Enterprise Manager** in the Preferences tree to expand the list
4. Select **Connection Profiles**. The **Connection Profiles** settings display to the right
5. Select the **Profile** and select **Copy**. The **Copy** dialog displays
6. Enter the new *profile name* and select **OK**

## When Would You Use It?

- An existing Profiles definition needs to be duplicated in Enterprise Manager
- A new Profiles with similar settings to an existing one needs to be created quickly

## Why Would You Use It?

- **Save configuration time**: Duplicating an existing Profiles eliminates redundant data entry and ensures the new definition inherits proven settings

## FAQs

**Q: Why would you copy profiles instead of creating a new one?**

Copying profiles is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying profiles require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original profiles record.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
