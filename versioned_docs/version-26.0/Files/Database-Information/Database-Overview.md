---
title: Database Overview
description: "OpCon uses Microsoft SQL Server as its database."
product_area: Database Administration
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

**Theme:** Overview | **Who is it for?** System administrators and DBAs who manage the OpCon SQL Server database

## What Is It?

OpCon uses Microsoft SQL Server as its database. The database administration section addresses high-availability options (mirroring and replication), failover procedures, backup and restore processes, and routine data maintenance.

## When Would You Use It?

- OpCon uses Microsoft SQL Server as its database

## Why Would You Use It?

- **Centralized control**: OpCon uses Microsoft SQL Server as its database

## When would you use this section?

- Setting up database mirroring or replication for high availability
- Recovering from an OpCon database failover
- Performing a manual database backup or restore
- Running routine data maintenance to manage database size
- Following a pre-production checklist for mirroring or replication setup

## What is in this section?

| Page | Description |
|------|-------------|
| Failover Scenarios | Supported failover scenarios and how OpCon behaves during each |
| Manual SQL Replication Setup | Step-by-step guide to configure replication manually |
| Automatic SQL Replication Setup | Using the setup wizard to configure replication automatically |
| Failover and Recovery with Replication | Recovering from a failover event when replication is enabled |
| Automatic SQL Mirroring Setup | Using the setup wizard to configure database mirroring |
| Manual Database Backups and Restoration | Performing manual backups and restoring from backup |
| OpCon Data Maintenance | Purging old history and maintaining database performance |
| Database Mirroring Checklist | Pre-implementation checklist for mirroring setup |
| Database Replication Checklist | Pre-implementation checklist for replication setup |

:::caution
Database mirroring and replication changes affect system availability. Schedule these operations during a maintenance window and verify backups before proceeding.
:::

## Glossary

| Term | Definition |
| --- | --- |
| Event (OpCon Event) | A command string OpCon runs when a defined condition is met, such as a job finishing, a threshold being updated, or a schedule completing. |
| Role | A named collection of privileges assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Schedule | A named group of jobs representing a business process. Schedules are built each day based on their defined frequencies and calendars. |

## FAQs

**Q: What does feature_name: Database Overview cover?**

This page covers What Is It?, When would you use this section?, What is in this section?.
