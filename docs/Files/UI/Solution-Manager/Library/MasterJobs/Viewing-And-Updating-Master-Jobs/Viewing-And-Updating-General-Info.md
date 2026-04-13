---
title: Viewing and Updating General Info
description: "The section at the top of the Master Job Definition page displays general job details: - Schedule Name (read-only) - Job Name - Job Type (read-only) - Department - Access Code - Disable Build - Allow."
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

# Viewing and Updating General Info

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The section at the top of the **Master Job Definition** page displays general job details:

- Schedule Name (read-only)
- Job Name
- Job Type (read-only)
- Department
- Access Code
- Disable Build
- Allow Multi-Instance

Read-only properties are indicated above. All others can be updated in **Admin** mode.

## Updating General Information

In **Admin** mode, the job name, department, access code, disable build, and allow multi-instance properties can be updated.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Master-Jobs.md#Required) in the **Accessing Master Jobs** topic.
:::

### Updating Departments

For conceptual information, refer to [Departments](../../../../../../objects/departments.md) in the **Concepts** online help.

To perform this procedure, complete the following steps:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to Go to the master job definition page
1. Select a **department** from the **Department** combo box
1. Select the **Save** button

### Updating Access Codes

For conceptual information, refer to [Access Codes](../../../../../../objects/access-codes.md) in the **Concepts** online help.

To perform this procedure, complete the following steps:

1. See [Accessing Master Jobs](Accessing-Master-Jobs.md) to Go to the master job definition page
1. Select an **access code** from the **Access Code** combo box
1. Select the **Save** button


## FAQs

**Q: How many steps does the Viewing and Updating General Info procedure involve?**

The Viewing and Updating General Info procedure involves 6 steps. Complete all steps in order and save your changes.

**Q: What does Viewing and Updating General Info cover?**

This page covers Updating General Information.

## Glossary

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
