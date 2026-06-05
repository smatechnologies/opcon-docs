---
title: Accessing Master Job Definition
description: "As part of the Library module, those with the appropriate privileges can view and modify master job definitions."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Accessing Master Job Definition

## Overview

As part of the **Library** module, those with the appropriate privileges can view and modify master job definitions. **Master Job Definition** has two modes:

- **Read-only**: Review defined properties for the selected job. Properties cannot be edited.
- **Admin**: Modify properties, including platform-specific details, for the selected job.

## Required Privileges

### To view a master job definition

Your role must have all of the following privileges:

- **Schedule Privilege**: Role must have access to the job's parent schedule.
- **Departmental Function Privilege**: Role must have All Function Privileges, Add Jobs To Master Schedules, Modify Jobs In Master Schedules, All Job Master Functions, or View Jobs In Master Schedules for the assigned job's department.
- **Access Code Privilege**: Role must have access to the assigned job access code.
- **Department Privilege**: Role must have access to the assigned job department or All Departments.
- **Machine / Machine Group Privilege**: Role must have access to the assigned job machine or machines in the machine group.

### To edit a master job definition

You must be in the `ocadm` role or your role must have all of the following privileges:

- **Schedule Privilege**: Role must have access to the job's parent schedule.
- **Access Code Privilege**: Role must have access to the assigned job access code with **Allow Job Updates** set to true.
- **Machine / Machine Group Privilege**: Role must have access to the assigned job machine or machines in the machine group.
- **Departmental Function Privilege**: Role must have All Function Privileges, or Modify Jobs In Master Schedules or All Job Master Functions privileges and department privilege.
- **Department Privilege**: Role must have access to the assigned job department or All Departments.

## Open a Master Job Definition

To open a master job definition, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select one job in the list.
1. Select the **Edit Master Job** button to open the **Master Job Definition** page. By default, the page opens in **Read-only** mode.

**Result**: The **Master Job Definition** page displays general job information and expandable panels for the defined job properties.

## Switch to Admin Mode

For users with the appropriate edit privileges, a **Lock** button appears in the toolbar of the **Master Job Definition** page. The button displays **Editing Locked** in **Read-only** mode and **Editing Unlocked** in **Admin** mode.

To switch modes, complete the following steps:

1. Open the **Master Job Definition** page for the job you want to edit. See [Open a Master Job Definition](#open-a-master-job-definition).
1. Select the **Lock** button in the toolbar to toggle between **Read-only** and **Admin** mode.

**Result**: When you switch to **Admin** mode, all available panels are displayed and properties may be modified. When you switch back to **Read-only** mode, you are prompted to save or discard any unsaved changes.

## Master Job Definition Panels

Each expandable panel represents a job property category.

- **Read-only** mode: Only panels with defined properties are displayed; properties cannot be changed.
- **Admin** mode: All available panels are displayed and properties may be modified.

The following panels are available:

| Panel | Description |
|---|---|
| **Task Details** | Platform-specific job configuration |
| **Documentation** | Job documentation text |
| **Tags** | Tags assigned to the job |
| **Frequency** | Frequency definitions and build settings |
| **Events** | Events triggered by job outcomes |
| **Instance Properties** | Named instance property overrides |
| **Job Dependency** | Job-to-job dependency definitions |
| **Expression Dependency** | Property expression dependency |
| **Resource Dependency** | Resource threshold dependencies |
| **Threshold Dependency** | Threshold value dependencies |
| **Resource Update** | Resource counter updates on job completion |
| **Threshold Update** | Threshold value updates on job completion |
| **Notification Triggers** | Notification group assignments |

## Navigation Menu

The menu on the left side of the **Master Job Definition** page provides quick access to any panel. You can collapse the menu to show icons and tooltips only. Selecting a menu item scrolls the view to that panel and expands it.

