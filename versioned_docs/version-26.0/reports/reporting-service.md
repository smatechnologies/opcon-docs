---
sidebar_label: 'Reporting Service'
---

# Reporting Service

## Overview

**The reporting service** is a Windows Service that provides automated processing for OpCon reporting data that is viewable and downloadable through Solution Manager. The service extracts data from the OpCon database, transforms it, and loads it into a dedicated Reporting database. This separate database improves performance by isolating reporting queries from the operational OpCon database.

The service processes OpCon reporting data immediately when the service starts and daily at 2:00AM.

:::note
This document describes the reporting service for on-premises Windows customers. The reporting service is also available to cloud users with additional features and can be configured within Solution Manager. For cloud configuration details, see [Reporting Service Cloud Configuration](../Files/UI/Solution-Manager/Library/Reporting/List-Reports.md).
:::

### Installation

- The reporting service is **installed automatically** as part of the OpCon installer. No separate installation steps are required

- The service executable is named **ReportingService**

:::note
The reporting service must be installed by a user with SA privileges
:::

---

## Configuration

The service uses `appsettings.json` located in the service installation directory. This file contains:

- **TimeZone** - Set to your timezone
- **Connection strings** - Database connection information (encrypted passwords)
   - **OpConDb** - Connection to the OpCon database (source data)
   - **ReportingDb** - Connection to the Reporting database (target data)
- **Logging settings** - Log level configuration (recommended settings below)

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

The service supports a command-line configuration tool for securely setting up database connection strings:

```cmd
ReportingService configure-connection --name OpConDb --server localhost --database OpConxps --user sa --password myPassword
```

Or with Windows Authentication:

```cmd
ReportingService configure-connection --name OpConDb --server localhost --database OpConxps --winauth
```

**Note:** Passwords are automatically encrypted using Windows DPAPI (Data Protection API) and stored securely in `appsettings.json`. The encryption is machine-specific and user-specific.

---

## Logging

The service writes logs to:
- **Windows Event Log** - For service level information
- **File logs** - Log files are located in a `log` directory relative to the service installation path

---

## Troubleshooting

### Service Won't Start

1. Check Windows Event Viewer for error messages
2. Verify connection strings are properly configured in `appsettings.json`
3. Ensure database servers are accessible

### ETL Processes Not Running

1. Check database connectivity (both OpConDb and ReportingDb)
2. Review log files for error messages

### Connection String Issues

- Use the `configure-connection` command to properly encrypt and set connection strings
- Ensure the service is running under the same user account that encrypted the passwords (DPAPI is user-specific)
- For Windows Authentication, verify the service account has database access
