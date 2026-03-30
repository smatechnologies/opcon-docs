---
title: Adding Properties to Daily Schedule Instances
description: "Use this procedure to add Properties to Daily Schedule Instances in the Enterprise Manager."
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

# Adding Properties to Daily Schedule Instances

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Properties to Daily Schedule Instances in the Enterprise Manager.

To perform this procedure, complete the following steps:

1. Select on **Daily Maintenance** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the specific **date** for the schedule
3. Select the **schedule**
4. Select the **Edit Daily** button in the **Maintenance** frame
5. Select the **Instance Definition** tab
6. Enter the property definition (e.g., PropertyName=value)
7. Select the **Add** button
8. Repeat steps 6–7 to add additional properties
9. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Daily** toolbar

## When Would You Use It?

- You need to add Properties to Daily Schedule Instances in Enterprise Manager
- The environment is expanding and requires additional Properties to Daily Schedule Instances to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Properties to Daily Schedule Instances to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Properties to Daily Schedule Instances and when

## FAQs

**Q: How do you save a new properties to daily schedule instances record?**

After completing the required fields, select the **Save** button on the toolbar to save the properties to daily schedule instances record.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
