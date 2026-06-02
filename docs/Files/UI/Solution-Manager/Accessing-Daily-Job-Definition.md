---
title: Accessing Daily Job Definition
description: "As part of the Operations module, users with the appropriate privileges can view the daily job definition and modify job properties."
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

# Accessing Daily Job Definition

As part of the **Operations** module, users with the appropriate privileges can view the daily job definition and modify job properties. **Daily Job Definition** has two modes:

- **Read-only**: Review defined properties for the selected job. Properties cannot be edited in this mode.
- **Admin**: Modify properties, including reconfiguring platform-specific details, for the selected job.

## Required Privileges

To view the daily job definition, you must have all of the following privileges:

- **Schedule Privilege**: You must be in a role with access to the job's parent schedule.
- **Departmental Function Privilege**: You must be in a role with **View Jobs in Daily Schedules** and **View Jobs in Schedule Operations** privileges for the assigned job's department.
- **Access Code Privilege**: You must be in a role with access to the assigned job access code.

To edit the daily job definition, you must be in the `ocadm` role or have all of the following privileges:

- **Schedule Privilege**: You must be in a role with access to the job's parent schedule.
- **Departmental Function Privilege**: You must be in a role with **View Jobs in Daily Schedules**, **View Jobs in Schedule Operations**, and **Modify Jobs in Daily Schedules** privileges for the assigned job's department.
- **Access Code Privilege**: You must be in a role with access to the assigned job access code and the **Allow job updates** option set to true.

## Accessing Daily Job Definition

To access the daily job definition, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page. The **Processes** page displays.
2. Ensure both the **Date** and **Schedule** toggle switches are enabled. Each switch appears green when enabled.
3. Select the desired date or dates to display the associated schedules.
4. Select one or more schedules in the list.
5. Select one job in the list. Your selection appears in the [status bar](SM-UI-Layout.md#Status) at the bottom of the page as a breadcrumb trail.
6. Select the job record (for example, **1 job(s)**) in the status bar to display the **Selection** panel.
7. Select the **Daily Job Definition** button ![Daily Job Definition Button](../../../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button") at the top-left corner of the panel.

The **Daily Job Definition** page opens in **Read-only** mode by default.

:::note
Daily Job Definition can also be accessed while in PERT View. For more information, refer to [PERT View Daily Job Definition Access](Using-PERT-View.md#PERT10).
:::

## Daily Job Definition Properties

**Daily Job Definition** contains general job information and expandable panels that expose defined properties. Users with appropriate privileges see a **Lock** button at the top-right corner to switch between modes. The button appears gray and locked (![Daily Job Definition Read-only Button](../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button")) in **Read-only** mode and green and unlocked (![Job Definition Admin Button](../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Job Definition Admin Button")) in **Admin** mode. A [menu](#daily-job-definition-menu) provides quick access to all panels.

![Daily Job Definition in Solution Manager](../../../Resources/Images/SM/Daily-Job-Definition.png "Daily Job Definition in Solution Manager")

### General Info

For information about the **General Info** section, refer to [Viewing and Updating General Info](Viewing-and-Updating-General-Info.md).

### Daily Job Definition Panels

Each expandable panel on the **Daily Job Definition** page represents a job property category.

- In **Read-only** mode, only panels with defined properties are displayed and cannot be changed.
- In **Admin** mode, all available panels are displayed and properties may be modified.

Select any of the following links to learn more about each panel:

- [Documentation](Viewing-and-Updating-Documentation.md)
- [Task Details](Viewing-and-Updating-Job-Task-Details.md)
- [Frequency](Viewing-and-Updating-Job-Frequencies.md)
- [Instance Properties](Viewing-and-Updating-Instance-Properties.md)
- [Expression Dependency](Viewing-and-Updating-Expression-Dependencies.md)
- [Resource Dependency](Viewing-and-Updating-Resource-Dependencies.md)
- [Threshold Dependency](Viewing-and-Updating-Threshold-Dependencies.md)
- [Resource Update](Viewing-and-Updating-Resource-Updates.md)
- [Threshold Update](Viewing-and-Updating-Threshold-Updates.md)

### Daily Job Definition Menu

The menu in the left portion of the page provides quick access to any panel. The menu can be collapsed to show icons and tooltips only. Selecting a menu item scrolls to that panel and expands it. Right-clicking a menu item toggles **Full Screen** mode.

![Daily Job Definition Menu](../../../Resources/Images/SM/Daily-Job-Definition-Menu.png "Daily Job Definition Menu")

## Related Topics

- [Accessing Job Summary](Accessing-Job-Summary.md)
- [Using PERT View](Using-PERT-View.md)
- [Viewing and Updating General Info](Viewing-and-Updating-General-Info.md)
- [Viewing and Updating Documentation](Viewing-and-Updating-Documentation.md)
- [Viewing and Updating Instance Properties](Viewing-and-Updating-Instance-Properties.md)
- [Viewing and Updating Job Task Details](Viewing-and-Updating-Job-Task-Details.md)
- [Viewing and Updating Job Frequencies](Viewing-and-Updating-Job-Frequencies.md)
- [Viewing and Updating Expression Dependencies](Viewing-and-Updating-Expression-Dependencies.md)
- [Viewing and Updating Resource Dependencies](Viewing-and-Updating-Resource-Dependencies.md)
- [Viewing and Updating Threshold Dependencies](Viewing-and-Updating-Threshold-Dependencies.md)
- [Viewing and Updating Resource Updates](Viewing-and-Updating-Resource-Updates.md)
- [Viewing and Updating Threshold Updates](Viewing-and-Updating-Threshold-Updates.md)
