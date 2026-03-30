---
sidebar_label: 'Failover with Replication'
title: Failover and Recovery with Replication
description: "Failover and recovery with replication lets OpCon switch to a subscribing database server when the primary becomes unavailable, then restore the original configuration once the primary is back. The procedures cover: - Automatic Failover to the Subscribing OpCon Database Server - Manual Failover to the Subscribing OpCon Database Server -."
product_area: Database Administration
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - System Configuration
last_updated: 2026-03-18
doc_type: procedural
---

# Failover and Recovery with Replication

**Theme:** Troubleshoot  
**Who Is It For?** System Administrator

## What Is It?

Failover and recovery with replication lets OpCon switch to a subscribing database server when the primary becomes unavailable, then restore the original configuration once the primary is back. The procedures cover:

- Automatic Failover to the Subscribing OpCon Database Server
- Manual Failover to the Subscribing OpCon Database Server
- Restoring the database to the Publishing Database Server
- Restoring replication

:::warning
Failure to follow replication failover and recovery procedures in the proper order can result in data corruption. Continuous has tested the following steps in the order listed to achieve successful replication failover and recovery.
:::

:::warning
Exceeding the number of licensed machines (agents) causes the license to be shortened to 30 days from date of license violation and will void the license key.
:::

## When Would You Use It?

- You need to configure or manage Failover and Recovery with Replication in OpCon

## Why Would You Use It?

- **Centralized control**: Managing Failover and Recovery with Replication through OpCon provides consistent oversight and a full audit trail for all changes

## Automatic Failover to the Subscribing Database Server

When configured, automatic failover to the Subscribing OpCon Database Server occurs when the Secondary SMA Service Manager encounters a failover trigger. For further information, refer to [Automatic Failover](Failover-Scenarios.md#Automati).

## Manual Failover to the Subscribing Database Server

If the Publishing OpCon Database Server fails and cannot be brought back up, failover to the Subscribing OpCon Database Server. Complete the procedures below when replication uses either a push or pull subscription.

:::caution
The *Disable Replication* procedure below can only be successful if the administrator configured the StopRepl.cmd or StopRepl_WinAuth.cmd file for the correct subscription type. For information on configuring the StopRepl.cmd file, refer to [Configuring Failover Scripts and the SMA Service Manager](Manual-Setup-for-Microsoft-SQL-Replication.md#Configur).
:::

### Disable Replication

1. Log in as a *Windows user* with Local Administrative Rights
2. Right-click **Start** and select **Explore**

3. Browse to the <Configuration Directory\>**\\Utilities\\Database\\** directory
4. Select the **StopRepl.cmd** file

### Fail Over to the Subscribing Database and Secondary SMAServMan

1. Log on to the Secondary SAM application server as a *local administrative user*
2. Use menu path: **Start \> Control Panel**
3. Select **Administrative Tools**
4. Select the **Services** icon
5. Select the **SMA OpCon Service Manager** service
6. Select **Automatic (Delayed Start)** in the **Startup type** list
7. Select **OK**

8. Select **Start** to start the service
9. Select **Close ☒** on the **Services** window
10. Use menu path: **Start \> Programs \> OpConxps \> Log Monitors \> *Log File***
11. Open the **SMANetCom.log**, **SAM Critical.log**, and **SAM.log** to verify the *Secondary Server* is processing normally

When the SAM-SS is processing normally with the *Subscribing database*, all graphical interfaces should connect to the *Subscribing database* for production processing until the *Publishing Database Server* is available again.

## Restoring the Database to the Publishing Server

When the Publishing Database Server is back up and running reliably, restore current data from the Subscribing server to the Publishing Server. The Primary SMA Service Manager can then start the SAM-SS to resume processing. If the SMA Replication schedules have been configured, use the SMAReplicationRecoverToPrimary schedule to restore.

:::note
If the hard drive was lost, verify that all OpCon system requirements are met on the rebuilt server. Refer to [Getting Started](../../installation/system-requirements.md) in the **OpCon Installation** online help.
:::

### Stopping the SMA Service Manager on the Secondary Server

Stop the SMA Service Manager on the Secondary Server to prevent OpCon from writing to a disabled database.

#### Stop the SMA Service Manager

1. Use menu path: **Start \> Control Panel**
2. Select **Administrative Tools**
3. Select the **Services** icon

4. Select **SMA OpCon Service Manager**
5. Select **Stop** (■)
6. Select **Close ☒** on the **Services** window

### Verifying the SMA Service Manager's Status on the Primary Server

Verify the SMAServMan's status on the Primary Server to ensure it has stopped.

#### Verify SMAServMan's Status

1. Use menu path: **Start \> Control Panel**
2. Select **Administrative Tools**
3. Select the **Services** icon

4. Select **SMA Service Manager**
5. Confirm the **SMA Service Manager** is stopped. If it is not, select **Stop**
6. Select **Close ☒** on the **Services** window

### Backing Up the Subscribing Database

Create a backup of the subscribing database to use for restoring the publishing database.

#### Locate the Server in Management Studio

On the Subscribing Database Server:

1. Log in as a *local administrative user*

2. Use menu path: **Start \> All Programs \> SQL Server Management Studio**
3. In the Connect to Server window: Select **Database Engine** in the **Server type** list
4. Select the desired \[OpCon Database Server\] in the **Server name** list
5. Select one of the following options in the **Authentication** list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box
6. Select the **Connect** button
7. In the Microsoft SQL Server Management Studio window: Expand (+) the **Databases** folder
8. Identify the OpCon database

#### Back Up the Database

To restore the Database to the Publishing Server, complete the following steps:

1. Right-click the **OpCon database** and choose **Tasks \> Back Up**
2. Confirm the **OpCon database** is selected in the **Database** list
3. Enter the *backup job name* in the **Name** text box
4. Select **Full** in the **Backup type** list
5. Go to the **Destination** frame
6. Select the **Disk** radio button
7. Select **Add** to set the backup file location. The default SQL backup directory appears in the **Select Backup Destination** window
8. In the **File name** field, enter a *file name* with a *.bak* extension, or enter the full path and file name (e.g., D:\\MSSQL\\Backup\\Opconxps.bak)
9. Select **OK** to accept the filename
10. Select the **Options** tab in the **Select a page** menu
11. Go to the **Overwrite** media frame
12. Select **Append to the existing backup set** or **Overwrite all existing backup sets**. The database administrator should make this decision
13. Select **OK**
14. Select **OK** when the backup completes successfully

### Restoring the Backup File to the Publishing Server

#### Copy the Backup File

Copy the backup (.bak) file to the default SQL Backup directory (e.g., <Target Directory\>\\Microsoft SQL Server\\MSSQL\\BACKUP\\).

#### Connect to Management Studio

On the Publishing Database Server:

1. Log in as a *local administrative user*
2. Use menu path: **Start \> All Programs \> SQL Server Management Studio**
3. In the Connect to Server window: Select **Database Engine** in the **Server type** list
4. Select the desired \[OpCon Database Server\] in the **Server name** list
5. Select one of the following options in the **Authentication** list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box
6. Select the **Connect** button

#### Disable Replication

If publishing is still set up on the Publishing Database Server, disable it before restoring.


1. Go to the **Object Explorer** frame
2. Right-click the **Replication** folder and select **Disable Publishing and Distributions**
3. On the Disable Publishing and Distribution Wizard welcome screen, select **Next**
4. Select **Yes, disable publishing on this server** and select **Next**
5. Leave the settings at default and select **Next**
6. Select **Finish** and confirm the process completes successfully, then select **Close**

#### Restore the Backup File

##### Select the Backup Source

To locate and select the backup file to restore, complete the following steps:

1. Go to the **Object Explorer** screen
2. Expand (+) the **Databases** folder
3. Right-click the **<database name\>** icon and choose **Tasks \> Restore \> Database**
4. Verify the **OpCon database** is selected in the **To database** combo box. If it does not exist, enter the *database name*
5. Go to the **Source for restore** frame
6. Select the **From device** radio button
7. Select the **ellipsis (...)** button to browse to the backup (.bak) file
8. Select the backup (.bak) file in the **Backup location** list. If not listed, select **Add**
9. Browse and select the desired **backup (.bak) file**
10. Select **OK**
11. Select **OK**

##### Configure Restore Options and Complete

To configure the restore options and complete the restoration, complete the following steps:

1. Go to **Select the backup sets to restore** and select the desired backup (.bak) file option
2. Select the **Options** tab in the **Select a page** menu
3. Select the **Overwrite the existing database** option
4. Go to the **Restore the database files as** frame and verify the file name and path are valid
5. Go to the **Recovery state** frame and select **Leave the database ready to use by rolling back uncommitted transactions. Additional transaction logs cannot be restored. (RESTORE WITH RECOVERY)**
6. Select **OK**
7. When the restore completes successfully, select **OK**

### Running Required Scripts on the Publishing Server

After restoration, run the DB_Update.cmd file to apply all necessary privileges and primary keys. For information on running the Database Upgrade scripts, refer to [Update Database](../../utilities/Graphical-Utilities/SMA-OpCon-Configuration-Utility.md#Update_Database) in the **Utilities** online help.

#### Resetting SQL Login IDs

Following restoration, SQL Login ID mismatches can prevent SAM's login (opconsam) and the graphical interface login (opconui) from connecting to the database. Complete the steps below to fix this.

##### Reset opconsam and opconui SQL Login IDs

On the Publishing Database Server:

###### Connect to SQL Server Management Studio

To connect to the publishing database server, complete the following steps:

1. Log in as a *local administrative user*
2. Use menu path: **Start \> All Programs \> SQL Server Management Studio**
3. In the Connect to Server window: Select **Database Engine** in the **Server type** list
4. Select the desired \[OpCon Database Server\] in the **Server name** list
5. Select one of the following options in the **Authentication** list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box
6. Select the **Connect** button

###### Run the Login Repair Queries

To run the queries that repair the SQL login ID mappings, complete the following steps:

1. Expand (+) the **Databases** folder and select the **OpCon database**
2. On the Standard toolbar, select the **New Query** button
3. Select the **OpCon Database** from the list at the top of the screen
4. Enter the query: `dbo.sp_change_users_login 'update_one','opconsam','opconsam'`
5. Select **Execute** or press **F5**
6. Enter the query: `dbo.sp_change_users_login 'update_one' ,'opconui','opconui'`
7. Select **Execute** or press **F5**

### Deleting Stored Procedures from Last Replication Setup

:::note
If using SQL Server Management Studio 2014, skip this procedure. Stored procedures are automatically deleted during replication shutdown. Earlier versions require the manual steps below.
:::

Delete all stored procedures from the subscribing OpCon database created during the previous replication setup.

#### Delete Stored Procedures

On the Subscribing Database Server:


1. Log in as a *local administrative user*
2. Use menu path: **Start \> All Programs \> SQL Server Management Studio**
3. In the Connect to Server window: Select **Database Engine** in the **Server type** list
4. Select the desired \[OpCon Database Server\] in the **Server name** list
5. Select one of the following options in the **Authentication** list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box
6. Select the **Connect** button
7. Expand (+) the subscribing **OpCon database**
8. Expand (+) the **Programmability** folder
9. Select the **Stored Procedures** folder
10. In the Object Explorer Details frame, select the *first procedure* starting with **sp_MS**
    :::note
    If unable to see the Object Explorer Details frame, use menu path: View\>Object Explorer Details.
    :::
11. Press **Shift** and select the *last procedure* beginning with **sp_MS**
12. Right-click the **highlighted list** and select **Delete**
13. Select **OK**

### Verifying Regular Backups on the OpCon Database

- If backups are scheduled in OpCon, verify the job information is still correct. Refer to [SMA Database Backup](../../objects/schedules.md#smautility-schedule) in the **Concepts** online help
- If a database maintenance plan exists, verify the setup and restart it. If needed, manually start the full backup job in Management Studio under *<Server Name\>* **\> SQL Agent \> Jobs**. After the full backup completes, start the Transaction Log backup
- If the maintenance plan is corrupt, delete it and create a new one using the wizard. Continuous recommends a full database backup once per day during low processing time, and Transaction Log backups every 30 minutes from midnight to 11:59 PM (or as often as the database administrator determines)

### Restoring Replication

If replication was in use, restore it manually or through the SMA Replication schedules. Refer to [Manual Setup for Microsoft SQL Replication](Manual-Setup-for-Microsoft-SQL-Replication.md) or [Setup for Automatic Microsoft SQL Replication](Setup-for-Automatic-Microsoft-SQL-Replication.md).

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## Operations

### Monitoring
- After failing over to the secondary server, open the **SMANetCom.log**, **SAM Critical.log**, and **SAM.log** to verify the secondary server is processing normally before allowing graphical interfaces to connect to the subscribing database.
- Monitor agent counts to avoid exceeding the licensed machine limit; exceeding the licensed count shortens the license to 30 days from the violation date and voids the license key.

### Common Tasks
- To manually fail over to the subscribing database: run `StopRepl.cmd` to disable replication, then start the SMA OpCon Service Manager on the secondary server using **Automatic (Delayed Start)** startup type.
- To restore the database to the publishing server: stop the SMA Service Manager on the secondary server, restore current data from the subscribing server to the publishing server, then restart the primary SMA Service Manager.
- Use the `SMAReplicationRecoverToPrimary` schedule to automate the restore process; ensure all other OpCon schedules are On Hold and no jobs are running before releasing this schedule.
- Always perform failover and recovery steps in the documented order; performing steps out of order can result in data corruption.

### Alerts and Log Files
- Use the **Log Monitors** menu (`Start > Programs > OpConxps > Log Monitors > Log File`) to open SAMNetCom.log, SAM Critical.log, and SAM.log on the secondary server to confirm normal processing after failover.

## Exception Handling

**Failover and recovery steps performed out of order cause data corruption** — Failure to follow the replication failover and recovery procedures in the exact order listed can result in data corruption, as Continuous has only tested this sequence as documented — Always complete the steps in the documented order without skipping or reordering; refer to these procedures and not ad-hoc approaches when performing failover or recovery.

**Disable Replication step fails because StopRepl.cmd is not configured for the correct subscription type** — The Disable Replication step can only succeed if the StopRepl.cmd or StopRepl_WinAuth.cmd file was configured for the correct subscription type (push or pull) before the failover event — Configure the StopRepl.cmd file for the correct subscription type as part of initial replication setup; refer to [Configuring Failover Scripts and the SMA Service Manager](Manual-Setup-for-Microsoft-SQL-Replication.md#Configur) before attempting failover.

**Exceeding the licensed machine count shortens the license to 30 days and voids the key** — If the number of connected agents exceeds the number of licensed machines, the license is shortened to 30 days from the date of the violation and the existing license key is voided — Monitor agent counts and contact Continuous for a license update before adding machines that would exceed the licensed count.

## FAQs

**Q: How many steps does the Failover and Recovery with Replication procedure involve?**

The Failover and Recovery with Replication procedure involves 105 steps. Complete all steps in order and save your changes.

**Q: What does Failover and Recovery with Replication cover?**

This page covers Automatic Failover to the Subscribing Database Server, Manual Failover to the Subscribing Database Server, Restoring the Database to the Publishing Server.

## Glossary

**SMANetCom (SMA Network Communications Module)**: Handles TCP/IP communication of platform-specific automation information between SAM and all agents. Uses database tables to maintain reliable communication and data integrity.

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
