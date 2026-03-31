---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Additional Department Information
description: "To view Additional Department Information in the Enterprise Manager, complete the following steps: 1."
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

#  Viewing Additional Department Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

To view Additional Department Information in the Enterprise Manager, complete the following steps:

1.  Select on **Departments** under the **Security** topic
2.  Select the **department** in the **Select a department** list
3.  Select the ![Cross Reference icon](../../../Resources/Images/EM/EMcrossref.png "Cross Reference icon") **Cross Reference** button on the toolbar to view a list of jobs, then select **OK**
4.  Select the ![View Audit icon](../../../Resources/Images/EM/EMviewaudit.png "View Audit icon") **View Audit** button to view audit records for changes to the Department, then select **Close**

## When Would You Use It?

- You need to inspect or audit Additional Department Information records in Enterprise Manager
- An audit, compliance review, or operational check requires inspection of current Additional Department Information state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting Additional Department Information records in Enterprise Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Enterprise Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection


## FAQs

**Q: How many steps does the Viewing Additional Department Information procedure involve?**

The Viewing Additional Department Information procedure involves 4 steps. Complete all steps in order and save your changes.

## Glossary

**Department**: An organizational grouping in OpCon used to assign jobs to logical divisions. User roles can be scoped to specific departments, controlling which jobs a user can manage.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
