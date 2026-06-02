---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Additional Department Information
description: How to use the Cross Reference and View Audit buttons in the Departments editor in Enterprise Manager to review job assignments and audit history for a department.
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Viewing Additional Department Information

The **Departments** editor in Enterprise Manager provides two reference tools for an existing department: **Cross Reference** shows all roles, master jobs, and daily jobs assigned to the department, and **View Audit** displays a history of every change made to the department record.

To view additional department information, complete the following steps:

1. Go to **Security** in Enterprise Manager and select **Departments**.
2. Select the department in the **Select a department** list.
3. Select the ![Cross Reference icon](../../../Resources/Images/EM/EMcrossref.png "Cross Reference icon") **Cross Reference** button on the toolbar.
4. Review the cross-reference details, which list the roles, master jobs, and daily jobs assigned to the department, then select **OK**.
5. Select the ![View Audit icon](../../../Resources/Images/EM/EMviewaudit.png "View Audit icon") **View Audit** button on the toolbar.
6. Review the audit records for changes to the department, then select **Close**.

**Result:** You have reviewed the cross-reference assignments and the change history for the selected department.

## Glossary

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
