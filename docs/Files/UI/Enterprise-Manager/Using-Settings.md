---
title: Using Settings
description: "The Settings node under Vision in Enterprise Manager opens the Vision Settings page in Solution Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-01
doc_type: conceptual
---

# Using Settings

## What Is It?

In Enterprise Manager, the **Settings** node under **Vision** opens the **Vision Settings** page in Solution Manager. Use it to move directly from Enterprise Manager into Vision Settings without opening Solution Manager separately.

Vision Settings is where you create, edit, and delete Vision cards and view the hierarchy of existing cards. For more information, refer to [Managing Vision Settings](../Solution-Manager/Managing-Vision-Settings.md) in the **Solution Manager** online help.

## How It Works

When you select **Settings** under **Vision**, Enterprise Manager opens Solution Manager in a browser view. Enterprise Manager builds the address from the configured Solution Manager URL and the Vision Settings page path, so the **Vision Settings** page opens directly.

Access to Vision Settings requires the **Maintain Vision Workspaces** Function Privilege. Contact your system administrator if you need access.

## Related Topics

- [Managing Vision Settings](../Solution-Manager/Managing-Vision-Settings.md)
- [Using Vision](Using-Vision.md)
- [Using Home](Using-Home_Vision.md)
- [Using Live](Using-Live.md)

## Glossary

**Enterprise Manager**: OpCon's Windows desktop application for managing automation data, performing operational actions, and administering the system.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Vision**: A Solution Manager module that displays cards summarizing the status of jobs that share a matching tag, along with the historical health of those cards.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, Agents, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
