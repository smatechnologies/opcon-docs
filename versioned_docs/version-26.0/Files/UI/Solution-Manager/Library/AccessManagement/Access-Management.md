---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Access Management
description: "The Access Management page (_Library > Access Management_) provides views to manage user accounts, privileges, and roles."
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

# Access Management

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Access Management** page (_Library > Access Management_) provides views to manage user accounts, privileges, and roles.

:::note
This page is only available to users with the **System Administrator** role, **All Function Privileges**, or **All Administrative Privileges**.
:::

- **Roles** tab: Lists all roles in the system. Select a role to view or modify it. See [Managing Roles and Privileges](Roles/Managing-Roles-And-Privileges.md)
- **Users** tab: Lists all users in the system. Select a user to view or modify them. See [Managing Users](Users/Managing-Users.md)

---

For conceptual help, see:

- [Privileges](../../../../../administration/privileges.md)
- [Roles](../../../../../administration/roles.md)
- [Users](../../../../../administration/user-accounts.md)

## When Would You Use It?

- You need to provide views to manage user accounts, privileges, and roles using The **Access Management** page (_Library > Access Management_)

## Why Would You Use It?

- **Operational value**: Provides views to manage user accounts, privileges, and roles

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Access Management do?**

title: Access Management

**Q: Where can you find Access Management in OpCon?**

Access Access Management through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
