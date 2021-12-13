# Administrative Stored Procedures

SMA Technologies provides several scripts and supplemental SQL stored procedures to aid in managing
OpCon:

- [SMA_CHGMACHINE](#SMA_CHGM)
- [SMA_CHG_UNIX_GIDUID](#SMA_CHG_)
- [SMA_CLEAN_ENS](#SMA_CLEA)
- [SMA_CLEARSCHED](#SMA_CLEA2)
- [SMA_COPYSCHED](#SMA_COPY)
- [SMA_DELETESCHED](#SMA_DELE)
- [SMA_MERGESCHED](#SMA_MERG)
- [SMA_SAMWATCH](#SMA_SAMW)

:::note
A SQL user without administrator privileges must be a member of the "opconspuser" role to use the administrative stored procedures.
:::

## SMA_CHGMACHINE

The SMA_CHGMACHINE stored procedure increases job-processing performance
by changing a heavily used LSAM machine's ID to 1. Because the SAM
operates in a processing loop, the machine with an ID of 1 receives
slightly more processing time. It is common for less critical machines
to be tested first with OpCon; therefore,
this causes more critical machines to have higher machine IDs. This
stored procedure allows the OpCon
administrator to move a critical production LSAM to the beginning of the
processing loop.

### Syntax

EXEC SMA_CHGMACHINE '<Machine Name\>'

#### Parameters

The stored procedure uses the following parameter:

- **<Machine Name\>**: The name of the LSAM whose MachineID is
    changed to 1.

### Changing a Machine's ID

To change the Machine ID of an LSAM, you must execute SMA_CHGMACHINE
then stop and restart the SMA Service Manager. Follow the procedure
provided to do so.

To change the LSAM Machine ID:

Execute SMA_CHGMACHINE

On the OpCon Database Server:

Log in as a *local administrative user*.

Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL
Server Management Studio**.

In the Connect to Server dialog:

Select **Database Engine** in the **Server type** drop-down list.

Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.

Select one of the following options in the **Authentication** drop-down
list:

- **Windows Authentication** to log in with the current Windows User
    with local administrative authority.
- **SQL Server Authentication** then enter *sa* in the **Login** text
    box and the *sa's password* in then **Password** text box.

Click the **Connect** button.

In the Microsoft SQL Server Management Studio window:

Expand (+) the **Databases** folder and select the **OpCon
Database**.

Click the **New Query** button on the toolbar.

Enter the command for the **SMA_CHGMACHINE** stored procedure.

:::tip Example
The command for the SMA_CHGMACHINE stored procedure:

```sql
EXEC SMA_CHGMACHINE 'NEPTUNE'
```

:::

Click the **Execute** button on the toolbar or press **F5** to execute
the query.

Stop and Restart the SMA Service Manager

1. Log in as a *Windows user with Local Administrative Rights*.
2. Use menu path: **Start \> Control Panel**.
3. Double-click **Administrative Tools**.
4. Double-click the **Services** icon.
5. Scroll through the list and select the **SMA Service Manager**.
6. Click the **Stop** button on the toolbar.
7. Click the **Start** button when the **SMA Service Manager** has
    stopped.
8. Click **OK** to exit.

## SMA_CHG_UNIX_GIDUID

The SMA_CHG_UNIX_GIDUID stored procedure changes a Group ID and/or User
ID in the UNIX job details either for all schedules or for a single
schedule. This stored procedure is valid only for jobs running on
Machines with Non-XML formatted data.

### Syntax

EXEC SMA_CHG_UNIX_GIDUID
'OLDGID','NEWGID','OLDUID','NEWUID','SKDNAME'

:::note
The wrapping of the syntax in this document does not indicate the location of a carriage return; the ↵ indicates the location of a carriage return.
:::

#### Parameters

The following describes the parameters for the stored procedure:

- **OLDGID**: The existing UNIX Group ID the stored procedure is
    looking for.
  - The UNIX Group ID must not exceed seven characters.
  - Specifying NULL (without the quotation marks) for the OLDGID
        causes the stored procedure to ignore the Group ID while
        searching for records to update.
- **NEWGID**: The updated UNIX Group ID.
  - The UNIX Group ID must not exceed seven characters.
  - Specifying NULL (without the quotation marks) for the NEWGID
        causes the Group ID to remain at its current value.
- **OLDUID**: The existing UNIX User ID the stored procedure is
    looking for.
  - The UNIX User ID must not exceed seven characters.
  - Specifying NULL (without the quotation marks) for the OLDUID
        causes the stored procedure to ignore the User ID while
        searching for records to update.
- **NEWUID**: The updated UNIX User ID.
  - The UNIX User ID must not exceed seven characters.
  - Specifying NULL (without the quotation marks) for the NEWUID
        causes the User ID to remain at its current value.
- **SKDNAME**: The name of the target schedule.
  - The schedule name must not exceed 255 characters.
  - Specifying NULL (without the quotation marks) for the SKDNAME
        causes any changes to occur to all schedules in the database.

#### Examples

:::tip Example
With the following command, the stored procedure only affects rows with both a Group ID of 123 and a User ID of 45:

```sql
EXEC SMA_CHG_UNIX_GIDUID '123','789','45','56',NULL
```

:::

:::tip Example
With the following command, all UNIX jobs have the Group ID set to 789 and the User ID set to 56:

```sql
EXEC SMA_CHG_UNIX_GIDUID NULL,'789',NULL,'56', 'ProdSched1'
```

:::

### Executing SMA_CHG_UNIX_GIDUID

Follow the procedure provided to execute the stored procedure.

To execute the stored procedure:

On the OpCon Database Server:

Log in as a *local administrative user*.

Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL
Server Management Studio**.

In the Connect to Server dialog:

Select **Database Engine** in the **Server type** drop-down list.

Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.

Select one of the following options in the **Authentication** drop-down
list:

- **Windows Authentication** to log in with the current Windows User
    with local administrative authority.
- **SQL Server Authentication** then enter *sa* in the **Login** text
    box and the *sa's password* in then **Password** text box.

Click the **Connect** button.

In the Microsoft SQL Server Management Studio window:

Expand (+) the **Databases** folder and select the **OpCon
Database**.

Click the **New Query** button on the toolbar.

Enter the command for the **SMA_CHG_UNIX_GIDUID** stored procedure.

:::tip Example

```sql
EXEC SMA_CHG_UNIX_GIDUID '123','789','45','56',NULL
```

**\- or \-**

```sql
EXEC SMA_CHG_UNIX_GIDUID NULL,'789',NULL,'56','ProdSched1'
```

:::

Click the **Execute** button on the toolbar or press **F5** to execute
the query.

## SMA_CLEAN_ENS

The SMA_CLEAN_ENS stored procedure cleans up "orphaned" entries in the
ENSSELECTED table of the OpCon database.

:::caution
This process is irreversible. SMA Technologies recommends backing up the database before executing SMA_CLEAN_ENS.
:::

The stored procedure performs the following actions:

- Updates an ENSSELECTED table record with the latest machine/schedule
    name if:
  - A machine name in ENSSELECTED does not match the name in the
        main machine (MACHS) table.
  - A schedule name in ENSSELECTED does not match the name in the
        main schedule (SNAME) table.
- Deletes an ENSSELECTED record if:
  - Duplicate entries.
  - A group of machine triggers in ENSSELECTED contains a machine ID
        that does not exist in the main machine (MACHS) table.
  - A schedule's ID in ENSSELECTED does not exist in the main
        schedule (SNAME) table.
  - A schedule in ENSSELECTED contains a job ID that does not exist
        in the main job (JMASTER) table.

### Executing SMA_CLEAN_ENS

Follow the procedure provided to execute the stored procedure.

To execute the stored procedure:

On the OpCon Database Server:

Log in as a *local administrative user*.

Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL
Server Management Studio**.

In the Connect to Server dialog:

Select **Database Engine** in the **Server type** drop-down list.

Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.

Select one of the following options in the **Authentication** drop-down
list:

- **Windows Authentication** to log in with the current Windows User
    with local administrative authority.
- **SQL Server Authentication** then enter *sa* in the **Login** text
    box and the *sa's password* in then **Password** text box.

Click the **Connect** button.

In the Microsoft SQL Server Management Studio window:

Expand (+) the **Databases** folder and select the **OpCon
Database**.

Click the **New Query** button on the toolbar.

Enter the command for the **SMA_CLEAN_ENS** stored procedure.

:::tip Example
EXEC SMA_CLEAN_ENS
:::

Click the **Execute** button on the toolbar or press **F5** to execute
the query.

View the feedback from the stored procedure.

:::tip Example
The following is a summary displayed by the execution of SMA CLEAN_ENS:

```shell
SUMMARY
=============================================================
NUMBER OF MACHINE REFERENCES UPDATED : 0
NUMBER OF MACHINE REFERENCES REMOVED : 0
NUMBER OF SCHEDULE REFERENCES UPDATED : 0
NUMBER OF SCHEDULE REFERENCES REMOVED : 0
NUMBER OF JOB REFERENCES REMOVED : 1
-------------------------------------------------------------
TOTAL REFERENCES UPDATED : 0
TOTAL REFERENCES REMOVED : 1
=============================================================
```

:::

## SMA_CLEARSCHED

The SMA_CLEARSCHED stored procedure will delete all jobs in a schedule
and retain all of the Schedule information and history. It also retains
all of the associated privileges for the schedule. This is useful when
you have used Schedule Extract to save versions of a schedule, and you
want to restore an old version without losing all the schedule related
information.

:::caution
This process is irreversible. SMA Technologies recommends backing up the database before executing SMA_CLEARSCHED.
:::

### Syntax

EXEC SMA_CLEARSCHED '<ScheduleName\>'

#### Parameters

The stored procedure uses the following parameter:

- **<ScheduleName\>**: The name of the schedule from which the jobs
    will be cleared.
  - The schedule name must not exceed 40 characters.
  - Enclose the schedule name in single quotation marks (e.g.,
        'Production Schedule').

## SMA_COPYSCHED

The SMA_COPYSCHED stored procedure copies a schedule and all of its jobs
to a new schedule. The procedure copies all details, frequencies,
frequency priorities, documentation, job dependencies, threshold
dependencies, thresholds, and events with each job.

### Syntax

Declare \@errorcode int

Declare \@errortext Varchar(255)

BEGIN

exec SMA_COPYSCHED '<SourceSchedule\>'

,'<TargetSchedule\>'

,'Copy Privileges (Y/N)'

,'Copy Jobs (Y/N)'

,\@errorcode OUTPUT

,\@errortext OUTPUT

Print convert (Char(5), \@errorcode) + ' ' + \@errortext

END

#### Parameters

The following describes the parameters for the stored procedure:

- **<SourceSchedule\>**: The name of the schedule to copy.
  - The schedule name must not exceed forty (40) characters.
  - Enclose the schedule name in single quotation marks (e.g.,
        'Schedule Name').
- **<TargetSchedule\>**: The name of the new schedule for the stored
    procedure to create.
  - The schedule name must not exceed forty (40) characters.
  - Enclose the schedule name in single quotation marks (e.g., 'New
        Schedule').
- **Copy Privileges (Y/N)**: Indicates if the privileges for the
    schedule should be copied to the new schedule. Enclose the Y or N in
    single quotation marks (e.g., 'Y').
  - Y indicates Yes.
  - N indicates No.
- **Copy Jobs (Y/N)**: Indicates if the jobs in the schedule should be
    copied to the new schedule or not. Enclose the Y or N in single
    quotation marks (e.g., 'Y').
  - Y = Yes
  - N = No
- **\@errorcode**: A variable to get the exit code from SQL server
    returned in the output.
- **\@errortext**: A variable to get the text description of the error
    code returned in the \@errorcode variable.

### Executing SMA_COPYSCHED

Follow the procedure provided to execute the stored procedure.

To execute the stored procedure:

On the OpCon Database Server:

Log in as a *local administrative user*.

Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL
Server Management Studio**.

In the Connect to Server dialog:

Select **Database Engine** in the **Server type** drop-down list.

Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.

Select one of the following options in the **Authentication** drop-down
list:

- **Windows Authentication** to log in with the current Windows User
    with local administrative authority.
- **SQL Server Authentication** then enter *sa* in the **Login** text
    box and the *sa's password* in then **Password** text box.

Click the **Connect** button.

In the Microsoft SQL Server Management Studio window:

Expand (+) the **Databases** folder and select the **OpCon
Database**.

Click the **New Query** button on the toolbar.

Copy and paste the following syntax into the query window:

:::tip Example

```sql
Declare @errorcode int
Declare @errortext Varchar(255)

BEGIN
exec SMA_COPYSCHED '<SourceSchedule>'
,'<TargetSchedule>'
,'Copy Privileges (Y/N)'
,'Copy Jobs (Y/N)'
,@errorcode OUTPUT
,@errortext OUTPUT
Print convert (Char(5), @errorcode) + ' ' + @errortext
END
```

:::

Replace the parameters with the *desired information*, as shown in the
example:

:::tip Example

```sql
Declare @errorcode int
Declare @errortext Varchar(255)

BEGIN
exec SMA_COPYSCHED 'Development'
,'Production'
,'N'
,'Y'
,@errorcode OUTPUT
,@errortext OUTPUT
Print convert (Char(5), @errorcode) + ' ' + @errortext
END
```

:::

Click the **Execute** button on the toolbar or press **F5** to execute
the query.

## SMA_DELETESCHED

The SMA_DELETESCHED stored procedure completely deletes a schedule from
the OpCon database. It removes all of the
jobs from the Daily schedule and from the Master schedule. It also
deletes the schedule record and the holiday calendar associated with
that schedule. All dependencies between jobs are also removed. If jobs
that still remain in the database have dependencies on jobs in this
schedule, SMA_DELETESCHED automatically deletes these dependencies.

:::caution
This process is irreversible. SMA Technologies recommends backing up the database before executing SMA_DELETESCHED.
:::

### Syntax

EXEC SMA_DELETESCHED '<Schedule Name\>'

#### Parameters

The stored procedure uses the following parameter:

- **<Schedule Name\>**: The name of the schedule to delete.
  - The schedule name must not exceed 20 characters.
  - Enclose the schedule name in single quotation marks (e.g.,
        'OldSched').

### Executing SMA_DELETESCHED

Follow the procedure provided to execute the stored procedure.

To execute the stored procedure:

On the OpCon Database Server:

Log in as a *local administrative user*.

Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL
Server Management Studio**.

In the Connect to Server dialog:

Select **Database Engine** in the **Server type** drop-down list.

Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.

Select one of the following options in the **Authentication** drop-down
list:

- **Windows Authentication** to log in with the current Windows User
    with local administrative authority.
- **SQL Server Authentication** then enter *sa* in the **Login** text
    box and the *sa's password* in then **Password** text box.

Click the **Connect** button.

In the Microsoft SQL Server Management Studio window:

Expand (+) the **Databases** folder and select the **OpCon
Database**.

Click the **New Query** button on the toolbar.

Enter the command for the **SMA_DELETESCHED** stored procedure.

:::tip Example
EXEC SMA_DELETESCHED 'Shipping'
:::

Click the **Execute** button on the toolbar or press **F5** to execute
the query.

## SMA_MERGESCHED

The SMA_MERGESCHED stored procedure merges the jobs from one schedule
into another schedule. It migrates all job details, frequencies,
frequency priorities, documentation, job dependencies, threshold
dependencies, thresholds, events, and job history from the source
schedule to the target schedule. The stored procedure assumes the
following:

- There is no duplication of job names between the two schedules.
- Job history for the jobs from the source schedule appears as if they
    had always run on the target schedule.
- Schedule-related historical information (e.g., schedule start and
    finish times) for the Source Schedule is deleted and not transferred
    to the Target Schedule.

:::caution
This process is irreversible. SMA Technologies recommends backing up the database before executing SMA_MERGESCHED.
:::

### Syntax

Declare \@errorcode int

Declare \@errortext Varchar(255)

BEGIN

exec SMA_mergesched 'TargetSchedule'

,'SourceSchedule'

,0

,\@errorcode OUTPUT

,\@errortext OUTPUT

Print convert (Char(5), \@errorcode) + ' ' + \@errortext

END

#### Parameters

The following describes the parameters for the stored procedure:

- **TargetSchedule**: The name of the schedule to retain (i.e., the
    jobs from the Source Schedule are merged into this schedule).
  - The schedule name must not exceed 40 characters.
  - Enclose the schedule name in single quotation marks (e.g.,
        'KeepSchedule').
- **SourceSchedule**: The name of the schedule to merge into the
    Target Schedule.
  - The schedule name must not exceed 40 characters.
  - Enclose the schedule name in single quotation marks (e.g., 'Old
        Schedule').
- **0**: Indicates the OpCon User ID to be audited. Use 0 for ocadm.
- **\@errorcode**: A variable to get the exit code from SQL server
    returned in the output.
- **\@errortext**: A variable to get the text description of the error
    code returned in the \@errorcode variable.

### Executing SMA_MERGESCHED

Follow the procedure provided to execute the stored procedure.

To execute the stored procedure:

On the OpCon Database Server:

Log in as a *local administrative user*.

Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL
Server Management Studio**.

In the Connect to Server dialog:

Select **Database Engine** in the **Server type** drop-down list.

Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.

Select one of the following options in the **Authentication** drop-down
list:

- **Windows Authentication** to log in with the current Windows User
    with local administrative authority.
- **SQL Server Authentication** then enter *sa* in the **Login** text
    box and the *sa's password* in then **Password** text box.

Click the **Connect** button.

In the Microsoft SQL Server Management Studio window:

Expand (+) the **Databases** folder and select the **OpCon
Database**.

Click the **New Query** button on the toolbar.

Enter the command for the **SMA_MERGESCHED** stored procedure.

:::tip Example

```sql
Declare @errorcode int
Declare @errortext Varchar(255)

BEGIN
exec SMA_mergesched 'TargetSchedule'
,'SourceSchedule'
,0
,@errorcode OUTPUT
,@errortext OUTPUT

Print convert (Char(5), @errorcode) + ' ' + @errortext
END
```

:::

Click the **Execute** button on the toolbar or press **F5** to execute
the query.

In the toolbar, click the **Execute** button or press **F5** to execute
the query.

## SMA_SAMWATCH

The stored procedure creates a new special SAMID with the same timestamp
as the actual SAM. The value stored in the special SAMID is the "old"
timestamp. The next execution compares the SAM's actual current
timestamp to the old timestamp. If the two are equal or the SAMID does
not exist, the SAM has stopped processing. If specified, the procedure
retries detecting the SAM at defined intervals. When SMA_SAMWATCH finds
that the SAM is not processing, it sends a Network Popup Message to a
single machine and writes a message to the Windows Event Log.

### Syntax

EXEC SMA_SAMWATCH SAMID,'Recipient',<\#1\>,<\#2\>

#### Parameters

The following describes the parameters for the stored procedure:

**SAMID**: The number assigned to the SAM processing in the
OpCon database. Normally, this number is 1.

**Recipient** (Optional): A host name or user name to receive a
notification, or a command file to execute when the SAM fails.

The stored procedure only allows one recipient.

The character limit is 255.

Always enclose the Recipient parameter in single quotation marks.

To specify a recipient for a Network Popup message, enter the host name
of the machine or enter the Windows User.

:::tip Example
EXEC SMA_SAMWATCH 1,'OpsMachine'
:::

To specify a command file, enter the executable's full path and file
name.

:::note
The command file may contain multiple net send commands or any other valid commands.
:::

- The path to the command file must not contain spaces.
- UNC path names are valid.
- If omitted, the recipient defaults to the hostname of the machine on
    which the store procedure executes.

:::tip Example
The following command executes a command file named if the SAM fails:

```sql
EXEC SMA_SAMWATCH 1,'C:\ProgramData\OpConxps\Scripts\sma_samwatch.cmd'
```

:::

**<\#1\>**: The number of times SMA_SAMWATCH retries when a SAMPULSE
record for the requested SAMID is absent. This situation may occur when
SAM is not running or during a SAM regeneration.

- If omitted, the default is 1.

**<\#2\>**: Determines the number of seconds between retry attempts.

- Valid values include integers ranging from 0 and 59.
- If omitted, the default is 5.

:::tip Example
After the following command attempts to detect the SAM seven times at 20 second intervals, the command executes a command file named "sma_samwatch.cmd" if the SAM has not been detected:

```sql
EXEC SMA_SAMWATCH 1,'C:\ProgramData\OpConxps\Scripts\sma_samwatch.cmd',7,20
```

:::

### Scheduling SMA_SAMWATCH in SQL

:::caution
Do not schedule SMA_SAMWATCH through OpCon. OpCon cannot send notifications when the SAM-SS is not processing.
:::

Follow the procedure provided to schedule the stored procedure.

To schedule the stored procedure:

Log in to Management Studio

On the OpCon Database Server:

Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL
Server Management Studio**.

In the Connect to Server dialog:

Select **Database Engine** in the **Server type** drop-down list.

Select the \[OpCon Publishing Database Server\] in the **Server name** drop-down list.

Select one of the following options in the **Authentication** drop-down
list:

- **Windows Authentication** to log in with the current Windows User
    with local administrative authority.
- **SQL Server Authentication** then enter *sa* in the **Login** text
    box and the *sa's password* in then **Password** text box.

Click the **Connect** button.

Create an SQL Job

1. Go to the **Object Explorer** frame.
2. Expand (+) the **SQL Server Agent** icon.
3. Right-click the **Jobs** folder and choose **New\>Job**.
4. Enter a *job name* in the **Name** text box .
5. Go to the **Select a page** frame and select **Steps**.
6. Click the **New** button.
7. Enter a *name* in the **Step Name** text box.
8. Select **Transact-SQL Script** (T-SQL) in the **Type** drop-down
    list.
9. Select the **OpConxps Database** in the **Database** drop-down list.
10. Enter the *SMA_SAMWATCH* command in the **Command** text box.
11. Click **OK**.

Schedule the SQL Job

On the New Job screen:

Go to the **Select a page** frame and click the **Schedules** tab.

On the Schedules tab's screen:

Click the **New** button.

In the New Job Schedule window:

Enter a *name for the schedule* in the **Name** text box.

Select **Recurring** in the **Schedule type** drop-down list.

Go to the **Frequency** frame and select **Daily** in the **Occurs**
drop-down list.

Go to the **Daily frequency** frame and:

a.  Select the **Occurs every** radio button.
b.  Select either **Minute(s**) or **Hour(s)** in the **Occurs every**
    drop-down list.
c.  Enter, in the **Occurs every** field, the *number of minutes/hours*
    it is desired to occur.

:::tip Example
Occurs every: 3 Minute(s)
:::

Leave all other settings on the screen with their default values and
click **OK**.

Click **OK** in the **New Job** window.

:::
