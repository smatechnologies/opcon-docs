---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Access Codes
description: "Available Access Codes are listed under Library > Access Codes."
product_area: Solution Manager
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

# Access Codes

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Available Access Codes are listed under Library > Access Codes.

![Access Code Grid](../../../../../Resources/Images/SM/Library/AccessCodes/AccessCode_Grid.png "Access Codes Grid")

Selecting **Add**, **Copy**, or **Edit** opens the following dialog:

![Access Code Add Edit Copy](../../../../../Resources/Images/SM/Library/AccessCodes/AccessCode_Edit_Add_Copy_Dialog.png "Access Code Add & Edit & Copy Dialog Screen")

:::note
The **Name** field is unique across Access Codes, Resources, and Thresholds.
:::

Select the **Cross References** button to view master and daily jobs that use a particular Access Code.

![Access Code CrossReferences](../../../../../Resources/Images/SM/Library/AccessCodes/AccessCode_Summary_CrossReference.png "Access Codes Cross References Dialog")

- Expand **Secured Master Job** to view master jobs using the selected access code

![Access Code Master Job Cross References](../../../../../Resources/Images/SM/Library/AccessCodes/AccessCode_SecureMasterJobs.png "Access Code Master Job References Dialog")

- Expand **Secured Daily Job** to view daily jobs using the selected access code

![Access Code Daily Job Cross References](../../../../../Resources/Images/SM/Library/AccessCodes/AccessCode_SecureDailyJobs.png "Access Codes Daily Job Cross References Dialog")

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Access Codes do?**

viewport: width=device-width, initial-scale=1.0

**Q: Where can you find Access Codes in OpCon?**

Access Access Codes through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Access Code**: A security label applied to jobs and schedules in OpCon. Users must have the matching access code privilege to view or manage items with that label.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
