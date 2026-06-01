---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Workflow Designer Flow Diagram Icons
description: "Each job in the Workflow Designer diagram is represented by a rectangle containing the job name, colored squares for frequencies, a job type indicator, and information indicators for special conditions."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Workflow Designer Flow Diagram Icons

In the Enterprise Manager Workflow Designer, each job appears as a rectangle in the flow diagram. The rectangle contains the job name, colored indicators for its assigned frequencies, a job type indicator, and one or more information indicators that reflect special conditions such as dependencies, events, and threshold updates.

## Job Type Indicators

The diagram displays one of the following indicators to identify the platform or job type.

| Indicator | Job Type |
|---|---|
| ![BIS Job icon](../../../Resources/Images/EM/jobicon_bis.png "BIS Job icon") | BIS |
| ![Container Job icon](../../../Resources/Images/EM/jobicon_container.png "Container Job icon") | Container |
| ![EASE Job icon](../../../Resources/Images/EM/jobicon_ease.png "EASE Job icon") | EASE |
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
| ![VSE Job icon](../../../Resources/Images/EM/jobicon_vse.png "VSE Job icon") | VSE |
| ![Windows Job icon](../../../Resources/Images/EM/jobicon_windows.png "Windows Job icon") | Windows |
| ![z/OS Job icon](../../../Resources/Images/EM/jobicon_zOS.png "z/OS Job icon") | z/OS |

## Information Indicators

The diagram also displays the following indicators when special conditions apply to a job.

| Indicator | Condition |
|---|---|
| ![Circular Dependency icon](../../../Resources/Images/EM/cir_dep.png "Circular Dependency icon") | The job has a cyclic dependency. |
| ![Event icon](../../../Resources/Images/EM/event.png "Event icon") | The job has an event. |
| ![Dependency icon](../../../Resources/Images/EM/dep_icon.png "Dependency icon") | The job has a dependency on a job in another schedule. |
| ![Expression Dependency icon](../../../Resources/Images/EM/expr_dep.png "Expression Dependency icon") | The job has an expression dependency. |
| ![Threshold Update icon](../../../Resources/Images/EM/EMinsertthreshold.png "Threshold Update icon") | The job has a threshold or resource update. |

<!-- GAP: The source code (JobStatusBarFigure.java) also renders indicators for cross-day dependencies, missing a dependency (warning), and missing a required dependency. Confirm the image paths for these indicators (ICO_XDAY_DEPENDENCY, ICO_MISSING_DEPENDENCY, ICO_DEPENDENCY_MISSING, ICO_DEPENDENCY_BREAK) and add rows for them if images are available in docs/Resources/Images/EM/. -->
