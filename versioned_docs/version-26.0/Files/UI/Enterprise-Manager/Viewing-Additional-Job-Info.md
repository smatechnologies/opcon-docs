---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Additional Job Information
description: "To view Additional Job Information in the Enterprise Manager, complete the following steps: 1."
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

#  Viewing Additional Job Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

To view Additional Job Information in the Enterprise Manager, complete the following steps:

1.  Select on **Job Master** under the **Administration** topic
2.  Select the **schedule** in the **Schedule** list
3.  Select the **job** in the **Job** list
4.  Select the ![Merge icon](../../../Resources/Images/EM/EMcrossref.png "Merge icon") **Cross Reference** button on the toolbar to view a list of jobs on the schedule, then select **OK**
5.  Select the ![View Audit icon](../../../Resources/Images/EM/EMviewaudit.png "View Audit icon") **View Audit** button to view audit records for changes to the job, then select **Close**
6.  Select the ![View Schedule History icon](../../../Resources/Images/EM/EMviewhist.png "View Schedule History icon") **View Job History** button to view execution history for the job, then select **Close**

## When Would You Use It?

- You need to inspect or audit Additional Job Information records in Enterprise Manager
- An audit, compliance review, or operational check requires inspection of current Additional Job Information state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting Additional Job Information records in Enterprise Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Enterprise Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How many steps does the Viewing Additional Job Information procedure involve?**

The Viewing Additional Job Information procedure involves 6 steps. Complete all steps in order and save your changes.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
