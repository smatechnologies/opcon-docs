# SMA OpCon Configuration Utility

The SMA OpCon Configuration Utility is designed to configure the scripts
and configuration files on a machine containing SMA OpCon's software.
The tool is most useful on the OpCon Server and on machines containing
multiple LSAMs (Agents). This program is automatically installed on the
OpCon Server. If you would like this utility installed on any machine,
run the setup program from the OpCon installation media in this
location:

`<media\>:\\Install\\Configuration Utility\\SMA OpCon Configuration Utility Install.exe`

To open the SMA OpCon Configuration utility, use menu path: **Start \> All Programs \> Opconxps \> Utilities \> SMA OpCon Configuration Utility**.

## Menus

The menus available are File, Tools, and Help.

### File

- **Exit**: Closes the SMA OpCon Configuration utility.

### Tools

- Provides links to the individual SMA OpCon Configuration utility
    screens.
- **Configure Database Scripts**: Refer to the next section.
- **Configure Enterprise Manager**: Refer to the [Enterprise Manager     Screen](#Enterpri) section.
- **Configure Agents**: Refer to the [Agents Screen](#Agents)
     section.

### Help

- **About**: Displays product versions and Technical Support
    information.

## Database Scripts Screen

The first screen displayed in the SMA OpCon Configuration Utility
contains fields for configuring scripting variables to use when running
database scripts.

### Common

The following fields display in the common area at the top of the
screen:

- **DB Scripts Folder**: Define the path to the <Configuration
    Directory\>\\Utilities\\Database folder. This folder contains the
    SMA_SET\* scripting variables files this program will update with
    your changes.
- **SQL Server Login**: This frame contains the settings to pass off
    as parameters to DB_Setup, DB_Setup_WinAuth, DB_Update, and
    DB_Update_WinAuth command files.
  - **Use Win Auth**: Select this option to indicate that Windows
        Authentication should be used to set up or update the database.
  - **Use SQL sa**: Select this option to indicate that the SQL
        "sa" login should be used to set up or update the database.
  - **Password**: If "Use SQL sa" was selected, enter the password
        for "sa" before clicking the Create Database or Update
        Database buttons.
    - **Show Password**: Select this checkbox to see the sa
            password in clear text.
- **Create Database**: Click this button to run the DB_Setup or
    DB_Setup_WinAuth command to create a new OpCon database. The utility
    will automatically execute the proper command based on the SQL
    Server Login settings.
  - This button is disabled until the Environment, Installation, and
        Maintenance Scripting Variables files are all Verified and you
        have clicked the **Update Scripts** button on the bottom-right
        corner of the screen.
  - Clicking this button causes the utility to shell out to a
        command window and waits while the command processes.
- **Update Database**: Click this button to run the DB_Update or
    DB_Update_WinAuth command to update an existing OpCon database with
    the latest SQL scripts. The utility will automatically execute the
    proper command based on the SQL Server Login settings.
  - This button is disabled until the Environment, Installation, and
        Maintenance Scripting Variables files are all Verified and you
        have clicked the **Update Scripts** button on the bottom-right
        corner of the screen.
  - Clicking this button causes the utility to shell out to a
        command window and waits while the command processes.

### Profiles

The Profiles section at the bottom of the screen is used for saving all
of your custom information across all five tabs for the database
environment. It is important to save your profile because upgrades in
the future from SMA Technologies will overwrite all of your scripting variables command files. SMA
Technologies will be overwriting these files
because we often need to change commands within the files themselves.
When you save a Profile, you can simply apply that profile to the
scripts and all your custom settings are applied.

- **New**: Click the **New** button to define a Name for the specific
    profile. Changes made to the profile are automatically saved.
- **Delete**: Select a profile name and then click the **Delete**
    button to remove the profile from the list.

### Buttons

- **Update Scripts**: Click **Update Scripts** to save all your
    settings to the scripting variables files.
- **Cancel**: Click **Cancel** to abort any changes to the file.

### Environment Tab

The Environment tab contains settings that are required for New and
Upgrade environments. All of the database command files SMA Technologies provides reference these variables.

- **OpConxps DB Server Name**: Defines the name of the server hosting
    the OpCon database\
    (e.g., OpConServer).
- **OpConxps SQL Instance**: Defines the name of the SQL Server
    instance hosting the OpCon database.
  - If using the default SQL instance on the machine, the name
        should be the same as the OpConxps DB Server Name (e.g.,
        OpConServer).
  - If connecting to a named instance of SQL server, specify the
        server name and instance name using the syntax:
        ServerName\\InstanceName (e.g., OpConServer\\SQL 2012).
- **Database Name**: Defines the OpCon Database name (e.g., OPCONXPS).
- **opconsam Password**: Defines the password to use when the SQL
    authentication script creates the opconsam SQL user.
- **opconui Password**: Defines the password to use when the SQL
    Authentication script creates the opconui SQL user.
- **Environment Variables Verified**: Select this checkbox (at the
    bottom of the screen) to verify that all settings are correct on the
    tab.

### Installation Tab

The Installation tab contains settings that are required for you to
successfully use the Create Database button at the top of the screen.
The variables on this screen provide instructions for creating the
database and its files on the SQL Database Server.

- **Path to Database Data File**: Defines the location of the physical
    database data file on the SQL database server.
  - The sample value is:\
        C:\\Program Files\\Microsoft SQL
        Server\\MSSQL.1\\MSSQL\\Data\\OPCONXPS_Data.MDF.
  - *(Optional)* If the SAM and Database are on the
        same server, you can click the browse button (shown as an
        ellipsis) at the end of the field.
    - Browse to the SQL Data directory and click **OK**.
    - The utility will automatically append "OPCONXPS_Data.MDF"
            to the path for the file name. Change the file name if
            desired.
- **Initial DB Data File Size**: Defines the initial size in megabytes
    allocated for the database data file.
- **DB Data File Growth**: Defines the percentage increment by which
    the database data file will expand when full.
- **Path to Database Log File**: Defines the location of the physical
    database transaction log file on the SQL database server.
  - The sample value is:\
        C:\\Program Files\\Microsoft SQL
        Server\\MSSQL.1\\MSSQL\\Data\\OPCONXPS_Log.LDF.
  - *(Optional)* If the SAM and Database are on the
        same server, you can click the browse button (shown as an
        ellipsis) at the end of the field.
    - Browse to the SQL Data directory and click **OK**.
    - The utility will automatically append "OPCONXPS_Log.LDF"
            to the path for the file name. Change the file name if
            desired.
- **Initial DB Log File Size**: Defines the value for the initial size
    in megabytes allocated for the database transaction log file.
- **Maximum DB Log File Size**: Defines the maximum size in megabytes
    beyond which the database transaction log should not be allowed to
    grow.
- **DB Log File Growth**: Defines the percentage increment by which
    the database transaction log file will expand when full.
- **Installation Variables Verified**: Select this checkbox (at the
    bottom of the screen) to verify that all settings are correct on the
    tab.

### Maintenance Tab

The Maintenance tab contains settings that are required for you to
successfully use the database maintenance command files provided by SMA Technologies. These command files are automated
with the SMAUtility schedule. For more information, refer to [SMAUtility Schedule](../../objects/schedules.md#smautility-schedule) in
the **Concepts** online help. The variables on this screen provide
instructions for backing up and restoring databases on the SQL Database
Server.

- **Path to Full Backup File**: Defines the location of the full
    database backup file on the SQL database server.
  - The sample value is:\
        C:\\Program Files\\Microsoft SQL
        Server\\MSSQL.1\\MSSQL\\Backup\\SMADB_Backup.bak.
  - *(Optional)* If the SAM and Database are on the
        same server, you can click the browse button (shown as an
        ellipsis) at the end of the field.
    - Browse to the SQL Data directory and click **OK**.
    - The utility will automatically append "SMADB_Backup.bak"
            to the path for the file name. Change the file name if
            desired.
- **Path to Transaction Log Backup File**: Defines the location of the
    transaction log backup file on the SQL database server.
  - The sample value is:\
        C:\\Program Files\\Microsoft SQL
        Server\\MSSQL.1\\MSSQL\\Backup\\SMATLog_Backup.bak
  - *(Optional)* If the SAM and Database are on the
        same server, you can click the browse button (shown as an
        ellipsis) at the end of the field.
    - Browse to the SQL Data directory and click **OK**.
    - The utility will automatically append "SMATLog_Backup.bak"
            to the path for the file name. Change the file name if
            desired.
- **DB Backup User**: Defines the SQL user to use for the database
    backups when the SQL authentication scripts are automated.
- **DB Backup Password**: Defines the password for the *DB Backup
    User* in the previous field.
- **DB Restore User**: Defines the SQL user to use for the database
    restores when the SQL authentication scripts are automated.
- **DB Restore Password**: Defines the password for the *DB Restore
    User* in the previous field.
- **Path to System DB Backup File**: Defines the location of the
    system database backup file on the SQL database server.
  - The sample value is:\
        C:\\Program Files\\Microsoft SQL
        Server\\MSSQL.1\\MSSQL\\Backup\\SystemDB_Backup.bak
  - *(Optional)* If the SAM and Database are on the
        same server, you can click the browse button (shown as an
        ellipsis) at the end of the field.
    - Browse to the SQL Data directory and click **OK**.
    - The utility will automatically append
            "SystemDB_Backup.bak" to the path for the file name.
            Change the file name if desired.
- **Maintenance Variables Verified**: Select this checkbox (at the
    bottom of the screen) to verify that all settings are correct on the
    tab.

### Mirroring Tab

The Mirroring tab contains settings that are required for you to
successfully use the database mirroring command files provided by SMA Technologies. These command files are automated
with the SMAMirroring schedule. For more information, refer to [Setup for Automatic Microsoft SQL
Mirroring](../../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Mirroring.md)
 in the **Database Information** online help. The variables on
this screen provide instructions for setting up and tearing down
mirroring for databases on the SQL Database Server.

**Principal Server Name**: Defines the name of server hosting the
principal OpCon database.

- Default: Principal server hostname

**Principal Endpoint Port**: Defines the TCP/IP Port number for the
principal server to use for communication with the mirror server.

- Default: 7022

**Fully Qualified Principal Computer Name**: Defines the fully qualified
name for the principal database server including the host name, primary
DNS suffix, and end point port number. The default value in the command
file provides the syntax.

- Default: 'TCP://hostname.PrimaryDNSSuffix:EndpointPortNumber'
- Determine the Primary DNS Suffix by executing **IPCONFIG /ALL** from
    a command prompt on the principal server.

**Login For Principal Service**: Defines the Windows user account the
Principal SQL Server Service uses.

- Default value: DOMAIN\\user

**Principal SQL Instance**: Defines the name of the SQL Server instance
hosting the principal OpCon database. If using the default SQL instance
on the machine, the name should be the same as the OpConxpsDBServerName.
If connecting to a named instance of SQL server, specify the server name
and instance name using the syntax: ServerName\\InstanceName.

:::note
The full Server Name and Instance Name display in the SQL Management Studio for all registered SQL servers.
:::

- Default: Principal SQL Server Instance Name

**Full Backup Share On Mirror**: Defines the full UNC path to the share
for the mirroring files on the principal server.

- \\\\Principal server hostname\\sharename\\

**Tran Log Backup Share On Mirror**: Defines the full UNC path to the
share for the transaction log files on the principal server.

- \\\\Principal server hostname\\sharename\\

**Mirror Server Name**: Defines the name of server hosting the mirrored
OpCon database.

- Default: Mirror Server hostname

**Mirror Endpoint Port**: Defines the TCP/IP Port number for the mirror
server to use for communication with the principal server.

- Default: 7022

**Fully Qualified Mirror Computer Name**: Defines the fully qualified
name for the mirror database server including the host name, primary DNS
suffix, and end point port number. The default value in the command file
provides the syntax.

- Default: 'TCP://hostname.PrimaryDNSSuffix:EndpointPortNumber'

**Login For Mirror Service**: Defines the Windows user account the
Mirror SQL Server Service uses.

Default value: DOMAIN\\user

- **Mirror SQL Instance**: Defines the name of the SQL Server instance
    hosting the mirror OpCon database. If using the default SQL instance
    on the machine, the name should be the same as the
    OpConxpsDBServerName. If connecting to a named instance of SQL
    server, specify the server name and instance name using the syntax:
    ServerName\\InstanceName.

:::note
The full Server Name and Instance Name display in the SQL Management Studio for all registered SQL servers.
:::

- Default: Mirror SQL Server Instance Name

**WitnessServerName**: Defines the name of server hosting the witness
database server.

:::note
If a Witness Server will not be implemented in the mirroring configuration, the Witness Server information is not required.
:::

- Default: Witness Server hostname

**WitnessEndpointPort**: Defines the TCP/IP Port number for the witness
server to use for communication with the principal server.

- Default: 7022

**FullyQualifiedWitnessComputerName**: Defines the fully qualified name
for the witness database server including the host name, primary DNS
suffix, and end point port number. The default value in the command file
provides the syntax.

- Default: 'TCP://hostname.PrimaryDNSSuffix:EndpointPortNumber'

**LoginForWitnessService**: Defines the Windows user account the Witness
SQL Server Service uses.

- Default value: DOMAIN\\user

**WitnessSQLInstance**: Defines the name of the SQL Server instance
hosting the witness OpCon database. If using the default SQL instance on
the machine, the name should be the same as the OpConxpsDBServerName. If
connecting to a named instance of SQL server, specify the server name
and instance name using the syntax: ServerName\\InstanceName.

:::note
The full Server Name and Instance Name display in the SQL Management Studio for all registered SQL servers.
:::

- Default: Witness SQL Server Instance Name

**Database Name**: The name of the database on the principal server and
thus the name on the mirror server.

- Default: Database name

**Path to Full Backup File**: Defines the *path and file name* of the full database backup file on the principal SQL database server.

- Default value: Path to full database backup location on principal

  :::note
  The following is the default path for database backup files on a SQL server:

  C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\BACKUP
  :::

**Path to Transaction Log Backup File**: Defines the *path and file name* of the transaction log backup file on the principal SQL
database server.

- Default value: Path to full transaction log backup location on
    principal

  :::note
  The following is the default path for database backup files on a SQL 2008 server:
  C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\BACKUP
  :::

**DB Mirroring Scripts Directory**: Defines the <Configuration
Directory\> where the database mirroring scripts exist on the server
(provided by SMA Technologies with the Database installation).

:::note
The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

- Default value: C:\\ProgramData\\OpConxps\\Utilities\\Database\\

**DB Mirroring Monitor Update Period**: Defines the interval in seconds
at which database mirroring monitor statistics are to be updated.

- Default value: 5

**Mirroring Variables Verified**: Select this checkbox (at the bottom of
the screen) to verify that all settings are correct on the tab.

### Replication Tab

The Replication tab contains settings that are required for you to
successfully use the database replication command files provided by SMA Technologies. These command files are automated
with the SMAReplication schedule. For more information, refer to [Setup for Automatic Microsoft SQL
Replication](../../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Replication.md)
 in the **Database Information** online help. The variables on
this screen provide instructions for setting up and tearing down
replication for databases on the SQL Database Server.

- **Distributor Server Name**: Defines the name of server hosting the
    instance of SQL Server that will be used as the distributor.
- **Distributor SQL Instance**: Defines the name of the instance of
    SQL Server that will be used as the distributor. If it is the
    default instance of SQL Server on the distributor computer, then the
    value of this scripting variable will be the same as the host name.
    If it is a named instance of SQL server, then the value of this
    scripting variable will be the distributor host name and the name
    given to the SQL Server instance at installation, separated by a
    backslash (e.g., ReplDistributor\\SQLReplication).
- **Login For Distributor Service**: On the SQL Server instance,
    serving as the Distributor, this is the windows user account under
    which the SQL Server service runs.
- **REPLDATA Folder**: Defines the folder where the snapshot agent
    will write the data to be replicated.
  - Default: \\\\%DistributorServerName%\\C$\\Program
        Files\\Microsoft SQL Server\\MSSQL.1\\MSSQL\\repldata
  - SMA Technologies recommends creating a         share on the repldata folder and specifying the value of this
        variable as \\\\%DistributorServerName%\\repldataShareName
- **Path to Distribution Data File**: Defines the full path (excluding
    filename) to the directory where the distribution.mdf file for the
    distribution database will be created.
- **Path to Distribution Log File**: This is the full path (excluding
    filename) to the directory where the distribution.ldf file for the
    distribution database will be created.
- **Publisher Server Name**: Defines the name of server hosting the
    instance of SQL Server that will be used as the publisher.
- **Publisher SQL Instance**: Defines the name of the instance of SQL
    Server that will be used as the publisher. If it is the default
    instance of SQL Server on the publisher computer, then the value of
    this scripting variable will be the same as the host name. If it is
    a named instance of SQL server, then the value of this scripting
    variable will be the publisher host name and the name given to the
    SQL Server instance at installation, separated by a backslash (e.g.,
    MyReplPublisher\\SQLReplication).
- **Publication Database Name**: Defines the name of the database to
    be replicated. If the default database name was accepted during
    installation of OpCon, this value would be OPCONXPS.
- **Publication Name**: Defines the name given to the publication of
    articles (OpCon database tables) to be replicated. Normally,
    this name matches the Publication Database Name. If the default
    database named was used, then the publication name would be
    OPCONXPS.
- **Login For Publisher Service**: On the SQL Server instance, serving
    as the Publisher, this is the windows user account under which the
    SQL Server service runs.
- **Subscriber Server Name**: Defines the name of server hosting the
    instance of SQL Server that will be used as the subscriber.
- **Subscriber SQL Instance**: Defines the name of the instance of SQL
    Server that will be used as the subscriber. If it is the default
    instance of SQL Server on the subscriber computer, then the value of
    this scripting variable will be the same as the host name. If it is
    a named instance of SQL server, then the value of this scripting
    variable will be the subscriber host name and the name given to the
    SQL Server instance at installation, separated by a backslash (e.g.,
    MyReplSubscriber\\SQLReplication).
- **Subscription Database Name**: Defines the name of the database to
    be replicated to. SMA Technologies recommends     using the same database name as the publishing database. If the
    default database named was used, then the publication name would be
    OPCONXPS.
- **Login For Subscriber Service**: On the SQL Server instance,
    serving as the Subscriber, this is the windows user account under
    which the SQL Server service runs.
- **OpConxpsServer Name**: Defines the name of the computer where the
    OpCon SAM and Supporting Services are running. This server may be a
    different computer than any database servers involved in the
    replication process.
- **DB Replication Scripts Directory**: Defines the directory where
    the SQL scripts used in setting up and tearing down replication will
    be located. If OpCon was installed in the default location, this
    value would be 'C:\\Program Files\\OpConxps\\Utilities\\Database'.
- **Run Snapshot Agent As**: Defines the Windows Domain user the
    Snapshot Agent runs as. Refer to
    [Considerations](../../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Replication.md#Consider)
     in the **Database Information** online help for information
    regarding best practices and privileges. Define the value using the
    syntax of domain\\user.
- **Run Log Reader Agent As**: Defines the Windows Domain user the Log
    Reader Agent runs as. Refer to
    [Considerations](../../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Replication.md#Consider)
     in the **Database Information** online help for information
    regarding best practices and privileges. Define the value using the
    syntax of domain\\user.
- **Run Distribution Agent As**: Defines the Windows Domain user the
    Distribution Agent runs as. Refer to
    [Considerations](../../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Replication.md#Consider)
     in the **Database Information** online help for information
    regarding best practices and privileges. Define the value using the
    syntax of domain\\user.
- **Domain User**: Defines the Windows Domain user that will be used
    as the SQL proxy user when elevated privileges are required for the
    users the SQL agents run as. Refer to
    [Considerations](../../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Replication.md#Consider)
     in the **Database Information** online help for information
    regarding best practices and privileges. Define the value using the
    syntax of domain\\user.
- **Replication Proxy Password**: Defines the password to be assigned
    to the DomainUser.
- **Distributor Password**: Defines the password to be assigned to the
    distributor_admin SQL Server login that is automatically created by
    SQL Server during the process of configuring replication.
- **Subscription Type**: Defines the type of subscription to be
    implemented. The value specified must be either PUSH or PULL.
  - Default: PULL
- **Replication Variables Verified**: Select this checkbox (at the
    bottom of the screen) to verify that all settings are correct on the
    tab.

### Update_Database}[Update Database

If you need to reapply database scripts or run them on another database,
follow this quick procedure.

1. Launch the SMA OpCon Configuration Utility.
2. Ensure that the Database Scripts option \[left side of utility\] is     selected.
3. If the database is on the same machine as the SAM, browse to and
    select the database scripts folder.
4. Configure the *Database Environment* information. For more
    information, refer to [Environment Tab](#Environm).
5. Select **Environment Variables Verified** checkbox.
6. Click **Update Scripts** button.
7. Select the appropriate **SOL Server Login** radio button: Use Win
    Auth or Use SQL sa.
8. Select the **Update Database** button.

## Enterprise Manager Screen

This screen offers an easy way to configure the memory needs for the
Enterprise Manager. This action should be taken once during product
installation and then again as needed to update the configuration of the
EM. The screen information involves the **Releases/Root Folders**
directory, **Installation Size** choices, and panels for **Machine
Information (Statistics)** and **Help Information**.

### Releases/Root Folders

- **All Available Releases**: Perform action on all Enterprise Manager
    directory structures found on this machine.
- **EM Installation Directory**: Perform action on one specific
    Enterprise Manager directory on this machine.

:::note
If the EM Installation Directory field is blank, browse to and select the installation directory path (e.g., C:\\Program Files\\ OpConxps\\EnterpriseManager x64).
:::

### Installation Size

- **Small Installation**: Max memory used by EM and BIRT reports (set
    to 256MB)
- **Large Installation**: Max memory used by EM and BIRT reports (set
    to 512MB)
- **Enterprise Installation**: Max memory used by EM and BIRT reports
    (set to 1024MB)

### Buttons

- **Save**: Click this button to save all field information.
- **Reload**: Click this button to cancel changes made to the screen.

## Agents Screen

The Microsoft Agent and each of the other Windows-based proxy agents
(SAP, SAP BW) can be installed onto one machine and are controlled by
individual .ini files. This screen offers easy way to update each
agent's .ini file for the TCP/IP ports for normal communication and for
the Job Output Retrieval System (JORS). The default port values
delivered by SMA Technologies within these .ini files (3100, 3110) are normally sufficient and rarely need to be
changed, unless more than one agent is installed on the same machine.

The screen information involves the **Releases/Root Folders** directory,
**Microsoft Agent** details, and a panel for help information.

### Releases/Root Folders

- **OpCon Installation Directory**: Perform action on one specific
    OpConxps directory structure.

### Buttons

- **Fix Chronoman.ini Paths**: Click this button to update the root
    path values in Chronoman.ini to valid paths.
- **Auto Number All Sockets**: Click this button to generate new port
    numbers for the agents.
- **Reload**: Click this button to cancel changes on the screen.
- **Save**: Click this button to save all field information to the ini
    files.
