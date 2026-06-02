---
title: Administrative Stored Procedures
description: "Continuous provides scripts and supplemental SQL stored procedures to aid in managing OpCon: - SMA_CHGMACHINE - SMA_CHG_UNIX_GIDUID - SMA_CLEAN_ENS - SMA_CLEARSCHED - SMA_COPYSCHED - SMA_DELETESCHED."
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

# Administrative Stored Procedures

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Continuous provides scripts and supplemental SQL stored procedures to aid in managing OpCon:

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

SMA_CHGMACHINE increases job-processing performance by changing a heavily used agent machine's ID to 1. Because the SAM operates in a processing loop, the machine with an ID of 1 receives slightly more processing time. Less critical machines are often tested first with OpCon, resulting in more critical machines having higher IDs. This stored procedure allows the OpCon administrator to move a critical production agent to the beginning of the processing loop.

### Syntax

EXEC SMA_CHGMACHINE '&lt;Machine Name&gt;'

#### Parameters

- **&lt;Machine Name&gt;**: The name of the agent whose MachineID is changed to 1

### Changing a Machine's ID

To change the agent Machine ID, complete the following steps:

**Run SMA_CHGMACHINE**

On the OpCon Database Server:

1. Log in as a *local administrative user*.
2. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**.
3. In the Connect to Server dialog:
   - Select **Database Engine** in the **Server type** list
   - Select the desired OpCon Database Server in the **Server name** list
   - Select one of the following options in the **Authentication** list:
     - **Windows Authentication** to log in with the current Windows User with local administrative authority
     - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box
   - Select the **Connect** button
4. In the Microsoft SQL Server Management Studio window:
   - Expand (+) the **Databases** folder and select the **OpCon Database**
   - Select the **New Query** button on the toolbar
   - Enter the command for the **SMA_CHGMACHINE** stored procedure

:::tip Example
The command for the SMA_CHGMACHINE stored procedure:

```sql
EXEC SMA_CHGMACHINE 'NEPTUNE'
```

:::

5. Select the **Execute** button on the toolbar or press **F5** to run the query.

**Stop and Restart the SMA Service Manager**

To stop and restart the SMA Service Manager, complete the following steps:

1. Log in as a *Windows user with Local Administrative Rights*.
2. Use menu path: **Start \> Control Panel**.
3. Select **Administrative Tools**.
4. Select the **Services** icon.
5. Scroll through the list and select the **SMA Service Manager**.
6. Select the **Stop** button on the toolbar.
7. Select the **Start** button when the **SMA Service Manager** has stopped.
8. Select **OK** to exit.

**Result:** The machine ID is updated to 1 and the SAM loop now processes this agent first.

## SMA_CHG_UNIX_GIDUID

SMA_CHG_UNIX_GIDUID changes a Group ID and/or User ID in the UNIX job details, either for all schedules or a single schedule. This stored procedure is valid only for jobs running on machines with Non-XML formatted data.

### Syntax

EXEC SMA_CHG_UNIX_GIDUID
'OLDGID','NEWGID','OLDUID','NEWUID','SKDNAME'

:::note
The wrapping of the syntax in this document does not indicate the location of a carriage return; the ↵ indicates the location of a carriage return.
:::

#### Parameters

- **OLDGID**: The existing UNIX Group ID to search for
  - Must not exceed seven characters
  - Specifying NULL ignores the Group ID when searching for records to update
- **NEWGID**: The updated UNIX Group ID
  - Must not exceed seven characters
  - Specifying NULL leaves the Group ID at its current value
- **OLDUID**: The existing UNIX User ID to search for
  - Must not exceed seven characters
  - Specifying NULL ignores the User ID when searching for records to update
- **NEWUID**: The updated UNIX User ID
  - Must not exceed seven characters
  - Specifying NULL leaves the User ID at its current value
- **SKDNAME**: The name of the target schedule
  - Must not exceed 255 characters
  - Specifying NULL applies changes to all schedules in the database

#### Examples

:::tip Example
The following command affects only rows with both a Group ID of 123 and a User ID of 45:

```sql
EXEC SMA_CHG_UNIX_GIDUID '123','789','45','56',NULL
```

:::

:::tip Example
The following command sets the Group ID to 789 and User ID to 56 for all UNIX jobs in ProdSched1:

```sql
EXEC SMA_CHG_UNIX_GIDUID NULL,'789',NULL,'56', 'ProdSched1'
```

:::

### Running SMA_CHG_UNIX_GIDUID

To run SMA_CHG_UNIX_GIDUID, complete the following steps:

1. Log in as a *local administrative user*.
2. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**.
3. In the Connect to Server dialog:
   - Select **Database Engine** in the **Server type** list
   - Select the desired OpCon Database Server in the **Server name** list
   - Select one of the following options in the **Authentication** list:
     - **Windows Authentication** to log in with the current Windows User with local administrative authority
     - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box
   - Select the **Connect** button
4. In the Microsoft SQL Server Management Studio window:
   - Expand (+) the **Databases** folder and select the **OpCon Database**
   - Select the **New Query** button on the toolbar
   - Enter the command for the **SMA_CHG_UNIX_GIDUID** stored procedure

:::tip Example

```sql
EXEC SMA_CHG_UNIX_GIDUID '123','789','45','56',NULL
```

**\- or \-**

```sql
EXEC SMA_CHG_UNIX_GIDUID NULL,'789',NULL,'56','ProdSched1'
```

:::

5. Select the **Execute** button on the toolbar or press **F5** to run the query.

**Result:** The UNIX Group IDs and/or User IDs are updated in the specified schedule or all schedules.

## SMA_CLEAN_ENS

SMA_CLEAN_ENS cleans up "orphaned" entries in the ENSSELECTED table of the OpCon database.

:::caution
This process is irreversible. Continuous recommends backing up the database before running SMA_CLEAN_ENS.
:::

The stored procedure:

- Updates an ENSSELECTED table record with the latest machine/schedule name if:
  - A machine name in ENSSELECTED does not match the name in the main machine (MACHS) table
  - A schedule name in ENSSELECTED does not match the name in the main schedule (SNAME) table
- Deletes an ENSSELECTED record if:
  - Duplicate entries exist
  - A group of machine triggers in ENSSELECTED contains a machine ID that does not exist in the MACHS table
  - A schedule's ID in ENSSELECTED does not exist in the SNAME table
  - A schedule in ENSSELECTED contains a job ID that does not exist in the JMASTER table

### Running SMA_CLEAN_ENS

To run SMA_CLEAN_ENS, complete the following steps:

1. Log in as a *local administrative user*.
2. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**.
3. In the Connect to Server dialog:
   - Select **Database Engine** in the **Server type** list
   - Select the desired OpCon Database Server in the **Server name** list
   - Select one of the following options in the **Authentication** list:
     - **Windows Authentication** to log in with the current Windows User with local administrative authority
     - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box
   - Select the **Connect** button
4. In the Microsoft SQL Server Management Studio window:
   - Expand (+) the **Databases** folder and select the **OpCon Database**
   - Select the **New Query** button on the toolbar
   - Enter the command for the **SMA_CLEAN_ENS** stored procedure

:::tip Example
EXEC SMA_CLEAN_ENS
:::

5. Select the **Execute** button on the toolbar or press **F5** to run the query.
6. View the feedback from the stored procedure.

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

**Result:** Orphaned ENS notification records are updated or deleted and the ENSSELECTED table is cleaned up.

## SMA_CLEARSCHED

SMA_CLEARSCHED deletes all jobs in a schedule while retaining all schedule information, history, and associated privileges. Use this when restoring an old version saved via Schedule Extract without losing schedule-related information.

:::caution
This process is irreversible. Continuous recommends backing up the database before running SMA_CLEARSCHED.
:::

### Syntax

EXEC SMA_CLEARSCHED '&lt;ScheduleName&gt;'

#### Parameters

- **&lt;ScheduleName&gt;**: The name of the schedule from which jobs will be cleared
  - Must not exceed 40 characters
  - Enclose in single quotation marks (e.g., 'Production Schedule')

## SMA_COPYSCHED

SMA_COPYSCHED copies a schedule and all of its jobs to a new schedule, including all details, frequencies, frequency priorities, documentation, job dependencies, threshold dependencies, thresholds, and events.

### Syntax

Declare \@errorcode int

Declare \@errortext Varchar(255)

BEGIN

exec SMA_COPYSCHED '&lt;SourceSchedule&gt;'

,'&lt;TargetSchedule&gt;'

,'Copy Privileges (Y/N)'

,'Copy Jobs (Y/N)'

,\@errorcode OUTPUT

,\@errortext OUTPUT

Print convert (Char(5), \@errorcode) + ' ' + \@errortext

END

#### Parameters

- **&lt;SourceSchedule&gt;**: The name of the schedule to copy
  - Must not exceed 40 characters
  - Enclose in single quotation marks (e.g., 'Schedule Name')
- **&lt;TargetSchedule&gt;**: The name of the new schedule to create
  - Must not exceed 40 characters
  - Enclose in single quotation marks (e.g., 'New Schedule')
- **Copy Privileges (Y/N)**: Indicates whether to copy privileges to the new schedule. Enclose Y or N in single quotation marks
  - Y = Yes
  - N = No
- **Copy Jobs (Y/N)**: Indicates whether to copy jobs to the new schedule. Enclose Y or N in single quotation marks
  - Y = Yes
  - N = No
- **\@errorcode**: A variable to receive the exit code from SQL Server
- **\@errortext**: A variable to receive the text description of the error code

### Running SMA_COPYSCHED

To run SMA_COPYSCHED, complete the following steps:

1. Log in as a *local administrative user*.
2. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**.
3. In the Connect to Server dialog:
   - Select **Database Engine** in the **Server type** list
   - Select the desired OpCon Database Server in the **Server name** list
   - Select one of the following options in the **Authentication** list:
     - **Windows Authentication** to log in with the current Windows User with local administrative authority
     - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box
   - Select the **Connect** button
4. In the Microsoft SQL Server Management Studio window:
   - Expand (+) the **Databases** folder and select the **OpCon Database**
   - Select the **New Query** button on the toolbar
   - Copy and paste the following syntax into the query window:

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

5. Replace the parameters with the *desired information*, as shown in the example:

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

6. Select the **Execute** button on the toolbar or press **F5** to run the query.

**Result:** The source schedule and all its jobs are copied to a new schedule with the specified name.

## SMA_DELETESCHED

SMA_DELETESCHED completely deletes a schedule from the OpCon database. It removes all jobs from the Daily and Master schedules, deletes the schedule record and associated holiday calendar, and removes all job dependencies. If other jobs in the database depend on jobs in this schedule, SMA_DELETESCHED automatically removes those dependencies as well.

:::caution
This process is irreversible. Continuous recommends backing up the database before running SMA_DELETESCHED.
:::

### Syntax

EXEC SMA_DELETESCHED '&lt;Schedule Name&gt;'

#### Parameters

- **&lt;Schedule Name&gt;**: The name of the schedule to delete
  - Must not exceed 20 characters
  - Enclose in single quotation marks (e.g., 'OldSched')

### Running SMA_DELETESCHED

To run SMA_DELETESCHED, complete the following steps:

1. Log in as a *local administrative user*.
2. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**.
3. In the Connect to Server dialog:
   - Select **Database Engine** in the **Server type** list
   - Select the desired OpCon Database Server in the **Server name** list
   - Select one of the following options in the **Authentication** list:
     - **Windows Authentication** to log in with the current Windows User with local administrative authority
     - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box
   - Select the **Connect** button
4. In the Microsoft SQL Server Management Studio window:
   - Expand (+) the **Databases** folder and select the **OpCon Database**
   - Select the **New Query** button on the toolbar
   - Enter the command for the **SMA_DELETESCHED** stored procedure

:::tip Example
EXEC SMA_DELETESCHED 'Shipping'
:::

5. Select the **Execute** button on the toolbar or press **F5** to run the query.

**Result:** The schedule and all associated jobs, dependencies, and the holiday calendar are permanently deleted from the OpCon database.

## SMA_MERGESCHED

SMA_MERGESCHED merges jobs from one schedule into another. It migrates all job details, frequencies, frequency priorities, documentation, job dependencies, threshold dependencies, thresholds, events, and job history from the source schedule to the target schedule. The stored procedure assumes:

- There are no duplicate job names between the two schedules
- Job history for the source schedule jobs appears as if they had always run on the target schedule
- Schedule-related historical information (e.g., schedule start and finish times) for the source schedule is deleted and not transferred to the target schedule

:::caution
This process is irreversible. Continuous recommends backing up the database before running SMA_MERGESCHED.
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

- **TargetSchedule**: The schedule to retain. Jobs from the source schedule are merged into this schedule
  - Must not exceed 40 characters
  - Enclose in single quotation marks (e.g., 'KeepSchedule')
- **SourceSchedule**: The schedule to merge into the target schedule
  - Must not exceed 40 characters
  - Enclose in single quotation marks (e.g., 'Old Schedule')
- **0**: The OpCon User ID to audit. Use 0 for ocadm
- **\@errorcode**: A variable to receive the exit code from SQL Server
- **\@errortext**: A variable to receive the text description of the error code

### Running SMA_MERGESCHED

To run SMA_MERGESCHED, complete the following steps:

1. Log in as a *local administrative user*.
2. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**.
3. In the Connect to Server dialog:
   - Select **Database Engine** in the **Server type** list
   - Select the desired OpCon Database Server in the **Server name** list
   - Select one of the following options in the **Authentication** list:
     - **Windows Authentication** to log in with the current Windows User with local administrative authority
     - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box
   - Select the **Connect** button
4. In the Microsoft SQL Server Management Studio window:
   - Expand (+) the **Databases** folder and select the **OpCon Database**
   - Select the **New Query** button on the toolbar
   - Enter the command for the **SMA_MERGESCHED** stored procedure

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

5. Select the **Execute** button on the toolbar or press **F5** to run the query.

**Result:** Jobs from the source schedule are merged into the target schedule.

## SMA_SAMWATCH

SMA_SAMWATCH monitors the SAM by creating a special SAMID with the same timestamp as the actual SAM. On each execution, it compares the SAM's current timestamp to the stored "old" timestamp. If the two are equal or the SAMID does not exist, the SAM has stopped processing. If specified, the procedure retries detection at defined intervals. When SMA_SAMWATCH determines the SAM is not processing, it sends a Network Popup Message to a single machine and writes a message to the Windows Event Log.

### Syntax

EXEC SMA_SAMWATCH SAMID,'Recipient',&lt;#1&gt;,&lt;#2&gt;

#### Parameters

**SAMID**: The number assigned to the SAM processing in the OpCon database. Normally 1.

**Recipient** (Optional): A host name, user name, or command file path to run when the SAM fails.

- Only one recipient is allowed
- Must not exceed 255 characters
- Always enclose in single quotation marks
- To send a Network Popup message, enter the host name or Windows User

:::tip Example
EXEC SMA_SAMWATCH 1,'OpsMachine'
:::

- To specify a command file, enter the executable's full path and file name
  - The path must not contain spaces
  - UNC path names are valid
  - If omitted, the recipient defaults to the hostname of the machine running the stored procedure

:::note
The command file may contain multiple net send commands or any other valid commands.
:::

:::tip Example
The following command runs a command file if the SAM fails:

```sql
EXEC SMA_SAMWATCH 1,'C:\ProgramData\OpConxps\Scripts\sma_samwatch.cmd'
```

:::

**&lt;#1&gt;**: The number of retries when a SAMPULSE record for the requested SAMID is absent (e.g., when SAM is not running or during SAM regeneration). Default is 1.

**&lt;#2&gt;**: The number of seconds between retry attempts. Valid values are integers from 0 to 59. Default is 5.

:::tip Example
The following command attempts to detect the SAM seven times at 20-second intervals, then runs the command file if the SAM is not detected:

```sql
EXEC SMA_SAMWATCH 1,'C:\ProgramData\OpConxps\Scripts\sma_samwatch.cmd',7,20
```

:::

### Scheduling SMA_SAMWATCH in SQL

:::caution
Do not schedule SMA_SAMWATCH through OpCon. OpCon cannot send notifications when the SAM-SS is not processing.
:::

To schedule the stored procedure, complete the following steps:

**Log in to Management Studio**

1. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**.
2. In the Connect to Server dialog:
   - Select **Database Engine** in the **Server type** list
   - Select the OpCon Publishing Database Server in the **Server name** list
   - Select one of the following options in the **Authentication** list:
     - **Windows Authentication** to log in with the current Windows User with local administrative authority
     - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box
   - Select the **Connect** button

**Create an SQL Job**

1. Go to the **Object Explorer** frame.
2. Expand (+) the **SQL Server Agent** icon.
3. Right-click the **Jobs** folder and choose **New > Job**.
4. Enter a *job name* in the **Name** text box.
5. Go to the **Select a page** frame and select **Steps**.
6. Select the **New** button.
7. Enter a *name* in the **Step Name** text box.
8. Select **Transact-SQL Script** (T-SQL) in the **Type** list.
9. Select the **OpConxps Database** in the **Database** list.
10. Enter the *SMA_SAMWATCH* command in the **Command** text box.
11. Select **OK**.

**Schedule the SQL Job**

1. Go to the **Select a page** frame and select the **Schedules** tab.
2. Select the **New** button.
3. In the New Job Schedule window, enter a *name for the schedule* in the **Name** text box.
4. Select **Recurring** in the **Schedule type** list.
5. Go to the **Frequency** frame and select **Daily** in the **Occurs** list.
6. Go to the **Daily frequency** frame and:
   a. Select the **Occurs every** radio button.
   b. Select either **Minute(s)** or **Hour(s)** in the **Occurs every** list.
   c. Enter the *number of minutes/hours* in the **Occurs every** field.

:::tip Example
Occurs every: 3 Minute(s)
:::

7. Leave all other settings at their default values and select **OK**.
8. Select **OK** in the **New Job** window.

**Result:** SMA_SAMWATCH is scheduled as a recurring SQL Server Agent job that monitors the SAM and sends an alert when the SAM stops processing.

## Exception Handling

**SMA_CLEAN_ENS permanently deletes notification records and cannot be reversed** — Running SMA_CLEAN_ENS deletes ENS notification records irreversibly; there is no undo operation — Back up the OpCon database before running SMA_CLEAN_ENS; confirm the intent to permanently delete the records before running.

**SMA_CLEARSCHED permanently removes all jobs from a schedule and cannot be reversed** — Running SMA_CLEARSCHED deletes all jobs within the specified schedule irreversibly; schedule information, history, and privileges are preserved, but the jobs themselves are gone — Back up the OpCon database before running SMA_CLEARSCHED; this operation is intended for use when restoring an old schedule version via Schedule Extract without losing schedule-level data.

**SMA_CHGMACHINE change does not take effect until SMA Service Manager is restarted** — After running SMA_CHGMACHINE to change a machine ID, the change is not applied to live SAM processing until the SMA Service Manager is stopped and restarted — Stop and restart the SMA Service Manager immediately after running SMA_CHGMACHINE to apply the new machine ID.

## FAQs

**Q: What privilege is required for a non-administrator SQL user to run administrative stored procedures?**

A SQL user without administrator privileges must be a member of the `opconspuser` role to use the administrative stored procedures.

**Q: What does SMA_CHGMACHINE do and when should you use it?**

SMA_CHGMACHINE changes a heavily used agent machine's ID to 1 so it receives slightly more processing time in the SAM loop. Use it when a critical production agent has a high ID number due to being added after less critical machines during initial setup.

**Q: What must you do after running SMA_CHGMACHINE for the change to take effect?**

After running SMA_CHGMACHINE, stop and restart the SMA Service Manager for the new machine ID to take effect.

## Glossary

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Agent**: An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as Machines in OpCon.

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.
