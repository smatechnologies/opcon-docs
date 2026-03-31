---
sidebar_label: 'Reporting Service'
title: Reporting Service
description: "The Reporting Service is a Windows Service that extracts data from the OpCon database, transforms it, and loads it into a dedicated Reporting database. This isolates reporting queries from the operational database and makes the data viewable and downloadable through Solution Manager."
product_area: Reports
audience: Business Analyst, Operations Staff
version_introduced: "[see release notes]"
tags:
  - Procedural
  - Business Analyst
  - Operations Staff
  - Reports
last_updated: 2026-03-18
doc_type: procedural
---

# Reporting Service

**Theme:** Configure  
**Who Is It For?** Business Analyst, Operations Staff

## What Is It?

The Reporting Service is a Windows Service that extracts data from the OpCon database, transforms it, and loads it into a dedicated Reporting database. This isolates reporting queries from the operational database and makes the data viewable and downloadable through Solution Manager.

## Overview

The reporting service is a Windows Service that processes OpCon reporting data viewable and downloadable through Solution Manager. It extracts data from the OpCon database, transforms it, and loads it into a dedicated Reporting database, isolating reporting queries from the operational database for better performance.

The service processes data immediately on startup and daily at 2:00AM.

:::note
This document covers the reporting service for on-premises Windows customers. Cloud users can configure the reporting service within Solution Manager. For details, see [Reporting Service Cloud Configuration](../Files/UI/Solution-Manager/Library/Reporting/List-Reports.md).
:::

### Installation

- The reporting service is **installed automatically** as part of the OpCon installer. No separate steps are required
- The service executable is named **ReportingService**

:::note
The reporting service must be installed by a user with SA privileges
:::

---

## Configuration

The service uses `appsettings.json` in the service installation directory, which contains:

- **TimeZone** - Your timezone
- **Connection strings** - Database connection information (encrypted passwords)
   - **OpConDb** - Connection to the OpCon database (source data)
   - **ReportingDb** - Connection to the Reporting database (target data)
- **Logging settings** - Log level configuration

Example `appsettings.json`:

```json
{
  "Scheduling": {
    "TimeZone": "America/Chicago"
  },
  "ConnectionStrings": {
    "OpConDb": "Server=localhost,1433;Database=OpConxps;User Id=sa;Password=<encrypted>;TrustServerCertificate=True",
    "ReportingDb": "Server=localhost,1433;Database=Reporting;User Id=sa;Password=<encrypted>;TrustServerCertificate=True"
  },
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft.EntityFrameworkCore": "Warning"
    }
  }
}
```

### Connection String Configuration Tool

Use the command-line tool to securely configure database connection strings:

```cmd
ReportingService configure-connection --name OpConDb --server localhost --database OpConxps --user sa --password myPassword
```

Or with Windows Authentication:

```cmd
ReportingService configure-connection --name OpConDb --server localhost --database OpConxps --winauth
```

Passwords are encrypted using Windows DPAPI and stored in `appsettings.json`. Encryption is machine-specific and user-specific.

---

## Logging

The service writes logs to:
- **Windows Event Log** - Service-level information
- **File logs** - Located in a `log` directory relative to the service installation path

---

## Troubleshooting

### Service Won't Start

1. Check Windows Event Viewer for error messages
2. Verify connection strings in `appsettings.json`
3. Ensure database servers are accessible

### ETL Processes Not Running

1. Check database connectivity (both OpConDb and ReportingDb)
2. Review log files for error messages

### Connection String Issues

- Use the `configure-connection` command to encrypt and set connection strings
- Ensure the service runs under the same user account that encrypted the passwords (DPAPI is user-specific)
- For Windows Authentication, verify the service account has database access

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does the Reporting Service do?**

The Reporting Service extracts data from the OpCon database, transforms it, and loads it into a dedicated Reporting database. This isolates reporting queries from the operational database for better performance. Reports are then viewable and downloadable through Solution Manager.

**Q: When does the Reporting Service process data?**

The service processes data immediately on startup and then daily at 2:00 AM.

**Q: Why might the Reporting Service fail to start after a password change?**

Passwords are encrypted using Windows DPAPI, which is machine-specific and user-specific. If the service account changes or the passwords are re-encrypted under a different user, you must re-run the `configure-connection` command under the same user account that runs the service.

## Glossary

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
