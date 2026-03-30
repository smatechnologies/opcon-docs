---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Creating Script Versions
description: "Use this procedure to create Script Versions in the Enterprise Manager."
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

#  Creating Script Versions

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to create Script Versions in the Enterprise Manager.

To create a new script version, complete the following steps:

1.  Select on **Repository** under the **Scripts** topic. The **Script Repository** screen displays
2.  Select a **script** in the list
3.  Select **Show/Create Versions** on the toolbar. The **Versions** dialog displays
4.  Select **New**. The **Add Version** dialog displays
5.  Select **Open File** to browse to and locate the script version to import
6.  Enter *notes or comments* about the script version
7.  Select **OK** in the **Add Version** dialog
8.  Select **Close** in the **Versions** dialog
9.  Select **Close ☒** (to the right of the **Script Repository** tab) to close the **Script Repository** screen
:::

## When Would You Use It?

- You need to create Script Versions in Enterprise Manager
- A new business process or automation requirement calls for a Script Versions that does not yet exist

## Why Would You Use It?

- **Standardize definitions**: Creating Script Versions in OpCon ensures consistent, repeatable configurations that all schedules and jobs can reference
- All Script Versions definitions are stored in the OpCon database, making them available to all authorized interfaces and users

## FAQs

**Q: How many steps does the Creating Script Versions procedure involve?**

The Creating Script Versions procedure involves 9 steps. Complete all steps in order and save your changes.

## Glossary


**Embedded Script**: A script stored and versioned directly within the OpCon database. Embedded scripts run on target machines via the agent's script runner and are maintained in the Script Repository.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
