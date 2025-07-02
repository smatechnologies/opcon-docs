# Legacy Audit Management

The Legacy Audit Management program allows administrators to view audit
information, as well as maintain the audit table. To remove obsolete
records, the Audit Management utility provides the ability to
selectively archive information from the audit table and delete
information from the archive audit table. Archiving and deleting can be
done manually or automatically. For information on automatic audit
maintenance for the legacy audit data, refer to [Maintaining Audit History Interactively](#Maintain).

With OpCon X5, SMA Technologies replaced the auditing mechanism with a more comprehensive model. For
information on the current Auditing scheme, refer to
[Auditing](../../components.md#database) in the
**Concepts** online help. All auditing data stored prior to release 5.0
is maintained in the legacy tables (AUDITHIST and AUDITARCH). This audit
trail may be viewed and maintained with the Legacy Audit Management
Utility. This utility is no longer installed with OpCon, but is
available on the distribution media. Copy the LegacyAudit.exe executable
from the <media\>\\Install\\SMA OpCon Toolkit\\Legacy Audit folder to
the <Target Directory\>\\Utilities folder on the SAM application server
or any machine where an ODBC connection can be configured to the OpCon
database.

To use the Audit Management utility interactively, double-click the
**LegacyAudit.exe** program in the **Utilities** folder. Log in to this
utility with a User Account that has the privilege to Maintain Audit
History. Choose the Data Source that will connect the utility to the
same database the SAM is connected to. For information on creating a
System DSN, refer to [Create System DSNs](../../installation/configuration.md#Create_System_DSNs)
 in the **OpCon Installation** online help.

The following information appears in the legacy audit tables for the
legacy auditing data:

- Date and time the SQL statement was issued.
- The user who executed the SQL statement.
- The number of records affected by the SQL statement.
- The SQL statement that was processed.

## Menus

The menus available are File, Options, View, and Help.

### File

- **Purge Records**: Deletes the audit history from the archive table
    according to the Cut-off Date, and Days to Keep settings.
- **Archive Records**: Moves audit history to the archive table
    according to the Cut-off Date, and Days to Keep settings.
- **Refresh**: Pulls the latest audit history information from the
    database.
- **Change Login**: Logs out of the current connection and shows the
    Login page again. This allows the user to change their Login Name or
    DSN.
- **Exit**: Closes the Audit Management program.

### Options

- **Cut-off Date**: Determines the date to start archiving or deleting
    records.
- **Days to Keep**: Determines the date, as an offset to the current
    date, to start archiving or deleting records.
- **Filter**: Displays the Filter Options dialog that allows users to
    determine record selection criteria.

### View

- **Audit Trail**: Displays the primary audit trail information.
- **Archived Audit Trail**: Displays all audit history that has been
    archived.

### Help

- **OpCon Help**: Displays relevant OpCon documentation.
- **About**: Displays product versions and Technical Support
    information.

## Toolbar

The toolbar provides shortcuts to the menu options.

- **Purge Records**: Deletes audit records according to the Cut-off
    Date, and Days to Keep settings.
- **Archive Records**: Moves audit history to the archive table
    according to the Cut Off Date, and Days to Keep settings.
- **Cut-off Date**: Determines the date to start deleting records.
- **Days to Keep**: Determines the date, as an offset to the current
    date, to start deleting records.
- **Filter**: Displays the Filter Options dialog that allows users to
    determine record selection criteria.
- **Refresh**: Pulls the latest audit history information from the
    database.

## Audit History

The audit trail information is presented in a columnar format. Depending
on the number of records to be retrieved and the network traffic, it may
take several minutes to display the entire audit history.

|Column|Description|
|--- |--- |
|Date/Time Stamp|Date and time the SQL statement was issued.|
|User Login ID|The user who executed the SQL statement.|
|Records Affected|The number of records affected by the SQL statement.|
|Action Type|The type of SQL transaction that was processed (Insert, Update, Delete, or User Login).|
|SQL Part 1 – 12|The SQL statement that was processed. Entries made by actions made in the legacy User Interface appear as the exact SQL strings passed by that program. Region (Required) is the area of the data being changed. Valid values include:MachinesSchedulesJobs Update Level (Optional) is the level at which the data was updated. Valid values include:MachinesDateSchedulesJobsAction is the type of action the user attempted. Identity (Required) is one or more fields separated by semicolons (;) that identify the item affected by the change. The identity will include one or more of the following to uniquely identify the item:Machine NameSchedule DateSchedule NameJob Name. Result (Required) is the result of the query action in the database (e.g., Failed, Succeeded, etc.).|

## Logging into Legacy Audit Management

On the machine with the Legacy Audit Management utility:

Log in as a *Windows user with Local Administrative Rights*.

:::note
If you disable a login that is defined as a user's Network Account name (e.g., Domain\\User), the user will not be able to log in to any interactive applications. The Legacy Audit Management will inform the user that they are disabled and shut down the program.
:::

Right-click on **Start** and select **Explore**.

In the Explorer window:

Browse to the **<Target Directory\>\\OpConxps\\Utilities\\** directory.

Double-click **LegacyAudit.exe**.

:::note
For procedures on creating OpCon User Accounts, refer to [Managing User Accounts](../../Files/UI/Enterprise-Manager/Managing-User-Accounts.md) in the **Enterprise Manager** online help.
:::

On the Login to Audit Management screen:

Do one of the following in the **Username** text box:

- For **manual login**, enter a *case-sensitive User Login ID* (e.g.
    ocadm).
- For **first time automatic login**, do not enter a username in this
    field. The Legacy Audit Management utility will get your network
    login and pass it through to the database.

Do one of the following in the **Password** text box:

- For **manual login**, enter the *case-sensitive password* for the
    user.
- For **first time automatic login**, do not enter a password in this
    field.

:::note
For automatic login, Legacy Audit Management utility remembers your profile and automatically logs in the next time you start the program.
:::

Select the **desired data source**in the **Data Source Name** combo box.
If a data source has not been set up, refer to [Create System DSNs](../../installation/configuration.md#Create_System_DSNs)
 in the **OpCon Installation** online help.

Select the **Save Settings** checkbox to save the connection information
for the next login and click **OK**.

If the Password Change Required message box appears:

Contact the OpCon Administrator to change your *password*, or change the
password yourself. Refer to [Changing User Passwords](../../Files/UI/Enterprise-Manager/Changing-User-Passwords.md)
 in the **Enterprise Manager** online help.

Viewing Audit Trail/Archived Audit Trail

First, [log into Legacy Audit Management](#Logging_into_Legacy_Audit_Management) before continuing
with this procedure.

1. Use the following menu path to view the audit trail: **View \> Audit
    Trail**.
2. Use the following menu path to view the archived audit trail:
    **View \> Archived Audit Trail**.
3. View the *audit history information*.
4. Click the **Refresh** button located on the toolbar to refresh
    records.

## Filtering Audit Records

Because of the vast amount of data in Audit Management, administrators
can use the Filter option to specify record selection criteria. To
activate the Filter screen, use menu path: **Options \> Filter**. Upon
activation, the Filter screen displays the following fields:

- **User Login ID**: This is a selectable list of all User Accounts in
    OpCon for searching SQL operations issued by a specific user. The
    default is <All Users\>.
- **Search in SQL Statement**: The administrator can provide a string
    to isolate records that contain the statement. The search looks for
    an exact match. If the database has binary sort order, the string is
    case-sensitive. Note that all parts of the SQL commands are upper
    case, except the data strings enclosed in single quotes.
- **Query Result**: Select audit records of SQL operations that
    failed, that did not affect any records, and that affected records
    according to user-defined criteria. If the Records Affected combo
    box is blank, then all queries that affected one or more records are
    returned. The administrator can select or type the logical
    relationship of the criteria and assign a number (e.g., \>= 4, which
    returns queries that affected four or more database records).
    Initially, all query result types are selected.
- **Record Selection Range**: Select an inclusive range with a
    beginning and an ending date to further narrow the search. The
    fields accept any valid date format from the machine's Regional
    Settings (found in Control Panel).
- **Action Type**: Select the types of SQL query to display. For
    example, the administrator may select to view only the Delete
    queries. Initially all three query types are selected.

:::note
Click **OK** or press the **Enter** key to accept the new record selection criteria. Click **Cancel** or press **ESC** to cancel the changes in the record selection criteria. Click **Reset** to reset the record selection criteria to all-inclusive. The record selection criterion remains in effect for the duration of the session or until the administration changes the criteria through the Select option.
:::

Filtering for Specific Records

First, [log into Legacy Audit Management](#Logging_into_Legacy_Audit_Management) before continuing
with this procedure.

1. Click the **Filter** button.
2. *(Optional)* Select a **User Account** in the
    **Users Login ID** drop-down list.
3. *(Optional)* Enter a *SQL string* in the **Search in
    SQL** text box.
4. *(Optional)* Go to the **Query Result** frame and
    select one or more *query results*.
5. *(Optional)* Go to the **Record Selection Range**
    frame and enter a *Beginning date* and an *Ending date*.
6. *(Optional)* Go to the **Action Type** frame, select
    an *action type(s)*, and click **OK**.

## Maintaining Audit History Interactively

When auditing is activated, large amounts of data accumulate in the
OpCon database. SMA Technologies recommends archiving or deleting old audit records regularly. There are two options
for limiting the amount of data in the OpCon database: Cut-off Date and
Days to Keep.

### Cut-off Date

Select this option to determine the starting date to archive or to
delete records. Future dates cannot be specified. When specifying the
Cut-off Date, the Days to Keep are also calculated. The date can be any
valid date specification for the Windows Regional settings being used.
If you input an invalid date, the old date remains in effect. The
minimum date is the current day's date. The maximum Cut-off date is
computed with the maximum of 32,000 Days to Keep.

Entering a Cut-off Date

First, [log into Legacy Audit Management](#Logging_into_Legacy_Audit_Management) before continuing
with this procedure.

1. Click the **Cut-off Date** button on the tool bar.
2. Enter a *cut-off date* from which to begin deleting records in the
    audit table and click **OK**.

### Days to Keep

Select the option Days to Keep to determine how many days from the
current date should be maintained in the database. This option allows
the Cut-off date to be specified as a relative offset from the day of
the operation. The offset can only be positive and refers to the past.
When specifying the number of Days to Keep, the Cut-off date is also
calculated.

Entering 0 in the Days to Keep parameter means all records are archived
or are deleted. Entering 2 in the Days to Keep parameter means all
records are archived or deleted, except those having a date stamp for
the current date and the date before. The minimum value for Days to Keep
is zero and the maximum value is 32,000.

Entering Days to Keep in Audit History

First, [log into Legacy Audit Management](#Logging_into_Legacy_Audit_Management) before continuing
with this procedure.

1. Click the **Days to Keep** button on the tool bar.
2. Enter a *number of days* of audit history to keep in the database
    and click **OK**.

### Archiving Records

Select the option Archive Records to move audit trail history to the
archive table according to the specifications of the Days to Keep and
Cut-off Date options described above. The default is to archive all
records. For more information, refer to [Maintaining Audit Records from the Command Line](#Maintain2).

:::note
The archive option is not available when viewing the archive audit history table.
:::

First, [log into Legacy Audit Management](#Logging_into_Legacy_Audit_Management) before continuing
with this procedure to archive the audit history of a single job.

1. Use menu path: **View \> Audit Trail**.
2. Set the *desired limits* for the **Cut-off Date** or **Days to
    Keep**. For more information, refer to Legacy Audit  Management.
3. Click the **Archive Records** button on the toolbar and click
    **OK**.

### Purging Records

Select the option Purge Records to delete the audit history from the
archive table according to the specifications of the options described
above. The default is to purge all records. After setting either the
Cut-off Date or the Days to Keep, purge the archived audit records.

Without setting the Cut-off Date or the Days to Keep, the **Purge Records** button purges *all* archived audit records. SMA Technologies strongly recommends retaining at
least two weeks of data.

First, [log into Legacy Audit Management](#Logging_into_Legacy_Audit_Management) before continuing
with this procedure.

1. Use menu path: **View \> Archived Audit Trail**.

2. Click the **Days to Keep** or **Cut-off Date** button on the
    toolbar.

3. Enter a *value* in the text field and click **OK**.

4. Click the **Purge Records** button on the toolbar and click **OK**.

## Maintaining Audit Records from the Command Line

Records in the legacy audit table should be deleted as soon as the
records become obsolete. To ensure regular maintenance of audit records,
use the command line interface to schedule the legacy audit management
utility. The job can be scheduled using the Microsoft LSAM on the SAM
application server.

### Syntax

From the <Target Directory\>\\Opconxps\\Utilities\\ directory, use the
following syntax on the command line or in a command file:

`LEGACYAUDIT.EXE DSN,UID,PWD,{Days to Keep\|Cut-off Date}, \[-e\] \[-l\]`

#### Parameters

- **LEGACYAUDIT.EXE**: The name of the audit management program.
- **DSN**: The ODBC Data Source Name corresponding to the OpCon
    database. This name can be found on the Legacy Audit Management
    login screen.
- **UID**: Any valid, case-sensitive OpCon User Login ID.
- **PWD**: The case-sensitive password corresponding to the User Login
    ID above.
- **Days to Keep**: A number between 0 and 32,000. If desired, the
    administrator may enter a Cut-off Date instead of Days to Keep. The
    syntax always requires a comma after this parameter. For additional
    information, refer to Legacy Audit Management.
- **-e**: Provides the full path (including drive letter) and file
    name for the E.C.O.F. When the job is defined in the Enterprise
    Manager, make sure to specify the E.C.O.F. path and file name as
    specified by -e parameter, or the job is always be considered a
    success. For additional information, refer to [The E.C.O.F. in the     Job
    Definition](https://help.smatechnologies.com/opcon/agents/windows/latest/Files/Agents/Microsoft/Exit-Code-Override-File-(E.C.O.F.).md#The)
     in the **Microsoft LSAM** online help.
- **-l**: (lower case L) Provides the full file path (including drive
    letter) and filename for the legacyaudit.exe log file. If -l is not
    given, then an audit log file is placed in the same directory as the
    legacyaudit.exe file. The syntax for the default log file name is
    Audit\_<date-time stamp\>.log. The log file provides detailed
    information of errors generated during job execution.
- **-p** (Optional): Informs legacyaudit.exe to purge the audit
    archive table (AUDITARC).

:::tip Example
The example below connects to a data source called OPCONXPS. The user is batchuser and the password is batchpwd. The Days to Keep was set to 30, which means the previous month's audit history is kept.

```shell
legacyaudit.exe OPCONXPS,batchuser,batchpwd,30,
```

:::

### Scheduling

During installation, the SMAUtility schedule should have been imported.
That schedule contains jobs to maintain the new auditing data for OpCon.
SMA Technologies recommends adding jobs to the SMAUtility schedule to archive and or purge the legacy audit data.

## Exit Codes

The legacyaudit.exe program writes the following exit codes to the E.C.O.F.:

|Status Number|Status Description|
|--- |--- |
|0|Batch run successful.|
|35001|Program aborted.|
|35002|Invalid DSN, UserID, and/or Password.|
|35003|Invalid parameters given.|
