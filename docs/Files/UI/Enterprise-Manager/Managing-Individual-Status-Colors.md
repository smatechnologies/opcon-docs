---
title: Managing Individual Job Status Colors
description: "Use this procedure to manage Individual Job Status Colors in the Enterprise Manager."
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

# Managing Individual Job Status Colors

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to manage Individual Job Status Colors in the Enterprise Manager.

:::note
Select the **Restore Defaults** button in the Color Preferences to restore the default color choices.
:::

## When Would You Use It?

- You need to review or update Individual Job Status Colors settings in Enterprise Manager
- Individual Job Status Colors needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Individual Job Status Colors management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Individual Job Status Colors changes are captured in the OpCon audit system, supporting change management and compliance processes

## Editing an Individual Status Color

To set the preferences, complete the following steps:

1. Open the Enterprise Manager application
2. Use menu path: **EnterpriseManager \> Preferences**. The **Preferences** dialog displays
3. Select the arrow (![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow")) next to **Enterprise Manager** in the Preferences tree to expand the list
4. Select on **Colors**. The **Colors** settings display to the right
5. Select the **specific Job Status** in the **Individual Job Status Colors** frame
6. Select the **Edit** button. The **Colors Preference - Individual Job Status Color** dialog displays
7. Select the **Color** button. The **Color** dialog displays
8. Select the **color** and select **OK**
9. Select the **Update List** button
10. Repeat Steps 5 - 9 for additional colors

11. Select **Apply** to save, then **OK** to close the **Preferences** dialog

## Adding an Individual Status Color

To add an Individual Status Color, complete the following steps:

1. [Follow Steps 1 - 4 of Editing an Individual Status Color](#Editing) to access the **Preferences** dialog, then proceed
2. Select the **Add** button in the **Individual Job Status Colors** frame. The **Colors Preference - Individual Job Status Color** dialog displays
3. Select the **Job Status** from the **Please select a Job Status** list
4. Select the **Color** button. The **Color** dialog displays
5. Select the *color* and select **OK**
6. Select the **Add To List** button
7. Repeat Steps 2 - 6 for additional colors
8. Select **Apply** to save, then **OK** to close the **Preferences** dialog

## Removing an Individual Status Color

To remove an Individual Status Color, complete the following steps:

1. [Follow Steps 1 - 4 of Editing an Individual Status Color](#Editing) to access the **Preferences** dialog, then proceed
2. Select the **specific Job Status** in the **Individual Job Status Colors** frame
3. Select the **Remove** button
4. Select **Apply** to save, then **OK** to close the **Preferences** dialog


## FAQs

**Q: What does managing individual job status colors involve?**

Managing individual job status colors includes Editing an Individual Status Color, Adding an Individual Status Color, Removing an Individual Status Color. Access individual job status colors through the Enterprise Manager navigation pane.

**Q: Who can manage individual job status colors in OpCon?**

Users with the appropriate privileges assigned through their role can manage individual job status colors. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
