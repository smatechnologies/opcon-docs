---
title: Schedule Import/Export
description: "Learn how to schedule import/export in OpCon."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-05-29
doc_type: procedural
---

# Schedule Import/Export

**Theme:** Configure
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

:::warning
Continuous is no longer actively developing the original ImpEx application. Continuous now offers a more advanced and reliable solution, Deploy. ImpEx will no longer receive updates; Deploy is its replacement.
:::

The Schedule Import/Export utility (ImpEx) migrates one or more schedules from one database to another while maintaining relational integrity in the new environment. This utility is not a replacement for regular database backups. Even if you export all schedules from a database, some information may be left behind.

The utility uses a Microsoft Access database (`.mdb`) file as the transport medium between the source and target databases. This mechanism allows the two databases to be physically detached. Even if the databases are on the same network, the transport database is still required.

To make schedule transfers, the Schedule Import/Export utility requires the appropriate ODBC drivers for the SQL database. The OpCon installation does not provide SQL ODBC drivers; however, the installation does include Microsoft Access ODBC drivers for the transport database.

To open the Schedule Import/Export utility, use the menu path **Start \> All Programs \> OpConxps \> Utilities \> Schedule Import Export**. This utility requires the same User Login ID and password as Enterprise Manager. For information on logging in to Enterprise Manager, refer to [Logging In/Out](../../Files/UI/Enterprise-Manager/Logging-In.md) in the **Enterprise Manager** online help. For information on configuring the SQL and Access DSNs, refer to [Create System DSNs](../../installation/configuration.md) in the **OpCon Installation** online help.

## Required Privileges

To log in to the Schedule Import/Export utility, a user must have one of the following privileges:

- **All Administrative Functions**
- **Import and Export Schedules**

:::caution
Once a user has logged in to the utility with one of these privileges, the user has access to all schedules in the OpCon database for exporting and importing.
:::

## Menus

The utility provides a **File** menu and a **Help** menu.

### File

| Menu item | What it does |
|---|---|
| **Select ODBC DSN** | Changes the SQL database connection. |
| **Select Access DSN** | Changes the transport database connection. |
| **Export** | Exports the selected schedules from the SQL database to the transport database. |
| **Import** | Imports the selected schedules from the transport database to the SQL database. |
| **Refresh** | Pulls the latest schedule information from the database. |
| **Exit** | Closes the Schedule Import/Export utility. |

### Help

| Menu item | What it does |
|---|---|
| **OpCon/xps Help** | Opens the OpCon online help. |
| **About** | Displays product versions and Technical Support information. |

## Toolbar

The toolbar provides shortcuts to the **File** menu options.

| Button | What it does |
|---|---|
| **Import from Transport Database** | Imports the selected schedules from the transport database to the SQL database. |
| **Export to Transport Database** | Exports the selected schedules from the SQL database to the transport database. The application displays several messages to set options for the export. |
| **Select ODBC DSN** | Connects to a different SQL database. Select a new DSN, then supply the User Login ID and password. Available from **File \> Select ODBC DSN**. |
| **Select Access DSN** | Selects a different Access database associated with another DSN. Normally you do not need to perform this operation unless different `.mdb` filenames are used for different sites. Available from **File \> Select Access DSN**. |
| **Refresh** | Pulls the latest information from the ODBC database and the transport database. |
| **Force Machine Mapping** | Determines whether machine mapping is required during the import process. If this option is set for an export, the transport database is marked with this setting. When that transport database is used to import to a SQL database, the import defaults to forcing the machine mapping. You can still turn the option off before import if desired. |

## Log in to Schedule Import/Export

:::note
If you disable a login that is defined as a user's Network Account name (for example, `Domain\User`), the user cannot log in to any interactive applications. The Schedule Import/Export utility informs the user that the account is disabled and shuts down the program.
:::

:::note
For procedures on creating OpCon User Accounts, refer to [Adding User Accounts](../../Files/UI/Enterprise-Manager/Adding-User-Accounts.md) in the **Enterprise Manager** online help.
:::

To log in to the Schedule Import/Export utility, complete the following steps:

1. Open the utility from **Start \> All Programs \> OpConxps \> Utilities \> Schedule Import Export**.
2. In the **User Login ID** field, do one of the following:
    - For **manual** login, enter a case-sensitive User Login ID (for example, `ocadm`).
    - For **first-time automatic** login, leave the field empty. The utility uses your network login and passes it through to the database.
3. In the **Password** field, do one of the following:
    - For **manual** login, enter the case-sensitive password for the user.
    - For **first-time automatic** login, leave the field empty.
4. In the **Data Source** field, select the OpCon database.
5. To save the connection information for the next login, select the **Save Settings** option.
6. Select **OK**.

**Result:** The utility connects to the selected OpCon database and displays the main window.

:::note
For automatic login, the utility remembers your profile and automatically logs in the next time you start the program.
:::

## Schedule Transfers

In the Schedule Import/Export main window, the lower list contains the schedules in the SQL database (labeled **ODBC Database**). The upper list contains the schedules in the transport (Access) database (labeled **Transport Database**). Upon first use, the transport database is empty.

When you export schedules from the SQL database, the original schedules are left intact; however, the utility clears the transport database each time it exports new schedules. There is no provision to merge new schedules into existing schedules in the Access database.

:::note
If the contents of the Access database need to be preserved, copy the `.mdb` file to another file or directory. Do not rename the `.mdb` file in the **Utilities** directory, because the program creates a new Access database template only if one is not present. As a best practice, maintain a backup copy of the original `IMPEX.MDB` file.
:::

When you import a schedule to the SQL database, the destination schedules can be altered if a duplicate schedule exists. Refer to [Importing Schedules](#importing-schedules).

### Data Transfer Limitations

When exporting and importing, the Schedule Import/Export utility transfers many of the administrative records associated with a schedule; however, there are several limitations associated with the transfer process. Review the complete list below to understand what the transfer process does and does not include.

- The utility transports the Roles and associated User Login IDs with privileges to exported schedules. The exported privileges include the appropriate individual privileges for each Role for the schedules, machines, and machine groups associated with the exported schedules; however:
    - The utility does not export the **Inherits Privileges to All Schedules**, **Inherits Privileges to All Machines**, or **Inherits Privileges to All Machine Groups** functions. This is a security measure. The fact that a user inherits privileges in a \"test\" database does not mean the user should inherit privileges in a \"production\" database.
- The utility transports the departments associated with the exported schedules and the Role function privileges for those departments, as well as that Role's non-departmental privileges; however:
    - The utility does not export departmental privileges that are valid for all departments.
    - The utility does not export departmental privileges associated with un-exported departments.
    - When the Role privileges are imported, only a new user's Role privileges are accepted. If the Role exists in the target database, the privileges in the target database are retained, and users in the transport database that do not exist in the target database are imported and assigned to the Role in the target database. If the user Role does not exist in the target database, the privileges are imported from the transport database, and the users from the transport database are included in the Role for the target database.
- The utility exports access codes associated with the exported schedules and the Role privileges for those access codes.
- The utility exports Machines selected as a Primary Machine, or any of the three Alternate machines on exported schedules.
- The utility exports machine group names, but not the machine group itself. This enables exporting to a new environment (with different machines) while maintaining a customer's scheduling structure.
- The utility optionally exports all Global Properties, or only those Global Properties associated with exported schedules.
- The utility exports either all Thresholds/Resources, or only those Thresholds/Resources associated with exported schedules.
- The utility exports all holiday dates, including those from the Master Holiday Calendar or Additional Holiday Calendar, if they are associated with the exported schedules.
- The utility optionally exports all of the job data from the SAP Server(s) for any SAP R/3 and CRM jobs in the exported schedules.
- Upon import, the utility can match the SAP Job Name and Job ID to the SAP Server, or create new jobs for any SAP R/3 and CRM jobs in the transport database. The goal is to ensure the imported SAP R/3 and CRM jobs in the destination OpCon database have valid SAP Job Names and IDs.

When importing schedules, consider the following:

- The schema versions must be the same for the two databases between which the schedule is moved.
- When a new machine is created in the destination database, the utility marks the machine status **Down** to allow management of the agents within the license. Mark the machine **Up** for jobs to run on it.
- Batch User IDs submitted with jobs are imported only if those Batch User IDs exist in the destination database. When the import is complete, verify the details of imported jobs to make sure appropriate Batch User IDs are listed. Jobs fail if no Batch User ID is listed.
- OpCon Global Properties, Thresholds, and Resources are exported only if the options are selected to do so. Imported jobs and events that use these items may fail unless those properties are transferred.
- When OpCon Global Properties, Thresholds, and Resources are imported, only new items are accepted. If the item exists in the target database, the item and its value are retained. If the item does not exist in the target database, the item and its value are imported from the transport database.
- A conflict arises if source schedules already exist in the SQL database. If you choose to merge the source and target schedules, there must be no duplication of jobs for schedules. If duplicate information exists during the transfer, an error message is displayed, the entire transfer operation is terminated with an error, and all changes made to the target database are rolled back.
- Internal and cross-schedule job dependencies must be resolved when schedules are imported. If there are cross-schedule dependencies on schedules that do not exist in the target database, a warning is displayed. Select **OK** to ignore the missing job dependency and continue the schedule transfer. Select **Cancel** to terminate the schedule transfer.
- If the schedule uses the Master Holiday Calendar, the master holiday dates from the new database do not automatically populate in the imported schedule.
- If a schedule or job has a Frequency Name assigned that duplicates a frequency name in the destination database, the utility automatically changes the imported frequency name and appends an alphabetic character to the end (incrementing the letter until a unique name is achieved).

## Exporting Schedules

Use this option to transfer the selected schedules from the ODBC (SQL) database to the transport (Access) database. The menu item is equivalent to dragging the schedules from the lower list to the upper list.

:::note
If two schedules have cross-schedule job dependencies and both are migrated, migrate them at the same time to maintain the cross-schedule dependencies. If the schedules are migrated separately, the job dependency references are lost because they cannot be resolved.
:::

### Remove Master Holiday Dates

If the Master Holiday Dates from the source database should not be retained in the destination database, complete the following steps for each schedule being exported:

1. Select **Schedule Master**.
2. Clear the **Use Master Holiday** option.
3. On the **Schedule Master** toolbar, select **Save** ![Save button](../../Resources/Images/Utilities/EMsave.png \"Save button\").
4. Select **Close ☒** to the right of the **Server Options** tab to close the **Server Options** screen.

**Result:** The schedule no longer references the Master Holiday Calendar and can be exported without the source master holiday dates.

### Export Schedules

To export schedules to the transport database, complete the following steps:

1. [Log in to the Schedule Import/Export utility](#log-in-to-schedule-importexport).
2. In the **Data Source** field, select the desired data source.
3. Select **OK**.
4. In the **ODBC Database** list on the lower part of the window, select the schedules to export:
    - Select one schedule at a time to select one or more individual schedules.
    - Alternatively, select one schedule, then press **Ctrl+A** to select all schedules.
5. If desired, select the **Force Machine Mapping** option below the toolbar.
6. On the toolbar, select the **Export to Transport Database** button.
7. When asked whether the target database should be cleared, select **Yes** or **No**:
    - If **Yes**, the target database is cleared and the new schedules are transported. Select **OK** when the completion message is displayed.
    - If **No**, the process is canceled.
8. When asked whether all tokens should be transferred, select **Yes** or **No**:
    - If **Yes**, the utility transfers all administrative token records.
    - If **No**, the utility does not transfer administrative token records.
9. When asked whether all thresholds/resources should be transferred, select **Yes** or **No**:
    - If **Yes**, the utility transfers all thresholds/resources.
    - If **No**, the utility transfers only the thresholds/resources associated with the extracted schedules.
10. In the termination message, select **OK**.

**Result:** The selected schedules are exported to the transport database.

:::note
You can also drag the schedules to the target database list. To transfer multiple schedules as a unit, press **Ctrl** and drag the schedules to the target database list.
:::

:::note
If there are SAP R/3 and CRM Job details from one or more SAP Server(s) in the transport database, the utility provides additional messages to import the details to the SAP Server(s).
:::

## Exporting Schedules from the Command Line

:::note
When you export schedules from the command line, the transport database is purged before the export.
:::

The following is the syntax for exporting schedules from the Schedule Import/Export command line:

```
ImpEx.exe <AccessDSN>,<SQLDSN>,<UID>,<PWD>,<EXPORT>,<GlobalProperties?>,<Thresholds?>,<ScheduleName(s)> [-e] [-f] [-l] [-m] [-s]
```

:::note
There are no spaces after the variables for `ImpEx.exe`.
:::

| Parameter | Description |
|---|---|
| `ImpEx.exe` | The name of the Schedule Import/Export program. |
| `AccessDSN` | The ODBC Data Source Name corresponding to the Access database used as the transport database. |
| `SQLDSN` | The ODBC Data Source Name corresponding to the OpCon database. This name appears on the Schedule Import/Export login screen. |
| `UID` | A valid, case-sensitive OpCon User Login ID. |
| `PWD` | The case-sensitive password corresponding to the User Login ID. |
| `EXPORT` | Indicates that a schedule export is required. |
| `GlobalProperties?` | Indicates which Global Properties to export from the SQL database: `Y` = export all Global Properties; `R` = export only the Global Properties referenced by the extracted schedules and jobs; `N` = do not export any Global Properties. |
| `Thresholds?` | Indicates whether to transfer all thresholds and resources from the SQL database: `Y` = export all thresholds and resources; `N` = export only the thresholds and resources referenced by the extracted schedules and jobs. |
| `ScheduleName(s)` | The names of the schedules to export. Separate each name with a comma. When no schedule is specified, all schedules are exported. If the database has a binary sort order, schedule names are case-sensitive. |
| `-e` | The full file path (including drive letter) and filename where the Exit Code Override File (E.C.O.F.) is written. If not specified, a file named `ImpEx.dat` is placed in the `%PROGRAMDATA%\opconxps` directory. The Exit Code Override File is used by the Agent to determine the success or failure of the job. The Agent compares the failure criteria to the E.C.O.F. file instead of the standard exit condition of the job. For Schedule Import/Export exit codes, refer to the [Exit Codes](#exit-codes) table. When the job is defined in Enterprise Manager, specify the E.C.O.F. path and filename as given by the `-e` parameter, or the job is always considered a success. |
| `-f` | (Optional) The full file path (including drive letter) and filename containing a list of schedules for the program to extract. In the file, separate schedule names with commas or carriage returns. The `-f` option overrides any schedules specified in the `ScheduleName(s)` parameter. |
| `-l` (lowercase L) | The full file path (including drive letter) and filename for the `ImpEx.exe` log file. If `-l` is not given, the default log file is placed in the `%PROGRAMDATA%\opconxps` directory. The default log file name syntax is `ImpEx_<date-time stamp>.log`. The log file provides detailed information about errors generated during the job run and about interaction with the SAP Server. |
| `-m` | Turns on the Force Machine Mapping switch. If not specified, the Force Machine Mapping switch is turned off. |
| `-s` | The connection information for one or more SAP machines. This information is required to export the SAP Job Details from the SAP Server along with the OpCon job definitions for SAP R/3 and CRM jobs. See the syntax options below. |

There are two ways to specify the `-s` switch:

- **Option 1** — Specify the full path and filename of a configuration file listing connection information for each machine. For example: `-s\"c:\programdata\opconxps\utilities\SAPLoginFile.txt\"`. The file can be named anything, but it must use the following format: `\\MACH1,USERID,PWD\MACH2,USERID,PWD\MACH3,USERID,PWD`.
- **Option 2** — If you connect to a single SAP Server, specify the user and password in the `-s` switch using the following syntax: `-suser=xxx;pwd=yyy`.

:::note
If there are spaces in the username or password, enclose the value in quotes.
:::

## Importing Schedules

Use this option to transfer the selected schedules from the transport (Access) database to the ODBC (SQL) database. The menu item is equivalent to dragging the schedules from the upper list to the lower list. The utility attempts to import all information previously exported. If the data transfer is canceled or fails for any reason, the entire transaction is rolled back and no changes are made in the database. This restriction is a safeguard to prevent incomplete transfers that may invalidate the target database.

:::note
All schedules in the transport database must be imported together.
:::

If an error or conflict occurs during the import, consult the status bar to see which table was in process. Whether the transfer completes successfully or fails, a message indicates the termination.

### Schedule Transfer Machine and User Mapping

When schedules are imported to the SQL database, the machines or users from the transport database may not already exist in the SQL database. After you select **Import**, the **Schedule Transfer Machine and User Mapping** window is displayed. This window lets you map source machines and User Accounts to existing machines and User Accounts in the SQL database. You can accept the source machine and user names to import, or map the machines or users to names that already exist in the SQL database.

On the **Machine** tab:

- The **ImpEx Transport File** list displays the machine names in the transport database.
- The **Target Database** list displays the machine names in the SQL database that the user has privileges to, with the **Allow Job Update?** flag set to true.

On the **User** tab:

- The left list displays the User Accounts in the transport database.
- The right list displays the User Accounts in the SQL database for which the user has privileges.

### Import Schedules

To import schedules from the transport database, complete the following steps:

1. [Log in to the Schedule Import/Export utility](#log-in-to-schedule-importexport).
2. In the **Data Source** field, select the desired data source.
3. Select **OK**.
4. In the **Transport Database** list on the upper part of the window, select one schedule to automatically select all schedules to import.
5. On the toolbar, select the **Import from Transport Database** button.
6. In the **Schedule Transfer Machine and User Mapping** window, select the **Machine** tab or the **User** tab.
    :::note
    If the **Force Machine Mapping** option is set, the machines must be mapped to machines in the target database. The machine must also be mapped to the same OS type as the target machine.
    :::
7. In the **ImpEx Transport File** list, select a machine or User Account.
8. In the **Target Database** list, select a machine or user name.
    :::note
    The associated machine or User Account for the SQL database is listed in parentheses next to the source machine or User Account in the **ImpEx Transport File** list.
    :::
9. Repeat steps 7 and 8 for all machines and User Accounts that need to be mapped to a different name in the SQL database.
10. Select the **Import** button, then select **OK** on the warning message.
11. If prompted to overwrite an existing schedule or calendar, select the appropriate answer.
12. In the conflict resolution dialog, select one of the following options:
    - **Yes** to clear (not delete) the existing object in order to receive the new information (jobs for schedules and dates for calendars).
    - **No** to merge the new information into the existing object.
    - **Cancel** to terminate the transfer and roll back all changes made up to that point.
13. In the termination message, select **OK**.

**Result:** The selected schedules are imported into the SQL database.

:::note
If there are SAP R/3 and CRM jobs in the exported schedules, the utility provides additional messages to let you export the SAP Job details from the SAP Server(s).
:::

### Logging for SAP R/3 and CRM Job Import

When running interactively, the Schedule Import/Export utility writes a log file if there are SAP R/3 and CRM jobs in the transport database. The log file provides detailed information about the processing between the utility and the SAP Server for job match and creation.

- The log file name is `ImpEx_SAP.log` in the location you define on the command line.
- If the SAP steps are invoked, the utility overwrites the log file for each import.

:::note
If you run the utility from the command line, the command-line log file contains all the details for the OpCon and SAP data transfers. For more information, refer to [Exporting Schedules from the Command Line](#exporting-schedules-from-the-command-line) and [Importing Schedules from the Command Line](#importing-schedules-from-the-command-line).
:::

## Importing Schedules from the Command Line

When importing schedules:

- Batch User IDs submitted with jobs are imported only if those Batch User IDs exist in the SQL database. Verify all jobs after the import to make sure the Batch User IDs are valid.
- All schedules in the transport database are imported.

The following is the syntax for importing schedules from the Schedule Import/Export command line:

```
ImpEx.exe <AccessDSN>,<SQLDSN>,<UID>,<PWD>,<IMPORT>,<PurgeJobs?>,<OverwriteCal?> [-e] [-l] [-m] [-s]
```

| Parameter | Description |
|---|---|
| `ImpEx.exe` | The name of the Schedule Import/Export program. |
| `AccessDSN` | The ODBC Data Source Name corresponding to the Access database used as the transport database. |
| `SQLDSN` | The ODBC Data Source Name corresponding to the OpCon database. This name appears on the Schedule Import/Export login screen. |
| `UID` | A valid, case-sensitive OpCon User Login ID. |
| `PWD` | The case-sensitive password corresponding to the User Login ID. |
| `IMPORT` | Indicates that a schedule import is required. |
| `PurgeJobs?` | Indicates how the import continues if any of the schedules in the transport database already exist in the SQL database: `Y` = purge the jobs from the destination schedule before importing; `N` = add the jobs in the transport database's schedules to the SQL database's schedules (the import rolls back if duplicate job names exist). |
| `OverwriteCal?` | Indicates how the import continues if any of the calendars in the transport database already exist in the SQL database: `Y` = purge all dates from the destination calendars; `N` = add the dates in the transport database's calendars to the SQL database's calendars. |
| `-e` | (Optional) The full file path (including drive letter) and filename where the Exit Code Override File (E.C.O.F.) is written. If not specified, a file named `ImpEx.dat` is placed in the `%PROGRAMDATA%\opconxps` directory. The Exit Code Override File is used by the Agent to determine the success or failure of the job. The Agent compares the failure criteria to the E.C.O.F. file instead of the standard exit condition of the job. For Schedule Import/Export exit codes, refer to the [Exit Codes](#exit-codes) table. When the job is defined in Enterprise Manager, specify the E.C.O.F. path and filename as given by the `-e` parameter, or the job is always considered a success. |
| `-l` (lowercase L) | (Optional) The full file path (including drive letter) and filename for the `ImpEx.exe` log file. If `-l` is not given or the log file given is invalid, the default log file is placed in the `%PROGRAMDATA%\opconxps` directory. The default log file name syntax is `ImpEx_<date-time stamp>.log`. The log file provides detailed information about errors generated during the job run and about interaction with the SAP Server. |
| `-m` | The full file path (including drive letter) and filename for the mapping file. The mapping file contains any desired machine and user mappings. See the rules below. |
| `-s` | The connection information for one or more SAP machines. This information is required to import the SAP Job Details to the SAP Server after importing the OpCon job definitions for SAP R/3 and CRM jobs to the OpCon database. The syntax options match the `-s` switch described for exporting. |

The `-m` mapping file behaves as follows:

- If the **Force Machine Mapping** option is turned on in the transport database, the mapping file is **required**:
    - If `-m` is not given, the import fails and the log file indicates that the required mapping was not defined.
    - If `-m` is given but not all machines are mapped, the import fails and the log file indicates that the required mapping was not defined.
- If the **Force Machine Mapping** option is turned off in the transport database, the mapping file is **optional**:
    - If `-m` is not given, the import brings the machines and users into the new database as they existed in the original database.

### Mapping File Rules

The mapping file can be any ASCII text file on the same machine as `ImpEx.exe`. The file can contain one mapping per line with the following syntax:

```
Mapping Type,Source Item Name,Destination Item Name
```

| Field | Description |
|---|---|
| **Mapping Type** | `m` = Machine; `u` = User. |
| **Source Item Name** | The name of the Machine or User as it exists in the transport database. The name is case-sensitive. If the source item is not found in the transport database, the utility skips the line in the mapping file and continues processing. |
| **Destination Item Name** | The name of the Machine or User to map the source item to in the destination database. The name is case-sensitive. The user on the command line for the import must have privileges to the destination machine. The destination machine must be a matching OS type with a matching data type (XML or Non-XML). |

If any problem is encountered while the utility is processing the mapping file, the program aborts, does not import the data, and writes the reason to the log file.

## Exit Codes

The `ImpEx.exe` program writes exit codes to the E.C.O.F. if it encounters an error when run from the command line.

| Status Number | Status Description | Scenarios causing this error |
| :---: | --- | --- |
| 0 | Batch run successful. | Success. |
| 37001 | Program aborted. | The program is stopped in the middle of processing. |
| 37002 | Invalid DSN, UserID, and/or Password. | A connectivity problem with the database:<ul><li>A network problem.</li><li>The SQL services are down.</li><li>Other reasons the database is unavailable.</li></ul> |
| 37003 | Invalid parameters given. | <ul><li>The DSN, UserID, or Password is invalid.</li><li>The user account specified on the command line is locked out after a number of failed logon attempts, manually disabled, forced to change the password, or has an expired password.</li><li>The user account lacks Import and Export Schedules or All Administrative Functions privileges. (The user account does not need access to the schedules in order to export or import them.)</li><li>The destination user or machine in the mapping file is not found in the destination database.</li><li>An unsupported mapping type is specified (only `U` and `M` are supported).</li><li>The data type of the source and destination machines does not match.</li><li>The OS type of the source and destination machines does not match.</li></ul> |
| 37004 | OpCon Schedule and Job data transferred, but an error with an SAP Server prevented transfer of the job details with that SAP system. | <ul><li>SAP Server login required and not provided.</li><li>SAP Server login name or password is incorrect.</li><li>SAP job not found on target Server and no SAP job definition found in the `.mdb` file.</li><li>SAP job could not be found on the Server for extract.</li><li>Slow or no response from the SAP Server.</li><li>All other SAP Server errors return the exact message from the SAP Server.</li></ul> |

## FAQs

**Q: Is the Schedule Import/Export utility still actively developed?**

No. Continuous is no longer actively developing the original ImpEx application. The recommended replacement is Deploy, which provides a more advanced and reliable solution for schedule migration.

**Q: What transport mechanism does Schedule Import/Export use between source and target databases?**

The utility uses a Microsoft Access database (`.mdb`) file as the transport medium. This allows the source and target databases to be physically detached. Even databases on the same network require the transport database.

**Q: What ODBC drivers are required for Schedule Import/Export?**

The utility requires the appropriate ODBC drivers for the SQL database (not provided by the OpCon installation) and Microsoft Access ODBC drivers for the transport database (included in the OpCon installation).

**Q: Why does my command-line job always report success?**

When the job is defined in Enterprise Manager, you must specify the E.C.O.F. path and filename with the `-e` parameter and set the failure criteria against that file. Without the `-e` parameter, the job is always considered a success regardless of the actual outcome.

## Related Topics

- [Logging In/Out](../../Files/UI/Enterprise-Manager/Logging-In.md)
- [Adding User Accounts](../../Files/UI/Enterprise-Manager/Adding-User-Accounts.md)
- [Create System DSNs](../../installation/configuration.md)

## Glossary

**DSN (Data Source Name)**: An ODBC connection identifier that stores database connection parameters. OpCon utilities use system DSNs to connect to the OpCon SQL Server database.

**Agent**: An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as Machines in OpCon.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using `[[PropertyName]]` syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Calendar**: A named collection of dates in OpCon used by schedules and frequencies to determine when automation runs or is excluded. Calendars can represent holidays, working days, or any custom date set.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent runs and preventing resource contention.
