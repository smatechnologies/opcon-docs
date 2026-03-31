---
title: Viewing and Adding Null Job Details
description: "Use this procedure to view and Adding Null Job Details in Solution Manager."
product_area: Solution Manager
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

# Viewing and Adding Null Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view and Adding Null Job Details in Solution Manager.

To view, add, or edit a Null job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## When Would You Use It?

- You need to inspect or audit and Adding Null Job Details records in Solution Manager
- An audit, compliance review, or operational check requires inspection of current and Adding Null Job Details state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting and Adding Null Job Details records in Solution Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Solution Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## Viewing Null Job Details

To view Null Job Details, complete the following steps:

1. Go to **Library** > **Master Jobs**
1. Select a null job in the list
1. Select **Edit**
1. Expand the **Task Details** panel

---

## Adding Null Job Details

Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).

---

### More Information

For conceptual information, refer to [Null Jobs](../../../../../../../job-types/null.md) in the **Concepts** online help.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How many steps does the Viewing and Adding Null Job Details procedure involve?**

The Viewing and Adding Null Job Details procedure involves 4 steps. Complete all steps in order and save your changes.

**Q: What does Viewing and Adding Null Job Details cover?**

This page covers Viewing Null Job Details, Adding Null Job Details.

## Glossary

**Null Job**: A job type that performs no execution on any platform. Null jobs are used to hold dependencies, trigger OpCon events, and keep schedules open after all other jobs complete.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
