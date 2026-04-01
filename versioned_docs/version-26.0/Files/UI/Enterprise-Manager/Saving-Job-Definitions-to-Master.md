---
title: Saving Job Definitions to Master
description: "If you are in the ocadm role, or have function privileges to Modify Jobs in Daily Schedule and Modify Jobs in Job Master Schedules, this tool saves the platform-specific job definition information to."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Saving Job Definitions to Master

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

If you are in the ocadm role, or have function privileges to *Modify Jobs in Daily Schedule* and *Modify Jobs in Job Master Schedules*, this tool saves the platform-specific job definition information to the Master (starting below the **Machine Selection** section).

:::note
The **Save Job Definition to Master** feature does not include any other information on the screen.
:::

To perform this procedure, complete the following steps:

1. Select on **Daily Maintenance** under the **Operation** topic. The **Daily Maintenance** screen displays
2. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **date** for the schedule
3. Select the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png) **arrow** to expand the **schedule**
4. Select the **job**
5. Select the **Edit Daily** button in the **Maintenance** frame at the bottom-right of the screen. The **Job Daily** screen displays
6. Select the **Save Job Definition to Master** button on the **Job Daily** toolbar
7. Select **OK** to copy the job details to the Master definition
8. Select **Close ☒** (to the right of the **Daily Maintenance** tab) to close the **Daily Maintenance** screen

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Saving Job Definitions to Master procedure involve?**

The Saving Job Definitions to Master procedure involves 8 steps. Complete all steps in order and save your changes.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
