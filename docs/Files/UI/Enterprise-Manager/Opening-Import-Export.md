---
title: Opening Import Export
description: "Learn how to opening import export in OpCon."
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

# Opening Import Export

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

:::warning
Continuous is no longer actively developing the original ImpEx application. Continuous now offers a more advanced and reliable solution, Deploy. ImpEx will no longer receive updates; Deploy is its replacement.
:::

The **Import Export** tool can be opened from within the Enterprise Manager.

To open the tool:

Select on **Import Export** under the **External Tools** topic. The **Log in to Schedule Import/Export** dialog displays.

:::note
For procedures on creating OpCon User Accounts, refer to [Managing User Accounts](Managing-User-Accounts.md).
:::

In the **Username** text box:

a. For manual login, enter a *case-sensitive user login ID* (e.g., ocadm) **or**
b. For first-time automatic login, **do not** enter a username. Schedule Import/Export will get your network login and pass it to the database.

In the **Password** text box:

a. For manual login, enter the *case-sensitive password* for the user **or**
b. For first-time automatic login, **do not** enter a password.

Enter the *data source*.

Select the **OK** button to open **Schedule Import/Export**.

:::note
For conceptual information about the Schedule Import/Export, refer to [Schedule Import/Export](../../../utilities/Graphical-Utilities/Schedule-Import_Export.md) in the **Utilities** online help.
:::

## When Would You Use It?

- The **Import Export** tool can be opened from within the Enterprise Manager

## Why Would You Use It?

- **Opening Import**: The **Import Export** tool can be opened from within the Enterprise Manager

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How do you open Import Export?**

Follow the steps on this page to open Import Export in the Enterprise Manager.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
