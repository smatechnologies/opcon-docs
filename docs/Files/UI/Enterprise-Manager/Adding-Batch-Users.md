---
title: Adding Batch Users
description: "Use this procedure to add Batch Users in the Enterprise Manager."
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

# Adding Batch Users

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Batch Users in the Enterprise Manager.

## Setting up a New Microsoft (MS) agent Batch User

To add a Windows batch user, complete the following steps:

1. Select **Batch Users** under the **Security** topic. The **Batch User** screen displays
2. Select **Windows** in the **Select the target OS** list
3. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Batch Users** toolbar
4. Enter a valid *Windows User* in the **User** text box
5. Enter the *user's password* in the **Password** text box

6. Enter the *user's password* again in the **Confirm Password** text box
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Batch Users** toolbar

## Adding a Batch User for IBM i

To add an IBM i batch user, complete the following steps:

1. Select **Batch Users** under the **Security** topic. The **Batch User** screen displays
2. Select **IBM i** in the **Select the target OS** list
3. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Batch Users** toolbar
4. Enter a valid *user profile* in the **User Profile** text box
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Batch Users** toolbar

## Adding a Batch User for MCP

To add an MCP batch user, complete the following steps:

1. Select **Batch Users** under the **Security** topic. The **Batch User** screen displays
2. Select **MCP** in the **Select the target OS** list
3. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Batch Users** toolbar
4. Enter a valid *identifier* in the **Identifier** text box
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Batch Users** toolbar

## Adding a Batch User for OpenVMS

To add an OpenVMS batch user, complete the following steps:

1. Select **Batch Users** under the **Security** topic. The **Batch User** screen displays
2. Select **OpenVMS** in the **Select the target OS** list
3. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Batch Users** toolbar
4. Enter a valid *identifier* (maximum 12 characters) in the **Identifier** text box
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Batch Users** toolbar

## Adding a Batch User for SQL

To add an SQL batch user, complete the following steps:

1. Select **Batch Users** under the **Security** topic. The **Batch User** screen displays
2. Select **SQL** in the **Select the target OS** list
3. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Batch Users** toolbar
4. Enter a valid *Windows User* in the **User** text box
5. Enter the *user's password* in the **Password** text box

6. Enter the *user's password* again in the **Confirm Password** text box
7. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Batch Users** toolbar

## Adding a Batch User for UNIX

To add a UNIX batch user, complete the following steps:

1. Select **Batch Users** under the **Security** topic. The **Batch User** screen displays
2. Select **UNIX** in the **Select the target OS** list
3. Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Batch Users** toolbar
4. Enter the *group ID* (number or name), a *slash (/)*, and the *user ID* (number or name) in the **Group/User** text box
5. Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Batch Users** toolbar


## FAQs

**Q: Where do you access Batch Users in the Enterprise Manager?**

Select **Batch Users** under the **Security** topic in the Enterprise Manager navigation pane.

**Q: What information is required to add batch users?**

The required fields include **Password**, **Password**. Select **Save** on the toolbar to save the new record.

**Q: Can you add batch users for multiple platforms?**

Yes. This page covers batch users for multiple platforms or contexts: Setting up a New Microsoft (MS) agent Batch User, Adding a Batch User for IBM i, Adding a Batch User for MCP.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
