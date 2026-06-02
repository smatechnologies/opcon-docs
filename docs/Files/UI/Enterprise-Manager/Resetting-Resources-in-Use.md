---
title: Resetting Resources in Use
description: "Learn how to reset resources in use in OpCon."
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

# Resetting Resources in Use

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

:::note
SAM tracks resources in use and waits until a resource is available before submitting the next job.
:::

If the **Resources in Use** value is incorrect due to an unusual occurrence, use this feature to correct it. Only use this feature if you are certain the value is inaccurate.

:::note
Reducing Resources in Use while jobs are still using the resource may cause OpCon to exceed the defined resource maximum.
:::

## Resetting a Resource in Use

To reset a resource in use, complete the following steps:

1. Select **List** under the **Operations** topic. The **Daily list** screen displays.
2. Verify that all jobs using the resource have completed.
3. Select **Resources** under the **Administration** topic.
4. Select the **resource** in the **Select Resource** list.
5. Select the **Edit Resource in Use value** button (to the right of the **Resources in Use** frame).
6. Enter the *correct* value.
7. Select **OK** to save, or **Cancel** to discard.
8. Select **Close ☒** (to the right of the **Resources** tab) to close the **Resources** screen. For more information, refer to [Resources](../../../objects/resources.md) in the **Concepts** online help.

**Result:** The Resources in Use value is updated to the correct amount.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
