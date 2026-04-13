---
title: Editing Profiles
description: "Use this procedure to edit Profiles in the Enterprise Manager."
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

# Editing Profiles

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Profiles in the Enterprise Manager.

To edit a profile, complete the following steps:

1. Open the Enterprise Manager application
2. Use menu path: **EnterpriseManager \> Preferences**. The **Preferences** dialog displays
3. Select the arrow (![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow ")) next to **Enterprise Manager** in the Preferences tree to expand the list
4. Select on **Connection Profiles**. The **Connection Profiles** settings display to the right
5. Select the **Profile** and select **Edit**. The **Database Connection Profile** dialog displays
6. Enter the profile modifications and select **Next**
7. Select **Finish** once the connection to the database is made
8. Select **Apply** to save the changes, then select **OK** to close the **Preferences** dialog

## FAQs

**Q: Do edits to profiles take effect immediately?**

Changes saved to profiles in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
