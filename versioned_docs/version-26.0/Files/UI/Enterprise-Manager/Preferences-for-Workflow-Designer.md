---
title: Setting Preferences for Workflow Designer and PERT
description: "Use this procedure to set Preferences for Workflow Designer and PERT in the Enterprise Manager."
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

# Setting Preferences for Workflow Designer and PERT

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to set Preferences for Workflow Designer and PERT in the Enterprise Manager.

To set the preferences, complete the following steps:

1. Open the Enterprise Manager application
2. Go to **EnterpriseManager > Preferences**. The **Preferences** dialog displays
3. Select the arrow (![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow")) next to **Enterprise Manager** in the Preferences tree to expand the list
4. Select **Workflow Designer/PERT**. The settings display to the right
5. *(Optional)* Enter the spacing value between nodes (default: 20)
6. *(Optional)* Enter the maximum number of Threshold/Resource dependencies to display before the display turns off automatically (default: 300). Enter 0 for unlimited
7. *(Optional)* Select **Top to Bottom** or **Left to Right** from the **Default layout** list
8. *(Optional)* Select the **color** button for a dependency type (e.g., Requires, After, Excludes, Conflict) to open the **Color** dialog, then select a color and select **OK**
9. Select the **Show frequency names** option to show frequency names in job boxes (off by default)
10. Select the **Show Job status description** option to show the job status name in job boxes (on by default)
11. Select the **Analyze circular dependencies** option to check for circular dependencies (off by default)
12. Select the **Do not draw PERT on date selection** option to skip drawing the PERT on date selection (off by default)
13. Select **Apply** to save changes
14. Select **OK** to save and close the **Preferences** dialog

## When Would You Use It?

- To set the preferences:

## Why Would You Use It?

- **Setting Preferences**: To set the preferences:

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Setting Preferences for Workflow Designer and PERT procedure involve?**

The Setting Preferences for Workflow Designer and PERT procedure involves 14 steps. Complete all steps in order and save your changes.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
