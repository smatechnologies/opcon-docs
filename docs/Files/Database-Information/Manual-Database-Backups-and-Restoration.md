---
sidebar_label: 'Manual Backups'
---

# Manual Database Backups and Restoration

Automation of backups is a more efficient and reliable method for database maintenance; however, if automation is not an option, manually back up the database on a regular basis. SMA Technologies recommends regular backups of the OpCon database, transaction logs, and system databases. There are two reasons for these backups:

1. Maintenance: If the transaction log for the OpCon database is not backed up regularly, it eventually fills the hard drive. OpCon discontinues processing if the hard drive is full.
2. Recoverability: If for any reason the database requires restoration, backup files must be available. Restoration of the most up-to-date data requires the latest full database backup and all subsequent transaction log backups.

For information on automating the database maintenance and backups, refer to [OpCon Data Maintenance](OpCon-Data-Maintenance.md).

## Manual Backups

In some cases, it is necessary to manually back up the OpCon database and restore it to another location.

### Manually Backing Up the Database

Perform the following procedure to manually back up the OpCon database.

#### Perform a Manual Backup

On the OpCon Database Server:

1. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
2. On the Connect to Server screen: Select **Database Engine** in the **Server type** drop-down list.
3. Select the desired \[OpCon Publishing Database Server\] in the **Server name** drop-down list.
4. Select one of the following options in the **Authentication** drop-down list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority.
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box.
5. Click the **Connect** button.
6. In the Microsoft SQL Server Management Studio window: Expand (+) the **Databases** folder.
7. Identify the OpCon database.

##### Back Up the Database

1. Right-click the **OpCon database** and choose **Tasks \> Back Up**.
2. Go to the **Source** frame.
3. Confirm the **OpCon database** is the database selection.
4. Select **Full** in the **Backup type** drop-down list for a complete backup.
5. Go to the **Backup set** frame.
6. Enter the *backup job name* in the **Name** text box.
7. Go to the **Destination** frame.
8. Select the **Disk** radio button.
9. Click **Add** to add the location and name of the backup file if the default destination is not desired. You should see the default directory for SQL backups listed in the **Select Backup Destination** window.
10. Enter, in the **File name** text box, a *file name* followed by  *.bak* file extension at the end of the file path. If this is not the desired location, enter the *full path* and *file name* followed by a *.bak* file extension (e.g., D:\\MSSQL\\Backup\\Opconxps.bak).
11. Click **OK** to accept the backup (.bak) filename.
12. Click the **Options** tab in the **Select a page** menu.
13. Go to the **Overwrite media** frame.
14. Select the **Append to the existing backup set** or **Overwrite all existing backup sets** radio button. Either option is acceptable. The database administrator should make this decision.
15. Click **OK**.
16. When the backup completes successfully, click **OK**.

## Manual Restoration

Following either an automatic or a manual backup, manually restore the database with the latest backup file.

### Manually Restoring the Database

When manually restoring the database, there are several issues to address:

- [Verifying the Latest Backup File](#Verifyin)
- [Stopping and Disabling Replication](#Stopping)
- [Restoring the Database](#Restorin)
- [Executing the Database Upgrade Scripts](#Executin)
- [Resetting SQL Login IDs](#Resettin)
- [Setting up Replication](#Setting)

#### Verifying the Latest Backup File

Verify the backup file is in the *default SQL Backup directory* on the machine where the database restoration occurs.

:::note
The default SQL Backup directory may vary based on the version of Microsoft SQL Server.
:::

##### Verify the Backup File

1. Log on to the OpCon database server as a *Windows user* with access to the database installation directories.
2. Right-click on **Start** and select **Explore**.
3. Browse to the drive and directory of the last backup's location.
4. If the backup is not on the machine where the restoration occurs, copy the backup file onto this machine.
5. Use menu path: **Organize \> Copy**.
6. Browse to the *target machine and directory* and use menu path: **Organize \> Paste**.

#### Stopping and Disabling Replication

If replication is not in use, skip this section. If replication is in use, stop replication and disable the OpCon database as a publisher. The installation script must be able to drop and recreate tables. No data is lost.

To disable replication for a **Push Subscription**, refer to the steps below. To disable replication for a **Pull Subscription**, refer to [Stop Replication with a Pull Subscription](#Stop_Replication_with_a_Pull_Subscription).

##### Stop Replication with a Push Subscription

On the Publishing Database Server:

1. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
2. In the Connect to Server window:
3. Select **Database Engine** in the **Server type** drop-down list.
4. Select the desired \[OpCon Publishing Database Server\] in the **Server name** drop-down list.
5. Select one of the following options in the **Authentication**drop-down list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority.
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box.
6. Click the **Connect** button.

##### Delete Subscription and Publication from the Local Publications

1. Expand (+) the **Replication** folder in the **Object Explorer** navigation pane.
2. Expand (+) the **Local Publications** folder.
3. Right-click on the **current subscription** and select **Delete**.
4. Click **Yes** to confirm the deletion.
5. Go to the right-hand frame.
6. Expand (+) the **Local Publications** folder.
7. Right-click on the **current publication** and select **Delete**.
8. Click **Yes** to confirm the deletion.

##### Stop Replication with a Pull Subscription

On the Subscribing Database Server:

1. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
2. On the Connect to Server screen: Select **Database Engine** in the **Server type** drop-down list.
3. Select the desired \[OpCon Subscribing Database Server\] in the **Server name** drop-down list.
4. Select one of the following options in the **Authentication**drop-down list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority.
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box.
5. Click the **Connect** button.

##### Delete Subscription from the Local Subscriptions

1. Expand (+) the **Replication** folder in the **Object Explorer** navigation pane.
2. Expand (+) the **Local Subscriptions** folder.
3. Right-click on the **current subscription** and select **Delete**.
4. Click **Yes**to confirm the deletion.

On the Publishing Database Server:

1. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
2. On the Connect to Server screen: Select **Database Engine** in the **Server type** drop-down list.
3. Select the \[OpCon Publishing Database Server\] in the **Server name** drop-down list.
4. Select one of the following options in the **Authentication**drop-down list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority.
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box.
5. Click the **Connect** button.

##### Delete the Publication from the Local Publications

1. Expand (+) the **Local Publications** folder in the **Object Explorer** navigation pane.
2. Right-click on the **current publication** and select **Delete**.
3. Click **Yes**to confirm the deletion.

##### Disable Replication

If publishing is still set up on the Publishing Database Server, complete the steps in this section to disable publishing.

On the Publishing Database Server:

1. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
2. On the Connect to Server screen: Select **Database Engine** in the **Server type** drop-down list.
3. Select the desired \[OpCon Publishing Database Server\] in the **Server name** drop-down list.
4. Select one of the following options in the **Authentication**drop-down list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority.
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box.
5. Click the **Connect** button.

##### Disable Replication

1. Right-click the **Replication** folder in the **Object Explorer** navigation pane.
2. Select **Disable Publishing and Distributions**.
3. Click **Next**.
4. Select the **Yes, disable publishing on this server** radio button.
5. Click **Next**.
6. Click **Next**.
7. Leave the settings at default.
8. Click **Next**.
9. Click **Finish**.
10. Watch as it processes until it completes successfully.
11. Click **Close**.

#### Restoring the Database

##### Restore the Database

On the OpCon Database Server:

1. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
2. In the Connect to Server window: Select **Database Engine** in the **Server type** drop-down list.
3. Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.
4. Select one of the following options in the **Authentication**drop-down list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority.
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box.
5. Click the **Connect** button.

##### Restore the Backup File

1. Go to the **Object Explorer** frame.
2. Expand (+) the **Databases** folder.
3. Right-click the **<database name\>** icon and choose **Tasks \> Restore \> Database**.
4. Verify that the **OpCon database** is selected in the **To database** combo box. If the **OpCon database** does not already exist in the **To database** combo box, enter the *database name*.
5. Go to the **Source for restore** frame.
6. Select the **Restore: From device** radio button.
7. Click the **ellipsis (...)** button beside the **From device** radio button to browse to the desired backup (.bak) file.
8. Select the desired **backup (.bak) file** in the **Backup location** box.
9. If the **backup (.bak) file** is not found, then click **Add**.
10. Browse through the folders and select the desired **backup (.bak) file**.
11. Click **OK**.
12. Click **OK**.
13. Go to the **Select the backup sets to restore** frame.
14. Select the desired **backup (.bak) file** checkbox.
15. Click the **Options** tab in the **Select a page** menu.
16. Select the **Overwrite the existing database** checkbox.
17. Go to the **Restore the database files as** frame.
18. Make sure that the file name and path are valid for the database's data and log files.
19. Go to the **Recovery state** frame.
20. Select the **Leave the database ready to use by rolling back uncommitted transactions. Additional transaction logs cannot be restored. (RESTORE WITH RECOVERY)** radio button.
21. Click **OK**.
22. When the restore completes successfully, click **OK**.

#### Executing the Database Upgrade Scripts

For information on running the Database Upgrade scripts, refer to [Update Database](../../utilities/Graphical-Utilities/SMA-OpCon-Configuration-Utility.md#Update_Database) in the **Utilities** online help.

#### Resetting SQL Login IDs

Following restoration, it is possible to have a mismatch of SQL Login IDs between the restored database and the SQL server. This mismatch prevents SAM's SQL Login ID (opconsam) and the graphical interface's SQL Login ID (opconui) from in to the database. To fix this problem, please complete the steps below.

##### Reset opconsam and opconui SQL Login IDs

On the OpCon Database Server:

1. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
2. In the Connect to Server window: Select **Database Engine** in the **Server type** drop-down list.
3. Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.
4. Select one of the following options in the **Authentication**drop-down list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority.
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box.
5. Click the **Connect** button.
6. In the Microsoft SQL Server Management Studio window: Click the **New Query** button.
7. Select the **OpCon Database** in the list on the toolbar at the top of the screen.
8. Go to the right-hand frame.
9. Enter the query: `dbo.sp_change_users_login 'update_one','opconsam','opconsam'`.
10. Click the **Execute** button in the toolbar or press **F5** to execute the query.
11. Go to the right-hand frame.
12. Enter the query: `dbo.sp_change_users_login 'update_one','opconui','opconui'`.
13. Click the **Execute** button in the toolbar or press **F5** to execute the query.

#### Setting up Replication

If replication was in use, refer to the Microsoft SQL Replication Setup topic. For information on setting up replication, refer to [Manual Setup for Microsoft SQL Replication](Manual-Setup-for-Microsoft-SQL-Replication.md).
