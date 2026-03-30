---
title: Modify Roles and Privileges Overview
description: "Within each role, privileges are organized into categories."
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

**Theme:** Overview | **Who is it for?** System administrators who configure the detailed privilege settings within a role

## What Is It?

Within each role, privileges are organized into categories. Each category controls a specific dimension of access — general function privileges, department-scoped activities, batch user assignments, resource access, and user membership.

## When Would You Use It?

- Within each role, privileges are organized into categories

## Why Would You Use It?

- **Centralized control**: Within each role, privileges are organized into categories

## When would you use this section?

- Granting or restricting a specific function privilege on a role
- Assigning users to a role or removing them
- Configuring department-scoped activity restrictions
- Managing which batch users or resources a role can access

## What is in this section?

| Page | Description |
|------|-------------|
| General | Core function privileges — administrative, operational, and object-level permissions |
| Activities | Schedule, machine, script, and other resource-specific activity privileges |
| Department Activities | Privileges scoped to specific departments |
| Batch Users | Which batch users this role can use for agent authentication |
| Resources | Threshold and resource access permissions |
| Users | Which users are members of this role |

## Glossary

| Term | Definition |
| --- | --- |
| Department | A named object used to apply function-level security to individual job records. A single department can secure as many jobs as necessary. |
| Machine (Machine (Agent)) | An execution target for OpCon jobs. Each machine runs an agent that communicates with the OpCon server and runs submitted jobs. |
| Privilege | A permission that controls which actions a user can perform or which resources a user can access in OpCon. |
| Resource | A user-defined object with a name and a numeric limit. Used to restrict how many jobs run concurrently across schedules and machines in OpCon. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs in OpCon that represents a business process. Schedules are built each day based on their defined frequencies and calendars. |
| Solution Manager (SM) | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |
| Threshold | A user-defined placeholder with a name and a numeric value. Used to resolve dependencies that cannot be handled by a standard job dependency and to allow external applications to affect schedules. |

## FAQs

**Q: Who manages role privileges in OpCon?**

System administrators are responsible for configuring role privileges, managing user access, and monitoring related processes.

**Q: Where should I start?**

Review the overview pages in the sidebar. If you are new to this area, confirm access and role requirements with your OpCon system administrator before making changes.
