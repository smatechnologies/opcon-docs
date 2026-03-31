---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Jobs
description: "Use this procedure to delete Jobs in the Enterprise Manager."
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

# Deleting Jobs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Jobs in the Enterprise Manager.

To delete a job, you must first remove any dependencies.

## When Would You Use It?

- An existing Jobs in Enterprise Manager is no longer needed
- The Jobs has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Jobs definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Remove Dependencies

To remove Dependencies, complete the following steps:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Dependencies** tab
5. Confirm the **Job Related** option is selected in the **Dependencies Filters** frame

6. Select the **dependency** in the **Job Dependency** list
7. Select the **Remove** button
8. Select **Yes** to confirm or **No** to cancel

## Delete the Job

1. Select ![](../../../Resources/Images/EM/EMdelete.png) **Remove** on the **Job Master** toolbar
2. Select **Yes** to confirm or **No** to cancel
3. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen


## FAQs

**Q: Can a jobs record be recovered after deletion?**

No. Deleting a jobs record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: What should you check before deleting jobs?**

Verify the jobs is not currently in use or assigned to other records before deleting it, as deletion may affect dependent objects.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
