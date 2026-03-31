---
title: SMA OpCon Configuration Utility
description: "The SMA OpCon Configuration Utility configures scripts and configuration files on machines running SMA OpCon software."
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

# SMA OpCon Configuration Utility

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The SMA OpCon Configuration Utility configures scripts and configuration files on machines running SMA OpCon software. It is most useful on the OpCon Server and on machines with multiple agents (Agents). This program is automatically installed on the OpCon Server. To install it on another machine, run the setup program from the OpCon installation media:

`<media>:\Install\Configuration Utility\SMA OpCon Configuration Utility Install.exe`

To open the utility, go to: **Start \> All Programs \> Opconxps \> Utilities \> SMA OpCon Configuration Utility**.

## When Would You Use It?

- The SMA OpCon Configuration Utility configures scripts and configuration files on machines running SMA OpCon software

## Why Would You Use It?

- **SMA OpCon**: The SMA OpCon Configuration Utility configures scripts and configuration files on machines running SMA OpCon software

## Menus

### File

- **Exit**: Closes the utility

### Tools

- **Configure Database Scripts**: Refer to the next section
- **Configure Enterprise Manager**: Refer to the [Enterprise Manager Screen](#Enterpri) section
- **Configure Agents**: Refer to the [Agents Screen](#Agents) section

### Help

- **About**: Displays product versions and Technical Support information

## Database Scripts Screen

This screen contains fields for configuring scripting variables used when running database scripts.

### Common

- **DB Scripts Folder**: Path to the ```<Configuration Directory>\Utilities\Database``` folder, which contains the SMA_SET\* scripting variables files
- **SQL Server Login**: Settings passed as parameters to DB_Setup, DB_Setup_WinAuth, DB_Update, and DB_Update_WinAuth command files
  - **Use Win Auth**: Use Windows Authentication to set up or update the database
  - **Use SQL sa**: Use the SQL "sa" login to set up or update the database
  - **Password**: If "Use SQL sa" is selected, enter the "sa" password before selecting **Create Database** or **Update Database**
    - **Show Password**: Select to display the sa password in clear text
- **Create Database**: Runs DB_Setup or DB_Setup_WinAuth to create a new OpCon database. The utility selects the correct command based on the SQL Server Login settings. This button is disabled until all scripting variables files are Verified and **Update Scripts** has been selected. The utility shells out to a command window and waits while the command processes
- **Update Database**: Runs DB_Update or DB_Update_WinAuth to update an existing OpCon database with the latest SQL scripts. The utility selects the correct command based on the SQL Server Login settings. This button is disabled until all scripting variables files are Verified and **Update Scripts** has been selected. The utility shells out to a command window and waits while the command processes

### Profiles

The Profiles section saves all custom information across all five tabs for the database environment. Save your profile because future Continuous upgrades overwrite the scripting variables command files. Applying a saved profile restores all custom settings after an upgrade.

- **New**: Select **New** to define a name for the profile. Changes save automatically
- **Delete**: Select a profile name, then select **Delete** to remove it

### Buttons

- **Update Scripts**: Saves all settings to the scripting variables files
- **Cancel**: Aborts any changes to the file

### Environment Tab

Contains settings required for new and upgrade environments. All database command files reference these variables.

- **OpConxps DB Server Name**: Name of the server hosting the OpCon database (e.g., OpConServer)
- **OpConxps SQL Instance**: Name of the SQL Server instance hosting the OpCon database
  - For the default SQL instance, use the same value as OpConxps DB Server Name (e.g., OpConServer)
  - For a named instance, use the syntax: ServerName\\InstanceName (e.g., OpConServer\\SQL 2012)
- **Database Name**: The OpCon database name (e.g., OPCONXPS)
- **opconsam Password**: Password for the opconsam SQL user created by the SQL authentication script
- **opconui Password**: Password for the opconui SQL user created by the SQL authentication script
- **Environment Variables Verified**: Select this option to confirm all settings on the tab are correct

### Installation Tab

Contains settings required to use the **Create Database** button. These variables provide instructions for creating the database and its files on the SQL Database Server.

- **Path to Database Data File**: Location of the physical database data file on the SQL database server
  - Sample value: ```C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\OPCONXPS_Data.MDF```
  - *(Optional)* If the SAM and database are on the same server, select the browse button (...) to Go to the SQL Data directory. The utility appends "OPCONXPS_Data.MDF" to the path automatically
- **Initial DB Data File Size**: Initial size in megabytes for the database data file
- **DB Data File Growth**: Percentage increment by which the database data file expands when full
- **Path to Database Log File**: Location of the physical database transaction log file on the SQL database server
  - Sample value: ```C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\OPCONXPS_Log.LDF```
  - *(Optional)* If the SAM and database are on the same server, select the browse button (...) to Go to the SQL Data directory. The utility appends "OPCONXPS_Log.LDF" to the path automatically
- **Initial DB Log File Size**: Initial size in megabytes for the database transaction log file
- **Maximum DB Log File Size**: Maximum size in megabytes beyond which the transaction log cannot grow
- **DB Log File Growth**: Percentage increment by which the transaction log file expands when full
- **Installation Variables Verified**: Select this option to confirm all settings on the tab are correct

### Maintenance Tab

Contains settings required for the database maintenance command files provided by Continuous. These command files are automated with the SMAUtility schedule. For more information, refer to [SMAUtility Schedule](../../objects/schedules.md#smautility-schedule) in the **Concepts** online help.

- **Path to Full Backup File**: Location of the full database backup file on the SQL database server
  - Sample value: ```C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\SMADB_Backup.bak```
  - *(Optional)* If the SAM and database are on the same server, select the browse button (...) to Go to the SQL Data directory. The utility appends "SMADB_Backup.bak" to the path automatically
- **Path to Transaction Log Backup File**: Location of the transaction log backup file on the SQL database server
  - Sample value: ```C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\SMATLog_Backup.bak```
  - *(Optional)* If the SAM and database are on the same server, select the browse button (...) to Go to the SQL Data directory. The utility appends "SMATLog_Backup.bak" to the path automatically
- **DB Backup User**: SQL user for database backups when SQL authentication scripts are automated
- **DB Backup Password**: Password for the DB Backup User
- **DB Restore User**: SQL user for database restores when SQL authentication scripts are automated
- **DB Restore Password**: Password for the DB Restore User
- **Path to System DB Backup File**: Location of the system database backup file on the SQL database server
  - Sample value: ```C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Backup\SystemDB_Backup.bak```
  - *(Optional)* If the SAM and database are on the same server, select the browse button (...) to Go to the SQL Data directory. The utility appends "SystemDB_Backup.bak" to the path automatically
- **Maintenance Variables Verified**: Select this option to confirm all settings on the tab are correct

### Mirroring Tab

Contains settings required for the database mirroring command files provided by Continuous. These command files are automated with the SMAMirroring schedule. For more information, refer to [Setup for Automatic Microsoft SQL Mirroring](../../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Mirroring.md) in the **Database Information** online help.

- **Principal Server Name**: Name of the server hosting the principal OpCon database
    - Default: Principal server hostname
- **Principal Endpoint Port**: TCP/IP port for the principal server to communicate with the mirror server
    - Default: 7022
- **Fully Qualified Principal Computer Name**: Fully qualified name for the principal database server, including host name, primary DNS suffix, and endpoint port number
    - Default: 'TCP://hostname.PrimaryDNSSuffix:EndpointPortNumber'
    - Determine the Primary DNS Suffix by running **IPCONFIG /ALL** from a command prompt on the principal server
- **Login For Principal Service**: Windows user account the Principal SQL Server Service uses
    - Default: ```DOMAIN\user```
- **Principal SQL Instance**: SQL Server instance hosting the principal OpCon database. For the default instance, use the same value as OpConxpsDBServerName. For a named instance, use the syntax: ```ServerName\InstanceName```
    - Default: Principal SQL Server Instance Name
    :::note
    The full Server Name and Instance Name display in SQL Management Studio for all registered SQL servers.
    :::
- **Full Backup Share On Mirror**: Full UNC path to the share for mirroring files on the principal server
    - ```\\Principal server hostname\sharename\```
- **Tran Log Backup Share On Mirror**: Full UNC path to the share for transaction log files on the principal server
    - ```\\Principal server hostname\sharename\```
- **Mirror Server Name**: Name of the server hosting the mirrored OpCon database
    - Default: Mirror Server hostname
- **Mirror Endpoint Port**: TCP/IP port for the mirror server to communicate with the principal server
    - Default: 7022
- **Fully Qualified Mirror Computer Name**: Fully qualified name for the mirror database server, including host name, primary DNS suffix, and endpoint port number
    - Default: 'TCP://hostname.PrimaryDNSSuffix:EndpointPortNumber'
- **Login For Mirror Service**: Windows user account the Mirror SQL Server Service uses
    - Default: ```DOMAIN\user```
- **Mirror SQL Instance**: SQL Server instance hosting the mirror OpCon database. For the default instance, use the same value as OpConxpsDBServerName. For a named instance, use the syntax: ```ServerName\InstanceName```
    - Default: Mirror SQL Server Instance Name
    :::note
    The full Server Name and Instance Name display in SQL Management Studio for all registered SQL servers.
    :::
- **WitnessServerName**: Name of the server hosting the witness database server
    - Default: Witness Server hostname
    :::note
    If no Witness Server is used, the Witness Server fields are not required.
    :::
- **WitnessEndpointPort**: TCP/IP port for the witness server to communicate with the principal server
    - Default: 7022
- **FullyQualifiedWitnessComputerName**: Fully qualified name for the witness database server, including host name, primary DNS suffix, and endpoint port number
    - Default: 'TCP://hostname.PrimaryDNSSuffix:EndpointPortNumber'
- **LoginForWitnessService**: Windows user account the Witness SQL Server Service uses
    - Default: ```DOMAIN\user```
- **WitnessSQLInstance**: SQL Server instance hosting the witness OpCon database. For the default instance, use the same value as OpConxpsDBServerName. For a named instance, use the syntax: ```ServerName\InstanceName```
    - Default: Witness SQL Server Instance Name
    :::note
    The full Server Name and Instance Name display in SQL Management Studio for all registered SQL servers.
    :::
- **Database Name**: Name of the database on the principal server (same name used on the mirror server)
    - Default: Database name
- **Path to Full Backup File**: Path and file name of the full database backup file on the principal SQL database server
    - Default: Path to full database backup location on principal
    :::note
    Default path for SQL Server database backups: ```C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\BACKUP```
    :::
- **Path to Transaction Log Backup File**: Path and file name of the transaction log backup file on the principal SQL database server
    - Default: Path to full transaction log backup location on principal
    :::note
    Default path for SQL 2008 database backups: ```C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\BACKUP```
    :::
- **DB Mirroring Scripts Directory**: Configuration directory where the database mirroring scripts exist on the server
    - Default: ```C:\ProgramData\OpConxps\Utilities\Database\```
    :::note
    The Configuration Directory location depends on where programs were installed. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
    :::
- **DB Mirroring Monitor Update Period**: Interval in seconds at which database mirroring monitor statistics are updated
    - Default: 5
- **Mirroring Variables Verified**: Select this option to confirm all settings on the tab are correct

### Replication Tab

Contains settings required for the database replication command files provided by Continuous. These command files are automated with the SMAReplication schedule. For more information, refer to [Setup for Automatic Microsoft SQL Replication](../../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Replication.md) in the **Database Information** online help.

- **Distributor Server Name**: Name of the server hosting the SQL Server instance used as the distributor
- **Distributor SQL Instance**: Name of the SQL Server instance used as the distributor. For the default instance, this value matches the host name. For a named instance, use the syntax: ```DistributorHostName\InstanceName``` (e.g., ```ReplDistributor\SQLReplication```)
- **Login For Distributor Service**: Windows user account under which the SQL Server service runs on the distributor
- **REPLDATA Folder**: Folder where the snapshot agent writes data to be replicated
  - Default: ```\\<DistributorServerName>\C$\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\repldata```
  - Continuous recommends creating a share on the repldata folder and using: ```\\<DistributorServerName>\repldataShareName```
- **Path to Distribution Data File**: Full path (excluding filename) to the directory for the distribution.mdf file
- **Path to Distribution Log File**: Full path (excluding filename) to the directory for the distribution.ldf file
- **Publisher Server Name**: Name of the server hosting the SQL Server instance used as the publisher
- **Publisher SQL Instance**: Name of the SQL Server instance used as the publisher. For the default instance, this value matches the host name. For a named instance, use the syntax: ```PublisherHostName\InstanceName``` (e.g., ```MyReplPublisher\SQLReplication```)
- **Publication Database Name**: Name of the database to be replicated. If the default database name was used, this value is OPCONXPS
- **Publication Name**: Name given to the publication of OpCon database tables to be replicated. Typically matches the Publication Database Name. If the default database name was used, this value is OPCONXPS
- **Login For Publisher Service**: Windows user account under which the SQL Server service runs on the publisher
- **Subscriber Server Name**: Name of the server hosting the SQL Server instance used as the subscriber
- **Subscriber SQL Instance**: Name of the SQL Server instance used as the subscriber. For the default instance, this value matches the host name. For a named instance, use the syntax: ```SubscriberHostName\InstanceName``` (e.g., ```MyReplSubscriber\SQLReplication```)
- **Subscription Database Name**: Name of the database to replicate to. Continuous recommends using the same name as the publishing database. If the default was used, this value is OPCONXPS
- **Login For Subscriber Service**: Windows user account under which the SQL Server service runs on the subscriber
- **OpConxpsServer Name**: Name of the computer where the OpCon SAM and Supporting Services are running. This may differ from the database servers involved in replication
- **DB Replication Scripts Directory**: Directory containing the SQL scripts for setting up and tearing down replication. If OpCon was installed in the default location, this value is ```'C:\Program Files\OpConxps\Utilities\Database'```
- **Run Snapshot Agent As**: Windows Domain user the Snapshot Agent runs as. For best practices and privileges, refer to [Considerations](../../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Replication.md#Consider) in the **Database Information** online help. Use the syntax: ```domain\user```
- **Run Log Reader Agent As**: Windows Domain user the Log Reader Agent runs as. For best practices and privileges, refer to [Considerations](../../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Replication.md#Consider) in the **Database Information** online help. Use the syntax: ```domain\user```
- **Run Distribution Agent As**: Windows Domain user the Distribution Agent runs as. For best practices and privileges, refer to [Considerations](../../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Replication.md#Consider) in the **Database Information** online help. Use the syntax: ```domain\user```
- **Domain User**: Windows Domain user used as the SQL proxy user when elevated privileges are required. For best practices and privileges, refer to [Considerations](../../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Replication.md#Consider) in the **Database Information** online help. Use the syntax: ```domain\user```
- **Replication Proxy Password**: Password assigned to the DomainUser
- **Distributor Password**: Password assigned to the distributor_admin SQL Server login created automatically during replication configuration
- **Subscription Type**: Type of subscription to implement. Must be PUSH or PULL
  - Default: PULL
- **Replication Variables Verified**: Select this option to confirm all settings on the tab are correct

### Update Database

To update Database, complete the following steps:

1. Open the SMA OpCon Configuration Utility
2. Ensure that the Database Scripts option is selected on the left side of the utility
3. If the database is on the same machine as the SAM, browse to and select the database scripts folder
4. Configure the Database Environment information. For more information, refer to [Environment Tab](#Environm)
5. Select the **Environment Variables Verified** option
6. Select **Update Scripts**
7. Select the appropriate **SQL Server Login** option: Use Win Auth or Use SQL sa
8. Select **Update Database**

## Enterprise Manager Screen

This screen configures memory settings for the Enterprise Manager. Complete this configuration once during product installation and update it as needed.

### Releases/Root Folders

- **All Available Releases**: Apply action to all Enterprise Manager directory structures on this machine
- **EM Installation Directory**: Apply action to one specific Enterprise Manager directory on this machine

:::note
If the EM Installation Directory field is blank, browse to and select the installation directory path (e.g., ```C:\Program Files\OpConxps\EnterpriseManager x64```).
:::

### Installation Size

- **Small Installation**: Sets max memory for EM and BIRT reports to 256MB
- **Large Installation**: Sets max memory for EM and BIRT reports to 512MB
- **Enterprise Installation**: Sets max memory for EM and BIRT reports to 1024MB

### Buttons

- **Save**: Saves all field information
- **Reload**: Cancels changes made to the screen

## Agents Screen

The Microsoft Agent and other Windows-based proxy agents (SAP, SAP BW) can be installed on one machine and are controlled by individual .ini files. This screen updates each agent's .ini file for TCP/IP ports used for normal communication and the Job Output Retrieval System (JORS). The default port values (3100, 3110) are normally sufficient and rarely need to change unless more than one agent is installed on the same machine.

### Releases/Root Folders

- **OpCon Installation Directory**: Apply action to one specific OpConxps directory structure

### Buttons

- **Fix Chronoman.ini Paths**: Updates root path values in Chronoman.ini to valid paths
- **Auto Number All Sockets**: Generates new port numbers for the agents
- **Reload**: Cancels changes on the screen
- **Save**: Saves all field information to the ini files

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Configure Database Scripts | Refer to the next section | — | — |
| Configure Enterprise Manager | Refer to the Enterprise Manager Screen section | — | — |
| Configure Agents | Refer to the Agents Screen section | — | — |
| DB Scripts Folder | Path to the ```\Utilities\Database``` folder, which contains the SMA_SET\* scripting variables files | — | — |
| SQL Server Login | Settings passed as parameters to DB_Setup, DB_Setup_WinAuth, DB_Update, and DB_Update_WinAuth command files | — | — |
| Create Database | Runs DB_Setup or DB_Setup_WinAuth to create a new OpCon database. | — | — |
| Update Database | Runs DB_Update or DB_Update_WinAuth to update an existing OpCon database with the latest SQL scripts. | — | — |
| Update Scripts | Saves all settings to the scripting variables files | — | — |
| OpConxps DB Server Name | Name of the server hosting the OpCon database (e.g., OpConServer) | SQL instance | — |
| OpConxps SQL Instance | Name of the SQL Server instance hosting the OpCon database | SQL instance | — |
| Database Name | The OpCon database name (e.g., OPCONXPS) | — | — |
| opconsam Password | Password for the opconsam SQL user created by the SQL authentication script | — | — |
| opconui Password | Password for the opconui SQL user created by the SQL authentication script | — | — |
| Environment Variables Verified | Select this option to confirm all settings on the tab are correct | — | — |
| Path to Database Data File | Location of the physical database data file on the SQL database server | — | — |
| Initial DB Data File Size | Initial size in megabytes for the database data file | — | — |
| DB Data File Growth | Percentage increment by which the database data file expands when full | — | — |
| Path to Database Log File | Location of the physical database transaction log file on the SQL database server | — | — |
| Initial DB Log File Size | Initial size in megabytes for the database transaction log file | — | — |
| Maximum DB Log File Size | Maximum size in megabytes beyond which the transaction log cannot grow | — | — |
| DB Log File Growth | Percentage increment by which the transaction log file expands when full | — | — |
| Installation Variables Verified | Select this option to confirm all settings on the tab are correct | — | — |
| Path to Full Backup File | Location of the full database backup file on the SQL database server | — | — |
| Path to Transaction Log Backup File | Location of the transaction log backup file on the SQL database server | — | — |
| DB Backup User | SQL user for database backups when SQL authentication scripts are automated | — | — |
## Operations

### Common Tasks
- After making changes to the Environment, Installation, Maintenance, Mirroring, or Replication tabs, select **Update Scripts** to save all settings to the scripting variables files before running Create Database or Update Database.
- Save a named profile after configuring all tabs; future upgrades overwrite the scripting variables command files, and applying a saved profile restores all custom settings.
- Use the **Maintenance** tab to configure backup file paths (`Path to Full Backup File`, `Path to Transaction Log Backup File`) and credentials used by automated SMAUtility schedule backup jobs.
- Use the **Enterprise Manager Screen** to configure EM memory settings (Small: 256 MB, Large: 512 MB, Enterprise: 1024 MB) to match the installation scale.

### Alerts and Log Files
- The **Create Database** and **Update Database** buttons are disabled until all required tab variables are verified (each tab has a "Variables Verified" check box) and **Update Scripts** has been selected.
- The utility shells out to a command window to run database scripts and waits for completion; review the command window output for script errors.

## FAQs

**Q: What is the SMA OpCon Configuration Utility used for?**

The SMA OpCon Configuration Utility configures scripts and configuration files on machines running SMA OpCon software. It is most useful on the OpCon Server and on machines with multiple agents.

**Q: Where is the SMA OpCon Configuration Utility automatically installed?**

It is automatically installed on the OpCon Server. To install it on another machine, run the setup program from the OpCon installation media at `<media>:\Install\Configuration Utility\SMA OpCon Configuration Utility Install.exe`.

**Q: Why should database script profiles be saved in the SMA OpCon Configuration Utility?**

Saving a profile preserves all custom settings across all tabs of the database environment. Future Continuous upgrades overwrite the scripting variables command files, so applying a saved profile restores all customizations after an upgrade.

## Glossary

**JORS (Job Output Retrieval System)**: The system used to retrieve and display job output — logs and reports — from agent machines directly within the OpCon graphical interfaces.

**BIRT (Business Intelligence and Reporting Tools)**: The open-source reporting engine used by OpCon to generate predefined and custom reports. Reports are run using the BIRTRptgen.exe utility.

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SMAUtility Schedule**: A pre-built OpCon schedule installed during setup that contains standard maintenance jobs for audit history cleanup, job history cleanup, and BIRT report generation.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**TCP/IP**: The network communication protocol used for all data exchange between SMANetCom on the OpCon server and agents on target machines.
