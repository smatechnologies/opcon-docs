---
title: Managing SAP R/3 and CRM Background Functions
description: "Use this procedure to manage SAP R/3 and CRM Background Functions in the Enterprise Manager."
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

# Managing SAP R/3 and CRM Background Functions

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to manage SAP R/3 and CRM Background Functions in the Enterprise Manager.

## SAP Login

The first time you retrieve data from the SAP system, the User Interface displays an **SAP Login** screen with the following fields:

- **Machine**: Select the SAP R/3 and CRM agent Machine name. For information on adding an agent Machine to OpCon, refer to [Managing Machines](Managing-Machines.md)
- **User ID**: Enter a *valid SAP login ID*
- **Password**: Enter the correct *SAP password* for the User ID
- **Language**: Enter the *two-character language abbreviation* (e.g., EN for English)

To log in to the SAP machine, complete the following steps:

1. Select on **Machine Status** under the **Operation** topic
2. Right-click on the preferred **SAP R/3 and CRM machine**
3. Hover over **SAP Machine** in the right-click menu and select on **SAP Jobs**

## SAP Machine

The **SAP Machine** context menu provides access to SAP background functions through the **Machine Status** screen. Menu options include: **Event Driven Automation, SAP Jobs, Interception Profiles, Intercept SAP Jobs, Background Process Resources, Raise SAP Events,** and **Event Profiles.**

### Event Driven Automation

The **SAP Event Driven Automation** screen lists triggers to define for a job.

:::note
An event profile that monitors the SAP events defined in Event Driven Automation must be created and active on the SAP system for Event Driven Automation to work.
:::

- **Add**: Creates a new trigger
- **Remove**: Deletes a trigger
- **Edit**: Edits a trigger
- **Name**: The name of the trigger
- **SAP Event ID**: The ID for the SAP Event
- **SAP Event Param**: The parameters set for the SAP Event
- **OpCon Events**: The number of OpCon Events defined for the trigger
- **Save**: Saves the latest changes

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Managing Event Driven Automation](Managing-Event-Driven-Automation.md)

### SAP Jobs

The **View SAP Jobs** screen contains optional search filter criteria for copying, editing, and viewing SAP job logs.

**Job Name Criteria**: Enter case-sensitive text matching the job name(s) in the SAP system. Use wildcards (\*) to expand the search.

**Search SAP**: Retrieves all job names matching the search criteria and populates the SAP Jobs grid.

**Filter by Create Date or Event ID**:

- **Date**: Enter a *date range* to search for the job
- **Event ID**: Enter an *Event ID* associated with the job

**Filter by Job Status**: Select each job status to include in the data grid:

- Scheduled
- Ready
- Finished
- Released
- Active
- Canceled

**SAP Jobs**: A table below the job status options displays results in columns: **Job Name**, **Job Number**, **Status**.

- **Job Log**: Views the selected job's SAP job log information
- **Edit Job**: Modifies the job on the SAP system
- **Copy Job**: Creates a duplicate job on the SAP system

**SAP Global Actions Shortcuts**:

- [BP Resources](#Backgrou)
- [Intercept Jobs](#Intercep)
- [Interception Profiles](#Intercep2)
- [Raise Event](#Raise)

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Copying SAP Jobs](Copying-SAP-Jobs.md)
- [Editing SAP Jobs](Editing-SAP-Jobs.md)
- [Viewing SAP Job Logs](Viewing-SAP-Job-Logs.md)

### Interception Profiles

The **SAP Interception Profiles** screen lists SAP profiles set for job interception and allows creation of additional profiles.

- **Create**: Creates a new interception profile
- **Edit**: Edits an interception profile
- **Activate**: Activates a profile
- **Deactivate**: Deactivates a profile
- **Delete**: Deletes a profile
- **Profile ID**: The ID assigned to the profile
- **Description**: The description for the profile
- **State**: Whether the profile is activated or deactivated. An X indicates active
- **Author**: The User ID that created the profile
- **Refresh**: Refreshes the page

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Managing Interception Profiles](Managing-Interception-Profiles.md)

### Intercept SAP Jobs

The **View Intercepted SAP Jobs** screen lists all intercepted SAP jobs.

:::note
Select a column header to sort in ascending or descending order.
:::

- **Job Name**: The intercepted SAP job name
- **Job Number**: The intercepted SAP job number
- **Childs**: The number of child jobs
- **Parent Child**: Identifies the job as a Child (C) or Parent (P)
- **Parent Count**: If a Child, the intercepted job's SAP parent job number
- **Parent Name**: If a Child, the intercepted job's SAP parent job name
- **Intercepted Date**: Date the job was intercepted
- **Intercepted Time**: Time the job was intercepted
- **Start ASAP**: Enables the selected SAP job to start as soon as a background process is available
- **Refresh**: Retrieves an updated list of intercepted jobs

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Starting Intercepted Jobs ASAP](Starting-Intercepted-Jobs-ASAP.md)

### Background Process Resources

The **Background Process Resources** screen displays the availability of SAP background processes.

- **Query SAP**: Retrieves an updated status of background process resource availability
- **Application Server Name**: Application server names with designated background processes for SAP job processing
- **Host**: Host servers supporting the SAP application
- **Total Processes**: Total background processes assigned for background job processing
- **Free Processes**: Background processes available (not busy) to run jobs

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Monitoring SAP R/3 and CRM Background Process Resources](Monitoring-SAP-R3-and-CRM-Background-Process-Resources.md)

### Raise SAP Events

The **Raise SAP Events** screen sends an SAP event to satisfy an SAP job event requirement.

- **SAP Event Id**: The text event to trigger the preferred SAP job(s). One event triggers all SAP jobs waiting for that event
- **Parameters**: (Optional) Any required parameters for the event
- **Send**: Sends the event to the SAP system

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Raising Events](Raising-Events.md)

### Event Profiles

The **SAP Event History Profiles** screen defines the profile used to match against events on the SAP system, letting you configure which SAP event types to monitor.

- **Create**: Creates a new event history profile
- **Edit**: Edits an event history profile
- **Activate**: Activates a profile
- **Deactivate**: Deactivates a profile
- **Delete**: Deletes a profile
- **Profile ID**: The ID assigned to the profile
- **Description**: The description for the profile
- **State**: Whether the profile is activated or deactivated. An X indicates active
- **Author**: The User ID that created the profile
- **Refresh**: Refreshes the page

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Managing Event Profiles](Managing-Event-Profiles.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| User ID | Enter a *valid SAP login ID* | — | — |
| Password | Enter the correct *SAP password* for the User ID | — | — |
| Language | Enter the *two-character language abbreviation* (e.g., EN for English) | — | — |
| Name | The name of the trigger | — | — |
| SAP Event ID | The ID for the SAP Event | — | — |
| SAP Event Param | The parameters set for the SAP Event | — | — |
| OpCon Events | The number of OpCon Events defined for the trigger | — | — |
| Job Name Criteria | Enter case-sensitive text matching the job name(s) in the SAP system. | — | — |
| Search SAP | Retrieves all job names matching the search criteria and populates the SAP Jobs grid | — | — |
| Date | Enter a *date range* to search for the job | — | — |
| Event ID | Enter an *Event ID* associated with the job | — | — |
| Filter by Job Status | Select each job status to include in the data grid: | — | — |
| SAP Jobs | A table below the job status options displays results in columns: **Job Name**, **Job Number**, **Status** | — | — |
| Job Log | Views the selected job's SAP job log information | — | — |
| Edit Job | Modifies the job on the SAP system | — | — |
| Copy Job | Creates a duplicate job on the SAP system | — | — |
| Profile ID | The ID assigned to the profile | — | — |
| Description | The description for the profile | — | — |
| State | Whether the profile is activated or deactivated. | — | — |
| Author | The User ID that created the profile | — | — |
| Job Name | The intercepted SAP job name | — | — |
| Job Number | The intercepted SAP job number | — | — |
| Childs | The number of child jobs | — | — |
| Parent Child | Identifies the job as a Child (C) or Parent (P) | — | — |

## FAQs

**Q: What does managing sap r/3 and crm background functions involve?**

Managing sap r/3 and crm background functions includes SAP Login, SAP Machine. Access sap r/3 and crm background functions through the Enterprise Manager navigation pane.

**Q: Who can manage sap r/3 and crm background functions in OpCon?**

Users with the appropriate privileges assigned through their role can manage sap r/3 and crm background functions. Contact your OpCon system administrator if you do not have access.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
