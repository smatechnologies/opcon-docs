---
title: Viewing, Adding, and Editing SQL Job Details
description: "SQL job details define how OpCon runs a query or stored procedure against a database, including connection type, server, user, SQL statement, and exit conditions."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Viewing, Adding, and Editing SQL Job Details

SQL job details define how OpCon runs a query or stored procedure against a database, including the connection type, database server, user, SQL statement or script, and expected exit conditions. These details are configured in the **Task Details** panel of a SQL master job in Solution Manager.

To view, add, or edit a SQL job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing SQL Job Details

To view SQL job details, complete the following steps:

1. Go to **Library** > **Master Jobs**.
2. Select a SQL job in the list.
3. Select **Edit**.
4. Expand the **Task Details** panel.

The SQL job details appear in read-only mode.

---

## Adding SQL Job Details

Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).

---

## Editing SQL Job Details

To edit SQL job details, complete the following steps:

1. Go to **Library** > **Master Jobs**.
2. Select a SQL job.
3. Select **Edit**.
4. Select the lock button. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Master Job Definition Read-only Button")) when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Job Definition Admin Button")) when in **Admin** mode.
5. Expand the **Task Details** panel.
6. Update the fields as described in [SQL Job Details](#sql-job-details).
7. Select **Save**.

The job details are saved and the lock button returns to read-only mode.

---

## SQL Job Details

:::note
All required fields are designated by a red asterisk.
:::

- **Machine or Machine Group**: Defines the machine(s) or machine group for the SQL job.

In the **SQL Definition** frame, select one of the following job actions:

- [MS SQL DTExec](#ms-sql-dtexec)
- [MS SQL Job](#ms-sql-job)
- [MS SQL Script](#ms-sql-script)
- [MySQL](#mysql)
- [Oracle](#oracle)
- [Other DB](#other-db)

### MS SQL DTExec

:::note
Running an MS SQL DTExec job requires the DTExec utility to be installed on the agent machine for running SSIS packages.
:::

**MS SQL DTExec Connection** — Select one of the following connection types:

- **SQL**:
  - **Server Name**: Defines the server name from which to retrieve the package.
  - **User Id**: Allows retrieval of a package protected by SQL Server authentication.
  - **Windows Authentication**: Specifies whether the **User Id** is a Windows or SQL user for correct authentication.
- **FILE**:
  - **Config File Name**: Defines a configuration file to extract values from, allowing a run-time configuration that differs from the design-time configuration. Store settings in an XML configuration file and load them before package running.
- **ISSERVER**:
  - **Server Name**: Defines the SQL Server name where the package to run is stored.
  - **User Id**: The Windows Authentication user that runs the package on Integration Services Server.

**Advanced Failure Criteria**: _(Optional)_ Refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria).

#### Package Tab

- **Package File Path**: Defines the path to the package stored in SQL Server. The path specifies the package name to retrieve. Folders in the path are separated by backslashes (`\`).

---

### MS SQL Job

:::note
MS SQL Job does not require any special tools to be installed on the agent machine.
:::

- **Server Name\Instance**: Defines the name or IP address of the SQL Server machine with an optional instance name (e.g., `SQLTEST`, `SQLTEST\SQLEXPRESS`).
- **Windows Authentication**: _(Optional)_ Defines whether to use Windows Authentication.
- **User Id**: Defines the SQL or Windows Authentication user name.
- **Encrypt**: _(Optional)_ Defines whether to use an encrypted connection. SSL encryption must be pre-configured on the SQL Server connection manager.
- **Retry Attempts**: _(Optional)_ Defines the number of connection retry attempts if the initial connection to the SQL Server fails.
- **Advanced Failure Criteria**: _(Optional)_ Refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria).

#### SQL Job Tab

- **Job Name**: Defines the name of the job defined in SQL Server Agent.
- **Monitor Only**: _(Optional)_ When selected, OpCon does not start the job; it only monitors the status of a job that was started outside of OpCon.
- **Monitoring End Time**: _(Optional)_ Defines the end time for monitoring a SQL Server Agent job as an hour offset from schedule date midnight (e.g., `17.5` means 5:30 p.m.). Useful for continuously running replication jobs monitored on a daily schedule.

#### Other Options Tab

- **Other Options**: _(Optional)_ Defines an override password using the `-$` switch.

---

### MS SQL Script

:::note
Running an MS SQL Script job requires SQLCMD to be installed on the agent machine.
:::

- **Server Name\Instance**: Defines the name or IP address of the SQL Server machine with an optional instance name (e.g., `SQLTEST`, `SQLTEST\SQLEXPRESS`).
- **Database Name**: Defines the SQL database name.
- **Windows Authentication**: _(Optional)_ Defines whether to use Windows Authentication.
- **User Id**: Defines the SQL or Windows Authentication user name.
- **Encrypt**: _(Optional)_ Defines whether to use an encrypted connection. SSL encryption must be pre-configured on the SQL Server connection manager.
- **Advanced Failure Criteria**: _(Optional)_ Refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria).

#### SQL Script Tab

Select one of the following script source options:

- **Script File**: Select to define a script file.
  - **Script File Path**: Defines the path to the SQL script file to run against the selected SQL Server/database. Only local file paths are allowed.
- **In Line Script**: Select to define an inline script.
  - **Statement(s)**: Defines the SQL query to run against the selected SQL Server/database. Multiple semicolon-delimited queries can be run.

:::tip Example

```sql
SELECT FirstName, LastName FROM Person.Person WHERE LastName LIKE 'Whi%';
```

:::

#### Env Variables Tab

- **Name**: Defines the variable name to use in the script. Environment variables send dynamic values to the script at runtime.
- **Value**: Defines the value to be used in the script.

#### Other Options Tab

- **Use Exit Code From Script Result**: _(Optional)_ When selected, uses the exit code from the script result.
- **File Path**: _(Optional)_ Defines the path where query results are redirected. Only local file paths are allowed.
- **Other Options**: _(Optional)_ Defines additional command-line options supported by SQLCMD. Refer to <https://docs.microsoft.com/en-us/sql/tools/sqlcmd-utility>.

---

### MySQL

:::note
Running a MySQL job requires the MySQL command-line tool to be installed on the agent machine.
:::

- **Server Name**: Defines the name or IP address of the MySQL server machine (e.g., `MYSQLTEST`).
- **Database Name**: Defines the SQL database name.
- **User Id**: Defines the user name for the connection.
- **Port**: Defines the TCP/IP port number for the connection.
- **Advanced Failure Criteria**: _(Optional)_ Refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria).

#### MySQL Script Tab

- **Script File Path**: Defines the path to the SQL script file to run against the selected MySQL server/database. Only local file paths are allowed.

#### Env Variables Tab

- **Name**: Defines the variable name to use in the script. Environment variables send dynamic values to the script at runtime.
- **Value**: Defines the value to be used in the script.

#### Other Options Tab

- **File Path**: _(Optional)_ Defines the path where query results are redirected. Only local file paths are allowed.
- **Other Options**: _(Optional)_ Defines additional command-line switches supported by the MySQL command-line utility.

---

### Oracle

:::note
Running an Oracle job requires SQL\*Plus to be installed on the agent machine.
:::

- **Server Name**: Defines the name or IP address of the Oracle server machine (e.g., `MYSQLTEST`).
- **Database Name**: Defines the SQL database name.
- **User Id**: Defines the user name for the connection.
- **Connection Id**: Defines the listening port on the database server.
- **Advanced Failure Criteria**: _(Optional)_ Refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria).

#### Oracle Script Tab

- **Script File Path**: Defines the path to the SQL script file to run against the selected Oracle server/database. Only local file paths are allowed.
- **Parameters (positional)**: _(Optional)_ Defines parameter values to pass to the script.

#### Other Options Tab

- **File Path**: _(Optional)_ Defines the path where query results are directed. Only local file paths are allowed.
- **Other Options**: _(Optional)_ Defines additional command-line switches supported by the SQL\*Plus utility.

---

### Other DB

:::note
Running an Other DB job through ODBC/OLE DB connections requires the appropriate ODBC or OLE DB driver to be installed on the agent machine.
:::

Select one of the following connection types:

- **ODBC Connection String**: Select to define an ODBC connection string.
  - **ODBC Connection String**: Defines an ODBC connection string for connecting to the database.
- **OleDB Connection String**: Select to define an OLE DB connection string.
  - **OleDB Connection String**: Defines an OLE DB connection string for connecting to the database.
- **DSN Name**: Select to define a DSN name.
  - **DSN Name**: Defines the ODBC DSN for connecting to the database.

Additional fields:

- **Windows Authentication**: _(Optional)_ Defines whether to use Windows Authentication.
- **User Id**: Defines the SQL or Windows Authentication user name.
- **Advanced Failure Criteria**: _(Optional)_ Refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria).

#### SQL Script Tab

Select one of the following script source options:

- **Script File**: Select to define a script file.
  - **Script File Path**: Defines the path to the SQL script file to run against the SQL server/database. Only local file paths are allowed.
- **In Line Script**: Select to define an inline script.
  - **Statement(s)**: Defines the SQL query to run against the selected SQL server/database. Multiple semicolon-delimited queries can be run.

#### Env Variables Tab

- **Name**: Defines variables and their values for use in the script. Sends dynamic values to the script at runtime.
- **Value**: Defines the value to be used in the script.

#### Other Options Tab

- **File Path**: _(Optional)_ Defines the path where query results are directed. Only local file paths are allowed.
- **Other Options**: _(Optional)_ Defines an override password using the `-$` switch. The override password only works for ODBC and DSN jobs.

---

## More Information

For conceptual information, refer to [SQL Jobs](../../../../../../../job-types/sql.md) in the **Concepts** online help.
