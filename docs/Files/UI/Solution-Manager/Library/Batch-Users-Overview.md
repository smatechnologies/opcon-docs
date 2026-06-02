---
lang: en-us
title: Batch Users Overview
description: "Batch users are operating system credentials that OpCon uses to authenticate job submissions to agents on IBM i, MCP, OpenVMS, SQL, UNIX, and Windows platforms."
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

# Batch Users Overview

Batch users are operating system credentials that OpCon uses to authenticate job submissions to agents. Each batch user is associated with a specific platform type and holds the login name — and, where required, the password — that the agent uses to run submitted jobs.

Most platforms require a valid batch user on every job that OpCon submits. Without a correctly configured batch user, OpCon cannot run jobs on the target machine.

Common tasks in this area include:

- Configuring credentials for a new platform or agent
- Updating a batch user password after it changes in the operating system
- Granting or revoking a role's access to a specific batch user
- Auditing which batch users are configured and which roles can use them

## What is in this section?

| Page | Description |
|------|-------------|
| [Managing Batch Users](./Managing-Batch-Users.md) | View, add, edit, and delete batch user credentials for all supported platforms |
| [Role Batch Users](./AccessManagement/Roles/Modifying-Roles-And-Privileges/Batch-Users.md) | Configure which roles can use each batch user |

## Required privileges

To create, edit, or delete batch users, your role must have the **All Administrative Functions** or **All Function Privileges** function privilege.

The `Role_ocadm` role automatically has access to all batch users and cannot be restricted.

## Supported platforms

OpCon supports batch users for the following platform types:

| Platform | Login name field | Password required |
|----------|-----------------|-------------------|
| IBM i | **User Profile** | No |
| MCP | **Identifier** | No |
| OpenVMS | **Identifier** (12-character limit) | No |
| SQL | **User** | Optional |
| UNIX | **Group/User** (for example, `operators/jsmith`) | No |
| Windows | **User** | Yes |

:::note
The Windows batch user **Use Service Account** is a system-reserved record that cannot be edited or deleted.
:::

## Glossary

| Term | Definition |
|------|------------|
| Batch User | An operating system account (login name and, where applicable, a password) that OpCon uses to run jobs on a target machine. Batch users are scoped to a specific platform type. |
| Job | A unit of work defined in OpCon, such as running a program on a remote machine, transferring files, or running a sub-schedule. |
| Machine | An running target for OpCon jobs. Each machine runs an agent that communicates with the OpCon server and runs submitted jobs. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Solution Manager | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |
