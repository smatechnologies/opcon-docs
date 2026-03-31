---
title: Deleting Thresholds
description: "Deleting a threshold requires completing all four procedures below in order."
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

# Deleting Thresholds

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Deleting a threshold requires completing all four procedures below in order.

To delete a threshold:

Remove the Threshold from the Daily Tables

To remove the Threshold from the Daily Tables, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **date** for the schedule
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule**
4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame at the bottom-right of the screen
6. Select the **Threshold/Resource Update** tab
7. Select the **Threshold/Resource Update** to delete, then select **Remove**
8. Select **Yes** to confirm or **No** to cancel

Remove the Threshold from the Master Tables

To remove the Threshold from the Master Tables, complete the following steps:

1. Select **Daily Maintenance** under the **Operation** topic
2. In the **Daily** frame, select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **date** for the schedule
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule**
4. Select the **job**
5. Select the **Edit Master** button in the **Maintenance** frame at the bottom-right of the screen
6. Select the **Threshold/Resource Update** tab
7. Select the **Threshold/Resource Update** to delete, then select **Remove**
8. Select **Yes** to confirm or **No** to cancel
9. Repeat steps 5-8 for all jobs updating the threshold

Remove the Threshold Dependencies from the Master Tables

To remove the Threshold Dependencies from the Master Tables, complete the following steps:

1. Select **Job Master** under the **Administration** topic
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Dependencies** tab
5. Select the **Threshold/Resource Dependency** tab
6. Select the **threshold** to delete, then select **Remove**
7. Select **Yes** to confirm or **No** to cancel
8. Repeat steps 4-7 for all jobs updating the threshold
9. Select **Close ☒** to close the **Job Master** screen

Delete the Threshold

To delete the Threshold, complete the following steps:

1. Select **Thresholds** under the **Administration** topic
2. Select the **threshold** in the **Select Threshold** list
3. Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **Thresholds** toolbar
4. Select **Yes** to confirm or **No** to cancel
5. Select **Close ☒** to close the **Thresholds** screen
:::

## When Would You Use It?

- An existing Thresholds in Enterprise Manager is no longer needed
- The Thresholds has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Thresholds definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews


## FAQs

**Q: Where do you delete thresholds in the Enterprise Manager?**

Select **Daily Maintenance** under the **Operation** topic in the Enterprise Manager navigation pane, then select the record to delete.

**Q: Can a thresholds record be recovered after deletion?**

No. Deleting a thresholds record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: What should you check before deleting thresholds?**

Verify the thresholds is not currently in use or assigned to other records before deleting it, as deletion may affect dependent objects.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
