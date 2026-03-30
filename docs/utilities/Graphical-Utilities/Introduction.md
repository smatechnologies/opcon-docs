---
sidebar_label: 'Introduction'
title: Graphical Utilities Introduction
description: "OpCon includes the following graphical utilities: - Legacy Audit Management - Schedule Import/Export (deprecated) - SMA OpCon Configuration Utility All of these utilities, except SMA Data Collector."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

# Graphical Utilities Introduction

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

OpCon includes the following graphical utilities:

- [Legacy Audit Management](Legacy-Audit-Management.md)
- [Schedule Import/Export (deprecated)](Schedule-Import_Export.md)
- [SMA OpCon Configuration Utility](SMA-OpCon-Configuration-Utility.md)

All of these utilities, except SMA Data Collector, require a system data source name (DSN) to connect to the OpCon database. If a system DSN does not exist, refer to [Create System DSNs](../../installation/configuration.md#Create_System_DSNs) for procedures on configuring the SQL and Access DSNs.

:::note
Verify that the most recent Open Database Connectivity (ODBC) driver for Microsoft SQL Server is installed before creating the system DSN.
:::

## When Would You Use It?

- OpCon includes the following graphical utilities:

## Why Would You Use It?

- **Graphical Utilities**: OpCon includes the following graphical utilities:

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What graphical utilities does OpCon include?**

OpCon includes three graphical utilities: Legacy Audit Management, Schedule Import/Export (deprecated), and the SMA OpCon Configuration Utility.

**Q: What do most graphical utilities require to connect to the OpCon database?**

Most graphical utilities require a system data source name (DSN) configured to connect to the OpCon database. If one does not exist, follow the Create System DSNs procedure in the installation configuration documentation.

## Glossary

**DSN (Data Source Name)**: An ODBC connection identifier that stores database connection parameters. OpCon utilities use system DSNs to connect to the OpCon SQL Server database.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
