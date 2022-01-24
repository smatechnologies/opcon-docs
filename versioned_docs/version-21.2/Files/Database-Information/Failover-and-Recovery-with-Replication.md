---
sidebar_label: 'Failover with Replication'
---

# Failover and Recovery with Replication

This section is a guide for manual OpCon failover and recovery with replication including the topics:

- Automatic Failover to the Subscribing OpCon Database Server
- Manual Failover to the Subscribing OpCon Database Server
- Restoring the database to the Publishing Database Server
- Restoring replication

:::warning
Failure to follow replication failover and recovery procedures in the proper order can result in data corruption. SMA Technologies has tested the following steps in the order listed to achieve successful replication failover and recovery.
:::

:::warning
Exceeding the number of licensed machines (LSAMs) causes the license to be shortened to 30 days from date of license violation and will void the license key.
:::

## Automatic Failover to the Subscribing Database Server

When configured, automatic failover to the Subscribing OpCon Database Server occurs when the Secondary SMA Service Manager encounters a failover trigger. For further information, refer to [Automatic Failover](Failover-Scenarios.md#Automati).

## Manual Failover to the Subscribing Database Server

If the Publishing OpCon Database Server fails and cannot be brought back up for processing, failover to the Subscribing OpCon Database Server. Complete the procedures below when replication is using either a push or a pull subscription.

:::caution
The *Disable Replication* procedure below can only be successful if the administrator configured the StopRepl.cmd or StopRepl_WinAuth.cmd file for the correct subscription type. For information on configuring the StopRepl.cmd file, refer to [Configuring Failover Scripts and the SMA Service Manager](Manual-Setup-for-Microsoft-SQL-Replication.md#Configur).
:::

### Disable Replication

1. Log in as a *Windows user* with Local Administrative Rights.
2. Right-click **Start** and select **Explore**.
3. Browse to the <Configuration Directory\>**\\Utilities\\Database\\** directory.
4. Double-click the **StopRepl.cmd** file.

### Fail Over to the Subscribing Database and Secondary SMAServMan

1. Log on to the Secondary SAM application server as a *local administrative user*.
2. Use menu path: **Start \> Control Panel**.
3. Double-click **Administrative Tools**.
4. Double-click the **Services** icon.
5. Double-click the **SMA OpCon Service Manager** service.
6. Select **Automatic (Delayed Start)** in the **Startup type** drop-down list.
7. Click **OK**.
8. Click **Start** to start the service.
9. Click **Close ☒** on the **Services** window.
10. Use menu path: **Start \> Programs \> OpConxps \> Log Monitors \> *Log File***.
11. Open the **SMANetCom.log**, **SAM Critical.log**, and **SAM.log** to verify that the *Secondary Server* is processing normally.

When the SAM-SS is processing normally with the *Subscribing database*, all graphical interfaces should connect to the *Subscribing database* for production processing until the OpCon administrator indicates that the *Publishing Database Server* is available again.

## Restoring the Database to the Publishing Server

When the Publishing Database Server is brought back up and running reliably, restore the current data from the Subscribing server to the Publishing Server. The Primary SMA Service Manager may then start the SAM-SS to resume processing. The steps in this section describe the manual steps to restore processing to the primary server. If the SMA Replication schedules have been configured, use the SMAReplicationRecoverToPrimary schedule to restore.

:::note
If the hard drive was lost, a new copy of Windows and MSSQL is on the server. Verify that all OpCon system requirements are met. Refer to [Getting Started](../../installation/system-requirements.md) in the **OpCon Installation** online help.
:::

### Stopping the SMA Service Manager on the Secondary Server

To prevent OpCon from writing to a disabled database, stop the SMA Service Manager on the Secondary Server by following the steps below.

#### Stop the SMA Service Manager

1. Use menu path: **Start \> Control Panel**.
2. Double-click **Administrative Tools**.
3. Double-click the **Services** icon.
4. Click **SMA OpCon Service Manager**.
5. Click **Stop** (■).
6. Click **Close ☒** on the **Services** window.

### Verifying the SMA Service Manager's Status on the Primary Server

To ensure the primary SMA Service Manager has stopped, verify the SMAServMan's status by performing the steps below.

#### Verify SMAServMan's Status

1. Use menu path: **Start \> Control Panel**.
2. Double-click **Administrative Tools**.
3. Double-click the **Services** icon.
4. Click **SMA Service Manager**.
5. Confirm the **SMA Service Manager** is stopped. If it is not, click **Stop** to stop the service.
6. Click **Close ☒** on the **Services** window.

### Backing Up the Subscribing Database

Follow the procedures below to create a backup of the subscribing database for the restoration of the publishing database.

#### Locate the Server in Management Studio

On the Subscribing Database Server:

1. Log in as a *local administrative user*.
2. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
3. In the Connect to Server window: Select **Database Engine** in the **Server type** drop-down list.
4. Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.
5. Select one of the following options in the **Authentication**drop-down list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority.
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box.
6. Click the **Connect** button.
7. In the Microsoft SQL Server Management Studio window: Expand (+) the **Databases** folder.
8. Identify the OpCon database.

#### Back Up the Database

1. Right-click the **OpCon database** and choose **Tasks \> Back Up**.
2. Confirm the **OpCon database** is selected in the **Database** drop-down list.
3. Enter the *backup job name* in the **Name** text box.
4. Select **Full** in the **Backup type** drop-down list for a complete backup.
5. Go to the **Destination** frame.
6. Select the **Disk** radio button.
7. Click **Add** to add the location and name of the backup file if the default destination is not desired. You should see the default directory for SQL backups listed in the **Select Backup Destination** window.
8. Enter, in the **File name** field, a *file name* followed by a *.bak* file extension at the end of the file path. If this is not the desired location, enter the *full path* and *file name* followed by a *.bak* file extension (e.g., D:\\MSSQL\\Backup\\Opconxps.bak).
9. Click **OK** to accept the backup (.bak) filename.
10. Click on the **Options** tab in the **Select a page** menu.
11. Go to the **Overwrite** media frame.
12. Select the **Append to the existing backup set** or **Overwrite all existing backup sets** radio button. Either option is acceptable. The database administrator should make this decision.
13. Click **OK**.
14. click **OK** when the backup completes successfully.

### Restoring the Backup File to the Publishing Server

Follow the procedures below to restore the publishing database with the backup of the subscribing database.

#### Copy the Backup File

Copy the backup (.bak) file to the default SQL Backup directory (e.g., <Target Directory\>\\Microsoft SQL Server\\MSSQL\\BACKUP\\).

#### Connect to Management Studio

On the Publishing Database Server:

1. Log in as a *local administrative user*.
2. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
3. In the Connect to Server window: Select **Database Engine** in the **Server type** drop-down list.
4. Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.
5. Select one of the following options in the **Authentication**drop-down list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority.
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box.
6. Click the **Connect** button.

#### Disable Replication

If publishing is still set up on the Publishing Database Server, complete the steps in this section to disable publishing.

1. Go to the **Object Explorer** frame.
2. Right-click the **Replication** folder and select **Disable Publishing and Distributions**.
3. On the Disable Publishing and Distribution Wizard welcome screen:
4. Click **Next**.
5. Select the **Yes, disable publishing on this server** radio button and click **Next**.
6. Leave the settings at default and click **Next**.
7. Click **Finish**.
8. Watch as it processes and make sure it completes successfully then click **Close**.

#### Restore the Backup File

1. Go to the **Object Explorer** screen.
2. Expand (+) the **Databases** folder.
3. Right-click the **<database name\>** icon and choose **Tasks \> Restore \> Database**.
4. Verify that the **OpCon database** is selected in the **To database** combo box. If the **OpCon database** does not already exist in the **To database** combo box, enter the *database name*.
5. Go to the **Source for restore** frame.
6. Select the **From device** radio button.
7. Click the **ellipsis (...)** button beside the **From device** radio button to browse to the desired backup (.bak) file.
8. Select the desired **backup (.bak) file** in the **Backup location** drop-down list. If it is not found in this list, then click **Add**.
9. Browse through the folders and select the desired **backup (.bak) file**.
10. Click **OK**.
11. Click **OK**.
12. Go to **Select the backup sets to restore** frame.
13. Select the desired **backup (.bak) file** checkbox.
14. Click the **Options** tab in the **Select a page** menu.
15. Select the **Overwrite the existing database** checkbox.
16. Go to the **Restore the database files as** frame.
17. Make sure that the file name and path are valid for the database's data and log files.
18. Go to the **Recovery state** frame.
19. Click the radio button by Leave the database ready to use by rolling back uncommitted transactions. Additional transaction logs cannot be restored. (RESTORE WITH RECOVERY)
20. Click **OK**.
21. When the restore completes successfully, click **OK**.

### Executing Required Scripts on the Publishing Server

After restoration to the publishing database server, the OpCon database may not be fully functional. To make the database fully functional, execute the DB_Update.cmd file to apply all necessary privileges and primary keys. For information on running the Database Upgrade scripts, refer to [Update Database](../../utilities/Graphical-Utilities/SMA-OpCon-Configuration-Utility.md#Update_Database) in the **Utilities** online help.

#### Resetting SQL Login IDs

Following restoration, it is possible to have a mismatch of SQL Login IDs between the restored database and the SQL server. This mismatch prevents SAM's SQL Login ID (opconsam) and the graphical interface's SQL Login ID (opconui) from in to the database. To fix this problem, complete the steps below.

##### Reset opconsam and opconui SQL Login IDs

On the Publishing Database Server:

1. Log in as a *local administrative user*.
2. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
3. In the Connect to Server window: Select **Database Engine** in the **Server type** drop-down list.
4. Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.
5. Select one of the following options in the **Authentication**drop-down list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority.
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box.
6. Click the **Connect** button.
7. In the Microsoft SQL Server Management Studio window: Expand (+) the **Databases** folder and click the **OpCon database**.
8. On the Standard toolbar: Click the **New Query** button.
9. Select the **OpCon Database** from the list at the top of the screen.
10. Enter the query: `dbo.sp_change_users_login 'update_one','opconsam','opconsam'`.
11. Click the **Execute** button or press **F5** to execute the query.
12. Enter the query: `dbo.sp_change_users_login 'update_one' ,'opconui','opconui'`.
13. Click the **Execute** button or press **F5** to execute the query.

### Deleting Stored Procedures from Last Replication Setup

:::note
If using SQL Server Management Studio 2014, then you can skip this entire manual procedure. The stored procedures are automatically deleted by SQL Server during the process of stopping/turning off replication. If using an earlier version of SQL Server Management Studio, you must follow this procedure to delete the stored procedures.
:::

In order for SQL to work correctly after restoration, delete all stored procedures from the subscribing OpCon database created during the previous setup of replication.

#### Delete Stored Procedures

On the Subscribing Database Server:

1. Log in as a *local administrative user*.
2. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
3. In the Connect to Server window: Select **Database Engine** in the **Server type** drop-down list.
4. Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.
5. Select one of the following options in the **Authentication**drop-down list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority.
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box.
6. Click the **Connect** button.
7. In the Microsoft SQL Server Management Studio window: Expand (+) the subscribing **OpCon database**.
8. Expand (+) the **Programmability** folder.
9. Click the **Stored Procedures** folder.
10. In the Object Explorer Details frame: Select the *first procedure* starting with **sp_MS**.
    :::note
    If unable to see the Object Explorer Details frame, use menu path: View\>Object Explorer Details.
    :::
11. Press the **Shift** key on the keyboard then select the *last procedure* in the list beginning with **sp_MS**.
12. Right-click on the **highlighted list** and select **Delete**.
13. In the Delete Objects window:
14. Click **OK**.

### Verifying Regular Backups on the OpCon Database

- If the database backups are scheduled in OpCon, verify that the information in the jobs is still correct. For information on automated backups in OpCon, refer to [SMA Database Backup](../../objects/schedules.md#smautility-schedule) in the **Concepts** online help.
- If there is a database maintenance plan in place for the OpCon database, verify the setup. Make sure that the maintenance plan is restarted. This may have to be done manually by right clicking and starting the full database backup job. This can be found in Management Studio under *<Server Name\>***\> SQL Agent \> Jobs**. After the full backup is complete, start the Transaction Log backup.
- If the Maintenance plan appears to be corrupt, delete it and step through the wizard to create a new one. SMA     Technologies recommends a full database backup once per day. Schedule this for a low processing time. The recommendation for the Transaction log backup is every 30 minutes starting at midnight (12:00 am) and ending at 11:59 pm. However, the Transaction log may be backed up as often as the database administrator decides.

### Restoring Replication

If replication was in use, restore replication manually or through the SMA Replication schedules. For information on manually setting up replication, refer to [Manual Setup for Microsoft SQL Replication](Manual-Setup-for-Microsoft-SQL-Replication.md). For information on using the SMA Replication schedules, refer to [Setup for Automatic Microsoft SQL Replication](Setup-for-Automatic-Microsoft-SQL-Replication.md).
