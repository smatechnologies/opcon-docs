# Viewing, Adding, and Editing SQL Job Details

To view, add, or edit a SQL job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing SQL Job Details

1. To view a SQL job, go to **Library** > **Master Jobs**.
1. Select a SQL job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel to expose its content.

---

## Adding SQL Job Details

Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).

---

## Editing SQL Job Details

1. To edit SQL job details, go to **Library** > **Master Jobs**.
1. Select a SQL job.
1. Select **Edit**.
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Master Job Definition Read-only Button"))
   when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Job Definition Admin Button"))
   when in **Admin** mode.
1. Expand the **Task Details** panel. See [SQL Job Details](#SQL-Job-Details) for details.

---

## SQL Job Details

:::note
All required fields are designated by a red asterisk.
:::

- **Machine or Machine Group**: defines the machine(s) or machine group for the SQL Job.

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
      package to execute is stored.
    - **User Id**: The Windows Authentication user that will
      execute the package on Integration Services Server.
- **Advanced Failure Criteria**: _(Optional)_ SQL jobs
  can make use of the Advanced Failure Criteria feature for the
  defined job. For more information, refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria).

#### MS SQL DTExec Package Tab

**Package File Path**: Loads a package that is stored in SQL server. The
package_path argument specifies the name of the package to retrieve. If
folders are included in the path, they are terminated with backslashes
(\\).

### Updating SQL Job Action: MS SQL Job

:::note
MS SQL Job does not require any special tools to be installed.
:::

- **Server Name\\Instance**: Defines the name or IP address of the SQL
  server machine with an optional instance name (e.g., SQLTEST,
  SQLTEST\\SQLEXPRESS).
- **Windows Authentication**: _(Optional)_ Defines
  whether to use Windows Authentication for the job.
- **User Id**: Defines the SQL or Windows Authentication user name.
- **Encrypt**: _(Optional)_ Defines whether to use an
  encrypted connection to the database. Use of SSL to encrypt the
  connection must be pre-configured on the SQL server connection
  manager to use this option.
- **Retry Attempts**: _(Optional)_ Defines the number
  of connection retry attempts to be made if connection to SM SQL
  server fails initially.
- **Advanced Failure Criteria**: _(Optional)_ SQL jobs
  can make use of the Advanced Failure Criteria feature for the
  defined job. For more information, refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria).

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

### Updating SQL Job Action: MS SQL Script

:::note
Running a MS SQL Script job requires SQLCMD to be installed on the agent machine.
:::

- **Server Name\\Instance**: Defines the name or IP address of the SQL
  server machine with an optional instance name (e.g., SQLTEST,
  SQLTEST\\SQLEXPRESS).
- **Database Name**: Defines the SQL database name.
- **Windows Authentication**: _(Optional)_ Defines
  whether to use Windows Authentication for the job.
- **User Id**: Defines the SQL or Windows Authentication user name.
- **Encrypt**: _(Optional)_ Defines whether to use an
  encrypted connection to the database. Use of SSL to encrypt the
  connection must be pre-configured on the SQL server connection
  manager to use this option.
- **Advanced Failure Criteria**: _(Optional)_ SQL jobs
  can make use of the Advanced Failure Criteria feature for the
  defined job. For more information, refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria).

#### SQL Script Tab

**Script File (radio button)**: Select to define a script file.

- **Script File Path**: Defines the path to the SQL script file to be
  executed against the selected SQL server/database. Only local file
  paths are allowed.

**In Line Script (radio button)**: Select to define an in line script.

:::tip Example

```sql
SELECT FirstName, LastName FROM Person.Person WHERE LastName LIKE 'Whi%';
```

:::

- **Statement(s)**: Defines the SQL query to be executed against the
  selected SQL server/database. Multiple semicolon-delimited queries
  can be executed.

#### Env Variables Tab

- **Name**: Defines the name of the variable to be used in the script.
  Environment variables provide the ability to send dynamic values to
  the script at runtime.
- **Value**: Defines the value to be used in the script.

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

### Updating SQL Job Action: MySQL

:::note
Running a MySQL job requires the MySQL command line tool to be installed.
:::

- **Server Name**: Defines the name or IP address of the MySQL server
  machine (e.g., MYSQLTEST).
- **Database Name**: Defines the SQL database name.
- **User Id**: Defines the user name for the connection.
- **Port**: Defines the TCP/IP port number for the connection.
- **Advanced Failure Criteria**: _(Optional)_ SQL jobs
  can make use of the Advanced Failure Criteria feature for the
  defined job. For more information, refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria).

#### MySQL Script Tab

**Script File Path**: Defines the path to the SQL script file to be
executed against the selected MySQL server/database. Only local file
paths are allowed.

#### Env Variables Tab

- **Name**: Defines the name of the variable to be used in the script.
  Environment variables provide the ability to send dynamic values to
  the script at runtime.
- **Value**: Defines the value to be used in the script.

#### Other Options Tab

- **File Path**: _(Optional)_ Defines the path to the
  file where the results of the query should be redirected. Only local
  file paths are allowed.
- **Other Options**: _(Optional)_ Defines any
  additional command line switches supported by the MySQL command line
  utility.

### Updating SQL Job Action: Oracle

:::note
Running an Oracle job requires SQL\*Plus to be installed.
:::

- **Server Name**: Defines the name or IP address of the MySQL server
  machine (e.g., MYSQLTEST).
- **Database Name**: Defines the SQL database name.
- **User Id**: Defines the user name for the connection.
- **Connection Id**: Defines the listening port on the database
  server.
- **Advanced Failure Criteria**: _(Optional)_ SQL jobs
  can make use of the Advanced Failure Criteria feature for the
  defined job. For more information, refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria).

#### Oracle Script Tab

- **Script File Path**: Defines the path to the SQL script file to be
  executed against the selected Oracle server/database. Only local
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

### Updating SQL Job Action: Other DB

:::note
Running an Oracle job requires SQL\*Plus to be installed.
:::

- **Server Name**: Defines the name or IP address of the MySQL server
  machine (e.g., MYSQLTEST).
- **Database Name**: Defines the SQL database name.
- **User Id**: Defines the user name for the connection.
- **Connection Id**: Defines the listening port on the database
  server.
- **Advanced Failure Criteria**: _(Optional)_ SQL jobs
  can make use of the Advanced Failure Criteria feature for the
  defined job. For more information, refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria).

#### Oracle Script Tab

- **Script File Path**: Defines the path to the SQL script file to be
  executed against the selected Oracle server/database. Only local
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
- **DSN Name (radio button)**: Select to define a DSN name.
  - **DSN Name**: Defines the ODBC DSN for connecting to the
    database.
- **Windows Authentication**: _(Optional)_ Defines
  whether to use Windows Authentication for the job.
- **User Id**: Defines the SQL or Windows Authentication user name.
- **Advanced Failure Criteria**: _(Optional)_ SQL jobs
  can make use of the Advanced Failure Criteria feature for the
  defined job. For more information, refer to [Advanced Failure Criteria](../../../../../../../objects/jobs.md#advanced-failure-criteria).

#### SQL Script Tab

- **Script File (radio button)**: Select to define a script file.
  - **Script File Path**: Defines the path to the SQL script file to
    be executed against the SQL server/database. Only local file
    paths are allowed.
- **In Line Script (radio button)**: Select to define an in line
  script.
  - **Statement(s)**: Defines the SQL query to be executed against
    the selected SQL server/database. Multiple semicolon-delimited
    queries can be executed.

#### Env Variables Tab

- **Name**: Defines variables that can be used in the script and their
  corresponding values. Provides the ability to send dynamic values to
  the script at runtime.
- **Value**: Defines the value to be used in the script.

#### Other Options Tab

- **File Path**: _(Optional)_ Defines the path to the
  file where the results of the query should be directed. Only local
  file paths are allowed.
- **Other Options**: _(Optional)_ Defines an override
  password using -$ switch. Override password only works for ODBC and
  DSN jobs.

### More Information

For conceptual information, refer to [SQL Jobs](../../../../../../../job-types/sql.md) in
the **Concepts** online help.
