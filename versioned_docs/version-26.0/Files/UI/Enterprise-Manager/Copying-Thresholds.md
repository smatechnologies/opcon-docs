---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Thresholds
description: "Use this procedure to copy Thresholds in the Enterprise Manager."
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

#  Copying Thresholds

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Thresholds in the Enterprise Manager.

To copy a threshold, complete the following steps:

1.  Select on **Thresholds** under the **Administration** topic. The **Thresholds** screen displays
2.  Select a **threshold** in the **Select Threshold** list, or select **Find** to locate the threshold
3.  Select **Copy** on the **Thresholds** toolbar. The **Copy** dialog displays
4.  Enter a new *threshold name*
5.  Select **OK**
6.  Select **Close ☒** (to the right of the **Thresholds** tab) to close the **Thresholds** screen
:::

## FAQs

**Q: Why would you copy thresholds instead of creating a new one?**

Copying thresholds is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying thresholds require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original thresholds record.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can check or update threshold values as dependencies or actions.
