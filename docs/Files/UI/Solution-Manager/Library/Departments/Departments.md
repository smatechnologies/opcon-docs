---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Departments
description: "Departments are organizational groupings in OpCon used to scope job and schedule access by role. Learn what Departments are, how role privileges apply to them, and how to view the jobs that use a Department."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: conceptual
---

# Departments

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

A Department is an organizational grouping in OpCon that you use to assign jobs to logical divisions. A Department has a name that identifies it. You can scope user roles to specific Departments, which controls the jobs and schedules a user can view and manage.
<!--
![Departments Grid](../../../../../Resources/Images/SM/Library/Departments/Departments.png "Departments Grid")
-->
Departments are available in both Solution Manager and Enterprise Manager.

## How It Works

Each role in OpCon grants a set of function privileges per Department. When you assign Department function privileges to a role, you control exactly which actions members of that role can perform against the jobs and schedules in each Department. For example, separate roles can be limited to maintaining schedules, modifying jobs in daily schedules, or releasing jobs only within the Departments they are responsible for.

Maintaining Departments is itself controlled by a function privilege, so only roles that have been granted the **Maintain Departments** privilege can add, copy, edit, or remove Departments.

### Adding, copying, and editing a Department

Selecting **Add**, **Copy**, or **Edit** opens the corresponding dialog:

![Departments Add Dialog](../../../../../Resources/Images/SM/Library/Departments/AddDepartment.png "Departments Add Dialog")

![Departments Copy Dialog](../../../../../Resources/Images/SM/Library/Departments/CopyDepartment.png "Departments Copy Dialog")

![Departments Edit Dialog](../../../../../Resources/Images/SM/Library/Departments/EditDepartment.png "Departments Edit Dialog")

A Department is identified by its **Name**.

### Viewing where a Department is used

Select the **Cross References** button to view the master and daily jobs that use a particular Department.

![Departments CrossReferences](../../../../../Resources/Images/SM/Library/Departments/Departments_CrossReference.png "Departments Cross References Dialog")

## FAQs

**Q: Where can you find Departments in OpCon?**

You can manage Departments in Solution Manager or Enterprise Manager.

**Q: Who can add or change Departments?**

Only users whose role includes the **Maintain Departments** function privilege can add, copy, edit, or remove Departments.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific Departments, controlling which jobs a user can manage.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**Role**: A named set of permissions in OpCon. A role grants function privileges per Department, which determines the actions its members can perform within each Department.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.

## Related Topics

