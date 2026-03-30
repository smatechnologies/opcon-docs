---
title: PERT View Flow Diagram Icons
description: "Each job is represented by a rectangle (job box) containing a colored bar indicating job status, an icon representing the job type, the job name, and icons for special information."
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

# PERT View Flow Diagram Icons

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Each job is represented by a rectangle (job box) containing a colored bar indicating job status, an icon representing the job type, the job name, and icons for special information. For Job Status colors, refer to [Setting Preferences for Status Colors](Preferences-for-Status-Colors.md). For job status descriptions, see [Job Statuses](../../../operations/status-descriptions.md#job-statuses) in the **Concepts** online help.

## When Would You Use It?

- Each job is represented by a rectangle (job box) containing a colored bar indicating job status, an icon representing the job type, the job name, and icons for special information

## Why Would You Use It?

- **PERT View**: Each job is represented by a rectangle (job box) containing a colored bar indicating job status, an icon representing the job type, the job name, and icons for special information

## Job Type Icons

The diagram may display any of the following job type icons:

|||
|---|---|
|![BIS Job icon](../../../Resources/Images/EM/jobicon_bis.png "BIS Job icon")|BIS|
|![OS 2200 Job icon](../../../Resources/Images/EM/jobicon_os2200.png "OS 2200 Job icon")|OS 2200|
  ![Container Job icon](../../../Resources/Images/EM/jobicon_container.png "Container Job icon")              Container       ![SAP BW Job icon](../../../Resources/Images/EM/jobicon_sapbw.png "SAP BW Job icon")            SAP BW
  ![File Transfer Job icon](../../../Resources/Images/EM/jobicon_filetransfer.png "File Transfer Job icon")   File Transfer   ![SAP Job icon](../../../Resources/Images/EM/jobicon_sap.png "SAP Job icon")                    SAP R/3 and CRM
  ![IBM i Job icon](../../../Resources/Images/EM/jobicon_iseries.png "IBM i Job icon")                        IBM i           ![SQL Job icon](../../../Resources/Images/EM/jobicon_sql.png "SQL Job icon")                    SQL
  ![Java Job icon](../../../Resources/Images/EM/jobicon_java.png "Java Job icon")                             Java            ![Tuxedo ART Job icon](../../../Resources/Images/EM/jobicon_tuxedo.png "Tuxedo ART Job icon")   Tuxedo ART
  ![MCP Job icon](../../../Resources/Images/EM/jobicon_mcp.png "MCP Job icon")                                MCP             ![UNIX Job icon](../../../Resources/Images/EM/jobicon_unix.png "UNIX Job icon")                 UNIX
  ![Null Job icon](../../../Resources/Images/EM/jobicon_null.png "Null Job icon")                             Null Job        ![Windows Job icon](../../../Resources/Images/EM/jobicon_windows.png "Windows Job icon")        Windows
  ![OpenVMS Job icon](../../../Resources/Images/EM/jobicon_openvms.png "OpenVMS Job icon")                    OpenVMS         ![z/OS Job icon](../../../Resources/Images/EM/jobicon_zOS.png "z/OS Job icon")                  z/OS
  ----------------------------------------------------------------------------------------------------------- --------------- ----------------------------------------------------------------------------------------------- -----------------

## Information Icons

The diagram may also display any of the following information icons:

  ------------------------------------------------------------------------------------------------------- --------------------------------------------------------
  ![Circular Dependency icon](../../../Resources/Images/EM/cir_dep.png "Circular Dependency icon")        The job has a circular dependency.
  ![Event icon](../../../Resources/Images/EM/event.png "Event icon")                                      The job has an event.
  ![Dependency icon](../../../Resources/Images/EM/dep_icon.png "Dependency icon")                         The job has a dependency on a job in another schedule.
  ![Dependency icon](../../../Resources/Images/EM/dep_icon2.png "Dependency icon")                        The job has a dependency on another schedule date
  ![Dependency icon](../../../Resources/Images/EM/dep_icon3.png "Dependency icon")                        A job required by this job is missing.
  ![Expression Dependency icon](../../../Resources/Images/EM/expr_dep.png "Expression Dependency icon")   A job has an expression dependency.
  ![Threshold Update icon](../../../Resources/Images/EM/EMinsertthreshold.png "Threshold Update icon")    A job has a threshold/ resource update.
  ------------------------------------------------------------------------------------------------------- --------------------------------------------------------
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does PERT View Flow Diagram Icons cover?**

This page covers Job Type Icons, Information Icons.

## Glossary

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Null Job**: A job type that performs no execution on any platform. Null jobs are used to hold dependencies, trigger OpCon events, and keep schedules open after all other jobs complete.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
