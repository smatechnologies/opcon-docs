---
sidebar_label: 'Reporting Service'
title: Reporting Service
description: "The Reporting Service extracts data from the OpCon database, transforms it, and loads it into a dedicated Reporting database so reporting queries run separately from the operational database and report data is available in Solution Manager."
product_area: Reports
audience: System Administrator, Business Analyst, Operations Staff
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Business Analyst
  - Operations Staff
  - Reports
  - System Configuration
last_updated: 2026-09-09
doc_type: procedural
---

# Reporting Service

**Theme:** Configure  
**Who Is It For?** System Administrator, Business Analyst, Operations Staff

## What is it?

The Reporting Service extracts data from the OpCon database, transforms it, and loads it into a dedicated Reporting database. This isolates reporting queries from the operational database and makes the data viewable and downloadable through Solution Manager.

## Overview

The Reporting Service runs as a background service alongside OpCon. Each time it runs, it reads the current data from the OpCon database, reshapes it into report tables, and writes those tables to the Reporting database. Solution Manager and the OpCon API then read report data from the Reporting database instead of querying the operational database directly.

The service processes data immediately on startup and then by default at 02:00. You can change the processing times with **Schedule Time 1** and the optional **Schedule Time 2**.

Reports run one after another in a single pass. If a report fails, the remaining reports still run, and the service makes one more attempt at the failed reports at the end of the pass.

:::note
Each run replaces all data for your organization in every report table. The Reporting database holds the results of the most recent successful run, not a history of previous runs. The date range available in a report is the range held in the OpCon database.
:::

### Deployment models

The service ships in two forms. Both run the same reports and use the same Reporting database, but they read their startup configuration from different places.

| | Windows service | Container |
|---|---|---|
| How it runs | As a Windows service, installed with OpCon | As a container image, used by OpCon Cloud |
| Startup configuration | `appsettings.json` in the service installation directory | Environment variables |
| Database passwords | Encrypted with Windows DPAPI | Supplied as environment variables |
| Health endpoints | Not available | `/health` and `/ready` |
| Log location | A `Log` directory under the OpCon output path | `/app/log` |

### Prerequisites

Before the service can process data, the following must be true:

- The OpCon database contains a `CustomerId` value, 36 characters long, in the `OPCON_INFO` table
- The OpCon database schema version matches or is later than the version of the Reporting Service
- The SQL Server account in the `ReportingDb` connection string can create a database, because the service creates the Reporting database the first time it runs
- The account that installs the service holds SA privileges

:::caution
The service does not process any data until the OpCon database schema version matches or is later than its own version. While it waits, it checks the OpCon database every 5 seconds for up to 30 minutes and records `Still waiting for migrations to complete.` in the log, then starts the wait again. Upgrade the OpCon database before you expect report data to refresh.
:::

### Installation

- The Reporting Service is **installed automatically** as part of the OpCon installer. No separate steps are required
- The service executable is named **ReportingService**

The installer configures both database connections and creates the Reporting database. If database creation fails during a new installation, the installation stops. If it fails during an upgrade, the installation continues and the service attempts to create the database the next time it starts.

---

## Configuration

Settings are held in two places, and it matters which one you use:

- **Startup settings** define where the databases are, which timezone the service uses, and which port serves the health endpoints. These come from `appsettings.json` or from environment variables, and the service reads them only when it starts
- **Runtime settings** define the processing schedule, the command timeout, and logging behavior. These are stored in the Reporting database and you manage them in Solution Manager. The service re-reads them every five minutes

Both deployment models use both layers. If the Reporting database cannot be reached, the service keeps the last values it read and continues to run.

### Where each setting is stored

| Setting | Where you set it | Default |
|---|---|---|
| OpCon database connection | `appsettings.json` or `ETL_DB_*` environment variables | None — the service stops if it cannot resolve this |
| Reporting database connection | `appsettings.json` or `REPORTING_DB_*` environment variables | None — the service stops if it cannot resolve this |
| Timezone | `TZ` environment variable, then `Scheduling:TimeZone` in `appsettings.json` | The machine timezone |
| Health endpoint port | `HealthCheck:Port` in `appsettings.json`, or the `HealthCheck__Port` environment variable | `8080` |
| Processing schedule | Solution Manager | `02:00`, once per day |
| Command timeout | Solution Manager, then `Database:DefaultCommandTimeout` in `appsettings.json` | `300` seconds |
| Log level | Solution Manager | `Information` |
| Maximum log size | Solution Manager | `1` MB |
| Log retention | Solution Manager | `30` days |

:::note
The processing schedule, log level, maximum log size, and log retention are read only from the Reporting database. Setting them in `appsettings.json` has no effect. The `Logging:LogLevel` section of `appsettings.json` does not control the service log file.
:::

### Startup settings in appsettings.json

For a Windows service installation, `appsettings.json` in the service installation directory holds:

- **ConnectionStrings** — connection information for both databases, with encrypted passwords
   - **OpConDb** — the OpCon database, which supplies the source data
   - **ReportingDb** — the Reporting database, which receives the report tables
- **Scheduling.TimeZone** — the timezone the service uses when it interprets schedule times
- **Database.DefaultCommandTimeout** — a fallback command timeout, used only when the Reporting database holds no value

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

:::note
`HealthCheck.Port` applies to container deployments only. The Windows service does not serve health endpoints.
:::

### Startup settings as environment variables

Container deployments supply the same startup settings as environment variables, which take priority over `appsettings.json`.

| Variable | Purpose |
|---|---|
| `ETL_DB_SERVER_NAME` | OpCon database host |
| `ETL_DATABASE_NAME` | OpCon database name |
| `ETL_DB_USER_NAME` | OpCon database user |
| `ETL_DB_PASSWORD` | OpCon database password |
| `ETL_DB_PORT` | OpCon database port, `1433` if omitted |
| `REPORTING_DB_SERVER_NAME` | Reporting database host |
| `REPORTING_DATABASE_NAME` | Reporting database name |
| `REPORTING_DB_USER_NAME` | Reporting database user |
| `REPORTING_DB_PASSWORD` | Reporting database password |
| `REPORTING_DB_PORT` | Reporting database port, `1433` if omitted |
| `TZ` | Timezone, checked before `Scheduling:TimeZone` |
| `HealthCheck__Port` | Port for the health endpoints |

:::note
A connection is built from environment variables only when the host, database name, user, and password are all supplied for that connection. If any one of them is missing, the service falls back to the value in `appsettings.json`.
:::

### Command-line commands

Run the service executable with one of the following commands. With no arguments, it starts as a Windows service.

| Command | What it does |
|---|---|
| *(no arguments)* | Starts the Windows service |
| `configure-connection` | Builds a connection string, encrypts the password, and writes both to `appsettings.json` |
| `init-database` | Creates the Reporting database, applies all schema updates, and exits |
| `help` | Shows the available commands |

For the `configure-connection` options, run `ReportingService configure-connection --help`.

### Connection string configuration tool

Use the `configure-connection` command to set a database connection string without editing `appsettings.json` by hand:

```cmd
ReportingService configure-connection --name OpConDb --server localhost --database OpConxps --user sa --password myPass123
```

Or with Windows Authentication:

```cmd
ReportingService configure-connection --name OpConDb --server localhost --database OpConxps --winauth
```

The command accepts the following options:

| Option | Required | Description |
|---|---|---|
| `--name`, `-n` | Yes | Connection string name, either `OpConDb` or `ReportingDb` |
| `--server`, `-s` | Yes | SQL Server hostname or IP address |
| `--database`, `-d` | Yes | Database name |
| `--user`, `-u` | For SQL Server Authentication | SQL Server user ID |
| `--password`, `-pw` | For SQL Server Authentication | Plain-text password, which the command encrypts before writing |
| `--winauth` | For Windows Authentication | Uses Windows Authentication instead of a user ID and password |
| `--file`, `-f` | No | Path to `appsettings.json`. Defaults to the service installation directory |
| `--port`, `-p` | No | SQL Server port. Defaults to `1433` |
| `--no-trust-certificate` | No | Omits `TrustServerCertificate`, which the command includes by default |
| `--no-backup` | No | Skips the `appsettings.json.backup` file, which the command creates by default |

Passwords are encrypted using Windows DPAPI and stored in `appsettings.json`. Encryption is specific to the machine, so a copied `appsettings.json` does not work on a different machine.

---

## Reporting settings

The processing schedule, command timeout, and logging behavior are stored in the Reporting database. You manage them in Solution Manager.

To update the reporting settings, complete the following steps:

1. Go to the **Library** menu.
2. Under **Management**, select **Reporting**.
3. Select the **Settings** tab.
4. Update the fields you want to change.
5. Select the **Save** button. The reporting settings are saved.

:::note
The service re-reads these settings from the Reporting database every five minutes. A change to **Schedule Time 1** or **Schedule Time 2** takes effect without restarting the service.
:::

The **Settings** tab is available to the OpCon administrator account and to users with the **Maintain Reports** privilege or all function privileges. For other users the tab is unavailable.

If the tab reports that reporting settings are unavailable, the Reporting database cannot be reached.

### Reporting settings fields

The fields are grouped under four headings on the **Settings** tab.

| Field | Values | Description |
|---|---|---|
| **Schedule Time 1** | `HH:mm`, 24-hour | First daily processing time. Defaults to `02:00` |
| **Schedule Time 2** | `HH:mm`, 24-hour | Second daily processing time. Leave blank to process once per day. Must differ from **Schedule Time 1** |
| **System Time Zone** | Timezone name | The timezone the service uses when it interprets the schedule times. This field reports the value the service is using and is not editable |
| **Default Command Timeout (seconds)** | `10` to `7200` | How long the service waits for a database command to finish. Defaults to `300` |
| **Log Level** | `Debug`, `Information`, `Warning`, `Error`, `Critical` | How much detail the service records. Defaults to `Information` |
| **Maximum Log Size (MB)** | `1` to `1024` | Size a log file reaches before the service starts a new one. Defaults to `1` |
| **Log Retention (days)** | `1` to `365` | How long archived log files are kept. Defaults to `30` |
| **Maximum Download Records** | `10` to `100000` | Largest number of records allowed in a single CSV download. A download that exceeds this limit returns an error. Defaults to `100000` |

:::note
**Schedule Time 1** and **Schedule Time 2** appear in OpCon Cloud deployments only. On-premises deployments process data immediately on startup and at 02:00.
:::

**Maximum Download Records** limits report downloads from Solution Manager. It does not affect how the service processes data.

---

## Reports produced by the service

The service maintains the data behind the following reports. Each one is refreshed on every processing run.

| Report | What it shows |
|---|---|
| Annual Plan Dates By Calendars | All defined dates on user-defined calendars |
| Comparative Job Execution Statistics | Job runtime analytics, including average runtime, standard deviation, estimated runtime, and variance |
| Cross Reference Schedules and Jobs | All jobs and the schedules they belong to |
| Current Global Properties | Current values of global properties |
| Current Resources Values | Current resource values and descriptions |
| Current Thresholds Values | Current threshold values and descriptions |
| Daily Job Information | Daily job details, including job status, schedule information, and run times |
| Daily Schedules Information | Daily schedule and job information, including machine groups, alternate machines, calendars, notification groups, and triggers |
| Event Details by Date | Daily triggered events with their schedules, jobs, and descriptions |
| Frequencies and Associated Jobs | All frequencies and the jobs that use them |
| Job Dependencies and Documentation | Daily job dependencies, documentation, and related schedule information |
| Master Job Information | Master job configurations |
| Roles and Privileges | All role privilege types in a single view, with a privilege type column identifying the source of each record |
| Unique Task Count | Unique task counts by date, agent type, and department |
| Users and Privileges | User accounts and their associated privileges, including roles, access codes, functions, schedules, machines, machine groups, batch users, and scripts |

:::note
The **Audit History** and **Schedule and Job History** reports are read directly from the OpCon database, not from the Reporting database. They are always current and do not depend on the Reporting Service.
:::

---

## Logging

The service writes logs to:

- **Windows Event Log** — service-level information, for Windows service installations
- **File logs** — a `ReportingService.log` file in the `Log` directory under the OpCon output path. Container deployments write to `/app/log/ReportingService.log`

A log file is replaced when the date changes or when it reaches **Maximum Log Size**. The previous file is moved to an `Archives` directory, in a subdirectory named for the date it covers. Archive subdirectories older than **Log Retention** are deleted.

Container deployments also send every log message to standard output, so the same information is available from the container logs.

---

## Filtering and sorting reports

Every report in **Library** > **Reporting** includes a filter and sort panel. You can narrow results using one or more filters, combine them with AND/OR logic, and sort by multiple columns at once.

### Logical operator (AND / OR)

The **Logical Operator** option controls how the service combines all active filters when it retrieves results:

- **And** — a record must match every filter to appear in the results
- **Or** — a record that matches any one filter appears in the results

### Filter structure

Each filter entry has three parts:

| Part | Description |
|---|---|
| **Name** | The field to filter on (for example, `jobName`, `status`, `startDate`) |
| **Comparer** | The comparison operator to apply |
| **Value** | The value to compare against |

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

### Multi-column sort

The **Order By** setting accepts multiple sort columns. Each entry specifies a column name and a direction (`asc` or `desc`). The service applies the sort columns in the order you define them.

**Example — sort by department ascending, then by job name ascending:**

| Column | Direction |
|---|---|
| `department` | `asc` |
| `jobName` | `asc` |

This returns all records sorted first by department in alphabetical order, and within each department by job name in alphabetical order.

---

## Troubleshooting

### Service won't start

1. Check Windows Event Viewer for error messages.
2. Verify the connection strings in `appsettings.json`.
3. Confirm the database servers are reachable.
4. Confirm the account in the `ReportingDb` connection string can create a database, which is required the first time the service runs.

### Report data is not refreshing

1. Check connectivity to both the OpCon database and the Reporting database.
2. Confirm the OpCon database schema version matches or is later than the Reporting Service version. Until it does, the service records `Still waiting for migrations to complete.` and processes nothing.
3. Confirm the OpCon database holds a 36-character `CustomerId` value in the `OPCON_INFO` table. If it does not, the service records `Please run the database migration script to add CustomerId.` and stops.
4. Review the log files for report-level errors. A single failing report does not stop the others.

### Connection string issues

- Use the `configure-connection` command to encrypt and set connection strings
- Run the service under the same account that encrypted the passwords, because DPAPI encryption is specific to the machine
- For Windows Authentication, verify the service account has access to both databases

---

## FAQs

**Q: What does the Reporting Service do?**

The Reporting Service extracts data from the OpCon database, transforms it, and loads it into a dedicated Reporting database. This isolates reporting queries from the operational database for better performance. Reports are then viewable and downloadable through Solution Manager.

**Q: When does the Reporting Service process data?**

The service processes data immediately on startup and then by default at 02:00. You can change the processing times with **Schedule Time 1** and the optional **Schedule Time 2**.

**Q: Why do reports not show older data?**

Every run replaces all report data with the current contents of the OpCon database. The Reporting database does not accumulate history of its own, so a report covers whatever range the OpCon database still holds.

**Q: Why might the Reporting Service fail to start after a password change?**

Passwords are encrypted using Windows DPAPI, which is specific to the machine. If the service account changes or the passwords are re-encrypted under a different account, run the `configure-connection` command again under the account that runs the service.

**Q: Why is report data not refreshing after an OpCon upgrade?**

The service does not process data until the OpCon database schema version matches or is later than its own version. Complete the OpCon database upgrade, and the service starts processing on its next check.

---

## Related topics

- [OpCon Reporting](./overview.md)
- [Reports](../Files/UI/Solution-Manager/Library/Reporting/List-Reports.md)
- [Predefined Reports](./predefined.md)
- [Custom Reports](./custom.md)
- [Privileges](../administration/privileges.md)

## Glossary

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
