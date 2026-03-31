---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Tags
description: "Use this procedure to manage Tags in the Enterprise Manager."
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

# Managing Tags

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to manage Tags in the Enterprise Manager.

## When Would You Use It?

- You need to review or update Tags settings in Enterprise Manager
- Tags needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Tags management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Tags changes are captured in the OpCon audit system, supporting change management and compliance processes

## Finding Tags

To find a tag, complete the following steps:

1. Select on **Tag Manager** under the **Management** topic
2. Select the ![](../../../Resources/Images/EM/EMfind.png) **Find** button
3. Enter the tag name in the **Select an Item** text box
4. Select **OK**

## Adding Tags

To add a tag, complete the following steps:

1. Select on **Tag Manager** under the **Management** topic
2. Select the ![](../../../Resources/Images/EM/EMadd.png) **Add** button. The **Add New Tag** window displays
3. Enter a name in the **Enter Tag Name** text box
4. *(Optional)* Enter a **schedule name** or **job name** to filter results
5. Select **Filter** to search for schedules/jobs
6. *(Optional)* Select **Select All** or **Deselect All**
7. Select the options for the schedules/jobs to tag
8. Select **Associate Jobs**

## Renaming Tags

To rename a tag, complete the following steps:

1. Select on **Tag Manager** under the **Management** topic
2. Select the **tag** in the **Selection** list
3. Update the name in the **Name** text box
4. Select ![](../../../Resources/Images/EM/EMsave.png) **Save** on the toolbar

## Deleting Tags

To delete a tag, complete the following steps:

1. Select on **Tag Manager** under the **Management** topic
2. Select the **tag** in the **Selection** list
3. Select ![](../../../Resources/Images/EM/EMdelete.png) **Remove** on the toolbar
4. Select **Yes** to confirm or **No** to cancel

## Editing Master Jobs

To edit a master job, complete the following steps:

1. Select on **Tag Manager** under the **Management** topic
2. Select the **tag** in the **Selection** list to display associated jobs
3. Select the **job** to edit
4. *(Optional)* Use the **filter** text box to find a specific schedule/job
5. Select the ![](../../../Resources/Images/EM/EMeditjobs.png) **Edit Master Job** button. The **Job Master** screen displays
6. Edit the job
7. Select ![](../../../Resources/Images/EM/EMsave.png) **Save** on the **Job Master** toolbar
8. Select **Close ☒** to close the **Job Master** screen

## Associating Master Jobs

To associate a master job, complete the following steps:

1. Select on **Tag Manager** under the **Management** topic
2. Select the **tag** in the **Selection** list
3. Select the ![](../../../Resources/Images/EM/EMedit.png) **Associate Additional Jobs** button. The **Associate Master Jobs** window displays
4. *(Optional)* Enter a **schedule name** or **job name** to filter results
5. Select **Filter** to search for schedules/jobs
6. *(Optional)* Select **Select All** or **Deselect All**
7. Select the options for the schedules/jobs to tag
8. Select **Associate Jobs**
9. Select **Yes** to associate more jobs or **No** to close the dialog

## Deleting Job Associations

To delete a job association, complete the following steps:

1. Select on **Tag Manager** under the **Management** topic
2. Select the **tag** in the **Selection** list
3. Select the **job** to disassociate
4. *(Optional)* Use the **filter** text box to find a specific schedule/job
5. Select the ![](../../../Resources/Images/EM/EMdelete.png) **Remove Job Association** button
6. Select **Yes** to confirm
:::


## FAQs

**Q: What does managing tags involve?**

Managing tags includes Finding Tags, Adding Tags, Renaming Tags, Deleting Tags. Access tags through the Enterprise Manager navigation pane.

**Q: Who can manage tags in OpCon?**

Users with the appropriate privileges assigned through their role can manage tags. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
