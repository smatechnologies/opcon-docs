---
title: Deleting Master Jobs
description: "Use this procedure to delete Master Jobs in Solution Manager."
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

# Deleting Master Jobs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Master Jobs in Solution Manager.

## When Would You Use It?

- An existing Master Jobs in Solution Manager is no longer needed
- The Master Jobs has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Master Jobs definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## Administration

### Required Privileges

To delete a job, you must be in the ocadm role or have all of the following privileges:

- **Schedule Privilege**: Access to the job's parent schedule
- **Access Code Privilege**: Access to the assigned job access code with **Allow job updates** set to true
- **Machine / Machine Group Privilege**: Access to the assigned job machine or machine group
- **Departmental Function Privilege**: All Function Privileges, or Modify Jobs In Master Schedules, Delete Jobs From Master Schedules, or Modify Jobs In Master Schedules with department privilege
- **Department Privilege**: Access to the assigned job department or All Departments

---

## Deleting a Job

Go to **Library** > **Master Jobs**, select one or more jobs, and select **Delete**. A confirmation dialog opens:

![Master Job Delete](../../../../../Resources/Images/SM/Library/MasterJobs/master-job-delete.png "Confirm Delete")

Select **Yes** to delete or **No** to cancel.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Schedule Privilege | Access to the job's parent schedule | — | — |
| Access Code Privilege | Access to the assigned job access code with **Allow job updates** set to true | — | — |
| Machine / Machine Group Privilege | Access to the assigned job machine or machine group | — | — |
| Departmental Function Privilege | All Function Privileges, or Modify Jobs In Master Schedules, Delete Jobs From Master Schedules, or Modify Jobs In Master Schedules with department pri... | — | — |
| Department Privilege | Access to the assigned job department or All Departments | — | — |

## FAQs

**Q: Can a master jobs record be recovered after deletion?**

No. Deleting a master jobs record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: What should you check before deleting master jobs?**

Verify the master jobs is not currently in use or assigned to other records before deleting it, as deletion may affect dependent objects.

## Glossary

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
