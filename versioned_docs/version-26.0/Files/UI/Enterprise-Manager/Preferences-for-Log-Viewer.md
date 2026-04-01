---
title: Setting Preferences for Log Viewer
description: "Use this procedure to set Preferences for Log Viewer in the Enterprise Manager."
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

# Setting Preferences for Log Viewer

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to set Preferences for Log Viewer in the Enterprise Manager.

To set the preferences, complete the following steps:

1. Open the Enterprise Manager application
2. Use menu path: **EnterpriseManager \> Preferences**. The **Preferences** dialog displays
3. Select on the arrow (![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow ")) next to **Enterprise Manager** in the Preferences tree to expand the list
4. Select on **Log Viewer**. The **Log Viewer** settings display to the right
5. *(Optional)* Configure any of the following options:
   - **Remove empty lines** – removes empty lines from log file displays (selected by default)
   - **Use background colors** – applies different background colors per log file (selected by default)
   - **Limit visible lines to** – sets the maximum lines displayed (default: 2000; maximum: 10000)
   - **Log files Charset** – sets the default character set for the language
   - **Select log file** – selects a file to change its background color
   - **Background color** – sets the background color for the selected log file; select **OK** to confirm
6. *(Optional)* Select a **Regular Expression** word to change its color, then select a color and select **OK**
7. Select **Apply**, then **OK** to save and close the **Preferences** dialog

## FAQs

**Q: How many steps does the Setting Preferences for Log Viewer procedure involve?**

The Setting Preferences for Log Viewer procedure involves 7 steps. Complete all steps in order and save your changes.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
