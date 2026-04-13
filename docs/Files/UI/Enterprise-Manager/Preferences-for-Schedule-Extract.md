---
title: Setting Preferences for Schedule Extract
description: "The preferences for Schedule Extract apply to both the interactive utility and the command line interface, where appropriate."
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

# Setting Preferences for Schedule Extract

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The preferences for Schedule Extract apply to both the interactive utility and the command line interface, where appropriate. For more information, refer to [Schedule Extract Command-line Interface](../../../utilities/Command-line-Utilities/Schedule-Extract-Command-line-Interface.md) in the **Utilities** online help.

To set the preferences, complete the following steps:

1. Open the Enterprise Manager application
2. Use menu path: **EnterpriseManager \> Preferences**. The **Preferences** dialog displays
3. Select on the arrow (![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow ")) next to **Enterprise Manager** in the Preferences tree to expand the list
4. Select on **Schedule Extract**. The **Schedule Extract** settings display to the right
5. Configure the following fields:
   - **Output Directory** – location where Schedule Extract generates SMADDI files (default: **C:\\Extract\\Output**)
   - **Change File Directory** – location Schedule Extract searches for change files (default: **C:\\Extract\\ChangeFiles**)
   - **Date Format** – date format for date definitions in SMADDI files (default: **yyyymmdd**)
   - **Argument Delimiter in -F File** – delimiter separating extract arguments in a schedule input file (default: **;**)
6. Select **Apply**, then **OK**

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Setting Preferences for Schedule Extract procedure involve?**

The Setting Preferences for Schedule Extract procedure involves 6 steps. Complete all steps in order and save your changes.

## Glossary

**SMADDI (SMA Dynamic Data Input)**: An optional OpCon component that dynamically updates the OpCon database using XML text files placed in monitored input directories. SMADDI uses a Windows service and stored procedures to validate and commit the data.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
