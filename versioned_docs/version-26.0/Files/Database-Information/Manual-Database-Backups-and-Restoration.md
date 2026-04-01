---
sidebar_label: 'Manual Backups'
title: Manual Database Backups and Restoration
description: "Automation is the preferred method for database maintenance."
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

# Manual Database Backups and Restoration

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

Automation is the preferred method for database maintenance. If automation is not available, back up the database manually on a regular basis. Continuous recommends regular backups of the OpCon database, transaction logs, and system databases for two reasons:

1. **Maintenance:** If the transaction log is not backed up regularly, it fills the hard drive and OpCon stops processing
2. **Recoverability:** Restoring the most up-to-date data requires the latest full database backup and all subsequent transaction log backups

For information on automating database maintenance and backups, refer to [OpCon Data Maintenance](OpCon-Data-Maintenance.md).

## Manual Backups

### Manually Backing Up the Database

#### Perform a Manual Backup

On the OpCon Database Server:

1. Go to **Start > All Programs > SQL Server Management Studio**
2. On the Connect to Server screen, select **Database Engine** in the **Server type** list
3. Select the desired \[OpCon Publishing Database Server\] in the **Server name** list
4. Select one of the following options in the **Authentication** list:
   - **Windows Authentication** to log in with the current Windows user with local administrative authority
   - **SQL Server Authentication**, then enter *sa* in the **Login** field and the *sa password* in the **Password** field
5. Select the **Connect** button
6. In SQL Server Management Studio, expand (+) the **Databases** folder
7. Identify the OpCon database

##### Back Up the Database

1. Right-click the **OpCon database** and select **Tasks > Back Up**
2. In the **Source** frame, confirm the **OpCon database** is selected
3. Select **Full** in the **Backup type** list
4. In the **Backup set** frame, enter a *backup job name* in the **Name** field
5. In the **Destination** frame, select the **Disk** option

6. Select **Add** to set the backup file location and name if the default is not desired. The default SQL backup directory appears in the **Select Backup Destination** window
7. In the **File name** field, enter a *file name* with a *.bak* extension. For a non-default location, enter the *full path* and *file name* with a *.bak* extension (e.g., `D:\MSSQL\Backup\Opconxps.bak`)
8. Select **OK** to accept the filename
9. Select the **Options** tab in the **Select a page** menu
10. In the **Overwrite media** frame, select **Append to the existing backup set** or **Overwrite all existing backup sets**. The database administrator should make this decision
11. Select **OK**
12. When the backup completes, select **OK**

## Manual Restoration

### Manually Restoring the Database

Manual restoration involves these steps:

- [Verifying the Latest Backup File](#Verifyin)
- [Stopping and Disabling Replication](#Stopping)
- [Restoring the Database](#Restorin)
- [Running the Database Upgrade Scripts](#Executin)
- [Resetting SQL Login IDs](#Resettin)
- [Setting up Replication](#Setting)

#### Verifying the Latest Backup File

Verify the backup file is in the *default SQL Backup directory* on the machine where restoration occurs.

:::note
The default SQL Backup directory may vary based on the version of Microsoft SQL Server.
:::

##### Verify the Backup File

1. Log on to the OpCon database server as a *Windows user* with access to the database installation directories
2. Right-click **Start** and select **Explore**
3. Browse to the last backup's location
4. If the backup is not on the target machine, copy it using **Organize > Copy**, browse to the target directory, and use **Organize > Paste**

#### Stopping and Disabling Replication

If replication is not in use, skip this section. If replication is in use, stop and disable it before restoration. The installation script must be able to drop and recreate tables. No data is lost.

- For a **Push Subscription**, follow the steps below
- For a **Pull Subscription**, refer to [Stop Replication with a Pull Subscription](#Stop_Replication_with_a_Pull_Subscription)

##### Stop Replication with a Push Subscription

On the Publishing Database Server:

1. Go to **Start > All Programs > SQL Server Management Studio**
2. On the Connect to Server screen, select **Database Engine** in the **Server type** list
3. Select the desired \[OpCon Publishing Database Server\] in the **Server name** list
4. Select an **Authentication** option and enter credentials if using SQL Server Authentication
5. Select the **Connect** button

##### Delete Subscription and Publication from the Local Publications

1. In the **Object Explorer**, expand (+) **Replication > Local Publications**
2. Right-click the **current subscription** and select **Delete**. Select **Yes** to confirm
3. Right-click the **current publication** and select **Delete**. Select **Yes** to confirm

##### Stop Replication with a Pull Subscription

On the Subscribing Database Server:

1. Go to **Start > All Programs > SQL Server Management Studio**
2. On the Connect to Server screen, select **Database Engine** in the **Server type** list
3. Select the desired \[OpCon Subscribing Database Server\] in the **Server name** list
4. Select an **Authentication** option and enter credentials if using SQL Server Authentication
5. Select the **Connect** button

##### Delete Subscription from the Local Subscriptions

1. In the **Object Explorer**, expand (+) **Replication > Local Subscriptions**
2. Right-click the **current subscription** and select **Delete**. Select **Yes** to confirm

On the Publishing Database Server, connect to SQL Server Management Studio (as above), then:

##### Delete the Publication from the Local Publications

1. In the **Object Explorer**, expand (+) **Local Publications**
2. Right-click the **current publication** and select **Delete**. Select **Yes** to confirm

##### Disable Replication

If publishing is still active on the Publishing Database Server, connect to SQL Server Management Studio (as above), then:

1. Right-click the **Replication** folder in the **Object Explorer** and select **Disable Publishing and Distributions**
2. Select **Next**
3. Select the **Yes, disable publishing on this server** option
4. Select **Next** through remaining screens, leaving settings at default
5. Select **Finish** and wait for the process to complete
6. Select **Close**

#### Restoring the Database

##### Restore the Database

On the OpCon Database Server:

1. Go to **Start > All Programs > SQL Server Management Studio**
2. On the Connect to Server screen, select **Database Engine** in the **Server type** list
3. Select the desired \[OpCon Database Server\] in the **Server name** list
4. Select an **Authentication** option and enter credentials if using SQL Server Authentication
5. Select the **Connect** button

##### Restore the Backup File

1. In the **Object Explorer**, expand (+) the **Databases** folder
2. Right-click the **\<database name\>** and select **Tasks > Restore > Database**
3. Verify the **OpCon database** is selected in the **To database** box. If it does not exist, enter the *database name*
4. In the **Source for restore** frame, select the **Restore: From device** option
5. Select the **ellipsis (...)** button beside **From device** to browse to the backup (.bak) file
6. Select the desired **backup (.bak) file** in the **Backup location** box. If not found, select **Add** and browse to it
7. Select **OK** twice
8. In **Select the backup sets to restore**, select the desired **backup (.bak) file** option
9. Select the **Options** tab in the **Select a page** menu
10. Select the **Overwrite the existing database** option
11. In the **Restore the database files as** frame, verify the file name and path are valid for the database's data and log files
12. In the **Recovery state** frame, select **Leave the database ready to use by rolling back uncommitted transactions. Additional transaction logs cannot be restored. (RESTORE WITH RECOVERY)**
13. Select **OK**. When the restore completes, select **OK**

#### Running the Database Upgrade Scripts

For information on running the Database Upgrade scripts, refer to [Update Database](../../utilities/Graphical-Utilities/SMA-OpCon-Configuration-Utility.md#Update_Database) in the **Utilities** online help.

#### Resetting SQL Login IDs

After restoration, SQL Login IDs may be mismatched between the restored database and the SQL server. This mismatch prevents the SAM SQL Login ID (`opconsam`) and the graphical interface SQL Login ID (`opconui`) from connecting to the database. To fix this, complete the steps below.

##### Reset opconsam and opconui SQL Login IDs

On the OpCon Database Server, connect to SQL Server Management Studio (as above), then:

1. Select the **New Query** button
2. Select the **OpCon Database** in the toolbar list
3. Enter the query: `dbo.sp_change_users_login 'update_one','opconsam','opconsam'`
4. Select the **Execute** button or press **F5**
5. Enter the query: `dbo.sp_change_users_login 'update_one','opconui','opconui'`

6. Select the **Execute** button or press **F5**

#### Setting up Replication

If replication was in use, refer to [Manual Setup for Microsoft SQL Replication](Manual-Setup-for-Microsoft-SQL-Replication.md).

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## Operations

### Monitoring
- Monitor transaction log size regularly; if the transaction log is not backed up, it grows continuously and can fill the hard drive, causing OpCon to stop processing.

### Common Tasks
- Perform a full database backup: in SQL Server Management Studio, right-click the OpCon database, select **Tasks > Back Up**, choose **Full** backup type, and specify the destination `.bak` file.
- Restore the database: disable replication first (if in use), then use **Tasks > Restore > Database** in SQL Server Management Studio with the **Overwrite the existing database** option selected.
- After restoration, remap SQL login IDs using `sp_change_users_login 'update_one','opconsam','opconsam'` and `sp_change_users_login 'update_one','opconui','opconui'` to fix mismatched SIDs.
- Restore the most up-to-date data by applying the latest full backup followed by all subsequent transaction log backups in sequence.

### Alerts and Log Files
- Verify the backup file exists in the default SQL Backup directory on the target machine before beginning a restoration; copy it to the machine if it is not present.

## Exception Handling

**Transaction log not backed up regularly fills the hard drive and stops OpCon processing** — The transaction log grows continuously and cannot be truncated unless it is backed up on a regular basis; if the drive fills, OpCon stops processing entirely — Back up the transaction log regularly in addition to full database backups; automate the process through OpCon using the procedures in OpCon Data Maintenance.

**SQL Login IDs are mismatched after database restoration, preventing SAM and graphical interface connections** — After restoring a database backup to a SQL Server instance, the opconsam and opconui SQL Login IDs may be mismatched between the restored database and the SQL server, causing connection failures — Run sp_change_users_login with the update_one parameter for both opconsam and opconui immediately after restoration to remap the login IDs.

**Replication must be disabled before restoration or the installer cannot drop and recreate tables** — If replication is active when the restoration begins, the database upgrade scripts cannot run because they need to drop and recreate tables — Disable replication (push or pull subscription) and disable publishing before starting the restoration procedure.

## FAQs

**Q: How many steps does the Manual Database Backups and Restoration procedure involve?**

The Manual Database Backups and Restoration procedure involves 72 steps. Complete all steps in order and save your changes.

**Q: What does Manual Database Backups and Restoration cover?**

This page covers Manual Backups, Manual Restoration.

**Q: Why does Continuous recommend backing up both the database and the transaction log regularly?**

Regular transaction log backups prevent the log from filling the hard drive and stopping OpCon processing. A complete restore requires the latest full database backup plus all subsequent transaction log backups, so both must be maintained consistently to enable full recoverability.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
