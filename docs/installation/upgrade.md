---
sidebar_label: 'Upgrade'
title: OpCon Server Upgrade
description: "Upgrading the OpCon server involves a series of ordered procedures that must be completed from beginning to end."
product_area: Installation
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Installation
last_updated: 2026-03-18
doc_type: procedural
---

# OpCon Server Upgrade

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

Upgrading the OpCon server involves a series of ordered procedures that must be completed from beginning to end. Skipping or reordering steps can result in an incomplete upgrade.

:::caution
Before beginning the upgrade, complete [Getting Started](./system-requirements.md).
:::

To complete the upgrade to this release, it is important to complete all of the procedures in this topic from beginning to end.

## When Would You Use It?

- To complete the upgrade to this release, it is important to complete all of the procedures in this topic from beginning to end

## Why Would You Use It?

- **OpCon Server**: To complete the upgrade to this release, it is important to complete all of the procedures in this topic from beginning to end

## Upgrade the OpCon Server

To upgrade the OpCon Server, complete the procedures in this section in the following order, complete the following steps:

1. [Prepare the Environment](#prepare-the-environment)
2. [Update the OpCon Server Interactively](#update-the-opcon-server-interactively)

### Prepare the Environment

To prepare for installing the OpCon Server updates:

- [Back up the OpCon Database](#back-up-the-opcon-database)
- [Stop Services and Manage Files](#stop-services-and-manage-files)
- [Stop and Disable Replication or Mirroring](#stop-and-disable-replication-or-mirroring)

#### Back up the OpCon Database

Continuous strongly recommends backing up the OpCon database before upgrading to the new release.

##### Locate the Server in Management Studio

On the OpCon Database Server:

1. Use menu path **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**

2. On the Connect to Server screen: Select **Database Engine** in the **Server type** list box
3. Select the \[OpCon Database Server\] in the **Server name** list box
4. In the Authentication section: Choose your authentication type and provide credentials
   - Log in as **sa** if you choose *SQL Server Authentication* **- or -**
   - Make sure the Windows User for Authentication has system administration privileges
5. Select the **Connect** button
6. In the Microsoft SQL Server Management Studio window: Expand (+) the **Databases** folder

7. Identify the OpCon database

##### Back Up the Database

###### Configure the Backup Source and Destination

To configure the backup source and specify the backup destination, complete the following steps:

1. Right-click the **OpCon database** and choose **Tasks \> Back Up**
2. Go to the **Source** frame
3. Confirm the **OpCon database** is selected and the **Backup type** is set to **Full**
4. Go to the **Backup set** frame
5. Enter the *backup job name* in the **Name** text box
6. Go to the **Destination** frame
7. Select the **Disk** radio button
8. Select **Add** to add the location and name of the backup file if the default destination is not desired. You should see the default directory for SQL backups listed in the **Select Backup Destination** window
9. Enter, in the **File name** text box, a *file name* followed by a *.bak* file extension at the end of the file path. If this is not the desired location, enter the *full path* and *file name* followed by a *.bak* file extension (e.g., D:\\MSSQL\\Backup\\Opconxps.bak)
10. Select **OK** to accept the backup (.bak) filename

###### Set Overwrite Options and Complete the Backup

To set the overwrite options and complete the backup, complete the following steps:

1. Select the **Options** tab in the **Select a page** menu
2. Go to the **Overwrite media** frame
3. Select the **Append to the existing backup set** or **Overwrite all existing backup sets** radio button. Either option is acceptable. The database administrator should make this decision
4. Select **OK**
5. When the backup completes successfully, select **OK**

#### Stop Services and Manage Files

##### Check for Running Jobs on the agent

On the SAM application server:

1. Use menu path: **Start \> Run**
2. Enter *cmd* to open a command window
3. Change the directory to the agent's directory
   :::tip Example

   ```cmd
   cd "c:\program files\opconxps\mslsam"
   ```

   :::
4. Enter *showrunning*
5. View the list of pid numbers and command lines of MSLSAM jobs
6. If running jobs exist, contact the OpCon administrator to determine if you should:
   - Wait for the processes to end **- or -**
   - Type *kill <pid\>* to kill the processes. For more information, refer to [Kill Command](https://help.smatechnologies.com/opcon/agents/windows/latest/Files/Agents/Microsoft/Kill-Command.md) in the **Microsoft agent** online help
7. Repeat Steps 4 - 6 until *showrunning* indicates **Jobs Running** is **0**
8. **Close ☒** the **command** window

##### Stop the SMA Services

1. Use menu path: **Start \> Administrative Tools \> Server Manager**

2. Expand (+) the **Configuration** option and select **Services**
3. Scroll down to the *SMA Services* in the **Services** list
4. Select each **SMA** service and select the **Stop** (■) button

##### Back Up Files

If the **StopRepl.cmd** or **StopRepl_WinAuth.cmd** file is in use in the environment to stop replication, back up the files for reference after the upgrade.

On the SAM application server:

1. Right-click on the**Start** button and select **Explore** from the menu
   :::note
   On Server 2012, you must right-click on the Start menu (Windows logo) and select File Explorer from the menu.
   :::
2. Browse to the <Configuration Directory\>\\**Utilities**\\**Database**\\ directory
3. Press the **Ctrl** key on the keyboard then select the **StopRepl.cmd** file (if in use)
4. Use menu path: **Organize \> Cut**
   :::note
   On Server 2012, you must use menu path: Home > Cut.
   :::
5. Find a location outside of the **Database** directory
   :::note
   The files must be removed from the Database directory to ensure that the new files from the upgrade are installed.
   :::
6. Use menu path: **Organize \> Paste**
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

###### Run the Command Scripts to Remove Mirroring

1. Use menu path: **Start \> Run**
2. Enter *cmd* in the **Open** text box and select **OK**
3. In the **cmd** window, change directory to the OpCon database script directory

   :::tip Example

   ```cmd
   cd c:\programdata\opconxps\utilities\database
   ```

   :::

4. Enter *SMA_DBMirrorRemove.cmd*
5. Read the logs for each of the SQL scripts to verify success

##### Remove Database Replication

:::note
If replication is not in use, skip this section.
:::

If replication is in use, stop replication and disable the OpCon database as a publisher to allow the installation script to drop and recreate tables. No data is lost during conversion. Perform the procedures in this section.

To disable replication for a Push Subscription, refer to the procedure below. To disable replication for a Pull Subscription, refer to [Stop Replication with a Pull Subscription](#Stop_Replication_with_a_Pull_Subscription).

###### Stop_Replication_with_a_Push_Subscription

On the Publishing Database Server:

1. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**

2. On the Connect to Server screen: Select **Database Engine** in the **Server type** list box
3. Select the \[OpCon Publishing Server\] in the **Server name** list box
4. In the Authentication section, choose your authentication type and provide credentials
   - Log in as **sa** if you choose *SQL Server Authentication* **- or -**
   - Make sure the Windows User for Authentication has system administration privileges
5. Select the **Connect** button
6. Expand (+) the **Replication** folder in the **Object Explorer** navigation pane

7. Expand (+) the **Local Publications** folder
8. Right-click on the **current publication** and select **Delete**
9. Select **Yes** to confirm the deletion

###### Stop_Replication_with_a_Pull_Subscription

On the Subscribing Database Server:

1. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**

2. On the Connect to Server screen: Select **Database Engine** in the **Server type** list box
3. Select the \[OpCon Subscribing Server\] in the **Server name** list box
4. In the Authentication section, choose your authentication type and provide credentials
   - Log in as **sa** if you choose *SQL Server Authentication* **- or -**
   - Make sure the Windows User for Authentication has system administration privileges
5. Select the **Connect** button
6. Expand (+) the **Replication** folder in the **Object Explorer** navigation pane

7. Expand (+) the **Local Subscriptions** folder
8. Right-click on the **current subscription** and select **Delete**
9. Select **Yes** to confirm the deletion

On the Publishing Database Server:

1. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**
2. On the Connect to Server screen: Select **Database Engine** in the **Server type** list box
3. Select the \[OpCon Publishing Server\] in the **Server name** list box
4. In the Authentication section, choose your authentication type and provide credentials
   - Log in as **sa** if you choose *SQL Server Authentication* **- or -**
   - Make sure the Windows User for Authentication has system administration privileges
5. Select the **Connect** button
6. Expand (+) the **Local Publications** folder in the **Object Explorer** navigation pane

7. Right-click on the **current publication** and select **Delete**
8. Select **Yes** to confirm the deletion

###### Disable Replication

If publishing is still set up on the Publishing Database Server, complete the steps in this section to disable publishing.

On the Publishing Database Server:

1. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**
2. On the Connect to Server screen: Select **Database Engine** in the **Server type** list box
3. Select the \[OpCon Publishing Server\] in the **Server name** list box
4. In the Authentication section, choose your authentication type and provide credentials
   - Log in as **sa** if you choose *SQL Server Authentication* **- or -**
   - Make sure the Windows User for Authentication has system administration privileges
5. Select the **Connect** button
6. Right-click the **Replication** folder in the **Object Explorer** navigation pane and select **Disable Publishing and Distribution**

7. Select **Next**
8. Select the **Yes, disable publishing on this server** radio button and select **Next**
9. Select **Next**
10. Leave the settings at default and select **Next**
11. Select **Finish**

12. Watch as it processes until it completes successfully and select **Close**

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
When high numbers of agents are in the database, multiple SMANetCom instances can improve performance. To set up multiple SMANetComs, add another section for SMAServMan and give it a unique name. For more information, refer to [TLS Security](../server-programs/network-communications.md#tls) in the **Server Programs** online help.
:::

On the OpCon Server:

1. Log in as a *Windows user with Local Administrative Rights*
2. Exit all running applications on the desktop

3. If upgrading from a version lower than 20.00, uninstall the SMA OpCon Database Scripts, SMA OpCon SAM, SMA OpCon Solution Manager, and SMA OpCon Documentation components
   :::note
   Installation of the SMA OpCon Database Scripts, SMA OpCon SAM, and SMA OpCon Solution Manager components have been consolidated into a single installer. The **SMA OpCon Install.exe** file installs and configures all three components. SMA OpCon Documentation has been deprecated.
   :::
4. Download the OpCon Web Installer (OWI) zip file from [https://github.com/smatechnologies/opcon-web-installer](https://github.com/smatechnologies/opcon-web-installer).
5. Unzip the *OpCon Web Installer.zip* flie
6. Run the **OpCon Web Installer.exe** file to download and open the installers for the desired components. SMA OpCon runs before any other component installer, if selected
7. Complete the installer wizard for each component you selected in the OWI. For details about the specific installers, refer to [Component Installations](./components.md)

## Security Considerations

### Authentication

Connecting to SQL Server to perform upgrade-related operations (backing up the database, removing replication or mirroring, disabling publishing) requires either the sa account for SQL Server Authentication or a Windows user with system administration privileges. All SQL Server Management Studio steps during the upgrade use these elevated credentials.

Installing the OpCon Server upgrade requires a Windows user with Local Administrative Rights on the OpCon Server machine.

### Data Security

Continuous strongly recommends backing up the OpCon database before upgrading to the new release. The backup must be a full backup and should be stored in a location separate from the production database.

Before the OpCon database can be upgraded, database replication and mirroring must be disabled. Replication scripts (StopRepl.cmd and supporting SQL files) in use in the environment must be backed up before the upgrade, as the upgrade replaces the files in the Database directory. The backed-up copies serve as a reference for reconfiguring replication after the upgrade completes.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## Operations

### Common Tasks

- **Back up the OpCon database before upgrading**: In SQL Server Management Studio, right-click the OpCon database, choose **Tasks > Back Up**, set Backup type to **Full**, and save with a `.bak` extension (e.g., `D:\MSSQL\Backup\Opconxps.bak`).
- **Stop SMA services before upgrading**: Go to **Start > Administrative Tools > Server Manager > Configuration > Services**, select each SMA service, and click **Stop**.
- **Check for running jobs before stopping services**: Run `showrunning` from the agent directory; repeat until **Jobs Running** shows `0`. Use `kill <pid>` to terminate any remaining jobs if approved by the OpCon administrator.

### Alerts and Log Files

- Back up `StopRepl.cmd` and `StopRepl_WinAuth.cmd` from `<Configuration Directory>\Utilities\Database\` to a location outside the Database directory before upgrading; the upgrade installer replaces these files.
- Replication and mirroring must be completely disabled before upgrading: run `SMA_DBMirrorRemove.cmd` to remove mirroring and delete the current SQL publication and/or subscription to remove replication.
- When upgrading from a version below 20.00, manually uninstall the SMA OpCon Database Scripts, SMA OpCon SAM, SMA OpCon Solution Manager, and SMA OpCon Documentation components before running the new installer.

## Exception Handling

**StopRepl.cmd and supporting SQL files are overwritten during the upgrade if not backed up first** — The upgrade installer replaces the files in the Database directory, including StopRepl.cmd and StopRepl_WinAuth.cmd; if these are not moved out of the Database directory before upgrading, the customized replication stop configuration is lost — Back up the StopRepl.cmd and supporting SQL files to a location outside the Database directory before starting the upgrade; use the backed-up copies as a reference to reconfigure the new files after the upgrade completes.

**Upgrade cannot proceed if replication or mirroring is still enabled on the OpCon database** — Before the OpCon database can be upgraded, database replication and mirroring must be completely disabled; attempting to upgrade with these active may cause the installer to fail — Disable replication (push or pull subscription) and remove mirroring before running the OpCon Server upgrade installer.

**Upgrade from a version lower than 20.00 requires manual uninstall of legacy components** — When upgrading from a version below 20.00, the SMA OpCon Database Scripts, SMA OpCon SAM, SMA OpCon Solution Manager, and SMA OpCon Documentation components must be uninstalled before running the new installer — Uninstall all four legacy components before running the consolidated SMA OpCon Install.exe file.

## FAQs

**Q: What should be done before beginning an OpCon server upgrade?**

Complete the Getting Started guide (system-requirements.md) before beginning the upgrade to ensure all system requirements and prerequisites are still met.

**Q: In what order should the upgrade procedures be completed?**

Complete the procedures in this order: first Prepare the Environment, then Update the OpCon Server Interactively. All procedures in the topic must be completed from beginning to end.

**Q: Where should user scripts and custom programs be stored to survive upgrades?**

Place user scripts in `<Configuration Directory>\Scripts\` and custom programs in `<Target Directory>\OpConxps\Binn\` to prevent them from being deleted during the upgrade.

## Glossary

**TLS (Transport Layer Security)**: An encryption protocol used to secure TCP/IP communications between SMANetCom and agents, ensuring that job start and status data is transmitted safely.

**SMANetCom (SMA Network Communications Module)**: Handles TCP/IP communication of platform-specific automation information between SAM and all agents. Uses database tables to maintain reliable communication and data integrity.

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.
