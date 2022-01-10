# Schedule Import/Export

The Schedule Import Export utility enables users to migrate one or more
schedules from one database to another while maintaining relational
integrity in the new environment. This utility is not a replacement for regular database backups. Even if a user exports all
schedules from a database, some information may be left behind.

To open the Schedule Import Export utility:

- Use menu path: **Start \> All Programs \> OpConxps \>     Utilities \> Schedule Import Export**. This utility requires the
    same User Login ID and password as the Enterprise Manager. For
    information on logging in to the Enterprise Manager, refer to
    [Logging     In/Out](../../Files/UI/Enterprise-Manager/Logging-In.md)
     in the **Enterprise Manager** online help.
- The Schedule Import/Export utility uses a Microsoft Access database
    (.mdb) file as the transport medium between the source and target
    databases. This mechanism allows the two databases to be physically
    detached. Even if the databases are on the same network, the
    transport database is still necessary.
- To make schedule transfers, the Schedule Import Export utility
    requires the appropriate ODBC drivers for the SQL database. OpCon
    installation does not provide SQL ODBC drivers; however, the     installation does include Microsoft Access ODBC drivers for the
    transport database.
- For information on configuring the SQL and Access DSNs, refer to
    [Create System     DSNs](../../installation/configuration.md#Create_System_DSNs)
     in the **OpCon Installation** online help.

## Menus

The menus available are File and Help.

### File

- **Select ODBC DSN**: Allows users to change the SQL database
    connection.
- **Select Access DSN**: Allows users to change the transport database
    connection.
- **Export**: Export the selected schedule(s) from the SQL database to
    the transport database.
- **Import**: Import the selected schedule(s) from transport database
    to the SQL database.
- **Refresh**: Pulls the latest schedule information from the
    database.
- **Exit**: Closes the Schedule Import Export utility.

### Help

- **About**: Displays product versions and Technical Support
    information.

## Toolbar

The toolbar provides shortcuts to the File menu options.

- **Import from Transport Database**: Import the selected schedule(s)
    from transport database to the SQL database.
- **Export to Transport Database**: Export the selected schedule(s)
    from the SQL database to the transport database. Clicking export
    will cause the application to display several messages to set
    options for the export.
- **Select ODBC DSN**: This option allows the user to login to a
    different SQL database. Select a new DSN, and supply the User Login
    ID and password. Use menu path: File \> Select ODBC DSN.
- **Select Access DSN**: This option allows the user to select a
    different Access database associated with another DSN. Normally,
    this operation should not have to be performed, unless different
    .mdb filenames are used for different sites. Use menu path: File \>
    Select Access DSN.
- **Refresh**: Pulls the latest information from the ODBC database and
    the Transport Database.
- **Force Machine Mapping**: Determines if machine mapping should be
    required during the import process. If this checkbox is marked for
    an export, the transport database will be marked with this setting.
    As a result, when that transport database is used to import to a SQL
    database, the import will default to forcing the Machine Mapping.
    The option can still be turned off before import if desired.

## Log in to Schedule Import/Export

:::note
If you disable a login that is defined as a user's Network Account name (e.g., Domain\\User), the user will not be able to log in to any interactive applications. The Import Export Utility will inform the user that they are disabled and shut down the program.
:::

Use menu path: **Start \> All Programs \> Opconxps \> Utilities \>
Schedule Import Export**.

**On the Log in to Schedule Import/Export screen:**

:::note
For procedures on creating OpCon User Accounts, refer to [Adding User Accounts](../../Files/UI/Enterprise-Manager/Adding-User-Accounts.md) in the **Enterprise Manager** online help.
:::

Do the following in the **Username** text box:

a.  For **manual** login, enter a *case-sensitive User Login ID* (e.g.,
    ocadm) **- or -**
b.  For **first time automatic login**, do not enter a username in this
    field. The Schedule Import/Export utility will get your network
    login and pass it through to the database.

Do the following in the **Password** text box:

a.  For **manual login**, enter the *case-sensitive password* for the
    user **- or -**
b.  For **first time automatic login**, do not enter a password in this
    field.

:::note
For automatic login, Schedule Import/Export utility remembers your profile and automatically logs in the next time you start the program.
:::

Select the **OpCon database** in the **Data Source** field. If a data
source has not been set up, refer to [Create System DSNs](../../installation/configuration.md#Create_System_DSNs)
 in the **OpCon Installation** online help.

Select the **Save Settings** checkbox to save the connection information
for the next login and click **OK**.

:::note
To log in to the Schedule Import Export utility, a user must have one of the following privileges: "All Administrative Functions" or "Import and Export Schedules".
:::

:::caution
Once a user has logged in to the utility with one of these functions, they will have access to all schedules in the OpCon database for exporting and importing.
:::

## Schedule Transfers

In the Schedule Import Export main window, the lower list contains the
schedules in the SQL database. The upper list contains the schedules in
the transport (Access) database. Upon first use, the transport database
is empty.

When exporting a schedule(s) from the SQL database, the original
schedule(s) are left intact; however, the Schedule Import Export utility
clears the transport database each time it exports new schedules. There
is no provision to merge new schedules to existing schedules in the
Access database.

:::note
If the contents of the Access database need to be preserved, the .mdb file should be copied to another file/directory. Do not rename the .mdb file in the Utilities directory because the program does not have the ability to create a new Access database template. It is a good practice to maintain a backup copy of the original IMPEX.MDB file.
:::

When importing a schedule to the SQL database, the destination schedules
can be altered if a duplicate schedule exists. Refer to [Importing Schedules](#Importin).

### Data Transfer Limitations

When exporting and importing, the Schedule Import Export Utility
transfers many of the administrative records associated with a schedule;
however, there are several limitations associated with the transfer
process. Please review the complete list below to understand what the
transfer process does and does not include.

- The utility transports the Roles and associated User Login IDs with
    privileges to exported schedules. The exported privileges include
    the appropriate individual privileges for each Role for the
    schedules, machines, and machine groups associated with the exported
    schedules; however:
  - The utility does not export the "Inherits Privileges to All
        Schedules", "Inherits Privileges to All Machines" or
        "Inherits Privileges to All Machine Groups" functions. This is
        a security measure. Just because a user inherits privileges in a
        "test" database, does not mean they should inherit privileges
        in a "production" database.
- The utility transports the departments associated with the exported
    schedules and the Role function privileges for those departments as
    well as that Role's non-departmental privileges; however:
  - The utility does not export departmental privileges that are
        valid for all departments.
  - The utility does not export departmental privileges associated
        with un-exported departments.
  - When the Role privileges are imported, only a new users'         Role's privileges are accepted. If the Role exists in the
        target database, the privileges in the target database are
        retained and users in the transport database (that do not exist
        in the target database) are imported and assigned to the Role in
        the target database. If the user Role does not exist in the
        target database, the privileges are imported from the transport
        database and the users from the transport database are included
        in the role for the target database.
- The utility exports access codes associated with the exported
    schedules and the Role privileges for those access codes.
- The utility exports Machines selected as a Primary Machine, or any
    of the three Alternate machines on exported schedules.
- The utility exports machine group names, but not the machine group
    itself. This enables exporting to a new environment (with different
    machines) while maintaining a customer's scheduling structure.
- The utility exports optionally exports all Global Properties or only
    those Global Properties associated with exported schedules.
- The utility exports either all Thresholds/Resources, or only those
    Thresholds/Resources associated with exported schedules.
- The utility exports all holiday dates, including those from the
    Master Holiday Calendar or Additional Holiday Calendar if they are
    associated with the exported schedules.
- The utility optionally exports all of the job data from the SAP
    Server(s) for any SAP R/3 and CRM jobs in the exported schedules.
- Upon import, the utility can match the SAP Job Name and Job ID to
    the SAP Server or create new jobs for any SAP R/3 and CRM jobs in
    the transport database. The goal is to ensure the imported SAP R/3
    and CRM jobs in the destination OpCon database will have valid SAP
    Job Names and IDs.

When importing schedules, there are several items that need to be
considered:

- The Schema versions must be the same for the two databases between
    which the schedule is being moved.
- When a new machine is created in the destination database, the
    Schedule Import/Export utility will mark the machine status "Down"
    to allow the management of the LSAMs within the license. The machine
    will need to be marked "Up" for jobs to process on it.
- Batch User IDs submitted with jobs are only imported if those Batch
    User IDs exist in the destination database. When the import is
    complete, the details of imported jobs need to be verified to make
    sure appropriate Batch User IDs are listed. Jobs fail if no Batch
    User ID is listed.
- OpCon Global Properties, Thresholds, and Resources will only be
    exported if the options are selected to do so. Imported jobs and
    events making use of these items may fail unless those properties
    are transferred.
- When OpCon Global Properties, Thresholds, and Resources are
    imported, only new items will be accepted. If the item exists in the
    target database, the item and its value are retained. If the item
    does not exist in the target database, the item and its value will
    be imported from the transport database.
- A conflict arises if source schedules already exist in the SQL
    database. If a user chooses to merge the source and target
    schedules, it is vital there be no duplication of jobs for
    schedules. In the event duplicate information does exist during the
    transfer, an error message is displayed and the entire transfer
    operation is terminated with an error. All changes made to the
    target database are then rolled back.
- Internal and cross-schedule job dependencies must be resolved when
    schedules are imported. If there are cross-schedule dependencies on
    schedules that do not exist in the target database, a warning is
    displayed. Click OK to ignore the missing job dependency and
    continue the schedule transfer. Click Cancel to terminate the
    schedule transfer.
- If the schedule uses the Master Holiday Calendar, the master holiday
    dates from the new database do not automatically populate in the
    imported schedule.
- If a schedule or job has a Frequency Name assigned that is a
    duplicate frequency name in the destination database, the utility
    automatically changes the imported frequency name and appends an
    alphabetic character to the end (incrementing the letter until a
    unique name is achieved).

## Exporting Schedules

This option is used to transfer the selected schedule(s) from the ODBC
(SQL) database to the Transport (Access) Database. The menu item is
equivalent to dragging-and-dropping the schedule(s) from the lower list
to the upper list.

:::note
If two schedules have cross-schedule job dependencies and both are migrated, it is better to migrate them at the same time in order to maintain the cross-schedule dependencies. If the schedules are migrated separately, the job dependency references are lost because they cannot be resolved.
:::

### Remove Master Holiday Dates

If the Master Holiday Dates from the source database should not be
retained in the destination database, complete the following procedure
for each schedule being exported:

1. Double-click **Schedule Master**.
2. Unselect the **Use Master Holiday** checkbox.
3. Click **Save** ![Save     icon](../../Resources/Images/Utilities/EMsave.png "Save icon") on
    the **Schedule Master** toolbar.
4. Click **Close ☒** to the right of the **Server Options** tab to
    close the **Server Options** screen.

[Log in to Schedule Import/Export](#Log_in_to_Schedule_Import/Export).

Select the **desired data source** in the **Data Source Name** list box.
If a data source has not been set up, refer to [Create System DSNs](../../installation/configuration.md#Create_System_DSNs)
 in the **OpCon Installation** online help.

Click **OK**.

In the ODBC Database section on the lower part of the window:

Click one schedule at a time to select one or more individual schedules
for export. Alternatively, you can click one schedule then press
**Ctrl+A** on the keyboard to select all.

Below the toolbar:

If desired, select the **Force Machine Mapping** checkbox.

On the toolbar:

Click the **Export to Transport Database** button.

:::note
The schedule(s) may be dragged-and-dropped to the target database list. To complete the transfer of multiple schedules as a unit, press Ctrl and drag-and-drop the schedules to the target database list.
:::

For each message box:

Click the **Yes** or **No** button when asked if the target database
should be cleared.

a.  If **Yes**, the target database is cleared and the new schedule(s)
    transported. Click **OK** when the completion message is displayed.
b.  If **No**, the process is canceled.

Click the **Yes** or **No** button when asked if all tokens should be
transferred.

a.  If **Yes**, the utility transfers all administrative token     records.
b.  If **No**, the utility does not transfer administrative token     records.

Click the **Yes** or **No** button when asked if all
thresholds/resources should be transferred.

a.  If **Yes**, the utility transfers all thresholds/resources. b.  If **No**, the utility transfers only the thresholds/resources
    associated with the extracted schedule(s).

In the termination message:

Click **OK**.

:::note
If there are SAP R/3 and CRM Job details from one or more SAP Server(s) in the transport database, the Schedule Import Export utility will provide additional messages to import the details to the SAP server(s).
:::

## Exporting Schedules from the Command Line

:::note
When Exporting schedules through from the command line, the transport database will be purged before the export.
:::

The following is the syntax for exporting schedules from the Schedule Import Export command line:

ImpEx.exe
AccessDSN,SQLDSN,UID,PWD,EXPORT,GlobalProperties?,Thresholds?,ScheduleName(s)
\[-e\] \[-f\] \[-l\] \[-m\] \[-s\]

:::note
There are no spaces after the variables for impex.exe.
:::

**ImpEx.exe**: The name of the schedule import export program.

**AccessDSN**: The ODBC Data Source Name corresponding to the Access
Database used as the transport database.

**SQLDSN**: The ODBC Data Source Name corresponding to the OpCon
database. This name can be found on the Schedule Import Export login
screen.

**UID**: A valid, case-sensitive OpCon User Login ID.

**PWD**: The case-sensitive password corresponding to the User Login ID
above.

**EXPORT**: Tells the program a schedule export is required.

**GlobalProperties?**: Used to indicate which Global Properties to
export from the SQL database. Valid entries include:

- **Y** = Export all Global Properties from the source database.
- **R** = Only export from the source database those Global Properties
    referenced by the extracted schedules and jobs.
- **N** = Do not export any Global Properties from the source     database.

**Thresholds?**: Used to indicate whether to transfer all of the
thresholds and resources from the SQL database or not. Valid entries
include:

- **Y** = Export all thresholds and resources from the source
    database.
- **N** = Only export from the source database those thresholds and
    resources referenced by the extracted schedules and jobs.

**ScheduleName(s)**: The name(s) of the schedule(s) to be exported.

- Any number of schedules may be specified, each separated by a comma.
- When no schedule is specified all schedules are exported.
- If the database has a binary sort order, schedule names are
    case-sensitive.

**-e**: The full file path (including drive letter) and filename where
the Exit Code Override File (E.C.O.F.) is written. If not specified, a
file called ImpEx.dat will be placed in the same directory as the
ImpEx.exe file. The Exit Code Override File is used by the Microsoft
LSAM to determine the success or failure of the job. The Microsoft LSAM
will compare the failure criteria to the E.C.O.F. file instead of the
standard exit condition of the job. For *Schedule Import Export exit
codes*, refer to the [Exit Codes](#Exit) table. When the
job is defined in the Enterprise Manager, make sure to specify the
E.C.O.F. path and file name as specified by -e parameter, or the job
will always be considered a success.

**-f**: (Optional) The full file path (including drive letter) and
filename containing a list of schedules for the program to extract.

- In the file, separate schedule names with commas or carriage
    returns.
- If you use the -f option, it will override any schedules you have
    specified in the Schedule Name(s) parameter.

**-l** (lower case L): Provides the full file path (including drive
letter) and filename for the ImpEx.exe log file. If -l is not given,
then Schedule Import Export's default log file will be placed in the
same directory as the ImpEx.exe file. The syntax for the default log
file name is ImpEx\_<date-time stamp\>.log. The log file provides
detailed information of errors generated during job execution and
information about interaction with the SAP server.

**-m** indicates that the Force Machine Mapping switch should be turned
on. If not specified, the Force Machine Mapping switch will be turned
off.

**-s** indicates the connection information for one or more SAP
machines. This information is required if you want to export the SAP Job
Details from the SAP server along with the OpCon job definitions for SAP
R/3 and CRM jobs. There are two ways to specify the -s switch.

Specify the full path and file name of a configuration file listing
connection information for each machine. For example:
-s"c:\\programdata\\opconxps\\utilities\\SAPLoginFile.txt"

- The 'SAPLoginFile.txt' can be named anything, but it must contain
    the following format:\
    \
    MACH1,USERID,PWD\
    MACH2,USERID,PWD\
    MACH3,USERID,PWD

**- or -**

If you only expect to connect to a single SAP Server, you can specify
the user and password in the -s switch using the following syntax:

-suser=xxx;pwd=yyy

(If there are spaces in the user name or password, enclose the value in
quotes.)

## Importing Schedules

Select this option to transfer the selected schedule(s) from the
Transport (Access) Database to the ODBC (SQL) database. The menu item is
equivalent to dragging-and-dropping the schedule(s) from the upper list
to the lower list. The utility will attempt to import all information
previously exported; otherwise, any time the data transfer is cancelled
or fails for any reason, the entire transaction is rolled back. In this
situation, no changes are made in the database. This restriction is used
as a safeguard to prevent incomplete transfers that may invalidate the
target database.

:::note
All schedules in the transport database must be imported together.
:::

If an error or conflict occurs during the import, consult the status bar
to see which table was in process. Whether the transfer completes
successfully or fails, a message indicates the termination.

### Schedule Transfer Changes

When schedules are imported to the SQL database, the machines and/or
users from the transport database may not already exist in the SQL
database. After clicking Import, the Schedule Transfer Changes window is
displayed. This window allows users to map source machines and User
Accounts to existing machines and User Accounts in the SQL database. The
source machine and user names to import can be accepted, or the machines
and/or users can be mapped to names that already exist in the SQL
database.

Machine Tab

- The left window displays the machine names in the transport
    database.
- The right window displays the machine names in the SQL database that
    the user has privileges to with the "allow Job Update?" flag set
    to true.

User Tab

- The left window displays the User Accounts in the transport
    database.
- The right window displays the User Accounts in the SQL database for
    which the user has privileges.

### Import Schedules

[Log in to Schedule Import/Export](#Log_in_to_Schedule_Import/Export).

Select the **desired data source** in the **Data Source Name** list box.
If a data source has not been set up, refer to [Create System DSNs](../../installation/configuration.md#Create_System_DSNs)
 in the **OpCon Installation** online help.

Click **OK**.

In the Transport Database section on the upper part of the window:

Click one schedule to automatically select all schedules to import.

On the toolbar:

Click the **Import from Transport Database** button.

For each message box:

Click the **Machine** or **User** tab.

:::note
If the Force Machine Mapping option is set the machines must be mapped to the machines in the Target database. The machine must also be mapped to the same OS type of the Target machine.
:::

Go to the left-hand frame and click a **machine or User Account**.

Go to the right-hand frame and click a **machine or user name**.

:::note
The associated machine or User Accounts for the SQL database are listed in parentheses next to the source machine or User Accounts in the left window.
:::

Repeat Steps 7 and 8 for all machines and/or User Accounts that
need to be mapped to a different name in the SQL database.

Click the **Import** button then click **OK** on the warning message.

Click the appropriate answer if prompted to overwrite an existing
schedule or calendar.

In the Conflict Resolution dialog:

Select one of the following options:

a.  **Yes** to clear (not delete) the existing object in order to
    receive the new information (jobs for schedules and dates for
    calendars).
b.  **No** to allow the new information to be merged into the existing
    object.
c.  **Cancel** to terminate the transfer and rollback all the changes
    made up to that point.

In the termination message:

Click **OK**.

:::note
If there are SAP R/3 and CRM jobs in the exported schedules, the Schedule Import Export utility will provide additional messages to allow you to export the SAP Job details from the SAP server(s).
:::

### Logging for SAP R/3 and CRM Job Import

When running interactively, the Schedule Import Export utility writes a
log file if there are SAP R/3 and CRM jobs in the transport database.
The log file provides detailed information of the processing between the
Schedule Import Export utility and the SAP Server for job match and
creation.

- The log file name is ImpEx_SAP.log in the location you define on the
    command line.
- If the SAP steps are invoked, the utility overwrites the log file
    for each import

:::note
If running the Schedule Import Export utility from the command line, the command line log file contains all the details for the OpCon and SAP data transfers. For more information, refer to [Exporting Schedules from the Command Line](#Exportin) and [Importing Schedules from the Command Line](#Importin2).
:::

## Importing Schedules from the Command Line

When importing schedules:

- Batch User IDs that are submitted with jobs will only be imported if
    those Batch User IDs exist in the SQL database. Customers must
    verify all jobs after the import to make sure the Batch User IDs are
    valid.
- All schedules in the transport database will be imported.

The following is the syntax for importing schedules from the Schedule Import Export command line:

ImpEx.exe AccessDSN,SQLDSN,UID,PWD,IMPORT,PurgeJobs?,PurgeCalDates?\
\[-e\] \[-l\] \[-m\] \[-s\]
**ImpEx.exe**: The name of the schedule import export program.

**AccessDSN**: The **ODBC** Data Source Name corresponding to the Access
Database used as the transport database.

**SQLDSN**: The ODBC Data Source Name corresponding to the OpCon
database. This name can be found on the Schedule Import Export login
screen.

**UID**: A valid, case-sensitive OpCon User Login ID.

**PWD**: The case-sensitive password corresponding to the User Login ID
above.

**IMPORT**: Tells the program a schedule import is required.

**PurgeJobs?**: Used to indicate how the import should continue if any
one of the schedules in the transport database already exists in the SQL
database.

- **Y** = Purge the jobs from the destination schedule before
    importing
- **N** = Add the jobs in the transport database's schedule(s) to the
    SQL database's schedule(s) (the import will roll back if duplicate
    job names exist)

**OverwriteCal?**: Used to indicate how the import should continue if
any one of the calendars in the transport database already exists in the
SQL database.

- **Y** = Purge all dates from destination calendar(s)
- **N** = Add the dates in the transport database's calendar(s) to
    the SQL database's calendar(s)

**-e**: (Optional) The full file path (including drive letter) and
filename where the Exit Code Override File (E.C.O.F.) is written. If not
specified, a file called ImpEx.dat will be placed in the same directory
as the ImpEx.exe file. The Exit Code Override File is used by the
Microsoft LSAM to determine the success or failure of the job. The
Microsoft LSAM will compare the failure criteria to the E.C.O.F. file
instead of the standard exit condition of the job. For Schedule Import
Export exit codes, refer to the [Exit Codes](#Exit)
table. When the job is defined in the Enterprise Manager, make sure to
specify the E.C.O.F. path and file name as specified by -e parameter, or
the job will always be considered a success.

**-l** (lower case L): (Optional) Provides the full file path (including
drive letter) and filename for the ImpEx.exe log file. If --l is not
given or the Logfile given is invalid, then Schedule Import Export's
default log file will be placed in the same directory as the ImpEx.exe
file. The syntax for the default log file name is ImpEx\_<date-time
stamp\>.log. The log file provides detailed information of errors
generated during job execution and information about interaction with
the SAP server.

**-m**: The full file path (including drive letter) and file name for
the mapping file. The mapping file contains any desired machine and user
mappings.

- If the "Force Machine Mapping" option is turned on in the
    transport database, the mapping file is **required**.
  - If -m is not given, the import will fail and the log file will
        indicate that the required mapping was not defined.
  - If -m is given, but not all machines were mapped, the import
        will fail and the log file will indicate that the required
        mapping was not defined.
- If the "Force Machine Mapping" option is turned off in the
    transport database, the mapping file is **optional**.
  - If -m is not given, the import will bring the machines and users
        into the new database as they existed in the original database.

**-s** indicates the connection information for one or more SAP
machines. This information is required if you want to import the SAP Job
Details to the SAP server after importing the OpCon job definitions for
SAP R/3 and CRM jobs to the OpCon database. There are two ways to
specify the -s switch.

Specify the full path and file name of a configuration file listing
connection information for each machine. For example:
-s"c:\\programdata\\opconxps\\utilities\\SAPLoginFile.txt"

- The 'SAPLoginFile.txt' can be named anything, but it must contain
    the following format:\
    \
    MACH1,USERID,PWD\
    MACH2,USERID,PWD\
    MACH3,USERID,PWD

**- or -**

If you only expect to connect to a single SAP Server, you can specify
the user and password in the -s switch using the following syntax:

-suser=xxx;pwd=yyy

(If there are spaces in the user name or password, enclose the value in
quotes.)

### Mapping File Rules

The mapping file can be any ASCII text file on the same machine as the
ImpEx.exe. The file can contain one mapping per line with the following
syntax:

mapping type,Source Item Name,Destination Item Name ↵

- **Mapping Type**: Involves one of two options:
  - **m**: Machine
  - **u**: User
- **Source Item Name**: The name of the Machine or User as it exists
    in the transport database.
  - If the source item is not found in the transport database, the
        utility will skip the line in the mapping file and continue
        processing.
  - The source item is case-sensitive.
- **Destination Item Name**: The name of the Machine or User to map
    the source item to in the destination database.
  - The destination item is case-sensitive.
  - The user on the command line for the import must have privileges
        to the destination machine for the import to succeed.
  - The destination machine must be a matching OS type with a
        matching data type (XML or Non-XML) for the import to succeed.

If any problem is encountered while Schedule Import/Export is trying to
process the mapping file, the program will abort, not import the data,
and write the reason to the log file.

## Exit Codes

The ImpEx.exe program writes exit codes (refer to next table) to the
E.C.O.F. if it encounters an error when run from the command line.

+---------------+-------------------------+-------------------------+
| Status Number | Status Description      | Scenarios causing this  |
|               |                         | Error                   |
+===============+=========================+=========================+
| 0             | Batch run successful.   | Success!                |
+---------------+-------------------------+-------------------------+
| 37001         | Program aborted.        | If the program is       |
|               |                         | "killed" in the       |
|               |                         | middle of processing.   |
+---------------+-------------------------+-------------------------+
| 37002         | Invalid DSN, UserID,    | If there is a           |
|               | and/or Password.        | connectivity problem    |
|               |                         | with the database:      |
|               |                         |                         |
|               |                         | -   Could be caused by  |
|               |                         |     a network problem.  |
|               |                         | -   Could be caused by  |
|               |                         |     the SQL services    |
|               |                         |     being down.         |
|               |                         | -   There may also be   |
|               |                         |     other reasons the   |
|               |                         |     database is         |
|               |                         |     unavailable. For    |
|               |                         |     any of those        |
|               |                         |     reasons, the exit   |
|               |                         |     code will be 37002. |
+---------------+-------------------------+-------------------------+
| 37003         | Invalid parameters      | If the DSN, UserID, or  |
|               | given.                  | Password is invalid.    |
|               |                         |                         |
|               |                         | If the user account     |
|               |                         | specified on the        |
|               |                         | command line falls in   |
|               |                         | the following           |
|               |                         | scenarios:              |
|               |                         |                         |
|               |                         | -   User account is     |
|               |                         |     locked out after a  |
|               |                         |     number of failed    |
|               |                         |     logon attempts.     |
|               |                         | -   User account is     |
|               |                         |     manually disabled.  |
|               |                         | -   User account is     |
|               |                         |     forced to change    |
|               |                         |     the password.       |
|               |                         | -   Password has        |
|               |                         |     expired.            |
|               |                         |                         |
|               |                         | If the user account     |
|               |                         | lacks Import and Export |
|               |                         | Schedules or All        |
|               |                         | Administrative          |
|               |                         | Functions.              |
|               |                         |                         |
|               |                         | The user account does   |
|               |                         | not need to have access |
|               |                         | to the schedules in     |
|               |                         | order to export/import  |
|               |                         | them.                   |
|               |                         |                         |
|               |                         | a.  The user account    |
|               |                         |     does not need to    |
|               |                         |     have access to the  |
|               |                         |     schedules in order  |
|               |                         |     to export/import    |
|               |                         |     them.               |
|               |                         |                         |
|               |                         | If the Force Machine    |
|               |                         | Mapping setting was     |
|               |                         | true in the transport   |
|               |                         | database and either.    |
|               |                         |                         |
|               |                         | b.  The mapping file    |
|               |                         |     was not specified.  |
|               |                         | c.  Not all machines    |
|               |                         |     were mapped.        |
|               |                         |                         |
|               |                         | If the destination user |
|               |                         | or machine in the       |
|               |                         | mapping file is not     |
|               |                         | found in the            |
|               |                         | destination database.   |
|               |                         |                         |
|               |                         | If an unsupported       |
|               |                         | mapping type is         |
|               |                         | specified (only U and M |
|               |                         | are supported).         |
|               |                         |                         |
|               |                         | If the data type of the |
|               |                         | source and destination  |
|               |                         | machines do not match.  |
|               |                         |                         |
|               |                         | If the OS Type of the   |
|               |                         | source and destination  |
|               |                         | machines do not match.  |
+---------------+-------------------------+-------------------------+
| 37004         | OpCon Schedule and Job  | -   SAP Server Login    |
|               | data transferred, but   |     required and not    |
|               | an error with an SAP    |     provided.           |
|               | server prevented        | -   SAP Server Login    |
|               | transfer of the job     |     Name or password is |
|               | details with that SAP   |     incorrect.          |
|               | system.                 | -   SAP job not found   |
|               |                         |     on target Server    |
|               |                         |     and no SAP job      |
|               |                         |     definition found in |
|               |                         |     .mdb file.          |
|               |                         | -   SAP job could not   |
|               |                         |     be found on Server  |
|               |                         |     for extract.        |
|               |                         | -   Slow or no response |
|               |                         |     from SAP Server.    |
|               |                         | -   All other SAP       |
|               |                         |     Server errors will  |
|               |                         |     return exact        |
|               |                         |     message from the    |
|               |                         |     SAP server.         |
+---------------+-------------------------+-------------------------+

: Schedule Import/Export Command Line Exit Codes
:::
