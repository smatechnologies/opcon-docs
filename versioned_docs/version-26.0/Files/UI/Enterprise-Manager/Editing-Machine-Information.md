---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Machine Information
description: "Use this procedure to view or edit machine information details."
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

#  Editing Machine Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view or edit machine information details.

To perform this procedure, complete the following steps:

1.  Select on **Machines Status** under the **Operation** topic
2.  Select on the **Table** tab or the **Map** tab
3.  *(Optional)* Right-click on the **machine** to edit
4.  Select **Edit Machine** from the menu. The **Machines** screen displays
5.  *(Optional)* Edit the **machine** information
6.  Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Machines** toolbar
7.  *(Optional)* Select **Advanced Settings Panel**. The **Advanced Machine Properties** dialog displays
8.  Edit the *machine properties* information
9.  Select the **Save** button in the dialog
10. Select **Close ☒** (to the right of the **Machines** tab) to close the **Machines** screen

## FAQs

**Q: Do edits to machine information take effect immediately?**

Changes saved to machine information in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
