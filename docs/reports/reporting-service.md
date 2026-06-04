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
  - System Administrator
  - Reports
last_updated: 2026-06-02
doc_type: procedural
---

# Reporting Service

**Theme:** Configure  
**Who Is It For?** Business Analyst, Operations Staff

## What Is It?

The Reporting Service is a Windows Service that extracts data from the OpCon database, transforms it, and loads it into a dedicated Reporting database. This isolates reporting queries from the operational database and makes the data viewable and downloadable through Solution Manager.

## Overview

The reporting service is a Windows Service that processes OpCon reporting data viewable and downloadable through Solution Manager. It extracts data from the OpCon database, transforms it, and loads it into a dedicated Reporting database, isolating reporting queries from the operational database for better performance.

The service processes data immediately on startup and then by default at 02:00 (configurable via Schedule Time 1, with an optional Schedule Time 2).

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
  "Database": {
    "DefaultCommandTimeout": 300
  },
  "HealthCheck": {
    "Port": 8080
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

## Reporting Settings

:::note
This section applies to OpCon Cloud. On-premises customers configure the Reporting Service using `appsettings.json` and the `configure-connection` tool described under [Configuration](#configuration).
:::

In OpCon Cloud, you configure the Reporting Service from Solution Manager at **Library > Administration > Server Options > Reporting** tab. The settings on this tab control the processing schedule, timezone, logging behavior, and download limits for the service.

To update Reporting Settings, complete the following steps:

1. Select **Library** in the Solution Manager navigation bar.
2. Select **Administration**, then **Server Options**.
3. Select the **Reporting** tab.
4. Update the fields described below and select **Save**.

### Reporting Settings Fields

| Field | Type | Description |
|---|---|---|
| **Schedule Time 1** | String | First daily processing time in 24-hour format (for example, `02:00`). The service runs its ETL process at this time each day. |
| **Schedule Time 2** | String | Second daily processing time in 24-hour format (for example, `14:00`). Leave blank to process once per day. |
| **Time Zone** | String | Timezone used by the reporting service when interpreting schedule times (for example, `America/Chicago`). |
| **Default Command Timeout** | Integer (seconds) | Maximum time in seconds the service waits for a reporting command to complete before timing out. |
| **Log Level** | String | Verbosity of log output written by the service (for example, `Information`, `Warning`, `Error`). |
| **Max Log Size** | Integer (MB) | Maximum size in megabytes a single log file may reach before the service rolls it over. |
| **Max Log Days** | Integer (days) | Number of days log files are retained before the service deletes them. |
| **Max Download Records** | Integer | Maximum number of records the service allows in a single CSV download (for example, `100000`). Requests that exceed this limit return an error. |

---

## Filtering and Sorting Reports

Every report in **Operations > Reporting** includes a filter and sort panel. You can narrow results using one or more filters, combine them with AND/OR logic, and sort by multiple columns simultaneously.

### Logical Operator (AND / OR)

The **Logical Operator** toggle controls how the service combines all active filters when it retrieves results:

- **And** — a record must match every filter to appear in the results.
- **Or** — a record that matches any one filter appears in the results.

### Filter Structure

Each filter entry has three parts:

| Part | Description |
|---|---|
| **Name** | The field to filter on (for example, `jobName`, `status`, `startDate`). |
| **Comparer** | The comparison operator to apply. |
| **Value** | The value to compare against. |

Supported comparer operators:

| Operator | Meaning |
|---|---|
| `=` | Exact match |
| `!=` | Does not match |
| `>` | Greater than |
| `>=` | Greater than or equal to |
| `<` | Less than |
| `<=` | Less than or equal to |
| `like` | Contains the value (partial match) |

### Multi-Column Sort

The **Order By** setting accepts multiple sort columns. Each entry specifies a column name and a direction (`asc` or `desc`). The service applies the sort columns in the order you define them.

**Example — sort by department ascending, then by job name ascending:**

| Column | Direction |
|---|---|
| `department` | `asc` |
| `jobName` | `asc` |

This returns all records sorted first by department in alphabetical order, and within each department by job name in alphabetical order.

---

## FAQs

**Q: What does the Reporting Service do?**

The Reporting Service extracts data from the OpCon database, transforms it, and loads it into a dedicated Reporting database. This isolates reporting queries from the operational database for better performance. Reports are then viewable and downloadable through Solution Manager.

**Q: When does the Reporting Service process data?**

The service processes data immediately on startup and then by default at 02:00 (configurable via Schedule Time 1, with an optional Schedule Time 2).

**Q: Why might the Reporting Service fail to start after a password change?**

Passwords are encrypted using Windows DPAPI, which is machine-specific and user-specific. If the service account changes or the passwords are re-encrypted under a different user, you must re-run the `configure-connection` command under the same user account that runs the service.

## Glossary

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
