---
title: Administration Overview
description: "OpCon administration encompasses server setup, component configuration, user security, access control, and database management."
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

**Theme:** Overview | **Who is it for?** System administrators responsible for installing, configuring, and maintaining the OpCon environment

## What Is It?

OpCon administration encompasses the full server lifecycle — from initial architecture and component configuration through ongoing management of user security, access control, and database health. Administrators use these tools to set up and maintain the OpCon environment, control who can access what, and keep the system reliable.

## When Would You Use It?

- You need to configure or manage this feature in OpCon

## Why Would You Use It?

- **Centralized control**: Managing this feature through OpCon provides consistent oversight and a full audit trail for all changes

## When would you use this section?

- Setting up or upgrading an OpCon server installation
- Configuring user accounts, roles, and access controls
- Managing server options, system settings, or SMTP/SSO configuration
- Setting up or maintaining database mirroring, replication, or backups
- Diagnosing server-level issues with components, logs, or networking

## What is in this section?

| Topic | Description |
|-------|-------------|
| Architecture | Server components — SAM, SMAServMan, SMANetCom, Notify Handler, Request Router, and more |
| User Security | User accounts, roles, privileges, departments, access codes, and auditing |
| Running Work | Agent management, batch users, and relay/network communication |
| System Configuration | Server options, SMTP, SSO, installation, upgrades, and database configuration |

:::note
User security and system configuration changes affect all users. Plan changes during a maintenance window and communicate to affected users beforehand.
:::

## Glossary

| Term | Definition |
| --- | --- |
| Role | A named collection of privileges assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| SAM (Schedule Activity Monitor) | The logical processor for OpCon workflow automation. It monitors schedule and job start times, dependencies, and user commands to determine when to run each job. |
| SMANetCom (SMA Network Communications Module) | Manages platform-specific automation communication between the SAM and all agents via TCP/IP. |
| SMTP (Simple Mail Transfer Protocol) | The protocol used to send email notifications from OpCon when jobs, schedules, or machines trigger notification events. |
| SSO (Single Sign-On) | An authentication method that allows users to log in once and access multiple applications without re-entering credentials. |

## FAQs

**Q: What does the Administration section cover?**

The Administration section covers server architecture, user security (accounts, roles, privileges, departments, and access codes), agent management, and system configuration (server options, SMTP, SSO, installation, upgrades, and database management).

**Q: Who should be performing administration tasks in OpCon?**

System administrators responsible for installing, configuring, and maintaining the OpCon environment. User security and system configuration changes affect all users and should be planned during maintenance windows.

**Q: What should you do before making user security or system configuration changes?**

Plan changes during a maintenance window and communicate the changes to affected users beforehand, as these settings affect all users of the OpCon system.
