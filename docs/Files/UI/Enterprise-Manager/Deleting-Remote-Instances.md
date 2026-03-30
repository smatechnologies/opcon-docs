---
title: Deleting Remote Instances
description: "Use this procedure to delete Remote Instances in the Enterprise Manager."
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

# Deleting Remote Instances

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Remote Instances in the Enterprise Manager.

:::note
There are no cross-reference checks on remote instance deletion. If a schedule, job, or machine references a deleted remote instance in a complex expression, that expression becomes orphaned.
:::

To delete a remote instance, complete the following steps:

1. Select on **Remote Instances** under the **Administration** topic. The **Remote Instances** screen displays
2. Select the **remote instance** in the **Selection** list
3. Select ![Remove icon](../../../Resources/Images/EM/EMdelete.png "Remove icon") **Remove** on the **Remote Instances** toolbar
4. Select **Yes** to confirm, or **No** to cancel
5. Select **Close ☒** to close the **Remote Instances** screen

## When Would You Use It?

- An existing Remote Instances in Enterprise Manager is no longer needed
- The Remote Instances has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Remote Instances definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: Can a remote instances record be recovered after deletion?**

No. Deleting a remote instances record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many remote instances records can you delete at once?**

Select the specific remote instances record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
