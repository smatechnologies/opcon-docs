---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Expression Dependencies
description: "Use this procedure to delete Expression Dependencies in the Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

#  Deleting Expression Dependencies

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Expression Dependencies in the Enterprise Manager.

To delete a dependency, complete the following steps:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Dependencies** tab in the **Job Properties** frame
5. Select the **Expression Dependency** tab
6. Select all expression text in the **Job Expression** text box and press **Delete**
7. Select all expression text in the **Frequency Expression** text box and press **Delete**
8. Select ![](../../../Resources/Images/EM/EMsave.png) **Save** on the **Job Master** toolbar
9. Select **Close ☒** to close the **Job Master** screen
:::

## When Would You Use It?

- An existing Expression Dependencies in Enterprise Manager is no longer needed
- The Expression Dependencies has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Expression Dependencies definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a expression dependencies record be recovered after deletion?**

No. Deleting a expression dependencies record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: What should you check before deleting expression dependencies?**

Verify the expression dependencies is not currently in use or assigned to other records before deleting it, as deletion may affect dependent objects.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
