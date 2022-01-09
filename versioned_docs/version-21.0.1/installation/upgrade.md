---
sidebar_label: 'Upgrade'
---

# OpCon Server Upgrade

:::caution
Before beginning the upgrade, complete [Getting Started](./system-requirements.md).
:::

In order to complete the upgrade to this release, it is important to complete all of the procedures in this topic from beginning to end.

## Upgrade the OpCon Server

To upgrade the OpCon Server, complete the procedures in this section in the following order:

1. [Prepare the Environment](#Prepare)
2. [Update the OpCon Server Interactively](#Update)

### Prepare the Environment

To prepare for installing the OpCon Server updates:

- [Back up the OpCon Database](#Back)
- [Stop Services and Manage Files](#Stop)
- [Stop and Disable Replication or Mirroring](#Stop2)

#### Back up the OpCon Database

SMA Technologies strongly recommends backing up the OpCon database before upgrading to the new release.

##### Locate the Server in Management Studio

On the OpCon Database Server:

1. Use menu path **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**.
2. On the Connect to Server screen: Select **Database Engine** in the **Server type** list box.
3. Select the \[OpCon Database Server\] in the **Server name** list box.
4. In the Authentication section: Choose your authentication type and provide credentials.
   - Log in as **sa** if you choose *SQL Server Authentication* **- or -**
   - Make sure the Windows User for Authentication has system administration privileges.
5. Click the **Connect** button.
6. In the Microsoft SQL Server Management Studio window: Expand (+) the **Databases** folder.
7. Identify the OpCon database.

##### Back Up the Database

1. Right-click the **OpCon database** and choose **Tasks \> Back Up**.
2. Go to the **Source** frame.
3. Confirm the **OpCon database** is selected and the **Backup type** is set to **Full**.
4. Go to the **Backup set** frame.
5. Enter the *backup job name* in the **Name** text box.
6. Go to the **Destination** frame.
7. Select the **Disk** radio button.
8. Click **Add** to add the location and name of the backup file if the default destination is not desired. You should see the default directory for SQL backups listed in the **Select Backup Destination** window.
9. Enter, in the **File name** text box, a *file name* followed by a *.bak* file extension at the end of the file path. If this is not the desired location, enter the *full path* and *file name* followed by a *.bak* file extension (e.g., D:\\MSSQL\\Backup\\Opconxps.bak).
10. Click **OK** to accept the backup (.bak) filename.
11. Click the **Options** tab in the **Select a page** menu.
12. Go to the **Overwrite media** frame.
13. Select the **Append to the existing backup set** or **Overwrite all existing backup sets** radio button. Either option is acceptable. The database administrator should make this decision.
14. Click **OK**.
15. When the backup completes successfully, click **OK**.

#### Stop Services and Manage Files

##### Check for Running Jobs on the LSAM

On the SAM application server:

1. Use menu path: **Start \> Run**.
2. Enter *cmd* to open a command window.
3. Change the directory to the LSAM's directory.
   :::tip Example

   ```cmd
   cd "c:\program files\opconxps\mslsam"
   ```

   :::
4. Enter *showrunning*.
5. View the list of pid numbers and command lines of MSLSAM jobs.
6. If running jobs exist, contact the OpCon administrator to determine if you should:
   - Wait for the processes to end **- or -**
   - Type *kill <pid\>* to kill the processes. For more information, refer to [Kill Command](https://help.smatechnologies.com/opcon/agents/windows/latest/Files/Agents/Microsoft/Kill-Command.md) in the **Microsoft LSAM** online help.
7. Repeat Steps 4 - 6 until *showrunning* indicates **Jobs Running** is **0**.
8. **Close ☒** the **command** window.

##### Stop the SMA Services

1. Use menu path: **Start \> Administrative Tools \> Server Manager**.
2. Expand (+) the **Configuration** option and click **Services**.
3. Scroll down to the *SMA Services* in the **Services** list.
4. Click each **SMA** service and click the **Stop** (■) button.

##### Back Up Files

If the **StopRepl.cmd** or **StopRepl_WinAuth.cmd** file is in use in the environment to stop replication, back up the files for reference after the upgrade.

On the SAM application server:

1. Right-click on the**Start** button and select **Explore** from the menu.
   :::note
   On Server 2012, you must right-click on the Start menu (Windows logo) and select File Explorer from the menu.
   :::
2. Browse to the <Configuration Directory\>\\**Utilities**\\**Database**\\ directory.
3. Press the **Ctrl** key on the keyboard then click the **StopRepl.cmd** file (if in use).
4. Use menu path: **Organize \> Cut**.
   :::note
   On Server 2012, you must use menu path: Home > Cut.
   :::
5. Find a location outside of the **Database** directory.
   :::note
   The files must be removed from the Database directory to ensure that the new files from the upgrade are installed.
   :::
6. Use menu path: **Organize \> Paste**.
   :::note
   On Server 2012, you must use menu path: Home > Paste.
   :::
   :::note
   The backed-up copy of the StopRepl.cmd and supporting SQL files can be used as a reference for the correct configuration of the new files after upgrade.
   :::

#### Stop and Disable Replication or Mirroring

Before the OpCon database can be upgraded, replication and mirroring must be disabled. If neither replication nor mirroring are employed in this environment, skip forward to [Update the OpCon Server Interactively](#Update).

##### Remove Database Mirroring

:::note
If mirroring is not in use, skip this section.
:::

Before completing the procedure to remove mirroring, be sure to complete the procedure [Modify SMA_DBMirrorRemove.cmd](../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Mirroring.md#Modify_SMA_DBMirrorRemove.cmd) in the **Database Information** online help.

###### Execute the Command Scripts to Remove Mirroring

1. Use menu path: **Start \> Run**.
2. Enter *cmd* in the **Open** text box and click **OK**.
3. In the **cmd** window, change directory to the OpCon database script directory.

   :::tip Example

   ```cmd
   cd c:\programdata\opconxps\utilities\database
   ```

   :::

4. Enter *SMA_DBMirrorRemove.cmd*.
5. Read the logs for each of the SQL scripts to verify success.

##### Remove Database Replication

:::note
If replication is not in use, skip this section.
:::

If replication is in use, stop replication and disable the OpCon database as a publisher to allow the installation script to drop and recreate tables. No data is lost during conversion. Perform the procedures in this section.

To disable replication for a Push Subscription, refer to the procedure below. To disable replication for a Pull Subscription, refer to [Stop Replication with a Pull Subscription](#Stop_Replication_with_a_Pull_Subscription).

###### Stop_Replication_with_a_Push_Subscription

On the Publishing Database Server:

1. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**.
2. On the Connect to Server screen: Select **Database Engine** in the **Server type** list box.
3. Select the \[OpCon Publishing Server\] in the **Server name** list box.
4. In the Authentication section, choose your authentication type and provide credentials.
   - Log in as **sa** if you choose *SQL Server Authentication* **- or -**
   - Make sure the Windows User for Authentication has system administration privileges.
5. Click the **Connect** button.
6. Expand (+) the **Replication** folder in the **Object Explorer** navigation pane.
7. Expand (+) the **Local Publications** folder.
8. Right-click on the **current publication** and select **Delete**.
9. Click **Yes** to confirm the deletion.

###### Stop_Replication_with_a_Pull_Subscription

On the Subscribing Database Server:

1. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**.
2. On the Connect to Server screen: Select **Database Engine** in the **Server type** list box.
3. Select the \[OpCon Subscribing Server\] in the **Server name** list box.
4. In the Authentication section, choose your authentication type and provide credentials.
   - Log in as **sa** if you choose *SQL Server Authentication* **- or -**
   - Make sure the Windows User for Authentication has system administration privileges.
5. Click the **Connect** button.
6. Expand (+) the **Replication** folder in the **Object Explorer** navigation pane.
7. Expand (+) the **Local Subscriptions** folder.
8. Right-click on the **current subscription** and select **Delete**.
9. Click **Yes** to confirm the deletion.

On the Publishing Database Server:

1. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**.
2. On the Connect to Server screen: Select **Database Engine** in the **Server type** list box.
3. Select the \[OpCon Publishing Server\] in the **Server name** list box.
4. In the Authentication section, choose your authentication type and provide credentials.
   - Log in as **sa** if you choose *SQL Server Authentication* **- or -**
   - Make sure the Windows User for Authentication has system administration privileges.
5. Click the **Connect** button.
6. Expand (+) the **Local Publications** folder in the **Object Explorer** navigation pane.
7. Right-click on the **current publication** and select **Delete**.
8. Click **Yes** to confirm the deletion.

###### Disable Replication

If publishing is still set up on the Publishing Database Server, complete the steps in this section to disable publishing.

On the Publishing Database Server:

1. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**.
2. On the Connect to Server screen: Select **Database Engine** in the **Server type** list box.
3. Select the \[OpCon Publishing Server\] in the **Server name** list box.
4. In the Authentication section, choose your authentication type and provide credentials.
   - Log in as **sa** if you choose *SQL Server Authentication* **- or -**
   - Make sure the Windows User for Authentication has system administration privileges.
5. Click the **Connect** button.
6. Right-click the **Replication** folder in the **Object Explorer** navigation pane and select **Disable Publishing and Distribution**.
7. Click **Next**.
8. Select the **Yes, disable publishing on this server** radio button and click **Next**.
9. Click **Next**.
10. Leave the settings at default and click **Next**.
11. Click **Finish**.
12. Watch as it processes until it completes successfully and click **Close**.

### Update the OpCon Server Interactively

To update the OpCon server components, perform the procedures in this section.

#### Install the OpCon Server

:::note
Upgrades can be considered major or minor depending on the version numbers updated.

**Major Upgrade**:

Qualifies as an upgrade where the first and/or second number in the version changes, e.g., upgrading from 1.0.0 to 1.1.0 or upgrading from 1.0.0 to 2.0.0, and the package code changes in the installer.

During a major upgrade, if the installer has configuration screens, they will be displayed for any new settings to be set or existing settings to be changed.

All scripts that control file importing, file merging, and updating configuration options will be run.

**Minor Upgrade**:

Qualifies as an upgrade where only the third number in the version changes, e.g., upgrading from 1.0.0 to 1.0.1 or upgrading from 1.2.3 to 1.2.4, and the package code in the installer does not change.

During a minor upgrade, the installer will display a welcome screen and then immediately proceed to the ready to install screen. No configuration screens will be presented.

All scripts that control file importing, file merging, and updating configuration options are disabled.
:::

:::note
The SAM installation configures the SMA Service Manager as a stand-alone service. If manual or hot failover is desired, refer to [Failover Scenarios](../Files/Database-Information/Failover-Scenarios.md) in the **Database Information** online help.
:::

:::note
When high numbers of LSAMs are in the database, multiple SMANetCom instances can improve performance. To set up multiple SMANetComs, add another section for SMAServMan and give it a unique name. For more information, refer to [TLS Security](../server-programs/network-communications.md#tls) in the **Server Programs** online help.
:::

On the OpCon Server:

1. Log in as a *Windows user with Local Administrative Rights*.
2. Exit all running applications on the desktop.
3. If upgrading from a version lower than 20.00, uninstall the SMA OpCon Database Scripts, SMA OpCon SAM, SMA OpCon Solution Manager, and SMA OpCon Documentation components.
   :::note
   Installation of the SMA OpCon Database Scripts, SMA OpCon SAM, and SMA OpCon Solution Manager components have been consolidated into a single installer. The **SMA OpCon Install.exe** file installs and configures all three components. SMA OpCon Documentation has been deprecated.
   :::
4. Download the OpCon Web Installer (OWI) zip file from [https://github.com/smatechnologies/opcon-web-installer](https://github.com/smatechnologies/opcon-web-installer).
5. Unzip the *OpCon Web Installer.zip* flie.
6. Run the **OpCon Web Installer.exe** file to download and launch the installers for the desired components. SMA OpCon runs before any other component installer, if selected.
7. Complete the installer wizard for each component you selected in the OWI. For details about the specific installers, refer to [Component Installations](./components.md).
