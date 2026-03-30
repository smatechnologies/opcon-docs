---
title: Viewing, Adding, and Editing SQL Job Details
description: "SQL job details define how OpCon executes a query or stored procedure against a database, including connection type, server, user, SQL statement, and exit conditions."
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

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

SQL job details define how OpCon executes a query or stored procedure against a database, including the connection type, database server, user, SQL statement or script, and expected exit conditions. These details are configured in the Task Details panel of a SQL master job in Solution Manager.

To view, add, or edit a SQL job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## When Would You Use It?

- To view, add, or edit a SQL job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges)

## Why Would You Use It?

- **Viewing, Adding,**: To view, add, or edit a SQL job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges)

## Viewing SQL Job Details

1. To view a SQL job, go to **Library** > **Master Jobs**
1. Select a SQL job in the list
1. Select **Edit**
1. Expand the **Task Details** panel to expose its content

---

## Adding SQL Job Details

Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).

---

## Editing SQL Job Details

To edit SQL Job Details, complete the following steps:

1. To edit SQL job details, go to **Library** > **Master Jobs**
1. Select a SQL job
1. Select **Edit**
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Master Job Definition Read-only Button"))
   when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Job Definition Admin Button"))
   when in **Admin** mode.
1. Expand the **Task Details** panel. See [SQL Job Details](#SQL-Job-Details) for details

---

## SQL Job Details

:::note
All required fields are designated by a red asterisk.
:::

- **Machine or Machine Group**: defines the machine(s) or machine group for the SQL Job

**In the SQL Definition frame:**

- [Update SQL Job Action: MS SQL DTExec](#updating-sql-job-action-ms-sql-dtexec)
- [Update SQL Job Action: MS SQL Job](#updating-sql-job-action-ms-sql-job)
- [Update SQL Job Action: MS SQL Script](#updating-sql-job-action-ms-sql-script)
- [Update SQL Job Action: MySQL](#updating-sql-job-action-mysql)
- [Update SQL Job Action: Oracle](#updating-sql-job-action-oracle)
- [Update SQL Job Action: Other DB](#updating-sql-job-action-other-db)

### Updating SQL Job Action: MS SQL DTExec

:::note
Running a MS SQL DTExec job requires the DTExec utility to be installed for running SSIS packages.
:::

- **MS SQL DTExec Connection**:
  - **SQL**:
    - **Server Name**: Defines the server name from which to retrieve the package
    - **User Id**: Allows retrieval of a package protected by SQL server authentication
    - **Windows Authentication**: Specifies whether the User Id is a Windows or SQL user for correct authentication
  - **FILE**:
    - **Config File Name**: Defines a configuration file to extract values from, allowing a run-time configuration that differs from the design-time configuration. Store settings in an XML configuration file and load them before package execution
  - **ISSERVER**:
    - **Server Name**: Defines the SQL Server name where the package to run is stored
    - **User Id**: The Windows Authentication user that runs the package on Integration Services Server
- **Advanced Failure Criteria**: _(Optional)_ Refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria)

#### MS SQL DTExec Package Tab

**Package File Path**: Loads a package stored in SQL server. The package_path argument specifies the package name to retrieve. Folders in the path are terminated with backslashes (\\).

### Updating SQL Job Action: MS SQL Job

:::note
MS SQL Job does not require any special tools to be installed.
:::

- **Server Name\\Instance**: Defines the name or IP address of the SQL server machine with an optional instance name (e.g., SQLTEST, SQLTEST\\SQLEXPRESS)
- **Windows Authentication**: _(Optional)_ Defines whether to use Windows Authentication
- **User Id**: Defines the SQL or Windows Authentication user name
- **Encrypt**: _(Optional)_ Defines whether to use an encrypted connection. SSL encryption must be pre-configured on the SQL server connection manager
- **Retry Attempts**: _(Optional)_ Defines the number of connection retry attempts if the initial connection to SM SQL server fails
- **Advanced Failure Criteria**: _(Optional)_ Refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria)

#### SQL Job Tab

- **Job Name**: Defines the name of the job defined in the SQL Server Agent
- **Monitor Only**: _(Optional)_ Defines that OpCon does not start the job; once started outside OpCon, only its status is monitored
- **Monitoring End Time**: _(Optional)_ Defines the end time for monitoring a SQL Server Agent job as an hour offset from schedule date midnight (e.g., 17.5 means 5:30 p.m.). Useful for continuously running replication jobs monitored on a daily schedule

#### Other Options Tab

- **Other Options**: _(Optional)_ Defines an override password using the -$ switch

### Updating SQL Job Action: MS SQL Script

:::note
Running a MS SQL Script job requires SQLCMD to be installed on the agent machine.
:::

- **Server Name\\Instance**: Defines the name or IP address of the SQL server machine with an optional instance name (e.g., SQLTEST, SQLTEST\\SQLEXPRESS)
- **Database Name**: Defines the SQL database name
- **Windows Authentication**: _(Optional)_ Defines whether to use Windows Authentication
- **User Id**: Defines the SQL or Windows Authentication user name
- **Encrypt**: _(Optional)_ Defines whether to use an encrypted connection. SSL encryption must be pre-configured on the SQL server connection manager
- **Advanced Failure Criteria**: _(Optional)_ Refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria)

#### SQL Script Tab

**Script File (radio button)**: Select to define a script file.

- **Script File Path**: Defines the path to the SQL script file to run against the selected SQL server/database. Only local file paths are allowed

**In Line Script (radio button)**: Select to define an in line script.

:::tip Example

```sql
SELECT FirstName, LastName FROM Person.Person WHERE LastName LIKE 'Whi%';
```

:::

- **Statement(s)**: Defines the SQL query to run against the selected SQL server/database. Multiple semicolon-delimited queries can be run

#### Env Variables Tab

- **Name**: Defines the variable name to use in the script. Environment variables send dynamic values to the script at runtime
- **Value**: Defines the value to be used in the script

#### Other Options Tab

- **Use Exit Code From Script Result**: _(Optional)_ Defines whether to use the exit code from the script result
- **File Path**: _(Optional)_ Defines the path where query results are redirected. Only local file paths are allowed
- **Other Options**: _(Optional)_ Defines additional command line options supported by SQLCMD. Refer to <https://docs.microsoft.com/en-us/sql/tools/sqlcmd-utility>.

### Updating SQL Job Action: MySQL

:::note
Running a MySQL job requires the MySQL command line tool to be installed.
:::

- **Server Name**: Defines the name or IP address of the MySQL server machine (e.g., MYSQLTEST)
- **Database Name**: Defines the SQL database name
- **User Id**: Defines the user name for the connection
- **Port**: Defines the TCP/IP port number for the connection
- **Advanced Failure Criteria**: _(Optional)_ Refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria)

#### MySQL Script Tab

**Script File Path**: Defines the path to the SQL script file to run against the selected MySQL server/database. Only local file paths are allowed.

#### Env Variables Tab

- **Name**: Defines the variable name to use in the script. Environment variables send dynamic values to the script at runtime
- **Value**: Defines the value to be used in the script

#### Other Options Tab

- **File Path**: _(Optional)_ Defines the path where query results are redirected. Only local file paths are allowed
- **Other Options**: _(Optional)_ Defines additional command line switches supported by the MySQL command line utility

### Updating SQL Job Action: Oracle

:::note
Running an Oracle job requires SQL\*Plus to be installed.
:::

- **Server Name**: Defines the name or IP address of the Oracle server machine (e.g., MYSQLTEST)
- **Database Name**: Defines the SQL database name
- **User Id**: Defines the user name for the connection
- **Connection Id**: Defines the listening port on the database server
- **Advanced Failure Criteria**: _(Optional)_ Refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria)

#### Oracle Script Tab

- **Script File Path**: Defines the path to the SQL script file to run against the selected Oracle server/database. Only local file paths are allowed
- **Parameters (positional)**: _(Optional)_ Defines parameter values to pass to the script

#### Other Options Tab

- **File Path**: _(Optional)_ Defines the path where query results are directed. Only local file paths are allowed
- **Other Options**: _(Optional)_ Defines additional command line switches supported by the SQL\*Plus utility

### Updating SQL Job Action: Other DB

:::note
Running an Other DB job through ODBC/OLE DB connections requires the appropriate ODBC or OLE DB driver to be installed on the agent machine.
:::

- **ODBC Connection String (radio button)**: Select to define an ODBC connection string
  - **ODBC Connection String**: Defines an ODBC connection string for connecting to the database
- **OleDB Connection String (radio button)**: Select to define an OLE DB connection string
  - **OleDB Connection String**: Defines an OLE DB connection string for connecting to the database
- **DSN Name (radio button)**: Select to define a DSN name
  - **DSN Name**: Defines the ODBC DSN for connecting to the database
- **Windows Authentication**: _(Optional)_ Defines whether to use Windows Authentication
- **User Id**: Defines the SQL or Windows Authentication user name
- **Advanced Failure Criteria**: _(Optional)_ Refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria)

#### SQL Script Tab

- **Script File (radio button)**: Select to define a script file
  - **Script File Path**: Defines the path to the SQL script file to run against the SQL server/database. Only local file paths are allowed
- **In Line Script (radio button)**: Select to define an in line script
  - **Statement(s)**: Defines the SQL query to run against the selected SQL server/database. Multiple semicolon-delimited queries can be run

#### Env Variables Tab

- **Name**: Defines variables and their values for use in the script. Sends dynamic values to the script at runtime
- **Value**: Defines the value to be used in the script

#### Other Options Tab

- **File Path**: _(Optional)_ Defines the path where query results are directed. Only local file paths are allowed
- **Other Options**: _(Optional)_ Defines an override password using the -$ switch. Override password only works for ODBC and DSN jobs

### More Information

For conceptual information, refer to [SQL Jobs](../../../../../../../job-types/sql.md) in the **Concepts** online help.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Machine or Machine Group | defines the machine(s) or machine group for the SQL Job | — | — |
| Advanced Failure Criteria | _(Optional)_ Refer to Advanced Failure Criteria | — | — |
| Package File Path | Loads a package stored in SQL server. | — | — |
| Server Name\\Instance | Defines the name or IP address of the SQL server machine with an optional instance name (e.g., SQLTEST, SQLTEST\\SQLEXPRESS) | — | must be pre-configured on the SQL server connection manager. - **Retry Attempts**: _(Opt |
| Windows Authentication | _(Optional)_ Defines whether to use Windows Authentication | — | must be pre-configured on the SQL server connection manager. - **Retry Attempts**: _(Opt |
| User Id | Defines the SQL or Windows Authentication user name | — | must be pre-configured on the SQL server connection manager. - **Retry Attempts**: _(Opt |
| Encrypt | _(Optional)_ Defines whether to use an encrypted connection. | — | must be pre-configured on the SQL server connection manager. - **Retry Attempts**: _(Opt |
| Retry Attempts | _(Optional)_ Defines the number of connection retry attempts if the initial connection to SM SQL server fails | — | — |
| Job Name | Defines the name of the job defined in the SQL Server Agent | — | — |
| Monitor Only | _(Optional)_ Defines that OpCon does not start the job; once started outside OpCon, only its status is monitored | — | — |
| Monitoring End Time | _(Optional)_ Defines the end time for monitoring a SQL Server Agent job as an hour offset from schedule date midnight (e.g., 17.5 means 5:30 p.m.). | — | — |
| Other Options | _(Optional)_ Defines an override password using the -$ switch | — | — |
| Database Name | Defines the SQL database name | — | must be pre-configured on the SQL server connection manager. - **Advanced Failure Criter |
| Script File (radio button) | Select to define a script file | — | — |
| Script File Path | Defines the path to the SQL script file to run against the selected SQL server/database. | — | — |
| In Line Script (radio button) | Select to define an in line script | — | — |
| Statement(s) | Defines the SQL query to run against the selected SQL server/database. | — | — |
| Name | Defines the variable name to use in the script. | — | — |
| Value | Defines the value to be used in the script | — | — |
| Use Exit Code From Script Result | _(Optional)_ Defines whether to use the exit code from the script result | — | — |
| File Path | _(Optional)_ Defines the path where query results are redirected. | — | — |
| Server Name | Defines the name or IP address of the MySQL server machine (e.g., MYSQLTEST) | — | — |
| Port | Defines the TCP/IP port number for the connection | — | — |
| Connection Id | Defines the listening port on the database server | — | — |
| Parameters (positional) | _(Optional)_ Defines parameter values to pass to the script | — | — |
## FAQs

**Q: How many steps does the Viewing, Adding, and Editing SQL Job Details procedure involve?**

The Viewing, Adding, and Editing SQL Job Details procedure involves 9 steps. Complete all steps in order and save your changes.

**Q: What does Viewing, Adding, and Editing SQL Job Details cover?**

This page covers Viewing SQL Job Details, Adding SQL Job Details, Editing SQL Job Details.

**Q: What external utility must be installed on the agent machine to run an MS SQL DTExec job?**

Running an MS SQL DTExec job requires the DTExec utility to be installed on the agent machine. This utility is used to execute SSIS packages; without it, the job action cannot be performed.

## Glossary

**DSN (Data Source Name)**: An ODBC connection identifier that stores database connection parameters. OpCon utilities use system DSNs to connect to the OpCon SQL Server database.

**TCP/IP**: The network communication protocol used for all data exchange between SMANetCom on the OpCon server and agents on target machines.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
