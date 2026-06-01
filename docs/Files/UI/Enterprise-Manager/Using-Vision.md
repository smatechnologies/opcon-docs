---
lang: en-us
title: Using Vision
description: "The Vision section in Enterprise Manager provides navigation links that open the Vision module pages in Solution Manager — Home, Live, and Settings."
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

# Using Vision

## What Is It?

The **Vision** section in Enterprise Manager provides navigation links that open the Vision module in Solution Manager. Vision is a Solution Manager module that displays tag-based cards summarizing the status of jobs that share a matching tag, along with historical health data for those cards.

Enterprise Manager exposes three nodes under **Vision**:

| Node | Description |
|------|-------------|
| [Home](Using-Home_Vision.md) | Opens the Vision Home page in Solution Manager |
| [Live](Using-Live.md) | Opens the Vision Live page, where you view and interact with Vision cards in real time |
| [Settings](Using-Settings.md) | Opens the Vision Settings page, where you create, edit, and delete Vision cards and manage Vision frequencies, actions, and remote instances |

For full documentation of the Vision module, refer to [Working with Vision](../Solution-Manager/Working-with-Vision.md) in the **Solution Manager** online help.

## Who Has Access?

Access to Vision is controlled by the privileges assigned to your OpCon role. Contact your system administrator if Vision nodes are not visible or if the Vision Home page does not load.

<!-- GAP: The specific privilege or role required to access Vision nodes in Enterprise Manager is not confirmed in source. Needs SME/source. -->

## Glossary

**Enterprise Manager**: OpCon's Windows desktop application for managing automation data, performing operational actions, and administering the system.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Vision**: A Solution Manager module that displays cards summarizing the status of jobs that share a matching tag, along with the historical health of those cards.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, Agents, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
