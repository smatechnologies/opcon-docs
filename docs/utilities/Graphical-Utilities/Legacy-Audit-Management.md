---
title: Legacy Audit Management
description: "The Legacy Audit Management program allows administrators to view audit information, as well as maintain the audit table."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: procedural
---

# Legacy Audit Management

**Theme:** Configure
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Legacy Audit Management program allows administrators to view audit information and maintain the audit table. To remove obsolete records, the utility provides the ability to selectively archive information from the audit table and delete information from the archive audit table. You can archive and delete records manually or automatically. For information on automatic maintenance of the legacy audit data, refer to [Maintaining Audit History Interactively](#maintaining-audit-history-interactively).

With OpCon X5, Continuous replaced the auditing mechanism with a more comprehensive model. For information on the current auditing scheme, refer to [Auditing](../../components.md#database) in the **Concepts** online help. All auditing data stored before release 5.0 is maintained in the legacy tables (`AUDITHST` and `AUDITARC`). You can view and maintain this audit trail with the Legacy Audit Management utility.

The utility is no longer installed with OpCon, but is available on the distribution media. Copy the `LegacyAudit.exe` program from the `<media>\Install\SMA OpCon Toolkit\Legacy Audit` folder to the `<Target Directory>\Utilities` folder on the SAM application server or any machine where an ODBC connection can be configured to the OpCon database.

The legacy audit tables record the following information for the legacy auditing data:

- Date and time the SQL statement was issued
- The user who ran the SQL statement
- The number of records affected by the SQL statement
- The SQL statement that was processed

## Required Privileges

To use the Legacy Audit Management utility, you must log in with a User Account that has the **Maintain Audit History** privilege. Without this privilege, access is denied.

For procedures on creating OpCon User Accounts, refer to [Managing User Accounts](../../Files/UI/Enterprise-Manager/Managing-User-Accounts.md) in the **Enterprise Manager** online help.

## Menus

The available menus are **File**, **Options**, **View**, and **Help**.

### File

- **Purge Records**: Deletes the audit history from the archive table according to the **Cut-off Date** and **Days to Keep** settings
- **Archive Records**: Moves audit history to the archive table according to the **Cut-off Date** and **Days to Keep** settings
- **Refresh**: Pulls the latest audit history information from the database
- **Change Login**: Logs out of the current connection and shows the Login page again, allowing you to change your Login Name or DSN
- **Exit**: Closes the Legacy Audit Management program

### Options

- **Cut-off Date**: Determines the date to start archiving or deleting records
- **Days to Keep**: Determines the date, as an offset to the current date, to start archiving or deleting records
- **Filter**: Displays the Filter Options dialog that allows you to determine record selection criteria

### View

- **Audit Trail**: Displays the primary audit trail information
- **Archived Audit Trail**: Displays all audit history that has been archived

### Help

- **OpCon Help**: Displays relevant OpCon documentation
- **About**: Displays product versions and Technical Support information

## Toolbar

The toolbar provides shortcuts to the menu options.

- **Purge Records**: Deletes audit records according to the **Cut-off Date** and **Days to Keep** settings
- **Archive Records**: Moves audit history to the archive table according to the **Cut-off Date** and **Days to Keep** settings
- **Cut-off Date**: Determines the date to start deleting records
- **Days to Keep**: Determines the date, as an offset to the current date, to start deleting records
- **Filter**: Displays the Filter Options dialog that allows you to determine record selection criteria
- **Refresh**: Pulls the latest audit history information from the database

## Audit History

The audit trail information is presented in a columnar format. Depending on the number of records to be retrieved and the network traffic, it may take several minutes to display the entire audit history.

| Column | Description |
|---|---|
| Date/Time Stamp | Date and time the SQL statement was issued. |
| User Login ID | The user who ran the SQL statement. |
| Records Affected | The number of records affected by the SQL statement. |
| Action Type | The type of SQL transaction that was processed (Insert, Update, Delete, or User Login). |
| SQL Part 1 – 12 | The SQL statement that was processed. Entries made by actions in the legacy user interface appear as the exact SQL strings passed by that program. **Region** (Required) is the area of the data being changed; valid values include Machines, Schedules, and Jobs. **Update Level** (Optional) is the level at which the data was updated; valid values include Machines, Date, Schedules, and Jobs. **Action** is the type of action the user attempted. **Identity** (Required) is one or more fields separated by semicolons (;) that identify the item affected by the change; the identity includes one or more of the following to uniquely identify the item: Machine Name, Schedule Date, Schedule Name, Job Name. **Result** (Required) is the result of the query action in the database (for example, Failed or Succeeded). |

## Logging In to Legacy Audit Management

To log in to the Legacy Audit Management utility, complete the following steps:

1. Log in to the machine that hosts the utility as a Windows user with local administrative rights.
2. Right-click **Start** and select **Explore**.
3. Go to the `<Target Directory>\OpConxps\Utilities\` directory.
4. Open **LegacyAudit.exe**.
5. On the **Login to Audit Management** screen, do one of the following in the **Username** field:
   - For manual login, enter a case-sensitive User Login ID (for example, `ocadm`).
   - For first-time automatic login, leave the field empty. The utility gets your network login and passes it through to the database.
6. Do one of the following in the **Password** field:
   - For manual login, enter the case-sensitive password for the user.
   - For first-time automatic login, leave the field empty.
7. Select the data source in the **Data Source Name** field. If a data source has not been set up, refer to [Create System DSNs](../../installation/configuration.md#Create_System_DSNs) in the **OpCon Installation** online help.
8. Select the **Save Settings** option to save the connection information for the next login, then select **OK**.

**Result:** The utility connects to the OpCon database and displays the audit trail.

:::note
If the **Password Change Required** message box appears, contact the OpCon Administrator to change your password, or change the password yourself. Refer to [Changing User Passwords](../../Files/UI/Enterprise-Manager/Changing-User-Passwords.md) in the **Enterprise Manager** online help.
:::

:::note
For automatic login, the utility remembers your profile and automatically logs in the next time you start the program.
:::

:::note
If you disable a login that is defined as a user's Network Account name (for example, `Domain\User`), the user cannot log in to any interactive applications. The Legacy Audit Management utility informs the user that they are disabled and shuts down the program.
:::

## Viewing the Audit Trail

Before you begin, [log in to Legacy Audit Management](#logging-in-to-legacy-audit-management).

To view the audit trail or the archived audit trail, complete the following steps:

1. To view the audit trail, use menu path **View > Audit Trail**.
2. To view the archived audit trail, use menu path **View > Archived Audit Trail**.
3. View the audit history information.
4. Select the **Refresh** button on the toolbar to refresh the records.

**Result:** The selected audit trail displays the current audit history.

## Filtering Audit Records

Because of the large amount of data in Legacy Audit Management, you can use the **Filter** option to specify record selection criteria. To open the Filter screen, use menu path **Options > Filter**. The Filter screen displays the following fields:

- **User Login ID**: A selectable list of all User Accounts in OpCon, used to search SQL operations issued by a specific user. The default is `<All Users>`.
- **Search in SQL Statement**: Provide a string to isolate records that contain the statement. The search looks for an exact match. If the database has binary sort order, the string is case-sensitive. All parts of the SQL commands are upper case, except the data strings enclosed in single quotes.
- **Query Result**: Select audit records of SQL operations that failed, that did not affect any records, and that affected records according to user-defined criteria. If the **Records Affected** field is blank, all queries that affected one or more records are returned. You can select or type the logical relationship of the criteria and assign a number (for example, `>= 4`, which returns queries that affected four or more database records). Initially, all query result types are selected.
- **Record Selection Range**: Select an inclusive range with a beginning and an ending date to further narrow the search. The fields accept any valid date format from the machine's Regional Settings (found in Control Panel).
- **Action Type**: Select the types of SQL query to display. For example, you may select to view only the Delete queries. Initially, all three query types are selected.

:::note
Select **OK** or press the **Enter** key to accept the new record selection criteria. Select **Cancel** or press **ESC** to cancel the changes. Select **Reset** to reset the record selection criteria to all-inclusive. The record selection criteria remain in effect for the duration of the session or until you change the criteria.
:::

Before you begin, [log in to Legacy Audit Management](#logging-in-to-legacy-audit-management).

To filter for specific records, complete the following steps:

1. Select the **Filter** button.
2. (Optional) Select a User Account in the **User Login ID** list.
3. (Optional) Enter a SQL string in the **Search in SQL Statement** field.
4. (Optional) Go to the **Query Result** frame and select one or more query results.
5. (Optional) Go to the **Record Selection Range** frame and enter a beginning date and an ending date.
6. (Optional) Go to the **Action Type** frame and select one or more action types.
7. Select **OK**.

**Result:** The audit trail displays only the records that match the selection criteria.

## Maintaining Audit History Interactively

When auditing is activated, large amounts of data accumulate in the OpCon database. Continuous recommends archiving or deleting old audit records regularly. There are two options for limiting the amount of data in the OpCon database: **Cut-off Date** and **Days to Keep**.

### Cut-off Date

Select this option to determine the starting date to archive or delete records. You cannot specify future dates. When you specify the **Cut-off Date**, the **Days to Keep** value is also calculated. The date can be any valid date specification for the Windows Regional settings in use. If you enter an invalid date, the old date remains in effect. The minimum date is the current day's date. The maximum **Cut-off Date** is computed with the maximum of 32,000 **Days to Keep**.

Before you begin, [log in to Legacy Audit Management](#logging-in-to-legacy-audit-management).

To enter a cut-off date, complete the following steps:

1. Select the **Cut-off Date** button on the toolbar.
2. Enter a cut-off date from which to begin deleting records in the audit table.
3. Select **OK**.

**Result:** The utility sets the cut-off date and recalculates the **Days to Keep** value.

### Days to Keep

Select the **Days to Keep** option to determine how many days from the current date should be maintained in the database. This option allows the **Cut-off Date** to be specified as a relative offset from the day of the operation. The offset can only be positive and refers to the past. When you specify the number of **Days to Keep**, the **Cut-off Date** is also calculated.

Entering `0` in the **Days to Keep** field means all records are archived or deleted. Entering `2` means all records are archived or deleted, except those with a date stamp for the current date and the day before. The minimum value for **Days to Keep** is zero and the maximum value is 32,000.

Before you begin, [log in to Legacy Audit Management](#logging-in-to-legacy-audit-management).

To enter the number of days to keep, complete the following steps:

1. Select the **Days to Keep** button on the toolbar.
2. Enter the number of days of audit history to keep in the database.
3. Select **OK**.

**Result:** The utility sets the number of days to keep and recalculates the **Cut-off Date** value.

### Archiving Records

Select the **Archive Records** option to move audit trail history to the archive table according to the **Days to Keep** and **Cut-off Date** settings. The default is to archive all records. For more information, refer to [Maintaining Audit Records from the Command Line](#maintaining-audit-records-from-the-command-line).

:::note
The **Archive Records** option is not available when you view the archived audit history table.
:::

Before you begin, [log in to Legacy Audit Management](#logging-in-to-legacy-audit-management).

To archive audit history, complete the following steps:

1. Use menu path **View > Audit Trail**.
2. Set the limits for the **Cut-off Date** or **Days to Keep**.
3. Select the **Archive Records** button on the toolbar.
4. Select **OK**.

**Result:** The utility moves the matching audit records to the archive table.

### Purging Records

Select the **Purge Records** option to delete the audit history from the archive table according to the **Cut-off Date** or **Days to Keep** settings. The default is to purge all records. After you set either the **Cut-off Date** or the **Days to Keep**, purge the archived audit records.

:::warning
Without setting the **Cut-off Date** or the **Days to Keep**, the **Purge Records** button purges all archived audit records. Continuous strongly recommends retaining at least two weeks of data.
:::

Before you begin, [log in to Legacy Audit Management](#logging-in-to-legacy-audit-management).

To purge archived audit records, complete the following steps:

1. Use menu path **View > Archived Audit Trail**.
2. Select the **Days to Keep** or **Cut-off Date** button on the toolbar.
3. Enter a value in the field and select **OK**.
4. Select the **Purge Records** button on the toolbar.
5. Select **OK**.

**Result:** The utility deletes the matching records from the archive table.

## Maintaining Audit Records from the Command Line

Records in the legacy audit table should be deleted as soon as they become obsolete. To ensure regular maintenance of audit records, use the command line interface to schedule the Legacy Audit Management utility. You can schedule the job with the Microsoft Agent on the SAM application server.

### Syntax

From the `<Target Directory>\Opconxps\Utilities\` directory, use the following syntax on the command line or in a command file:

`LEGACYAUDIT.EXE DSN,UID,PWD,{Days to Keep|Cut-off Date}, [-e] [-l]`

#### Parameters

- **LEGACYAUDIT.EXE**: The name of the audit management program
- **DSN**: The ODBC Data Source Name corresponding to the OpCon database. This name appears on the Legacy Audit Management login screen.
- **UID**: Any valid, case-sensitive OpCon User Login ID
- **PWD**: The case-sensitive password corresponding to the User Login ID above
- **Days to Keep**: A number between 0 and 32,000. You may enter a **Cut-off Date** instead of **Days to Keep**. The syntax always requires a comma after this parameter.
- **-e**: Provides the full path (including drive letter) and file name for the E.C.O.F. When the job is defined in Enterprise Manager, specify the E.C.O.F. path and file name as defined by the `-e` parameter, or the job is always considered a success. For additional information, refer to [The E.C.O.F. in the Job Definition](https://help.smatechnologies.com/opcon/agents/windows/latest/Files/Agents/Microsoft/Exit-Code-Override-File-(E.C.O.F.).md#The) in the **Microsoft agent** online help.
- **-l** (lower case L): Provides the full file path (including drive letter) and file name for the `legacyaudit.exe` log file. If `-l` is not given, an audit log file is placed in the same directory as `legacyaudit.exe`. The default log file name is `Audit_<date-time stamp>.log`. The log file provides detailed information about errors generated during the job run.
- **-p** (Optional): Tells `legacyaudit.exe` to purge the audit archive table (`AUDITARC`).

:::tip Example
The following example connects to a data source called `OPCONXPS`. The user is `batchuser` and the password is `batchpwd`. The **Days to Keep** is set to 30, which keeps the previous month's audit history.

```shell
legacyaudit.exe OPCONXPS,batchuser,batchpwd,30,
```
:::

### Scheduling

During installation, the SMAUtility schedule should have been imported. That schedule contains jobs to maintain the new auditing data for OpCon. Continuous recommends adding jobs to the SMAUtility schedule to archive or purge the legacy audit data.

## Exit Codes

The `legacyaudit.exe` program writes the following exit codes to the E.C.O.F.:

| Status Number | Status Description |
|---|---|
| 0 | Batch run successful. |
| 35001 | Program aborted. |
| 35002 | Invalid DSN, User ID, and/or password. |
| 35003 | Invalid parameters given. |

## Security Considerations

### Authentication

Logging in to Legacy Audit Management requires a valid OpCon User Login ID and its case-sensitive password. Automatic login (leaving the username and password fields empty) retrieves the user's network login and passes it through to the database. If a disabled account is used, the application notifies the user and shuts down.

When running from the command line, the User Login ID (UID) and password (PWD) are passed as positional parameters. The example syntax includes these credentials in the command string.

### Authorization

You must log in with a User Account that has the **Maintain Audit History** privilege to access the Legacy Audit Management utility. Without this privilege, access is denied.

### Data Security

The legacy audit tables (`AUDITHST` and `AUDITARC`) record all SQL operations performed against OpCon objects prior to release 5.0, including the user, timestamp, number of records affected, and the SQL statement processed. Restrict access to this audit trail to authorized administrators. Continuous strongly recommends retaining at least two weeks of archived audit data before purging.

## FAQs

**Q: What audit data does Legacy Audit Management handle?**

Legacy Audit Management handles audit data stored in the legacy tables (`AUDITHST` and `AUDITARC`) from before OpCon release 5.0. Audit data from release 5.0 onward uses a different, more comprehensive auditing model that records to the `AUDITRECS` and `AUDITRECSVIEW` tables.

**Q: Is Legacy Audit Management installed with OpCon?**

No. Legacy Audit Management is no longer installed with OpCon. It is available on the distribution media and must be manually copied from `<media>\Install\SMA OpCon Toolkit\Legacy Audit\` to the Utilities folder.

**Q: What privilege is required to use Legacy Audit Management?**

You must log in with a User Account that has the **Maintain Audit History** privilege.

## Related Topics

- [Managing User Accounts](../../Files/UI/Enterprise-Manager/Managing-User-Accounts.md)
- [Changing User Passwords](../../Files/UI/Enterprise-Manager/Changing-User-Passwords.md)
- [Create System DSNs](../../installation/configuration.md#Create_System_DSNs)
- [Auditing](../../components.md#database)

## Glossary

**DSN (Data Source Name)**: An ODBC connection identifier that stores database connection parameters. OpCon utilities use system DSNs to connect to the OpCon SQL Server database.

**SMAUtility Schedule**: A pre-built OpCon schedule installed during setup that contains standard maintenance jobs for audit history cleanup, job history cleanup, and BIRT report generation.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workload automation. SAM monitors schedule and job start times, dependencies, and user commands to determine when jobs run, and processes OpCon events.

**Agent**: An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as Machines in OpCon.

**Enterprise Manager (EM)**: OpCon's rich graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
