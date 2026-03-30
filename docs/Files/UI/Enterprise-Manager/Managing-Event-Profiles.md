---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Managing Event Profiles
description: "For all procedures, begin by navigating to the SAP Event History Profiles dialog: 1."
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

#  Managing Event Profiles

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

For all procedures, begin by navigating to the **SAP Event History Profiles** dialog:

1.  Select on **Machines Status** under the **Operation** topic
2.  Right-click on the preferred **SAP R/3 and CRM machine name**
3.  Hover over **SAP Machine** and select **Event Profiles**. The **SAP Event History Profiles** dialog displays

To create an event profile, complete the following steps:

1.  Go to the **SAP Event History Profiles** dialog
2.  Select the **Create** button. The **Create New Profile** dialog displays
3.  Enter a *profile description* and select **OK**. The **SAP Event History Profile** dialog displays
4.  Set the *criteria*
5.  Select the **Create** button

To edit an event profile, complete the following steps:

1.  Go to the **SAP Event History Profiles** dialog
2.  Select the **SAP profile** in the list
3.  Select the **Edit** button. The **SAP Event History Profile** dialog displays
4.  Edit the *criteria*
5.  Select the **Save** button

**To activate an event profile:**

1.  Go to the **SAP Event History Profiles** dialog
2.  Select the **SAP profile** in the list
3.  Select the **Activate** button

**To deactivate an event profile:**

1.  Go to the **SAP Event History Profiles** dialog
2.  Select the **SAP profile** in the list
3.  Select the **Deactivate** button

**To delete an event profile:**

1.  Go to the **SAP Event History Profiles** dialog
2.  Select the **SAP profile** in the list
3.  Select the **Delete** button

## When Would You Use It?

- You need to review or update Event Profiles settings in Enterprise Manager
- Event Profiles needs to be reviewed as part of routine system maintenance or a compliance audit

## Why Would You Use It?

- **Reduce administrative overhead**: Centralizing Event Profiles management in Enterprise Manager reduces the time needed to locate and update settings across the environment
- All Event Profiles changes are captured in the OpCon audit system, supporting change management and compliance processes

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does managing event profiles involve?**

Managing event profiles includes adding, editing, and deleting records. Access event profiles through the Enterprise Manager navigation pane.

**Q: Who can manage event profiles in OpCon?**

Users with the appropriate privileges assigned through their role can manage event profiles. Contact your OpCon system administrator if you do not have access.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
