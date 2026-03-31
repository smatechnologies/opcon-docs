---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Adding Tags
description: "Use this procedure to add Tags in the Enterprise Manager."
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

# Adding Tags

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Tags in the Enterprise Manager.

## When Would You Use It?

- You need to add Tags in Enterprise Manager
- The environment is expanding and requires additional Tags to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Tags to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Tags and when

## Adding Job-Related Tags

To add a tag, complete the following steps:

1. Select **Job Master** under the **Administration** topic
2. Select the **schedule** from the **Schedule** list
3. Select the **job** from the **Job** list
4. Select the **Tags** tab in the **Job Properties** frame
5. Confirm the **Job Related** option is selected

6. Enter the tag name in the **Choose Tag** text box
7. Press **Enter** or select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add**
8. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
9. Select **Close** to close the **Job Master** screen

## Adding Frequency-Related Tags

To add a tag, complete the following steps:

1. Select **Job Master** under the **Administration** topic
2. Select the **schedule** from the **Schedule** list
3. Select the **job** from the **Job** list
4. Select the **Tags** tab in the **Job Properties** frame
5. Select the **Frequency Related** option

6. Select the **frequency** from the **Frequency list**
7. Enter the tag name in the **Choose Tag** text box
8. Press **Enter** or select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add**
9. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
10. Select **Close** to close the **Job Master** screen


## FAQs

**Q: Where do you access Tags in the Enterprise Manager?**

Select **Job Master** under the **Administration** topic in the Enterprise Manager navigation pane.

**Q: How do you save a new tags record?**

After completing the required fields, select the **Save** button on the toolbar to save the tags record.

**Q: Can you add tags for multiple platforms?**

Yes. This page covers tags for multiple platforms or contexts: Adding Job-Related Tags, Adding Frequency-Related Tags.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
