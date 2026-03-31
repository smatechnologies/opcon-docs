---
title: Setting Preferences from Enterprise Manager
description: "Set display preferences for the Enterprise Manager."
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

# Setting Preferences from Enterprise Manager

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Set display preferences for the Enterprise Manager.

To set the preferences, complete the following steps:

1. Open the Enterprise Manager application
2. Go to **EnterpriseManager > Preferences**. The **Preferences** dialog displays
3. Select **Enterprise Manager** if not selected by default
4. *(Optional)* Select or clear the **Restore state at startup** option (selected by default)
5. *(Optional)* Select or clear the **Check for updates at startup** option (selected by default)
6. *(Optional)* Select the **Use a tree for navigation** option to view navigation topics in tree format (selected by default). Clear it to view navigation topics in sections
7. *(Optional)* Select the **Open editors maximized** option to have editors open at full EM size (selected by default)
8. *(Optional)* In the **Database polling interval (seconds)** field, enter a number of seconds (default: 10; valid range: 1–99)
9. *(Optional)* In the **Idle time before logout (min)** field, enter the number of inactivity minutes before auto-logoff (default and maximum: 60). Enter 0 to disable
10. *(Optional)* In the **Days to maintain in daily** field, enter the number of days to retain schedules and jobs. Enter 0 to disable
11. *(Optional)* Select the **Show Job Containers** option to display Container jobs in the **Matrix** and count them in the **Pie Chart** (selected by default)
12. *(Optional)* Select the **level** in the **Logging Level** list
13. Select **Apply** to save the changes
14. Select the arrow (![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)) next to **Enterprise Manager** in the Preferences tree to expand and access more preference options
15. Select **OK** to save and close the **Preferences** dialog

## When Would You Use It?

- Set display preferences for the Enterprise Manager

## Why Would You Use It?

- **Setting Preferences**: Set display preferences for the Enterprise Manager

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Setting Preferences from Enterprise Manager procedure involve?**

The Setting Preferences from Enterprise Manager procedure involves 15 steps. Complete all steps in order and save your changes.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
