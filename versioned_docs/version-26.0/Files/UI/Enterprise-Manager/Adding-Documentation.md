---
title: Adding Documentation
description: "Use this procedure to add Documentation in the Enterprise Manager."
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

# Adding Documentation

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Documentation in the Enterprise Manager.

To add documentation, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Documentation** tab in the **Job Properties** frame
5. Enter the *job-related documentation* in the **Documentation** text box
6. Select the **frequency** in the **Frequency list**
7. Enter the *frequency-related documentation* in the **Frequency Documentation** text box
8. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
9. Select **Close ☒** to close the **Job Master** screen

## FAQs

**Q: Where do you access Documentation in the Enterprise Manager?**

Select **Job Master** under the **Administration** topic in the Enterprise Manager navigation pane.

**Q: What information is required to add documentation?**

The required fields include **Documentation**, **Frequency Documentation**. Select **Save** on the toolbar to save the new record.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
