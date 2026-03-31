---
title: Checking Daily Schedules
description: "Use this procedure to check Daily Schedules in the Enterprise Manager."
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

# Checking Daily Schedules

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to check Daily Schedules in the Enterprise Manager.

To perform this procedure, complete the following steps:

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date** for the schedule to check
3. Select on the **schedule** to check
4. Select one of the following radio buttons in the **Check** frame:
    - **Normal (No Circular)**
    - **Slow (Circular)**
    - **Fast (Requires Only)**
5. Select the **Check** button in the **Check** frame. The **Schedule Check** dialog displays
6. Note the *log file name* for later access if required
7. Select the **OK** button
8. Select **Close ☒** (to the right of the **Daily Maintenance** tab) to close the **Daily Maintenance** screen

## FAQs

**Q: How many steps does the Checking Daily Schedules procedure involve?**

The Checking Daily Schedules procedure involves 8 steps. Complete all steps in order and save your changes.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
