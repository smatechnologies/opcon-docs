---
title: Deleting Job Events
description: "Use this procedure to delete Job Events in the Enterprise Manager."
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

# Deleting Job Events

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Job Events in the Enterprise Manager.

To delete a job event, complete the following steps:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select the **Event** tab in the **Job Properties** frame
5. Select the **Job Related** or **Frequency Related** option, depending on the type of event to delete
   - If **Frequency Related**: Select the **frequency** in the **Frequency list**, then continue to Step 6
   - If **Job Related**: Continue to Step 6
6. Select the **event** in the **Events** list
7. Select the **Remove** button
8. Select **Yes** to confirm or **No** to cancel
9. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

## When Would You Use It?

- An existing Job Events in Enterprise Manager is no longer needed
- The Job Events has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Job Events definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a job events record be recovered after deletion?**

No. Deleting a job events record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: What should you check before deleting job events?**

Verify the job events is not currently in use or assigned to other records before deleting it, as deletion may affect dependent objects.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
