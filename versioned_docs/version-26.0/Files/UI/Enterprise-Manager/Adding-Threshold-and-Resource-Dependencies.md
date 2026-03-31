---
title: Adding Threshold/Resource Dependencies
description: "Use this procedure to add Threshold/Resource Dependencies in the Enterprise Manager."
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

# Adding Threshold/Resource Dependencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Threshold/Resource Dependencies in the Enterprise Manager.

## When Would You Use It?

- You need to add Threshold/Resource Dependencies in Enterprise Manager
- The environment is expanding and requires additional Threshold/Resource Dependencies to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Threshold/Resource Dependencies to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Threshold/Resource Dependencies and when

## Setting Job-Related Threshold/Resource Dependencies

To set Job-Related Threshold/Resource Dependencies, complete the following steps:

1. Select **Job Master** under the **Administration** topic
2. Select the **schedule** in the **Schedule** list

3. Select the **job** in the **Job** list
4. Select the **Dependencies** tab in the **Job Properties** frame
5. Select the **Threshold/Resource Dependency** tab
6. Select the **Job Related** option
7. Select **Add**. The **Threshold/Resource Dependency** dialog displays

8. Select a **threshold/resource** in the **Threshold/Resource** list
9. Do one of the following:
   - **For a Threshold**: Select an **operator** and enter a value in the **Value** field
   - **For a Resource**: Enter a value in the **Value** field. Select the **All** option to require all resources when the job runs; clear it to re-enable the **Value** field
10. Select **OK** to save, or **Cancel** to discard
11. Select **Close ☒** to close **Job Master**

## Setting Frequency-Related Threshold/Resource Dependencies

To set Frequency-Related Threshold/Resource Dependencies, complete the following steps:

1. Select **Job Master** under the **Administration** topic
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list

4. Select the **Dependencies** tab in the **Job Properties** frame
5. Select the **Threshold/Resource Dependency** tab
6. Select the **Frequency Related** option
7. Select the **frequency** in the **Frequency List**
8. Select **Add**. The **Threshold/Resource Dependency** dialog displays

9. Select a **threshold/resource** in the **Threshold/Resource** list
10. Do one of the following:
    - **For a Threshold**: Select an **operator** and enter a value in the **Value** field
    - **For a Resource**: Enter a value in the **Value** field. Select the **All** option to require all resources when the job runs; clear it to re-enable the **Value** field
11. Select a **frequency** in the **Frequency** list
12. Select **OK** to save, or **Cancel** to discard
13. Select **Close ☒** to close **Job Master**

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Where do you access Threshold/Resource Dependencies in the Enterprise Manager?**

Select **Job Master** under the **Administration** topic in the Enterprise Manager navigation pane.

**Q: How do you save a new threshold/resource dependencies record?**

After completing the required fields, select the **Save** button on the toolbar to save the threshold/resource dependencies record.

**Q: Can you add threshold/resource dependencies for multiple platforms?**

Yes. This page covers threshold/resource dependencies for multiple platforms or contexts: Setting Job-Related Threshold/Resource Dependencies, Setting Frequency-Related Threshold/Resource Dependencies.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
