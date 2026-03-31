---
title: Deleting Resources
description: "Use this procedure to delete Resources in the Enterprise Manager."
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

# Deleting Resources

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Resources in the Enterprise Manager.

To delete a resource, complete the following procedures in order.

## Remove the Resource from the Daily Tables

To remove the Resource from the Daily Tables, complete the following steps:

1. Select on **Daily Maintenance**
2. In the **Daily** frame, select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **date** for the schedule
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule**
4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame
6. Select the **Threshold/Resource Update** tab
7. Select the **threshold/resource update** to delete, then select **Remove**
8. Select **Yes** to confirm or **No** to cancel. Repeat Steps 4–8 for all jobs updating the resource
9. Select the **Dependencies** tab
10. Select the **Threshold/Resource Dependency** tab
11. Select the **threshold/resource dependency** to delete, then select **Remove**
12. Select **Yes** to confirm or **No** to cancel. Repeat Steps 11–12 for all jobs with the threshold/resource dependency
13. Select **Close ☒** to close the **Job Daily** screen

## Remove the Resource from the Master Tables

In the **Daily Maintenance** screen:

1. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **date** for the schedule
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule**
3. Select the **job**
4. Select the **Edit Master** button in the **Maintenance** frame
5. Select the **Threshold/Resource Update** tab
6. Select the **threshold/resource update** to delete, then select **Remove**
7. Select **Yes** to confirm or **No** to cancel. Repeat Steps 1–7 for all jobs updating the resource
8. Select the **Dependencies** tab
9. Select the **Threshold/Resource Dependency** tab
10. Select the **threshold/resource dependency** to delete, then select **Remove**
11. Select **Yes** to confirm or **No** to cancel. Repeat Steps 10–11 for all jobs with the Threshold/Resource Dependency
12. Select **Close ☒** to close the **Job Master** screen

## Delete the Resource

1. Select on **Resources** under the **Administration** topic. The **Resources** screen displays
2. Select the **resource** in the **Select Resource** list
3. Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **Resources** toolbar

4. Select **Yes** to confirm or **No** to cancel. Repeat Steps 2–4 for all jobs with the resource to delete
5. Select **Close ☒** to close the **Resources** screen


## FAQs

**Q: Can a resources record be recovered after deletion?**

No. Deleting a resources record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: What should you check before deleting resources?**

Verify the resources is not currently in use or assigned to other records before deleting it, as deletion may affect dependent objects.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
