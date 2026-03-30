---
title: Adding Job Dependencies
description: "Use this procedure to add Job Dependencies in the Enterprise Manager."
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

# Adding Job Dependencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Job Dependencies in the Enterprise Manager.

## When Would You Use It?

- You need to add Job Dependencies in Enterprise Manager
- The environment is expanding and requires additional Job Dependencies to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Job Dependencies to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Job Dependencies and when

## Setting Job-Related Job Dependencies

To set a dependency, complete the following steps:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Dependencies** tab in the **Job Properties** frame
5. Select the **Job Dependency** tab

6. Select the **Job Related** option
7. Select the **Add** button. The **Add Dependency** dialog displays
8. Select the **schedule** for the Predecessor Job in the **Schedule** list
9. Select the **job** for the Predecessor Job in the **Job** list
10. Select the **instance name** for the Predecessor Job in the **Instance Name** list

11. Select the preferred **dependency type** radio button
12. Select the preferred **option(s)**
13. Select the **frequency** for the Successor Job in the **Frequency** list
14. Select the **instance name** for the Successor Job in the **Instance Name** list
15. Select **OK** to save or **Cancel** to discard
16. Select **Close ☒** to close the **Job Master** screen

## Setting Frequency-Related Job Dependencies

To set a dependency, complete the following steps:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Dependencies** tab in the **Job Properties** frame
5. Select the **Job Dependency** tab

6. Select the **Frequency Related** option
7. Select the **frequency** in the **Frequency List**
8. Select the **Add** button. The **Add Dependency** dialog displays
9. Select the **schedule** for the Predecessor Job in the **Schedule** list
10. Select the **job** for the Predecessor Job in the **Job** list

11. Select the **instance name** for the Predecessor Job in the **Instance Name** list
12. Select the preferred **dependency type** radio button
13. Select the preferred **option(s)**
14. Select the **frequency** for the Successor Job in the **Frequency** list
15. Select the **instance name** for the Successor Job in the **Instance Name** list

16. Select **OK** to save or **Cancel** to discard
17. Select **Close ☒** to close the **Job Master** screen

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How do you save a new job dependencies record?**

After completing the required fields, select the **Save** button on the toolbar to save the job dependencies record.

**Q: Can you add job dependencies for multiple platforms?**

Yes. This page covers job dependencies for multiple platforms or contexts: Setting Job-Related Job Dependencies, Setting Frequency-Related Job Dependencies.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
