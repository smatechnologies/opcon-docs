---
title: Setting Preferences for External Tools
description: "Use this procedure to set Preferences for External Tools in the Enterprise Manager."
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

# Setting Preferences for External Tools

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to set Preferences for External Tools in the Enterprise Manager.

To set the preferences, complete the following steps:

1. Open the Enterprise Manager application
2. Go to **EnterpriseManager > Preferences**. The **Preferences** dialog displays
3. Select the arrow (![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow ")) next to **Enterprise Manager** in the Preferences tree to expand the list
4. Select **External Tools**. The **External Tools** settings display to the right
5. Enter the *OpCon Installation Directory* in the text box to enable opening the Schedule Import Export utility. Alternatively, select **Browse** and select the **directory**
6. *(Optional)* Select **Restore Defaults** to clear all values
7. Select **Apply** to save the changes
8. Select **OK** to save and close the **Preferences** dialog

## When Would You Use It?

- To set the preferences:

## Why Would You Use It?

- **Setting Preferences**: To set the preferences:

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Setting Preferences for External Tools procedure involve?**

The Setting Preferences for External Tools procedure involves 8 steps. Complete all steps in order and save your changes.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
