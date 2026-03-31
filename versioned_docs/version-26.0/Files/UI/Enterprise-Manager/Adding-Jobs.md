---
title: Adding Jobs
description: "Use this procedure to add Jobs in the Enterprise Manager."
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

# Adding Jobs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Jobs in the Enterprise Manager.

To add a job, complete the following steps:

1. Select on **Job Master** under the **Administration** topic
2. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Job Master** toolbar
3. Enter a *job name* in the **Name** text box
4. Ensure the **Job Details** tab is selected in the **Job Properties** frame
5. Select a **job type** in the **Job Type** list
6. Select a **department** in the **Department** list
7. Select the **code** in the **Access Code** list
8. *(Optional)* Select the **Allow Multi-Instance** option. For more information, refer to [Multi-Instance Jobs](../../../operations/job-names.md#Multi-In) in the **Concepts** online help
9. Select the **Disable Build** option. For more information, refer to [Disable Build](../../../objects/jobs.md#disable-build) in the **Concepts** online help
10. Select a **primary machine** on which to run the job
11. *(Optional)* Select (in order from 1 to 3) the **alternate machines** on which to run the job
12. Select the **Use Schedule Instance Machine** option to run the job on the machine for which the Schedule Instance is built

:::note
The **Use Schedule Instance Machine** option only appears when the Schedule Properties are set for **Multi-Instance** in the **Schedule Master** (refer to [Add a Schedule](Adding-Schedules.md)). The schedule must be [configured to build an instance for all machines in a group](Defining-Schedule-Instances-for-Machines.md) and the Job Type must match the OS Type for the Machine Group configured for the schedule.
:::

13. *(Optional)* Select the **machine group** in the **Machine Group Selection** list
    - Select **Run on Least Tasked Machine** to run the job on one machine in the group
    - Select **Run on Each Machine** to run the job on all machines in the group

:::note
Once a machine group is selected, the primary machine is cleared. The Machine Group selection is not available for File Transfer jobs.
:::

14. Enter the **job definition information** for the selected **Job Type**. Select a link below for platform-specific instructions:

- [Defining BIS Job Details](Job-Type-Management.md#Defining_BIS_Job_Details)
- [Defining Container Job Details](Job-Type-Management.md#Defining_Container_Job_Details)
- [Defining File Transfer Job Details](Job-Type-Management.md#Defining_File_Transfer_Job_Details)
- [Defining IBM i Job Details](Job-Type-Management.md#Defining_IBM_i_Job_Details)
- [Defining Java Job Details](Job-Type-Management.md#Defining_Java_Job_Details)
- [Defining MCP Job Details](Job-Type-Management.md#Define_MCP_Job_Details)
- [Defining OpenVMS Job Details](Job-Type-Management.md#Defining_OpenVMS_Job_Details)
- [Defining OS 2200 Job Details](Job-Type-Management.md#Defining_OS_2200_Job_Details)
- [Defining SAP BW Job Details](Job-Type-Management.md#Defining_SAP_BW_Job_Details)
- [Defining SAP R/3 and CRM Job Details](Job-Type-Management.md#Defining_SAP_R/3_and_CRM_Job_Details)
- [Defining SQL Job Details](Job-Type-Management.md#Defining_SQL_Job_Details)
- [Defining Tuxedo ART Job Details](Job-Type-Management.md#Defining_Tuxedo_Job_Details)
- [Defining UNIX Job Details](Job-Type-Management.md#Defining_UNIX_Job_Details)
- [Defining Windows Job Details](Job-Type-Management.md#Defining_Windows_Job_Details)
- [Defining z/OS Job Details](Job-Type-Management.md#Defining_z/OS_Job_Details)

For more information, refer to [Job Type Management](Job-Type-Management.md).

15. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Job Master** toolbar
16. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

## When Would You Use It?

- You need to add Jobs in Enterprise Manager
- The environment is expanding and requires additional Jobs to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Jobs to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Jobs and when

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What information is required to add jobs?**

The required fields include **Name**. Select **Save** on the toolbar to save the new record.

**Q: Is documentation required when adding jobs?**

No. The Documentation field is optional. You can enter notes about the jobs to track its purpose, but it is not required to save the record.

## Glossary

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
