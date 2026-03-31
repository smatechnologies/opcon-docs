---
title: Navigation Editors
description: "Navigation Editors (e.g., Schedule Master, Job Master, Calendars, Global Properties, Thresholds, Resources, Machines, Machine Groups, Server Options, Roles, User Accounts, Batch Users, Departments."
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

# Navigation Editors

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Navigation Editors (e.g., Schedule Master, Job Master, Calendars, Global Properties, Thresholds, Resources, Machines, Machine Groups, Server Options, Roles, User Accounts, Batch Users, Departments, Access Codes, Privileges) provide screens to update information stored in the OpCon database. Any number of editors can be open simultaneously, but only one can be active at a time.

## When Would You Use It?

- You need to provide screens to update information stored in the OpCon database using Navigation Editors (e.g., Schedule Master, Job Master, Calendars, Global Properties, Thresholds, Resources, Machines, Machine Groups, Server Options, Roles, User Accounts, Batch Users, Departments, Access Codes, Privileges)

## Why Would You Use It?

- **Operational value**: Provide screens to update information stored in the OpCon database

## Opening Navigation Editors

To open Navigation Editors, complete the following steps:

1. Select the arrow to expand a Navigation topic in the [Navigation Panel](Navigation-Panel.md)
2. Select the **Navigation Editor** (e.g., **Schedule Master**)
3. *(Optional)* Drag the **Navigation Editor** tab onto the tab bar if not already attached
4. Repeat Step 2 to open additional editors

## Changing Navigation Editor Tab Order

Drag and release the **Navigation Editor** tab to the new position on the tab bar.

:::note
A stack symbol (![Three white folders with black borders stacked](../../../Resources/Images/EM/stacked-folders.png "Stacked icon")) appears as you drag over other editor tabs.
:::

## Arranging Navigation Editors

1. Drag the **Navigation Editor** tab toward where you want it to display (left, right, top, or bottom)
2. Release when the stack symbol changes to an arrow. The editor drops into place

## Right-click Menu for Editors

right-clicking any **Navigation Editor** tab displays these options:

- **Restore**: Restores the editor to its previous location
- **Move**: Frees the editor or tab group to move to another location
  - **Editor**: Moves the individual editor
  - **Tab Group**: Moves the entire grouped set of editors
- **Size**: Highlights a border edge so you can drag the editor pane to a preferred size
  - **Left / Right / Top / Bottom**: Highlights the corresponding border edge
- **Minimize**: Minimizes the editor and places an icon on the right vertical sidebar
- **Maximize**: Maximizes the editor to full size
- **Close**: Closes the open editor
- **Close Others**: Closes all other open editors
- **Close All**: Closes all open editors
- **New Editor**: Opens a new instance of the currently selected editor

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Restore | Restores the editor to its previous location | — | — |
| Size | Highlights a border edge so you can drag the editor pane to a preferred size | — | — |
| Minimize | Minimizes the editor and places an icon on the right vertical sidebar | — | — |
| Maximize | Maximizes the editor to full size | — | — |
| Close Others | Closes all other open editors | — | — |
| Close All | Closes all open editors | — | — |
| New Editor | Opens a new instance of the currently selected editor | — | — |
## FAQs

**Q: How many steps does the Navigation Editors procedure involve?**

The Navigation Editors procedure involves 6 steps. Complete all steps in order and save your changes.

**Q: What does Navigation Editors cover?**

This page covers Opening Navigation Editors, Changing Navigation Editor Tab Order, Arranging Navigation Editors.

## Glossary

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
