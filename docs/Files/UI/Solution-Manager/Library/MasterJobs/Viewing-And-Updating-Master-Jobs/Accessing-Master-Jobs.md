---
title: Accessing Master Job Definition
description: "As part of the Library module, those with the appropriate privileges can view and modify master job definitions."
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

# Accessing Master Job Definition

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

As part of the **Library** module, those with the appropriate privileges can view and modify master job definitions. **Master Job Definition** has two modes:

- **Read-only**: Review defined properties for the selected job. Properties cannot be edited
- **Admin**: Modify properties, including platform-specific details, for the selected job

## Administration

### Required Privileges

To view master job details, you must have at least all of the following privileges:

- **Schedule Privilege**: Role must have access to the job's parent schedule
- **Departmental Function Privilege**: Role must have All Function Privileges, Add Jobs To Master Schedules, Modify Jobs In Master Schedules, All Job Master Functions, or View Jobs In Master Schedules for the assigned job's department
- **Access Code Privilege**: Role must have access to the assigned job access code
- **Department Privilege**: Role must have access to the assigned job department or All Departments
- **Machine / Machine Group Privilege**: Role must have access to the assigned job machine or machines in the machine group

To edit master job details, you must be in the ocadm role or have at least all of the following privileges:

- **Schedule Privilege**: Role must have access to the job's parent schedule
- **Access Code Privilege**: Role must have access to the assigned job access code with **Allow job updates** set to true
- **Machine / Machine Group Privilege**: Role must have access to the assigned job machine or machines in the machine group
- **Departmental Function Privilege**: Role must have All Function Privileges, or Modify Jobs In Master Schedules or All Job Master Functions privileges and department privilege
- **Department Privilege**: Role must have access to the assigned job department or All Departments

## Master Job Definition Access

To access the master job details, complete the following steps:

1. Go to **Library** > **Master Jobs**
1. Select one **job** in the list
1. Select the **View** button at the top-left corner of the panel to access the **Master Job Definition** page. By default, this page is in **Read-only** mode
1. Select the **Back** button to return to the previous page
1. Close the **Selection** panel when done

## Master Job Definition Properties

**Master Job Definition** contains general job information and expandable panels for defined properties. For those with the appropriate privileges, a **Lock** button appears at the top-right corner to switch between modes. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Master Job Definition Read-only Button")) in **Read-only** mode and green and unlocked (![Job Definition Admin Button](../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Job Definition Admin Button")) in **Admin** mode. The page also has a [menu](#Daily3) for quickly accessing the panels.

### General Info

For information about the **General Info** section, refer to [Viewing and Updating General Info](Viewing-And-Updating-General-Info.md).

### Master Job Definition Panels

Each expandable panel represents a job property category.

- **Read-only** mode: Only panels with defined properties are displayed; properties cannot be changed
- **Admin** mode: All available panels are displayed and properties may be modified

### Master Job Definition Menu

The menu in the left portion of the page provides quick access to any master job definition panel. It can be collapsed to show icons and tooltips only. Selecting a menu item scrolls the view to that panel and expands it. right-clicking a menu item toggles **Full Screen** mode.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Read-only | Review defined properties for the selected job. | — | — |
| Admin | Modify properties, including platform-specific details, for the selected job | — | — |
| Schedule Privilege | Role must have access to the job's parent schedule | — | must be in the ocadm role or have at least all of the following privileges:  - **Schedul |
| Departmental Function Privilege | Role must have All Function Privileges, Add Jobs To Master Schedules, Modify Jobs In Master Schedules, All Job Master Functions, or View Jobs In Maste... | — | must be in the ocadm role or have at least all of the following privileges:  - **Schedul |
| Access Code Privilege | Role must have access to the assigned job access code | — | must be in the ocadm role or have at least all of the following privileges:  - **Schedul |
| Department Privilege | Role must have access to the assigned job department or All Departments | — | must be in the ocadm role or have at least all of the following privileges:  - **Schedul |
| Machine / Machine Group Privilege | Role must have access to the assigned job machine or machines in the machine group | — | must be in the ocadm role or have at least all of the following privileges:  - **Schedul |
## FAQs

**Q: How many steps does the Accessing Master Job Definition procedure involve?**

The Accessing Master Job Definition procedure involves 5 steps. Complete all steps in order and save your changes.

**Q: What does Accessing Master Job Definition cover?**

This page covers Required Privileges, Master Job Definition Access, Master Job Definition Properties.

## Glossary

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
