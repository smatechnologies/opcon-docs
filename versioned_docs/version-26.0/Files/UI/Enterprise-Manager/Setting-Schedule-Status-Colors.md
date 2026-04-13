---
title: Setting Schedule Status Colors
description: "Use this procedure to set Schedule Status Colors in the Enterprise Manager."
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

# Setting Schedule Status Colors

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to set Schedule Status Colors in the Enterprise Manager.

:::note
Select the **Restore Defaults** button in Color Preferences to restore default colors.
:::

To set the preferences, complete the following steps:

1. Open the Enterprise Manager application
2. Go to **EnterpriseManager > Preferences**. The **Preferences** dialog displays
3. Select the arrow (![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow")) next to **Enterprise Manager** in the Preferences tree to expand the list
4. Select **Colors**. The **Colors** settings display to the right
5. Select the **Color** button next to the specific Schedule Status in the **Status Colors** frame
6. Select the color in the **Color** dialog and select **OK**
7. Select **Apply** to save the changes
8. Select **OK** to save and close the **Preferences** dialog

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Setting Schedule Status Colors procedure involve?**

The Setting Schedule Status Colors procedure involves 8 steps. Complete all steps in order and save your changes.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
