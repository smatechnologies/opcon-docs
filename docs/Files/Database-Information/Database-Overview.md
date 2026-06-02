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
# Database Overview


## Overview

OpCon uses Microsoft SQL Server as its database. This section covers the configuration and administration topics you need to maintain a healthy OpCon database environment, including high-availability options, failover procedures, backup and restore processes, and routine data maintenance.

:::caution
Database mirroring and replication changes affect system availability. Schedule these operations during a maintenance window and verify backups before proceeding.
:::

## In This Section

| Page | Description |
|------|-------------|
| [Failover Scenarios](Failover-Scenarios.md) | Supported failover scenarios and how OpCon behaves during each |
| [Manual Setup for Microsoft SQL Replication](Manual-Setup-for-Microsoft-SQL-Replication.md) | Step-by-step guide to configure replication manually |
| [Setup for Automatic Microsoft SQL Replication](Setup-for-Automatic-Microsoft-SQL-Replication.md) | Using the setup wizard to configure replication automatically |
| [Failover and Recovery with Replication](Failover-and-Recovery-with-Replication.md) | Recovering from a failover event when replication is enabled |
| [Setup for Automatic Microsoft SQL Mirroring](Setup-for-Automatic-Microsoft-SQL-Mirroring.md) | Using the setup wizard to configure database mirroring |
| [Manual Database Backups and Restoration](Manual-Database-Backups-and-Restoration.md) | Performing manual backups and restoring from backup |
| [OpCon Data Maintenance](OpCon-Data-Maintenance.md) | Purging old history and maintaining database performance |
| [Database Mirroring Checklist](Database-Mirroring-Checklist.md) | Pre-implementation checklist for mirroring setup |
| [Database Replication Checklist](Database-Replication-Checklist.md) | Pre-implementation checklist for replication setup |
