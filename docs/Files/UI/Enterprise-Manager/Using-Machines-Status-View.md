---
title: Using Machines Status View
description: "The Machines Status view displays information about each machine defined in the OpCon database in three formats: Table, Map, and Statistics."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Using Machines Status View

The **Machines Status** view displays the status and details of every machine (Agent) defined in the OpCon database. The view provides three tabs — **Table**, **Map**, and **Statistics** — and a right-click menu for performing machine actions.

## View Tabs

### Table

The **Table** tab is the default view. It lists all machines in a sortable table with the following columns:

| Column | Description |
|---|---|
| **Machine Status** | Color-coded status indicator (see [Status Colors](#status-colors)) |
| **Machine Name** | The machine name as defined in OpCon |
| **Operating System** | The agent platform type |
| **Last Update** | Timestamp of the last status update from the agent |
| **Running Jobs** | Number of currently running jobs / maximum allowed running jobs |
| **Groups** | Machine groups the machine belongs to |
| **Socket** | TCP/IP socket number used for communication |
| **Version** | Agent version number; displays **Not Reported** if the agent has not provided a version |
| **TLS** | Whether TLS is enabled for communication (`True` or `False`) |

#### Status Colors

The status column uses color coding to indicate communication state:

| Color | Meaning |
|---|---|
| Gray | SMANetCom is not attempting communication with the agent; the machine is marked down by a user |
| Blue | The machine is marked up and the agent is communicating with SMANetCom |
| Red | The machine is marked up, but the agent is not communicating with SMANetCom |
| Orange | The machine is marked up, but communication is limited; SMANetCom is not sending job start information to the agent. See [Job Starts](../../../objects/machines.md#job-starts) |
| Black | The machine is marked up and SMANetCom is waiting for the agent to respond (connection is being established) |

### Map

The **Map** tab displays machines in a graphical layout connected to the OpCon server node. Each machine uses the same color coding as the **Table** tab. Hovering over a machine node shows a tooltip with status, name, last update, running jobs, groups, socket, and version. The same right-click menu is available on the **Map** tab.

### Statistics

The **Statistics** tab displays two pie charts:

- **Communication Status Trend**: Shows the count of machines by communication state — Communicating, Limited, Not Responding, and Disabled.
- **Operating System Trend**: Shows the distribution of machine types (operating systems) defined in the OpCon environment. Each OS type is assigned a color with a legend below the chart.

## Right-Click Menu

Right-click a machine in the **Table** or **Map** tab to access the following actions. Actions that change machine state require the **Maintain Machines** function privilege.

| Action | Description |
|---|---|
| **Machine Information** | Opens machine details. See [Viewing Machine Information](Viewing-Machine-Information.md) |
| **Re-Synchronize Running Jobs** | Counts jobs in the database showing as running for that machine and sets the running job count accordingly. See [Re-Synchronizing Running Jobs](Re-Synchronizing-Running-Jobs.md) |
| **Start Communication** | Sets the machine status to started. Available when the machine is in a stopped state. See [Starting Communication](Starting-Communication.md) |
| **Stop Communication** | Sets the machine status to stopped. Available when the machine is in a started or limited state. See [Stopping Communication](Stopping-Communication.md) |
| **Enable Job Starts** | Enables job starts when the machine status is Limited. See [Enabling Job Starts](Enabling-Job-Starts.md) |
| **Disable Job Starts** | Disables job starts when the machine is in a started state, setting it to Limited. See [Disabling Job Starts](Disabling-Job-Starts.md) |
| **SAP Machine** | Provides access to SAP Background Functions from any SAP R/3 and CRM machine. See [Managing SAP R/3 and CRM Background Functions](Managing-SAP-R3-and-CRM-Background-Functions.md) |
| **Window To Host** | Opens a program to connect to the host system. See [Preferences for Window To Host](Preferences-for-Windows-To-Host.md) |
| **Edit Machine** | Opens the machine editor. See [Editing Machine Information](Editing-Machine-Information.md) |

## Related Topics

- [Changing Machines Status Table Column Order](Changing-MS-Table-Column-Order.md)
- [Changing Sort Order of Machines Status Table](Changing-Sort-Order-of-MS-Table.md)
- [Refreshing Graph Layouts](Refreshing-Graph-Layouts.md)
