---
title: Viewing and Updating Documentation
description: "The Documentation panel in Master Job Definition displays documentation for the job and its frequencies, including clickable hyperlinks in Read-only mode."
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

# Viewing and Updating Documentation

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Documentation** panel in **Master Job Definition** displays documentation for the job and its frequencies, including clickable hyperlinks in **Read-only** mode.

- Select the full-screen icon (![Full Screen Panel Icon](../../../../../../Resources/Images/SM/Full-Screen-Mode-Icon.png "Full Screen Panel Icon")) on the far-right of the panel bar to enter or exit **Full Screen** mode
- A blue circular indicator (![Job Properties Indicator](../../../../../../Resources/Images/SM/Daily-Job-Definition-Properties-Indicator.png "Job Properties Indicator")) appears to the right of the panel name showing the count of defined properties

## Adding or Updating Documentation

In **Admin** mode, documentation properties can be updated. For conceptual information, refer to [Documentation](../../../../../../job-components/documentation.md) in the **Concepts** online help.

<!-- 1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to Go to the master job definition page.
1. Select an **access code** from the **Access Code** combo box
1. Select the **Save** button. -->

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Job Definition** topic.

:::

To perform this procedure, complete the following steps:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to Go to the master job definition page
2. Expand the **Documentation** panel to expose its content
3. Enter changes in the **Job** and/or **Frequency** frames. Hyperlinks may be included
4. Select the **Save** button


## FAQs

**Q: How many steps does the Viewing and Updating Documentation procedure involve?**

The Viewing and Updating Documentation procedure involves 6 steps. Complete all steps in order and save your changes.

**Q: What does Viewing and Updating Documentation cover?**

This page covers Adding or Updating Documentation.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
