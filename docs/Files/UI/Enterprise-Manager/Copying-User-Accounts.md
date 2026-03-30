---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying User Accounts
description: "Use this procedure to copy User Accounts in the Enterprise Manager."
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

#  Copying User Accounts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy User Accounts in the Enterprise Manager.

To copy a user account, complete the following steps:

1.  Select on **User Accounts** under the **Security** topic. The **User Accounts** screen displays
2.  In the **Select User** list, select the **user name** to copy
3.  Select **Copy** on the **User Accounts** toolbar. The **Copy User** dialog displays
4.  Enter the *new user name*
5.  Select **OK**
6.  Select **Close ☒** (to the right of the **User Accounts** tab) to close the **User Accounts** screen
:::

## When Would You Use It?

- An existing User Accounts definition needs to be duplicated in Enterprise Manager
- A new User Accounts with similar settings to an existing one needs to be created quickly

## Why Would You Use It?

- **Save configuration time**: Duplicating an existing User Accounts eliminates redundant data entry and ensures the new definition inherits proven settings

## FAQs

**Q: Why would you copy user accounts instead of creating a new one?**

Copying user accounts is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying user accounts require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original user accounts record.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.
