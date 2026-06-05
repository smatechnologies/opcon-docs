---
title: Using Health
description: "The Health link in Enterprise Manager opens the Vision Health page in Solution Manager, where you view QoS and SLA dashboard data for Vision cards."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-06-02
doc_type: conceptual
---

# Using Health

## What Is It?

The **Health** node in Enterprise Manager is a navigation link that opens the **Vision Health** page in Solution Manager. Vision Health provides a dashboard of historical data for completed Vision cards and a high-level view of data from the Operations module.

The dashboard displays two performance metrics for each Vision card over a selected time period:

| Metric | Description |
|--------|-------------|
| **QoS (Quality of Service)** | Percentage of times jobs completed successfully |
| **SLA (Service Level Agreement)** | Percentage of times jobs completed within defined SLAs |

You can filter data by week, month, year, or a custom date range, and zoom the chart to a selected range. Color coding indicates threshold status for each card: green (good), orange (tolerable), red (critical), and blue (unknown or no threshold set).

For full documentation of the Vision Health page, including the Vision Diagnostic view and threshold configuration, refer to [Viewing Vision Health](../Solution-Manager/Viewing-Vision-Health.md) in the **Solution Manager** online help.

## Who Has Access?

Access to the Health node is controlled by the privileges assigned to your OpCon role. Contact your system administrator if the **Health** node is not visible or if the Vision Health page does not load.

## Glossary

**Enterprise Manager**: OpCon's Windows desktop application for managing automation data, performing operational actions, and administering the system.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Vision**: A Solution Manager module that displays cards summarizing the status of jobs that share a matching tag, along with historical health data for those cards.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, Agents, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
