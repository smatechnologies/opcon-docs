---
title: SQL Job Details
description: "The information in this section applies to defining a SQL Job."
product_area: Job Types
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: reference
---

# SQL Job Details

**Theme:** Configure  
**Who Is It For?** Automation Engineer

## What Is It?

The information in this section applies to defining a SQL Job. For
additional information about this platform, refer to [SQL Agent Configuration and
Operation](https://help.smatechnologies.com/opcon/agents/sql/administration/service-configuration)
in the **SQL Agent** online help.

## SQL Definition

- **Job Action**: Defines the run process the job uses. A job action
  can be [MS SQL DTExec](#fields-for-ms-sql-dtexec), [MS SQL
  Job](#fields-for-ms-sql-job), [MS SQL
  Script](#fields-for-ms-sql-script), [MySQL](#fields-for-mysql),
  [Oracle](#fields-for-oracle), or [Other DB](#fields-for-other-db).

### Fields for MS SQL DTExec

:::note
Running a MS SQL DTExec job requires the DTExec utility to be installed for running SSIS packages.
:::

- **MS SQL DTExec Connection**:
  - **SQL**:
    - **Server Name**: Defines the server name from which to
      retrieve the package.
    - **User Id**: Allows the retrieval of a package that is
      protected by SQL server authentication.
    - **Windows Authentication**: Specifies if the selected User
      Id is a Windows user or SQL user so the package can be run
      using the correct authentication.
  - **FILE**:
    - **Config File Name**: Defines a configuration file to
      extract values from. Using this option, you can set a
      run-time configuration that differs from the configuration
      that was specified at design time for the package. You can
      store different configuration settings in an XML
      configuration file and then load the settings before package
      execution by using this option.
  - **ISSERVER**:
    - **Server Name**: Defines the SQL Server name where the
      package to run is stored.
    - **User Id**: The Windows Authentication user that will
      run the package on Integration Services Server.
- **Advanced Failure Criteria**: _(Optional)_ SQL jobs
  can use the Advanced Failure Criteria feature for the
  defined job. For more information, refer to [Advanced Failure Criteria](../objects/jobs.md#advanced-failure-criteria).

#### MS SQL DTExec Package Tab

**Package File Path**: Loads a package that is stored in SQL server. The
package_path argument specifies the name of the package to retrieve. If
folders are included in the path, they are terminated with backslashes
(\\).

#### Other Options Tab

**Other Options**: _(Optional)_ Defines any additional
command line switches supported by the DTExec command line utility.

### Fields for MS SQL Job

:::note
MS SQL Job does not require any special tools to be installed.
:::

- **Server Name\\Instance**: Defines the name or IP address of the SQL
  server machine with an optional instance name (e.g., SQLTEST,
  SQLTEST\\SQLEXPRESS).
- **Windows Authentication**: _(Optional)_ Defines
  whether to use Windows Authentication for the job.
- **User Id**: Defines the SQL or Windows Authentication user name
- **Encrypt**: _(Optional)_ Defines whether to use an
  encrypted connection to the database. Use of SSL to encrypt the
  connection must be pre-configured on the SQL server connection
  manager to use this option.
- **Retry Attempts**: _(Optional)_ Defines the number
  of connection retry attempts to be made if connection to SM SQL
  server fails initially.
- **Advanced Failure Criteria**: _(Optional)_ SQL jobs
  can use the Advanced Failure Criteria feature for the
  defined job. For more information, refer to [Advanced Failure Criteria](../objects/jobs.md#advanced-failure-criteria).

#### SQL Job Tab

- **Job Name**: Defines the name of the job defined in the SQL Server
  Agent.
- **Monitor Only**: _(Optional)_ Defines that the job
  should not be started by OpCon, and once the job is started outside
  of OpCon, its status will only be monitored.
- **Monitoring End Time**: _(Optional)_ Defines the
  time end time for monitoring a SQL Server Agent job. It is indicated
  as an hour offset from schedule date midnight (e.g., 17.5 means 5:30
  p.m. on schedule date). This is useful when monitoring SQL server
  replication jobs that run continuously, but the monitoring activity
  is scheduled daily in new OpCon schedules.

#### Other Options Tab

- **Other Options**: _(Optional)_ Defines an override
  password using -$ switch.

### Fields for MS SQL Script

:::note
Running a MS SQL Script job requires SQLCMD to be installed on the agent machine.
:::

- **Server Name\\Instance**: Defines the name or IP address of the SQL
  server machine with an optional instance name (e.g., SQLTEST,
  SQLTEST\\SQLEXPRESS).
- **Database Name**: Defines the SQL database name
- **Windows Authentication**: _(Optional)_ Defines
  whether to use Windows Authentication for the job.
- **User Id**: Defines the SQL or Windows Authentication user name
- **Encrypt**: _(Optional)_ Defines whether to use an
  encrypted connection to the database. Use of SSL to encrypt the
  connection must be pre-configured on the SQL server connection
  manager to use this option.
- **Advanced Failure Criteria**: _(Optional)_ SQL jobs
  can use the Advanced Failure Criteria feature for the
  defined job. For more information, refer to [Advanced Failure Criteria](../objects/jobs.md#advanced-failure-criteria).

#### SQL Script Tab

**Script File (radio button)**: Select to define a script file.

- **Script File Path**: Defines the path to the SQL script file to be
  run against the selected SQL server/database. Only local file
  paths are allowed.

**In Line Script (radio button)**: Select to define an in line script.

:::tip Example

```sql
SELECT FirstName, LastName FROM Person.Person WHERE LastName LIKE 'Whi%';
```

:::

- **Statement(s)**: Defines the SQL query to be run against the
  selected SQL server/database. Multiple semicolon-delimited queries
  can be run.

#### Env Variables Tab

- **Name**: Defines the name of the variable to be used in the script
  Environment variables provide the ability to send dynamic values to
  the script at runtime.
- **Value**: Defines the value to be used in the script

#### Other Options Tab

- **Use Exit Code From Script Result**: _(Optional)_
  Defines whether to use the exit code that results from the script
  result.
- **File Path**: _(Optional)_ Defines the path to the
  file where the results of the query should be redirected. Only local
  file paths are allowed.
- **Other Options**: _(Optional)_ Defines any
  additional command line options supported by the SQLCMD tool. For
  options supported by SQLCMD, refer to
  <https://docs.microsoft.com/en-us/sql/tools/sqlcmd-utility>.

### Fields for MySQL

:::note
Running a MySQL job requires the MySQL command line tool to be installed.
:::

- **Server Name**: Defines the name or IP address of the MySQL server
  machine (e.g., MYSQLTEST).
- **Database Name**: Defines the SQL database name
- **User Id**: Defines the user name for the connection
- **Port**: Defines the TCP/IP port number for the connection
- **Advanced Failure Criteria**: _(Optional)_ SQL jobs
  can use the Advanced Failure Criteria feature for the
  defined job. For more information, refer to [Advanced Failure Criteria](../objects/jobs.md#advanced-failure-criteria).

#### MySQL Script Tab

**Script File Path**: Defines the path to the SQL script file to be
run against the selected MySQL server/database. Only local file
paths are allowed.

#### Env Variables Tab

- **Name**: Defines the name of the variable to be used in the script
  Environment variables provide the ability to send dynamic values to
  the script at runtime.
- **Value**: Defines the value to be used in the script

#### Other Options Tab

- **File Path**: _(Optional)_ Defines the path to the
  file where the results of the query should be redirected. Only local
  file paths are allowed.
- **Other Options**: _(Optional)_ Defines any
  additional command line switches supported by the MySQL command line
  utility.

### Fields for Oracle

:::note
Running an Oracle job requires SQL\*Plus to be installed.
:::

- **Server Name**: Defines the name or IP address of the MySQL server
  machine (e.g., MYSQLTEST).
- **Database Name**: Defines the SQL database name
- **User Id**: Defines the user name for the connection
- **Connection Id**: Defines the listening port on the database
  server.
- **Advanced Failure Criteria**: _(Optional)_ SQL jobs
  can use the Advanced Failure Criteria feature for the
  defined job. For more information, refer to [Advanced Failure Criteria](../objects/jobs.md#advanced-failure-criteria).

#### Oracle Script Tab

- **Script File Path**: Defines the path to the SQL script file to be
  run against the selected Oracle server/database. Only local
  file paths are allowed.
- **Parameters (positional)**: _(Optional)_ Defines
  the parameter values to be passed to the script.

#### Other Options Tab

- **File Path**: _(Optional)_ Defines the path to the
  file where the results of the query should be directed. Only local
  file paths are allowed.
- **Other Options**: _(Optional)_ Defines any
  additional command line switches supported by the SQL\*Plus command
  line utility.

### Fields for Other DB

:::note
Running an Other DB job through ODBC/OLE DB connections requires the appropriate ODBC or OLE DB driver to be installed on the agent machine.
:::

- **ODBC Connection String (radio button)**: Select to define the an
  ODBC connection string.
  - **ODBC Connection String**: Defines an ODBC connection string
    for connecting to the database.
- **OleDB Connection String (radio button)**: Select to define an OLE
  DB connection string.
  - **OleDB Connection String**: Defines an OLE DB connection string
    for connecting to the database.
- **DSN Name (radio button)**: Select to define a DSN name
  - **DSN Name**: Defines the ODBC DSN for connecting to the
    database.
- **Windows Authentication**: _(Optional)_ Defines
  whether to use Windows Authentication for the job.
- **User Id**: Defines the SQL or Windows Authentication user name
- **Advanced Failure Criteria**: _(Optional)_ SQL jobs
  can use the Advanced Failure Criteria feature for the
  defined job. For more information, refer to [Advanced Failure Criteria](../objects/jobs.md#advanced-failure-criteria).

#### SQL Script Tab

- **Script File (radio button)**: Select to define a script file
  - **Script File Path**: Defines the path to the SQL script file to
    be run against the SQL server/database. Only local file
    paths are allowed.
- **In Line Script (radio button)**: Select to define an in line
  script.
  - **Statement(s)**: Defines the SQL query to be run against
    the selected SQL server/database. Multiple semicolon-delimited
    queries can be run.

#### Env Variables Tab

- **Name**: Defines variables that can be used in the script and their
  corresponding values. Provides the ability to send dynamic values to
  the script at runtime.
- **Value**: Defines the value to be used in the script

#### Other Options Tab

- **File Path**: _(Optional)_ Defines the path to the
  file where the results of the query should be directed. Only local
  file paths are allowed.
- **Other Options**: _(Optional)_ Defines an override
  password using -$ switch. Override password only works for ODBC and
  DSN jobs.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Job Action | Defines the run process the job uses. | — | — |
| Advanced Failure Criteria | _(Optional)_ SQL jobs | — | — |
| Package File Path | Loads a package that is stored in SQL server. | — | — |
| Other Options | _(Optional)_ Defines any additional | — | — |
| Server Name\\Instance | Defines the name or IP address of the SQL | — | must be pre-configured on the SQL server connection |
| Windows Authentication | _(Optional)_ Defines | — | must be pre-configured on the SQL server connection   manager to use this option. - **Re |
| User Id | Defines the SQL or Windows Authentication user name | — | must be pre-configured on the SQL server connection   manager to use this option. - **Re |
| Encrypt | _(Optional)_ Defines whether to use an encrypted connection to the database. | — | must be pre-configured on the SQL server connection   manager to use this option. - **Re |
| Retry Attempts | _(Optional)_ Defines the number | — | — |
| Job Name | Defines the name of the job defined in the SQL Server | — | — |
| Monitor Only | _(Optional)_ Defines that the job | — | — |
| Monitoring End Time | _(Optional)_ Defines the time end time for monitoring a SQL Server Agent job. | — | — |
| Database Name | Defines the SQL database name | — | must be pre-configured on the SQL server connection   manager to use this option. - **Ad |
| Script File (radio button) | Select to define a script file | — | — |
| Script File Path | Defines the path to the SQL script file to be run against the selected SQL server/database. | — | — |
| In Line Script (radio button) | Select to define an in line script | — | — |
| Statement(s) | Defines the SQL query to be run against the selected SQL server/database. | — | — |
| Name | Defines the name of the variable to be used in the script | — | — |
| Value | Defines the value to be used in the script | — | — |
| Use Exit Code From Script Result | _(Optional)_ | — | — |
| File Path | _(Optional)_ Defines the path to the file where the results of the query should be redirected. | — | — |
| Server Name | Defines the name or IP address of the MySQL server | — | — |
| Port | Defines the TCP/IP port number for the connection | — | — |
| Connection Id | Defines the listening port on the database | — | — |
| Parameters (positional) | _(Optional)_ Defines | — | — |
## Operations

### Monitoring

- SQL jobs support **Advanced Failure Criteria** to define custom success/failure conditions based on job return code or output. Use this feature when the default exit code evaluation is insufficient for the specific SQL workload.
- Running a **MS SQL DTExec** job action requires the DTExec utility to be installed on the agent machine. Verify DTExec is present and accessible before defining or running SSIS package jobs.

### Common Tasks

- For **MS SQL Job** (SQL Server Agent jobs), specify the SQL Agent Job name. The SQL Agent must be running on the target server and the job must be defined in SQL Server Agent before scheduling it through OpCon.
- For **Other DB** (ODBC) job actions, a system DSN must be configured on the agent machine pointing to the target database before the job can connect.

## FAQs

**Q: What job actions does the SQL job type support?**

SQL jobs support: MS SQL DTExec (runs SSIS packages), MS SQL Job (runs SQL Server Agent jobs), MS SQL Script (runs T-SQL scripts), MySQL, Oracle, and Other DB (ODBC-based connections).

**Q: What is required to run an MS SQL DTExec job?**

The DTExec utility must be installed on the agent machine to run SSIS packages via an MS SQL DTExec job action.

**Q: Can SQL jobs use Advanced Failure Criteria?**

Yes. SQL jobs can use the Advanced Failure Criteria feature to define custom success/failure conditions based on the job's return code or output.

## Glossary

**DSN (Data Source Name)**: An ODBC connection identifier that stores database connection parameters. OpCon utilities use system DSNs to connect to the OpCon SQL Server database.

**TCP/IP**: The network communication protocol used for all data exchange between SMANetCom on the OpCon server and agents on target machines.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
