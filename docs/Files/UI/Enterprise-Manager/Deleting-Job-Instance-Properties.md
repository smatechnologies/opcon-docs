---
title: Deleting Job Instance Properties
description: "Use this procedure to delete Job Instance Properties in the Enterprise Manager."
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

# Deleting Job Instance Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Job Instance Properties in the Enterprise Manager.

To delete a property, complete the following steps:

1. Select on **Job Master** under the **Administration** topic
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Instance Definition** tab in the **Job Properties** frame
5. Select the **property** to remove
6. Select the **Remove** button
7. Repeat steps 5–6 to delete additional properties
8. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
9. Select **Close ☒** to close the **Job Master** screen

## When Would You Use It?

- An existing Job Instance Properties in Enterprise Manager is no longer needed
- The Job Instance Properties has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Job Instance Properties definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a job instance properties record be recovered after deletion?**

No. Deleting a job instance properties record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many job instance properties records can you delete at once?**

Select the specific job instance properties record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
