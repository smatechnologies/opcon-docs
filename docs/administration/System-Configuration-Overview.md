---
title: System Configuration Overview
description: "System configuration covers all server-level settings — from initial installation and upgrade procedures through runtime server options (logging, SMTP, SSO, notifications) and database management."
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

**Theme:** Overview | **Who is it for?** System administrators who configure, install, upgrade, or maintain the OpCon platform

## What Is It?

System configuration covers all server-level settings — from initial installation and upgrade procedures through runtime server options (logging, SMTP, SSO, notifications) and database management (mirroring, replication, backups).

## When Would You Use It?

- System configuration covers all server-level settings — from initial installation and upgrade procedures through runtime server options (logging, SMTP, SSO, notifications) and database management (mirroring, replication, backups)

## Why Would You Use It?

- **Centralized control**: System configuration covers all server-level settings — from initial installation and upgrade procedures through runtime server options (logging, SMTP, SSO, notifications) and database management (mirroring, replication, backups)

## When would you use this section?

- Performing a new OpCon installation or upgrade
- Changing server options (SMTP relay, SSO provider, logging levels)
- Configuring or maintaining database mirroring or replication
- Running OpCon in a Docker container environment
- Running database maintenance or backup scripts

## What is in this section?

| Topic | Description |
|-------|-------------|
| Server Options | Runtime configuration for all OpCon server settings |
| Configuration File | OpCon.config file reference for advanced server settings |
| Installation | Installing OpCon server components |
| Upgrade | Upgrading from a previous OpCon version |
| Breaking Changes | Changes in this version that may require action before upgrading |
| Components | Installed components and their versions |
| Docker | Running OpCon in a Docker container |
| Database Scripts | Maintenance and setup SQL scripts |
| Database | Failover, replication, mirroring, and backup procedures |

## Glossary

| Term | Definition |
| --- | --- |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| SMTP (Simple Mail Transfer Protocol) | The protocol used to send email notifications from OpCon when jobs, schedules, or machines trigger notification events. |
| SSO (Single Sign-On) | An authentication method that allows users to log in once and access multiple applications without re-entering credentials. |

## FAQs

**Q: What does the System Configuration Overview cover?**

System configuration covers all server-level settings — from initial installation and upgrade procedures through runtime server options (logging, SMTP, SSO, notifications) and database management (mirroring, replication, backups).
