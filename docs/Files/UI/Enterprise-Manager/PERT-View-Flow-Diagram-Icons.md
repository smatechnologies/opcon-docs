---
title: PERT View Flow Diagram Icons
description: "Each job in the PERT View is shown as a job box with a colored status bar, a job type icon, the job name, and information icons that flag dependencies, events, and threshold or resource updates."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-05-29
doc_type: conceptual
---

# PERT View Flow Diagram Icons

## What Is It?

The PERT View flow diagram shows the jobs in a schedule and the relationships between them. Each job appears as a rectangle (a job box) that contains a colored bar indicating job status, an icon representing the job type, the job name, and one or more information icons that flag special conditions such as dependencies, events, and threshold or resource updates.

Use the icons to read a schedule at a glance: the job type icon tells you what platform or technology the job runs on, and the information icons tell you why a job might wait, what it depends on, or what it updates when it completes.

For the colored status bar, see [Setting Preferences for Status Colors](Preferences-for-Status-Colors.md). For job status descriptions, see [Job Statuses](../../../operations/status-descriptions.md#job-statuses) in the **Concepts** online help.

## Job Type Icons

The diagram can display any of the following job type icons:

| Icon | Job type |
|---|---|
| ![BIS Job icon](../../../Resources/Images/EM/jobicon_bis.png "BIS Job icon") | BIS |
| ![Container Job icon](../../../Resources/Images/EM/jobicon_container.png "Container Job icon") | Container |
| ![File Transfer Job icon](../../../Resources/Images/EM/jobicon_filetransfer.png "File Transfer Job icon") | File Transfer |
| ![IBM i Job icon](../../../Resources/Images/EM/jobicon_iseries.png "IBM i Job icon") | IBM i |
| ![Java Job icon](../../../Resources/Images/EM/jobicon_java.png "Java Job icon") | Java |
| ![MCP Job icon](../../../Resources/Images/EM/jobicon_mcp.png "MCP Job icon") | MCP |
| ![Null Job icon](../../../Resources/Images/EM/jobicon_null.png "Null Job icon") | Null Job |
| ![OpenVMS Job icon](../../../Resources/Images/EM/jobicon_openvms.png "OpenVMS Job icon") | OpenVMS |
| ![OS 2200 Job icon](../../../Resources/Images/EM/jobicon_os2200.png "OS 2200 Job icon") | OS 2200 |
| ![SAP BW Job icon](../../../Resources/Images/EM/jobicon_sapbw.png "SAP BW Job icon") | SAP BW |
| ![SAP Job icon](../../../Resources/Images/EM/jobicon_sap.png "SAP Job icon") | SAP R/3 and CRM |
| ![SQL Job icon](../../../Resources/Images/EM/jobicon_sql.png "SQL Job icon") | SQL |
| ![Tuxedo ART Job icon](../../../Resources/Images/EM/jobicon_tuxedo.png "Tuxedo ART Job icon") | Tuxedo ART |
| ![UNIX Job icon](../../../Resources/Images/EM/jobicon_unix.png "UNIX Job icon") | UNIX |
| ![Windows Job icon](../../../Resources/Images/EM/jobicon_windows.png "Windows Job icon") | Windows |
| ![z/OS Job icon](../../../Resources/Images/EM/jobicon_zOS.png "z/OS Job icon") | z/OS |

## Information Icons

The diagram can also display any of the following information icons:

| Icon | Meaning |
|---|---|
| ![Circular Dependency icon](../../../Resources/Images/EM/cir_dep.png "Circular Dependency icon") | The job has a circular dependency. |
| ![Event icon](../../../Resources/Images/EM/event.png "Event icon") | The job has an event. |
| ![Dependency icon](../../../Resources/Images/EM/dep_icon.png "Dependency icon") | The job has a dependency on a job in another schedule. |
| ![Dependency icon](../../../Resources/Images/EM/dep_icon2.png "Dependency icon") | The job has a dependency on another schedule date. |
| ![Dependency icon](../../../Resources/Images/EM/dep_icon3.png "Dependency icon") | A job required by this job is missing. |
| ![Expression Dependency icon](../../../Resources/Images/EM/expr_dep.png "Expression Dependency icon") | The job has an expression dependency. |
| ![Threshold Update icon](../../../Resources/Images/EM/EMinsertthreshold.png "Threshold Update icon") | The job has a threshold or resource update. |

## FAQs

**Why does a job show more than one icon?**

A job box shows a job type icon together with any information icons that apply, so a job can display several icons at once, for example a job that has both an event and a dependency on another schedule. <!-- GAP: exact rule that a job box always shows exactly one job type icon and may show multiple information icons simultaneously is unverified in source -->

**What is the difference between the three dependency icons?**

Each dependency icon represents a different relationship: a dependency on a job in another schedule, a dependency on another schedule date, and a job required by this job that is missing.

## Glossary

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Null Job**: A job type that runs no work on any platform. Null jobs are used to hold dependencies, trigger OpCon events, and keep schedules open after all other jobs complete.

**Threshold**: A numeric variable stored in the OpCon database used to control whether a job runs. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent runs and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

## Related Topics

- [Setting Preferences for Status Colors](Preferences-for-Status-Colors.md)
- [Job Statuses](../../../operations/status-descriptions.md#job-statuses)
