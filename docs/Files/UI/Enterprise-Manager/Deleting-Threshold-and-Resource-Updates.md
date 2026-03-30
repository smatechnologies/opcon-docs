---
title: Deleting Threshold/Resource Updates
description: "Use this procedure to delete Threshold/Resource Updates in the Enterprise Manager."
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

# Deleting Threshold/Resource Updates

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Threshold/Resource Updates in the Enterprise Manager.

To delete a threshold or resource update, complete the following steps:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Threshold/Resource** tab in the **Job Properties** frame
5. Select the **Job Related** or **Frequency Related** radio button depending on the type to delete
6. If Frequency Related, select the **frequency** in the **Frequency list**. If Job Related, proceed to the next step
7. Select the **threshold/resource update** in the **Threshold/Resource Updates** list
8. Select **Remove**
9. Select **Yes** to confirm or **No** to cancel
10. Select **Close ☒** to close the **Job Master** screen

## When Would You Use It?

- An existing Threshold/Resource Updates in Enterprise Manager is no longer needed
- The Threshold/Resource Updates has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Threshold/Resource Updates definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a threshold/resource updates record be recovered after deletion?**

No. Deleting a threshold/resource updates record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: What should you check before deleting threshold/resource updates?**

Verify the threshold/resource updates is not currently in use or assigned to other records before deleting it, as deletion may affect dependent objects.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
