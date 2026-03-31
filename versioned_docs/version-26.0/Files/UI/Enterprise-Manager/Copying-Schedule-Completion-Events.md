---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Schedule Completion Events
description: "Use this procedure to copy Schedule Completion Events in the Enterprise Manager."
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

#  Copying Schedule Completion Events

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Schedule Completion Events in the Enterprise Manager.

To copy a schedule completion event, complete the following steps:

1.  Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2.  Select the **schedule** in the **Schedule Selection** list
3.  Select the **Event** tab in the **Schedule Details** frame
4.  Right-click on the **event** in the **Schedule Completion Events** list and select **Copy**
5.  Select another **Schedule** in the **Schedule** list
6.  Select the **Event** tab in the **Schedule Details** frame
7.  Right-click inside the **Schedule Completion Events** list and select **Paste**. The **Event Definition Wizard** displays with the **Event Parameters** text box pre-populated
8.  Make any necessary changes, then select **Finish**
9.  Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen
:::

## FAQs

**Q: Why would you copy schedule completion events instead of creating a new one?**

Copying schedule completion events is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying schedule completion events require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original schedule completion events record.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
