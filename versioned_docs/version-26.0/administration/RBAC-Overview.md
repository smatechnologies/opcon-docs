---
title: RBAC Overview
description: "OpCon's RBAC model assigns users to roles, and roles hold specific privileges."
product_area: Administration
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

**Theme:** Overview | **Who is it for?** System administrators who control what users can see and do in OpCon

## What Is It?

OpCon's RBAC model assigns users to roles, and roles hold specific privileges. Privileges control access to administrative functions, schedule and machine management, script management, and department-restricted operations.

## When would you use this section?

- Defining roles for different user groups (operators, developers, administrators)
- Granting or restricting access to specific schedules, machines, or scripts
- Auditing privileges for a specific user or role
- Configuring batch user privileges for agent-level authentication

## What is in this section?

| Topic | Description |
|-------|-------------|
| Roles Reference | Full list of available privilege types and what they control |
| Access Management | The Solution Manager screen for managing roles and users |
| Managing Roles | How to create, copy, delete, and configure role definitions |
| Managing Users | How to create, copy, delete, and configure user accounts |

## Glossary

| Term | Definition |
| --- | --- |
| Department | A named object used to apply function-level security to individual job records. A single department can secure as many jobs as necessary. |
| Machine (Machine (Agent)) | An execution target for OpCon jobs. Each machine runs an agent that communicates with the OpCon server and runs submitted jobs. |
| Privilege | A permission that controls which actions a user can perform or which resources a user can access in OpCon. |
| RBAC (Role-Based Access Control) | A security model in which user permissions are assigned through roles rather than directly to individual users, simplifying access management. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Solution Manager (SM) | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |

## FAQs

**Q: What does the RBAC Overview cover?**

OpCon's RBAC model assigns users to roles, and roles hold specific privileges. Privileges control access to administrative functions, schedule and machine management, script management, and department-restricted operations.
