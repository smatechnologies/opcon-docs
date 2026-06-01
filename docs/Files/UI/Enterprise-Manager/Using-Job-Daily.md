---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Using Job Daily
description: "The Job Daily editor displays a list of schedule dates, schedules, and jobs, allowing you to modify daily job details without affecting the Master definition."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Using Job Daily

The **Job Daily** editor displays a list of schedule dates, schedules, and jobs. Select a schedule date, a schedule, and a job to view and modify that job's daily details.

:::note
Changes made in Job Daily take effect immediately for any job that has not yet run. If the job has already run, changes take effect the next time the job runs. Changes made in Job Daily do not affect the Master job definition unless you explicitly save them to Master.

To use Job Daily, you must have the appropriate privileges. For more information, refer to [Departmental Function Privileges](../../../administration/privileges.md#departmental-function-privileges).
:::

## Job Daily Toolbar

The **Job Daily** toolbar provides actions for managing jobs in the daily tables.

![Job Daily toolbar](../../../Resources/Images/EM/EMjobdailytoolbar.png "Job Daily toolbar")

## Related Procedures

The following procedures are available from within the **Daily Maintenance** view.

**General Job Details**

- [Editing Job Automation Components in Job Daily](Editing-Job-Automation-Components.md)
- [Saving Job Definitions to Master](Saving-Job-Definitions-to-Master.md)

**Frequency**

- [Editing Job Frequencies](Editing-Job-Automation-Components.md#Editing)

**Events**

- [Editing Job Events](Editing-Job-Automation-Components.md#Editing2)
- [Adding Job Events](Editing-Job-Automation-Components.md#Adding)
- [Deleting Job Events](Editing-Job-Automation-Components.md#Deleting)

**Threshold/Resource Update**

- [Editing Threshold/Resource Updates](Editing-Job-Automation-Components.md#Editing3)
- [Adding Threshold/Resource Updates](Editing-Job-Automation-Components.md#Adding2)
- [Deleting Threshold/Resource Updates](Editing-Job-Automation-Components.md#Deleting2)

**Dependencies**

- Job Dependency
    - [Editing Job Dependencies](Editing-Job-Automation-Components.md#Editing4)
    - [Adding Job Dependencies](Editing-Job-Automation-Components.md#Adding3)
    - [Deleting Job Dependencies](Editing-Job-Automation-Components.md#Deleting3)
- Threshold/Resource Dependency
    - [Editing Threshold/Resource Dependencies](Editing-Job-Automation-Components.md#Editing5)
    - [Adding Threshold/Resource Dependencies](Editing-Job-Automation-Components.md#Adding4)
    - [Deleting Threshold/Resource Dependencies](Editing-Job-Automation-Components.md#Deleting4)

**Documentation**

- [Adding Documentation](Editing-Job-Automation-Components.md#Adding5)

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
