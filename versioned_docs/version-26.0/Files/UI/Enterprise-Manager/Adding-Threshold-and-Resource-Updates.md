---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Adding Threshold/Resource Updates
description: "Use this procedure to add Threshold/Resource Updates in the Enterprise Manager."
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

# Adding Threshold/Resource Updates

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Threshold/Resource Updates in the Enterprise Manager.

## Setting Job-Related Threshold or Resource Updates

To set Job-Related Threshold or Resource Updates, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list

3. Select the **job** in the **Job** list
4. Select the **Threshold/Resource Update** tab in the **Job Properties** frame
5. Select the **Job Related** option
6. Select **Add**. The **Threshold/Resource Update** dialog displays
7. Select the **update** in the **Threshold/Resource Update** list

8. Select a **job status** in the **Job Status** list
9. Select a **value** in the **Value** box
10. Select **OK** to save, or **Cancel** to discard
11. Select **Close ☒** to close the **Job Master** screen

## Setting Frequency-Related Threshold or Resource Updates

To set Frequency-Related Threshold or Resource Updates, complete the following steps:

1. Select **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list

4. Select the **Threshold/Resource Update** tab in the **Job Properties** frame
5. Select the **Frequency Related** option
6. Select the **frequency** in the **Frequency list**
7. Select **Add**. The **Threshold/Resource Update** dialog displays
8. Select the **update** in the **Threshold/Resource Update** list

9. Select a **job status** in the **Job Status** list
10. Select a **value** in the **Value** box
11. Select **OK** to save, or **Cancel** to discard
12. Select **Close ☒** to close the **Job Master** screen


## FAQs

**Q: Where do you access Threshold/Resource Updates in the Enterprise Manager?**

Select **Job Master** under the **Administration** topic in the Enterprise Manager navigation pane.

**Q: How do you save a new threshold/resource updates record?**

After completing the required fields, select the **Save** button on the toolbar to save the threshold/resource updates record.

**Q: Can you add threshold/resource updates for multiple platforms?**

Yes. This page covers threshold/resource updates for multiple platforms or contexts: Setting Job-Related Threshold or Resource Updates, Setting Frequency-Related Threshold or Resource Updates.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
