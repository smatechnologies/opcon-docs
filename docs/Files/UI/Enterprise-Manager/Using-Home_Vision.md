---
title: Using Home
description: "The Home node under Vision in Enterprise Manager opens the Vision Home page in Solution Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-05-29
doc_type: conceptual
---

# Using Home

## What Is It?

In Enterprise Manager, the **Home** node under **Vision** opens the **Vision Home** page in Solution Manager. Use it to move directly from Enterprise Manager into Vision without opening Solution Manager separately. For more information about Vision, refer to [Working with Vision](../Solution-Manager/Working-with-Vision.md) in the **Solution Manager** online help.

## How It Works

When you select **Home** under **Vision**, Enterprise Manager opens Solution Manager in a browser view. Enterprise Manager builds the address from the configured Solution Manager URL and the Vision page path, so the **Vision Home** page opens directly.

<!-- GAP: The configured Solution Manager URL is read from the SM_URL setting; where an administrator sets SM_URL in the UI is not confirmed in source. Needs SME/source. -->

## FAQs

**Q: Who has access to Home?**

Access to Home is controlled by the privileges assigned to your OpCon role. Contact your system administrator if you need access.

<!-- GAP: The specific privilege required to open the Vision Home page is not confirmed in source. Needs SME/source. -->

## Related Topics

- [Working with Vision](../Solution-Manager/Working-with-Vision.md)

## Glossary

**Enterprise Manager**: OpCon's Windows desktop application for managing automation data, performing operational actions, and administering the system.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Vision**: A Solution Manager module that displays cards summarizing the status of jobs that share a matching tag, along with the historical health of those cards.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, Agents, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
