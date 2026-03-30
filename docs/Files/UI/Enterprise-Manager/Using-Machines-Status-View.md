---
title: Using Machines Status View
description: "The Machines Status view displays information about each machine defined in the OpCon database in three formats: Table, Map, and Statistics."
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

# Using Machines Status View

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Machines Status** view displays information about each machine defined in the OpCon database in three formats: **Table**, **Map**, and **Statistics**.

- **Table** ![Machines Status Table Tab](../../../Resources/Images/EM/EMmachstsTableview.png "Machines Status Table Tab"): The default view. Lists machine information (Machine Status, Machine Name, Operating System, Last Update, Running Jobs, Groups, Socket number, Version number, TLS, and Activity) in a table format. Status column colors indicate machine state:
  - **Gray**: SMANetCom is not attempting communication with the agent (machine is marked down by a user)
  - **Blue**: Machine is marked up and the agent is communicating with SMANetCom
  - **Red**: Machine is marked up, but the agent is not communicating with SMANetCom
  - **Orange**: Machine is marked up, but communication is limited (SMANetCom is not sending job start information to the agent). Refer to [Job Starts](../../../objects/machines.md#job-starts) in the **Machines** section of the **Concepts** online help
- **Map** ![Machines Status Map Tab](../../../Resources/Images/EM/EMmachstsMapview.png "Machines Status Map Tab"): Lists machines in a map format using the same color coding as the **Table** tab. The same right-click menu is available on both tabs
- **Statistics** ![Machines Status Stat Tab](../../../Resources/Images/EM/EMmachstsStatview.png "Machines Status Stat Tab"): Displays two pie charts:
  - **Communication Status Trend**: Shows the number of machines defined and how many are communicating or disabled
  - **Operating System Trend**: Shows machine types defined in the OpCon environment, each assigned a color with a legend below the chart

## When Would You Use It?

- The **Machines Status** view displays information about each machine defined in the OpCon database in three formats: **Table**, **Map**, and **Statistics**

## Why Would You Use It?

- **Using Machines**: The **Machines Status** view displays information about each machine defined in the OpCon database in three formats: **Table**, **Map**, and **Statistics**

## Machines Status View Right-click Menu

- **Machine Information**: Refer to [Viewing Machine Information](Viewing-Machine-Information.md)
- **Re-Synchronize Running Jobs**: Counts jobs in the database showing as running for that machine and sets the running job count accordingly. Refer to [Re-Synchronizing Running Jobs](Re-Synchronizing-Running-Jobs.md)
- **Start Communication**: Changes agent status to started. Refer to [Starting Communication](Starting-Communication.md)
- **Stop Communication**: Changes agent status to stopped. Refer to [Stopping Communication](Stopping-Communication.md)
- **Enable Job Starts**: Enables job starts when machine status is Limited. Refer to [Enabling Job Starts](Enabling-Job-Starts.md)
- **Disable Job Starts**: Disables job starts when machine is in a started state. Refer to [Disabling Job Starts](Disabling-Job-Starts.md)
- **SAP Machine**: Provides access to SAP Background Functions from any SAP R/3 and CRM machine. Refer to [Managing SAP R/3 and CRM Background Functions](Managing-SAP-R3-and-CRM-Background-Functions.md)
- **Window To Host**: Opens a program to connect to the host system. Refer to [Preferences for Window To Host](Preferences-for-Windows-To-Host.md)
- **Edit Machine**: Refer to [Editing Machine Information](Editing-Machine-Information.md)

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")
Related Topics

- [Changing Machines Status Table Column Order](Changing-MS-Table-Column-Order.md)
- [Changing Sort Order of Machines Status Table](Changing-Sort-Order-of-MS-Table.md)
- [Refreshing Graph Layouts](Refreshing-Graph-Layouts.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Machine Information | Refer to Viewing Machine Information | — | — |
| Re-Synchronize Running Jobs | Counts jobs in the database showing as running for that machine and sets the running job count accordingly. | — | — |
| Start Communication | Changes agent status to started. | — | — |
| Stop Communication | Changes agent status to stopped. | — | — |
| Enable Job Starts | Enables job starts when machine status is Limited. | — | — |
| Disable Job Starts | Disables job starts when machine is in a started state. | — | — |
| SAP Machine | Provides access to SAP Background Functions from any SAP R/3 and CRM machine. | — | — |
| Window To Host | Opens a program to connect to the host system. | — | — |
| Edit Machine | Refer to Editing Machine Information | — | — |
## FAQs

**Q: What can you do with Machines Status View?**

Machines Status View allows you to machines status view right-click menu.

**Q: Who has access to Machines Status View?**

Access to Machines Status View is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

## Glossary

**TLS (Transport Layer Security)**: An encryption protocol used to secure TCP/IP communications between SMANetCom and agents, ensuring that job start and status data is transmitted safely.

**SMANetCom (SMA Network Communications Module)**: Handles TCP/IP communication of platform-specific automation information between SAM and all agents. Uses database tables to maintain reliable communication and data integrity.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
