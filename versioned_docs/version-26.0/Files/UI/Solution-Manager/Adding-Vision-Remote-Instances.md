---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Adding Vision Remote Instances
description: "Use this procedure to add Vision Remote Instances in Solution Manager."
product_area: Solution Manager
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

#  Adding Vision Remote Instances

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Vision Remote Instances in Solution Manager.

### Configure Instance Identity and API Connection

To configure the instance name, description, and API connection details, complete the following steps:

1.  Select the **Remote Instances** button on the **Vision Live** or **Vision Settings** page
2.  Select the **Add** button
3.  Enter a *Name* for the remote instance
4.  *(Optional)* Enter a *Description*
5.  Enter the *API URL* in the **Api URL** field
6.  Enter the *API user* in the **Api User** field
7.  Enter the *API password* in the **Api Password** field
8.  Enter the *Solution Manager URL* in the **Solution Manager URL** field
9.  Enter the *user* for submitting Vision actions in the **Vision Action User** field

### Configure Database Connection and Save

To configure the database connection settings and save the remote instance, complete the following steps:

1.  Enter the *SQL Server* in the **SQL Server** field
2.  Enter the *database* in the **Database** field
3.  *(Optional)* Toggle **Windows Auth** to enable or disable Windows Authentication
4.  Enter the *user* in the **User** field
5.  Enter the *password* in the **Password** field
6.  *(Optional)* Toggle **Mirroring** to enable or disable mirroring
7.  Select an *option* for **Transparent Network Ip Resolution**:
    -   **Disabled**
    -   **Enabled**
    -   **Auto**
8.  Select the **Save** button

## When Would You Use It?

- You need to add Vision Remote Instances in Solution Manager
- The environment is expanding and requires additional Vision Remote Instances to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Vision Remote Instances to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Vision Remote Instances and when

## FAQs

**Q: What information is required to add vision remote instances?**

The required fields include **Api URL**, **Api User**, **Api Password**. Select **Save** on the toolbar to save the new record.

**Q: Is documentation required when adding vision remote instances?**

No. The Documentation field is optional. You can enter notes about the vision remote instances to track its purpose, but it is not required to save the record.

## Glossary


**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operations, and building self-service requests. Accessible from any modern web browser.
