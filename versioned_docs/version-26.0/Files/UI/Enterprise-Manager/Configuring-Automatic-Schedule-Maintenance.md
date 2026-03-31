---
title: Configuring Automatic Schedule Maintenance
description: "Use this procedure to configure Automatic Schedule Maintenance in the Enterprise Manager."
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

# Configuring Automatic Schedule Maintenance

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to configure Automatic Schedule Maintenance in the Enterprise Manager.

To configure auto maintenance, complete the following steps:

1. Select on **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays
2. Select the **schedule** in the **Schedule Selection** list
3. Ensure that the **Schedule** tab is in focus
4. Select the **Auto Build** option in the **Schedule Properties Build** frame
5. Select/enter the **number of days in advance** to auto build
6. Select/enter the **number of days** to auto build
7. *(Optional)* Select the **Overwrite Existing** option
8. *(Optional)* Select the **Build On Hold** option
9. *(Optional)* Enter an **Auto Build Time** for this schedule only
10. *(Optional)* Select the **Auto Delete** option and enter the **number of days ago** to delete
11. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar
12. Select **Close ☒** (to the right of the **Schedule Master** tab) to close the **Schedule Master** screen

## When Would You Use It?

- You need to adjust settings for Automatic Schedule Maintenance in Enterprise Manager
- Default Automatic Schedule Maintenance settings no longer meet the operational requirements of your environment

## Why Would You Use It?

- **Centralize control**: Managing Automatic Schedule Maintenance settings through Enterprise Manager keeps all configuration changes in one place and makes them auditable
- Settings validated through Enterprise Manager are checked against business rules before saving, reducing the risk of misconfiguration


## FAQs

**Q: What does configuring automatic schedule maintenance control?**

Configuring automatic schedule maintenance defines the settings that determine how OpCon behaves for this feature. Review the available options and set values appropriate for your environment.

**Q: How many steps are required to configure automatic schedule maintenance?**

The configuration procedure involves 12 steps. Complete all steps in order and select **Save** to apply the changes.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
