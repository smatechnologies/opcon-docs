---
sidebar_label: 'Server Configuration'
title: OpCon Server Configuration
description: "Configure the OpCon Server after a new installation."
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

# OpCon Server Configuration

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

Configure the OpCon Server after a new installation. After an upgrade, review these items to confirm the server is still configured correctly.

## Configuration Options

## Implement Temporary License

The temporary license lets you run OpCon immediately while waiting for a permanent license.

1. Copy the **0.lic** file from the root of the distribution media
2. Paste the file to the <Configuration Directory\>**\\SAM\\** folder

**Result:** The temporary license file is in place and OpCon can start processing while the permanent license is being obtained.

## Configure Database Scripts

The database environment and scripting variables are updated during database scripts installation. To update the database maintenance, mirroring, and replication scripts, use the SMA OpCon Configuration Utility.

1. Use menu path: **Start \> All Programs \> OpConxps \> Utilities \> SMA OpCon Configuration Utility**
2. Ensure the **Database Scripts** option (left side of utility) is selected
3. Select the **Maintenance** tab. If the database is on the same machine as the SAM, you can browse to the folders
4. Select the **Maintenance Variables Verified** option and select **Update Scripts**
5. Select the **New** button in the **Profiles** section at the bottom of the screen
6. Enter a name for the profile and select **Save**

**Result:** The database scripts are updated with the correct maintenance variables and a named profile is saved for use by scheduled maintenance jobs.

## Configure Database Connections

OpCon uses a single database for all system data. Configure all components to connect to that database.

### Server and User Interface Connections

Confirm the Enterprise Manager is configured to communicate with the OpCon database.

:::note
The OpCon Server component database connection is automatically configured during SMA OpCon SAM installation. Refer to the [SMA Connection Configuration Tool](../server-programs/schedule-activity-monitor.md#SMA) in the **Server Programs** online help.
:::

#### Configure the Database Connection Information for the OpCon Server

1. Use menu path: **Start \> All Programs \> OpConxps \> Utilities\> SMA Connection Config**
2. In the **Server\\Instance Name** field, enter the *Server Name* (include the instance name if needed using the Server\\Instance Name syntax)

3. Enter the *database name* in the **Database Name** field
4. Configure the authentication method:
   - Select the **Use Windows Authentication** option **- or -**
     :::note
     For Windows Authentication, the SMA Service Manager must run as a user with privileges to the OpCon database. Refer to [OpCon Server Configuration](#Add).
     :::
   - Enter the **SQL Authentication** credentials:
     - Enter *opconsam* in the **Database Login ID** field
     - Enter *opconsam's password* in the **Database Password** field
5. Select a **Configuration** option:
   - **None**: No setting (default)
   - **SQL Always On**: SQL Server configured for high availability
   - **SQL Mirroring**: SQL Server configured for mirroring
To configure Database Connections, complete the following steps:

6. Select **Connect**
7. Select **OK** to confirm the connection
8. Select **OK** to close the program

**Result:** The OpCon server database connection is configured and the SAM-SS components can connect to the specified database.

#### Advanced Database Connection Parameters (OpCon REST API)

The OpCon REST API uses the connection string in `SMAODBCConfiguration.DAT`. Add optional parameters such as `MaxPoolSize` by editing the file manually.

:::caution
Stop the OpCon REST API service before editing. Back up the file before making changes.
:::

**File location:** `C:\ProgramData\OpConxps\SAM\SMAODBCConfiguration.DAT` (or the SAM folder for non-default installations)

**Format:** The file contains a SQL connection string with semicolon-separated parameters. Append additional parameters before the final semicolon.

| Parameter | Description |
| --- | --- |
| **MaxPoolSize** | Sets the maximum connections in the pool. Append `MaxPoolSize=500` (or your desired value) to tune performance for environments with many concurrent REST API requests. |
Restart the OpCon REST API service after saving the file.

#### Create a Profile for the EM to Connect to the Database

1. Use menu path: **Start \> All Programs \> OpConxps \> Enterprise Manager**
2. On the Welcome screen, select **OK**
3. On the Database Connection Profile screen, enter a *Profile Name* in the **Profile Name** text box
4. Choose an authentication method:
   1. For SQL Authentication, enter *opconui* in the **Username** field and *opconui's password* in the **Password** text box
   2. For Windows Authentication, select the **Use Windows Authentication** option

5. Enter the *Server name* or *IP Address* in the **SQL Server** text box
   :::caution
   If the server name contains a backslash (\\), the server uses SQL Instance Names. The SQL Server Browser service must be running on that server.
   :::
6. Select the **database** from the **Database** list, or select the **Database** button to view available databases
   :::note
   The database list is only available after all previous fields are filled in.
   :::
7. *(Optional)* Enter the *Timeout (sec)* (default: 30)
8. *(Optional)* Select the **Color** button, choose a *Profile color*, and select **OK**
9. Select **Next** to advance
   :::note
   The next window indicates whether the database connection tested successfully.
   :::
10. If the test failed, select **Back**, correct the problem, and try again
11. If the test succeeded, select **Next** to set up OpCon installation details
    :::note
    The default \[\[SERVER\]\] token in the UNC path is automatically replaced with the database server IP/Hostname from the profile. Changing the database server in the profile does not require changing the UNC path if the share directory is the same.
    :::
12. Confirm the path to the OpCon directory on the SAM server
13. Select **Finish** to save the profile

**Result:** The Enterprise Manager database connection profile is saved and the EM can connect to the OpCon database using the configured credentials.

:::note
OpCon installation details can also be set in Profiles or Preferences. Refer to [Setting up New Profiles](../Files/UI/Enterprise-Manager/Setting-up-New-Profiles.md) in the **Enterprise Manager** online help.
:::

### Utilities Connections

#### Set Privileges for Utilities

Configure utilities for compatibility with Windows before setting up database connections.


1. Locate **LegacyAudit.exe** in **<Target Directory\>\\OpConxps\\Utilities\\**
2. Right-click **LegacyAudit.exe** and select **Properties**
3. Select the **Compatibility** tab
4. Select the **Run this program as an administrator** option and select **OK**
5. Locate **SMAODBCConfig.exe** in **<Target Directory\>\\OpConxps\\DDI\\**

6. Right-click **SMAODBCConfig.exe** and select **Properties**
7. Select the **Compatibility** tab
8. Select the **Run this program as an administrator** option and select **OK**

**Result:** Both utility executables are configured to run as administrator, enabling them to manage ODBC DSNs and database connections correctly on Windows.

#### Create System DSNs

All utilities require a system DSN. Complete the procedures below if the required system DSNs do not exist.

:::note
Verify that the most recent ODBC driver for Microsoft SQL Server is installed before creating the system DSN.
:::

##### Select a Driver

Use ODBC Data Sources in Windows to configure the System DSNs. You must run as Administrator to configure DSNs. SQL DSNs are shared by multiple utilities.

1. Log in as a *Windows user with Local Administrative Rights*
2. Search for ODBC Data Sources in the Windows search bar
3. Right-click **ODBC Data Sources (64-bit)** or **ODBC Data Sources (32-bit)** and select **Run as administrator**
4. Select the **System DSN** tab
5. Select **Add**

6. Select the **SQL Server** driver and select **Finish**
7. Enter a unique *Data Source name* in the **Name** field. Continuous recommends using the database name
   :::warning
   Do not use the same name as the SQL server instance name.
   :::

8. *(Optional)* Enter *Connection to the OpCon scheduling database* in the **Description** field
9. Enter the *Host Name* of the server hosting the database in the **Server** field and select **Next**
10. Select the **With SQL Server authentication using a login ID and password entered by the user** radio button
11. Enter the required ID in the **Login ID** field
12. Enter the required password in the **Password** field and select **Next**
    :::note
    Contact SMA support if you need login information.
    :::

13. Select the **Change the default database to** option
14. Select the **OpCon database**
15. Accept the remaining defaults and select **Next**
16. Accept all defaults on the last screen and select **Finish**
17. Select the **Test Data Source** button
    - If the test succeeds, select **OK** on subsequent screens to exit
    - If the test fails, select **Cancel**, return to Step 7, and repeat until successful
18. In the ODBC Data Source Administrator window, select **OK**
19. To set up System DSNs for the Schedule Import Export utility, select **Add**
20. Select **Microsoft Access Driver (\*.mdb)** and select **Finish**
21. Enter a *data source name* in the **Data Source Name** text box
22. *(Optional)* Enter a *description*
23. Select the **Select** button
24. Browse to the **Utilities** directory (e.g., C:\\Program Files (x86)\\OpConxps\\Utilities\\)
25. Select **IMPEX.mdb** and select **OK**
26. Select **OK**
27. Select **OK** on the System DSN tab
28. Select the **new data source** and select **OK**

**Result:** The system DSNs are created and OpCon utilities can connect to the database and the Schedule Import Export transport databases.

#### Configure SMADDI

If SMADDI is included in your installation, refer to [Configuring the Database Connection](../utilities/SMA-Dynamic-Data-Input/Configuration.md#Configur2).

#### Configure SMA Resource Monitor

If SMA Resource Monitor is included in your installation, refer to [Modify the SMAResourceMonitor.ini File](./components.md#Modify_the_SMAResourceMonitor.ini_File).

## Configure SQL Permissions

Configure SQL permissions for:

- [SQL Authentication](#SQL)
- [Windows Authentication](#Windows)

### SQL Authentication

To run Continuous database maintenance scripts using SQL Authentication, the running SQL user must have the `db_owner` role. Users are defined in the Maintenance Scripting Variables file via the DB Backup User and DB Restore User variables. By default, **opconsam** is the DB Backup User and **sa** is the DB Restore User. Skip this procedure if you use **sa** for either user.

#### Grant db_owner Permissions for SQL Users

On the preferred Database Server:

1. Log in as a *local administrative user*

2. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**
3. Select **Database Engine** in the **Server type** list
4. Select the **OpCon Database Server** in the **Server name** list
5. Choose your authentication type and provide credentials:
   - Log in as **sa** for SQL Server Authentication **- or -**
   - Use a Windows user with system administration privileges
To configure SQL Permissions, complete the following steps:

6. Select **Connect**
7. In Object Explorer, expand the **SQL Server** hosting the OpCon database
8. Expand **Security** > **Logins**
9. Right-click the **DB Backup User** and select **Properties**
10. Select **User Mapping**

11. Select the **OpCon Database** option
12. Select **db_owner** in Database role membership
13. Select the **master** database if this user backs up system databases
14. Select **db_owner** in Database role membership
15. Select the **msdb** database if this user backs up system databases

16. Select **db_owner** in Database role membership and select **OK**
17. Right-click the **DB Restore User** under Logins and select **Properties**
18. Select **User Mapping**
19. Select the **OpCon Database** option
20. Select **db_owner** in Database role membership and select **OK**

**Result:** The DB Backup User and DB Restore User are granted the db_owner role on the OpCon database and can run database maintenance scripts.

### Windows Authentication

Complete the procedures below so that OpCon user applications can authenticate.

#### Add the OpConxps Active Directory Group to the SQL Server

On the SQL Server Machine:

1. Log on as a *local administrative user*
2. Use menu path: **Start \> All Programs \> Microsoft SQL Server \> SQL Server Management Studio**
3. Select **Database Engine** in the **Server type** list

4. Select the **OpCon Database Server** in the **Server name** list
5. Choose authentication type and provide credentials:
   - Log in as **sa** for SQL Server Authentication **- or -**
   - Use a Windows user with system administration privileges
6. Select **Connect**

7. Use menu path: **View \> Object Explorer**
8. In Object Explorer, expand the **SQL Server** hosting the OpCon database
9. Expand **Security**
10. Right-click **Logins** and select **New Login**
11. Select the **Search** button next to the **Login Name** field
12. Select the **Object Types** button
13. Select the **Groups** option and select **OK**
14. Select the **Locations** button
15. Expand **Entire Directory**, select the preferred **directory name**, and select **OK**
16. Select the **Advanced** button
17. Select **Find Now**

18. Select the **OpCon Group** created in [Create the OpConxps Active Directory Group](./system-requirements.md#Create_the_OpConxps_Active_Directory_Group) and select **OK**
19. Select **OK**
20. Select the **OpCon database** in the **Default database** list
21. Select the **User Mapping** page
22. Select the **OpCon Database** option in the **Map** column

23. Select the **opconxps** role in Database role membership
24. Select the **Securables** page
25. Select **Search**
26. Select **The server '*Servername\\Instance*'** and select **OK**
    :::note
    The bottom box is populated with Explicit permissions for **ServerName\\Instance**.
    :::

27. Scroll to the bottom of the list
28. Select the **Grant** option for **View Server State Permission**

**Result:** The OpConxps Active Directory group is added as a SQL Server login with the opconxps database role and View Server State permission, allowing group members to authenticate and run OpCon applications.

#### Add the SQL Server Logins for SMA Service Manager

If SMA Service Manager runs as NT AUTHORITY\\SYSTEM and uses Windows Authentication, configure a SQL Server login. The process differs based on whether SQL Server is local or remote.

In SQL Server Management Studio:


1. Expand the **Database Engine containing the OpCon Database**
2. Expand **Security**
3. If the SAM and database are on different machines:
   :::tip Example
   On a domain named "ABCCompany" with a SAM server named "OpConxpsServer", the Login name would be: ABCCompany\OpConxpsServer$
   :::
   - Right-click **Logins** and select **New Login**
   - Enter the *domain* and *SAM server name* using the syntax: `DomainName\\ServerName$`
   - Proceed to Step 5
4. If the SAM and database are on the same machine, select **NT AUTHORITY\\SYSTEM** under **Logins**
5. Select the **OpCon Database** in the **Default database** list
6. Select the **User Mapping** page
7. Select the **OpCon Database** option in the **Map** column
8. Select the **opconxps** role option
9. If creating the user:
   - Select **OK**
   - Select the newly created user under **Logins**

10. Select the **Securables** page
11. In the Permissions table, select the **Grant** option for **View server state**
12. Select **OK**

**Result:** The SMA Service Manager account is granted the opconxps role and View Server State permission on the OpCon database and can run with Windows Authentication.

#### Grant db_owner Permissions for a Windows User

To run database maintenance scripts using Windows Authentication, the running Windows user must have the `db_owner` role.

1. Expand the **Database Engine containing the OpCon Database**
2. Expand **Security** > **Logins**
3. Right-click the **Windows Account that will run the scripts** and select **Properties**
4. Select **User Mappings**
5. Select the **OpCon Database** option

6. Select **db_owner**
7. Select the **master** database if this user backs up system databases
8. Select **db_owner**
9. Select the **msdb** database if this user backs up system databases
10. Select **db_owner**

11. Select **OK**

**Result:** The Windows user is granted the db_owner role on the OpCon database and can run database maintenance scripts using Windows Authentication.

## Configure Optional Services

If you enabled optional services, configure them before proceeding to [Configure OpCon](#Configur5).

### Configure SMA LDAP Monitor

If the LDAP Monitor is enabled, configure it to connect to your LDAP environment. Refer to [SMA LDAP Monitor Configuration](../server-programs/optional.md#SMA4) for configuration details.

1. Right-click **Start** and select **Explore**
2. Browse to <Configuration Directory\>**\\SAM**
3. Select **SMALDAPMon.ini**
4. Define **DirectoryType** (valid values: ADS, OpenLDAP)
5. Add the *Host* and *Port* settings
6. *(Optional)* Define *UserNamePrefix* (required for automatic sign-on) and *Domain*
7. Encrypt **UserName**, **Password**, and **DefaultUserPassword** using the Enterprise Manager password encryption tool (refer to [Encrypting Passwords](../Files/UI/Enterprise-Manager/Encrypting-Passwords.md)) or the built-in `--credentials` option:

```shell
SMALDAPMon.exe --credentials --user=[username] --password=[password] --defaultpassword=[defaultUserPassword]
```

To change the default RefreshInterval (60 seconds), delete the value and enter the desired interval in seconds. The value must exceed 60 seconds.

**Result:** The SMALDAPMon.ini file is saved with the correct directory settings and encrypted credentials, and the LDAP Monitor is ready to integrate network security with automatic OpCon logins.

### Configure SMASAPProxy

If the Connector for SAP and/or SAP BW is enabled, configure it to connect to your SAP environments. Refer to [SAPQueryProcessor.ini](../server-programs/request-router.md#SAPQUERY) for configuration details.

1. Right-click **Start** and select **Explore**
2. Browse to <Configuration Directory\>\\**SAM**
3. Select **SAPQueryProcessor.ini**
4. Under **[TCP/IP Parameters]**:
5. *(Optional)* Set **SocketNumber** for the SAP R/3 environment
6. *(Optional)* Set **BWSocketNumber** for the SAP BW environment
7. Use menu path: **File \> Save**
8. Close Notepad

**Result:** The SAPQueryProcessor.ini file is saved with the configured socket numbers and the SAP Proxy is ready for use with SAP R/3 and SAP BW environments.

## Configure OpCon

Most SAM configuration options are stored in the database and are configured through the Enterprise Manager.

### Change the ocadm Password and Configure SAM Options

To configure OpCon, complete the following steps:

1. Use menu path: **Start \> All Programs \> OpConxps \> Enterprise Manager**
2. Enter *ocadm* in the **Username** text box
3. Enter *12 asterisks* (\*\*\*\*\*\*\*\*\*\*\*\*) as the default password
4. Select the **profile** created in [Create a Profile for the EM to Connect to the Database](#Create_a_Profile_for_the_EM_to_Connect_to_the_Database)
5. Select **Login**
6. Use menu path: **EnterpriseManager \> Password Update \> Change User Password**
7. Enter *12 asterisks* in the **Old Password** text box
8. Enter a *new password* in the **New Password** text box
9. Enter the *new password* again in **Confirm Password** and select **OK**
10. Under Administration in the Navigation Panel, select **Server Options**

11. Verify the **General** tab is selected
12. Review all parameters. Refer to [General Settings](../administration/server-options.md#general) for details
13. To modify a parameter:
    1. Select the **parameter** in the parameter table
    2. Enter a *valid value* in the frame at the bottom of the screen
    3. Select **Update** to save, **Cancel** to discard, or **Defaults** to reset
    4. *(Optional)* Select another **parameter category** tab
    5. Repeat Steps 1 - 4 for other parameters
14. Select the **SMTP Server Settings** tab and review:
    1. Specify the *SMTP Server Name (Primary Email)*
    2. If SSL is required, set **SMTP Authentication - Enable SSL (Primary Email)** to **True**
    3. If SSL is enabled or authentication is required, specify the *SMTP Authentication User* and *Password (Primary Email)*
    4. If authentication is not required, specify the *SMTP Notification Address (Primary Email)*
    5. For a Secondary SMTP server, repeat Steps 1 - 4 for **(Secondary Email)** settings
    6. For Text Messaging, repeat Steps 1 - 4 for **(Primary SMS)** and **(Secondary SMS)** settings
15. If no email address is specified, **noreply@mycorp.com** is the default. Update this to match your domain
    :::note
    If the SMTP server requires authentication, the SMTP Notification Address is ignored.
    :::
16. Select the **Automatic License Notifications** tab
    :::note
    Continuous **strongly recommends** enabling automatic license notifications. Without this, only the SAM Critical log reports license issues.
    :::

17. Review **Send Email to SMA Office**:
    - Leave set to **Disabled** if Continuous should not receive automatic email notifications for license expiration or monthly task count reports
    - To enable, select the **SMA Office** for your region. SAM will automatically notify the office when the license is expiring or a task count report is due
18. Review **Send Email Cc**:
    - If **Send Email to SMA Office** is Disabled, leave this blank
    - If an SMA office is selected, enter one or more email addresses separated by semicolons (;) to be copied on automatic emails
19. For **Task-based Licensed** customers, review **Encrypt Task License Report**:
    - **False**: Task license report remains in plain text
    - **True**: Task license report is encrypted; only Continuous can decrypt it
20. Select the **Save** ![Save Button](../Resources/Images/Installation/EMsave.png) button
21. Close **Server Options**

**Result:** The ocadm password is changed, SAM server options are configured, and SMTP and license notification settings are saved.

### Create the Machine in OpCon for the Windows Agent on the Server

Create a machine record for the SMA OpCon Agent for Windows installed on the Server.


1. Select **Machines**
2. Select the **Add** ![Add Button](../Resources/Images/Installation/EMadd.png) button on the **Machines** toolbar
3. Enter the *official host name* or *alias* of the OpCon Server machine in the **Name** text box
4. Enter any relevant documentation in the **Documentation** text box
5. Select **Windows** in the **Machine Type** list

6. Enter a *unique number* (e.g., 3100) in the **Socket Number** box
7. *(Optional)* Enter the *IPv4 or IPv6 address* in the **IP Address** field
8. *(Optional)* Enter the *name* in the **Fully Qualified Domain Name** field
9. Select the **Save** ![Save Button](../Resources/Images/Installation/EMsave.png) button
10. Select **Open Advanced Settings Panel**

11. Select the **Communication Settings** tab
12. Select the **Requires XML Escape Sequences** parameter
13. Verify the value is **True**. If **False**, select **True** and select **Update**
14. Select **Save** to close the Advanced Settings Panel

**Result:** The machine record for the Windows Agent on the OpCon server is saved and SMANetCom can begin communicating with the agent.

### Configure Replication or Mirroring

- For SQL replication, refer to [Manual Setup for Microsoft SQL Replication](../Files/Database-Information/Manual-Setup-for-Microsoft-SQL-Replication.md) or [Setup for Automatic Microsoft SQL Replication](../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Replication.md)
- For SQL mirroring, refer to [Setup for Automatic Microsoft SQL Mirroring](../Files/Database-Information/Setup-for-Automatic-Microsoft-SQL-Mirroring.md)

### Import the OpCon Maintenance and Report Jobs

Continuous requires maintenance utilities to be scheduled for optimal OpCon performance. Two transport databases with job templates are provided. Skip this section if you have already imported these schedules.

- **AdHoc.MDB**: Contains three jobs for managing OpCon events (schedule builds, checks, deletes). Refer to [SMA_SKD Jobs on the AdHoc Schedule](../objects/schedules#adhoc-schedule)
- **SMAReports.MDB**: Contains a job to automate all OpCon reports from Continuous. Refer to [Report Generator Schedule](../objects/schedules.md#report-generator-schedule)

:::warning
Back up the OpCon database and transaction log regularly. If the transaction log is not backed up, the hard drive will fill up and OpCon will stop processing.
:::

#### Create DSNs for the Transport Databases


1. Use menu path: **Start \> All Programs \> OpConxps \> Utilities \> Schedule Import Export**
2. Select the **ODBC** button
3. Select the **System DSN** tab
4. Select **Add**
5. Select **Microsoft Access Driver (\*.mdb)** and select **Finish**

6. Enter a *data source name* (e.g., IMPEX) in the **Data Source Name** text box
7. *(Optional)* Enter a *description*
8. Select **Select** and browse to the **Utilities** directory (e.g., C:\\Program Files x86\\OpConxps\\Utilities\\)
9. Select **IMPEX.mdb** and select **OK**
10. Select **OK**
11. Select **Add**
12. Select **Microsoft Access Driver (\*.mdb)** and select **Finish**
13. Enter *AdHoc* in the **Data Source Name** text box
14. *(Optional)* Enter a *description*

15. Select **Select** and browse to the **Utilities** directory
16. Select **AdHoc.mdb** and select **OK**
17. Select **OK**
18. Select **Add**
19. Select **Microsoft Access Driver (\*.mdb)** and select **Finish**
20. Enter *SMAReports* in the **Data Source Name** text box
21. *(Optional)* Enter a *description*

22. Select **Select** and browse to the **Utilities** directory
23. Select **SMAReports.mdb** and select **OK**
24. Select **OK**
25. Select **OK**
26. Select the **SMAReports** DSN and select **OK**

**Result:** The DSNs for the IMPEX, AdHoc, and SMAReports transport databases are created and available for the Schedule Import Export utility.

#### Import the AdHoc Schedule

Complete this procedure to receive notifications when Schedule Build, Check, or Delete processes fail.

1. Use menu path: **File \> Select Access DSN**
2. Select the **AdHoc** datasource and select **OK**
3. Select the **AdHoc** schedule in the **Transport Database**
4. Select the **Import from Transport Database** button
5. Select **Import**

6. Select **OK** on the warning about Batch User IDs
7. Select **Yes** to *purge* jobs or **No** to *merge* jobs
8. Select **Yes** to *purge* dates or **No** to *merge* dates
9. Select **OK** on the termination message

**Result:** The AdHoc schedule is imported into OpCon and the SMA_SKD jobs are available to process events when schedule builds, checks, or deletes fail.

#### Import the SMAReports Schedule

Complete this procedure to automate OpCon reports.

1. Use menu path: **File \> Select Access DSN**
2. Select the **SMAReports** data source and select **OK**
3. Select the **Report Generator** schedule in the **Transport Database**
4. Select the **Import from Transport Database** button
5. On the **Machine** tab, select **localhost** in the left frame

6. In the right frame, select the **Machine Name** defined in [Create the Machine in OpCon for the Windows Agent on the Server](#Create_the_Machine_in_OpCon_for_the_Windows_Agent_on_the_Server)
7. Select **Import**
8. Select **OK** on the warning about Batch User IDs
9. Select **OK** on the termination message

**Result:** The Report Generator schedule is imported into OpCon and OpCon reports are automated using the machine defined on the server.

#### Validate Property Definitions


1. Under Administration in the EM Navigation Panel, select **Global Properties**
2. Select **SMADBCredentials** in the **Select Global Property** list
3. In the **Global Property Value** text box, verify the *User Name* and *Password*:
   - **-uocadm** is the default user name. Continuous recommends updating this to a user other than ocadm
   - **-w\*\*\*\*\*\*\*\*\*\*\*\*** is the default password for ocadm. Replace the 12 asterisks with the actual ocadm password set in [OpCon Server Configuration](#Change_the_MaintenanceUser_Password)
   - Select **Save** ![Save Button](../Resources/Images/Installation/EMsave.png)
4. Select **SMAOpConDataPath** and verify the path to the <Configuration Directory\> on the SAM server. Modify if different from the default (C:\\ProgramData\\OpConxps\\). Select **Save**
5. Select **SMAOpConOutputPath** and verify the path to <Output Directory\> on the SAM server. Modify if different from the default. Select **Save**
6. Select **SMAOpConPath** and verify the path to the Utilities folder on the SAM server. Modify if different from the default (C:\\Program Files\\OpConxps\\). Select **Save**
7. Select **SMAAdminEmail** and enter an *email address* (or multiple addresses separated by semicolons) for the OpCon administrator. Select **Save**
8. If **UNIX LSAMs** exist:
   - Select **UNIXLSAMPath** and verify the path to the "bin" directory on the UNIX machine
9. Select **DB_SERVER_NAME** and verify the OpCon database server name. Modify if different from the default. Select **Save**
10. Select **SqlMaintUser** and verify the SQL maintenance user name. Modify if different from the default. Select **Save**
11. Select **SqlMaintPassword** and verify the SQL maintenance password. Modify if different from the default. Select **Save**
12. Select **DatabaseName** and verify the OpCon database name. Modify if different from the default. Select **Save**
13. Select **PathToFullBackupFile** and verify the path to the full backup file. Modify if different from the default (C:\\Program Files\\Microsoft SQL Server\\MSSQL14.MSSQLSERVER\\MSSQL\\Backup\\SMADB_Backup.bak). Select **Save**
14. Select **PathToTranLogBackupFile** and verify the path to the transaction log backup file. Modify if different from the default (C:\\Program Files\\Microsoft SQL Server\\MSSQL14.MSSQLSERVER\\MSSQL\\Backup\\SMATLog_Backup.bak). Select **Save**

**Result:** All required global properties are verified and saved with the correct values for the installation environment, and maintenance jobs will use the updated credentials and paths.

#### Configure Jobs and Set Up Notification for All Maintenance Jobs

Most maintenance jobs run without additional configuration, but several require it. Refer to [OpCon Data Maintenance](../Files/Database-Information/OpCon-Data-Maintenance.md) for details on each job. No notifications are configured by default except for AdHoc jobs. Use [Event Notification](../notifications/Components.md) to configure notifications for groups of jobs, or [Job Events](../Files/UI/Enterprise-Manager/Job-Events.md) to configure notifications per job using `$NOTIFY:<Action>` events. Refer to [Defining Events](../events/defining.md) for more information.

:::caution
Without notifications, no one is alerted when schedule builds or critical maintenance processes fail.
:::

## Start the Services and Finalize Setup

The SMA Service Manager requires a valid license file from Continuous before processing.

- For an upgrade, the existing license file continues to work
- For new installations:
  - If a temporary license file was provided, save it to the SAM folder before starting
  - If no temporary license file exists, start the service to get the information needed to request a full license

### Configure the SMA Service Manager and Start the Service

The SMA Service Manager manages the SAM and all supporting services. Only the SMA Service Manager requires startup. Startup type configuration varies when implementing failover.

1. Use menu path: **Start \> Control Panel**

2. Select **Administrative Tools**
3. Select **Services**
4. Scroll to **SMA OpCon Service Manager** in the **Services** list
5. Select **SMA OpCon Service Manager**
6. Set **Startup type** to **Automatic (Delayed Start)**
7. Select **OK**
8. Select **SMA OpCon Service Manager**
9. Select **Start** on the toolbar
10. Review the log files to verify the SAM-SS connected successfully. Use menu path: **Start \> All Programs \> OpConxps \> Log Monitors** to view log file names

**Result:** The SMA Service Manager is started with Automatic (Delayed Start) and the SAM-SS components begin connecting to the database and processing schedules.

### Request a License File

1. Log in to the **Enterprise Manager**
2. Use menu path: **Help \> About OpCon Enterprise Manager**
3. Select the **License Information** tab
4. Select the **System ID \[e.g., (SMAServer_1234)\]** at the end of the first line
5. Right-click and select **Copy**
6. Email <license@smatechnologies.com> with subject **License File Request**, including:
   - Environment for the SAM and database (e.g., Production)
   - The System ID (press **Ctrl + V** to paste)
   - Your company name

**Result:** The license request email is sent to Continuous with the System ID and environment details required to generate the permanent license file.

### Place the License File in the SAM Directory

After Continuous responds, save the license file to the SAM directory.

:::caution
If the license file is encrypted after receipt (e.g., saved to a folder with "Encrypt contents to secure data" enabled), SAM cannot read it.
:::

1. Open the email containing the license file
2. Right-click the **license file** and select **Save As**
3. Browse to the <Configuration Directory\>**\\SAM** directory
4. Select **Save**

**Result:** The license file is saved in the SAM directory and SAM can read it on the next start.

### Start the SMA Service Manager after Applying the License File for the First Time

For new installations receiving a license file for the first time, start the SMA Service Manager.

To start the Services and Finalize Setup, complete the following steps:

1. Use menu path: **Start \> Control Panel**
2. Select **Administrative Tools**
3. Select **Services**
4. Scroll to **SMA Service Manager** in the **Services** list
5. Select **SMA Service Manager**
6. Select **Start** on the toolbar
7. Review the log files to verify the SAM-SS connected successfully. Use menu path: **Start \> All Programs \> OpConxps \> Log Monitors** to view log file names

**Result:** The SMA Service Manager starts with the permanent license applied and the SAM-SS components begin processing schedules and jobs.

### Create User Scripts and Custom Programs

Place user scripts and custom programs in the folders below to prevent them from being deleted during upgrades.

- User scripts: <Configuration Directory\>**\\Scripts\\**
- Custom programs: <Target Directory\>\\OpConxps\\Binn\\

## Security Considerations

### Authentication

The ocadm account is created during installation with a default password of 12 asterisks. This password must be changed immediately after first login. The SMADBCredentials global property stores the username and password used by maintenance scripts; Continuous recommends updating this to a user other than ocadm.

The Enterprise Manager database connection supports SQL Authentication (using opconui credentials) or Windows Authentication. For Windows Authentication, the SMA Service Manager must run as a user with privileges to the OpCon database. System DSNs used by utilities require the user to run ODBC Data Sources as Administrator.

For SMTP, if the server requires authentication, the SMTP Authentication User and encrypted Password must be configured. If SSL is required, SMTP Authentication - Enable SSL must be set to True. The SMTP Notification Address is ignored when authentication is configured.

LDAP Monitor credentials (UserName, Password, DefaultUserPassword) must be encrypted using the Enterprise Manager password encryption tool or the `--credentials` command-line option before being stored in the SMALDAPMon.ini file.

### Authorization

Configuring SQL permissions for maintenance scripts requires the running SQL user to have the db_owner role on the OpCon database. For Windows Authentication, the OpCon Active Directory group must be added to the SQL Server logins and granted the opconxps database role and View Server State permission.

The SMADBCredentials global property, which contains credentials used by all scheduled maintenance jobs, must be reviewed and updated during configuration to reflect the actual ocadm password.

### Data Security

The license file must not be stored in a Windows folder with "Encrypt contents to secure data" enabled, as this prevents SAM from reading it. SQL maintenance credentials (SqlMaintUser, SqlMaintPassword) are stored as global properties and should be restricted to authorized administrators. The OpCon database transaction log must be backed up regularly; failure to do so causes the hard drive to fill and OpCon to stop processing.

## Operations

### Monitoring

- The OpCon database transaction log must be backed up regularly; failure to do so causes the hard drive to fill and OpCon to stop processing. Monitor available disk space on the SQL Server machine.
- The `SMADBCredentials` global property contains credentials used by all scheduled maintenance jobs; review and update it after configuration to reflect the actual ocadm password.
- The license file must not be saved to a Windows folder with "Encrypt contents to secure data" enabled, as this prevents SAM from reading it and starting correctly.

### Common Tasks

- **Apply a temporary license**: Copy the `0.lic` file from the distribution media root to `<Configuration Directory>\SAM\`.
- **Configure database connection for the OpCon server**: Use **Start > All Programs > OpConxps > Utilities > SMA Connection Config**; enter server name, database name, and credentials, then select **Connect**.
- **Add or tune REST API connection pool size**: Stop the OpCon REST API service, edit `C:\ProgramData\OpConxps\SAM\SMAODBCConfiguration.DAT` to append `MaxPoolSize=500` (or desired value), then restart the service. Back up the file before editing.

### Alerts and Log Files

- The EM installation writes a log file named `SMA_OpCon_Enterprise_Manager_<CPUType>_Install.log` to the Windows directory; consult it if installation problems are suspected.
- Notification configuration for maintenance schedule failures requires explicitly setting up event notifications (e.g., `$NOTIFY` events) on critical AdHoc or SMAUtility jobs; without this, failures go unnoticed.
- Configure SQL maintenance scripts via the **SMA OpCon Configuration Utility** (**Start > All Programs > OpConxps > Utilities > SMA OpCon Configuration Utility**); running SQL users must have the `db_owner` role on the OpCon database.

## Exception Handling

**SQL Server instance name in EM profile requires SQL Server Browser service to be running** — When the server name contains a backslash (indicating a SQL Instance Name), the EM cannot connect to the database unless the SQL Server Browser service is running on that server — Start the SQL Server Browser service on the SQL Server machine before attempting to configure the EM database connection profile.

**Database connection test fails during profile setup** — If the database connection test in the EM profile wizard fails, the profile cannot proceed to the next step — Select Back, verify the server name, authentication credentials, and database name, then test again; consult SMA support if the login credentials are unknown.

**DSN name matches the SQL Server instance name and causes conflicts** — Setting the system DSN name to the same name as the SQL Server instance can cause conflicts — Use a unique name for the DSN, such as the database name, and do not reuse the SQL Server instance name.

**REST API connection string edits require stopping the service first** — Editing `SMAODBCConfiguration.DAT` while the OpCon REST API service is running can result in data corruption or the changes being overwritten — Stop the OpCon REST API service before editing the file; restart the service after saving changes.

**License file encrypted at rest prevents SAM from reading it** — If the license file is saved to a Windows folder with "Encrypt contents to secure data" enabled, SAM cannot read the file and OpCon will not start correctly — Disable file encryption on the SAM folder or save the license file to a non-encrypted location within the SAM directory.

**No notifications configured for maintenance schedule failures** — Without notification configuration, no one is alerted when schedule builds or critical maintenance processes fail — Configure notifications using Event Notification for job groups or Job Events using `$NOTIFY:<Action>` events to alert administrators when maintenance or AdHoc schedule jobs fail.

## FAQs

**Q: When should OpCon Server Configuration be performed?**

Perform server configuration after a new installation. After an upgrade, review the configuration items to confirm the server is still configured correctly.

**Q: What is the temporary license used for?**

The temporary license (0.lic file) allows you to run OpCon immediately after installation while waiting for a permanent license file from Continuous.

**Q: Where should user scripts and custom programs be stored to survive future upgrades?**

Place user scripts in `<Configuration Directory>\Scripts\` and custom programs in `<Target Directory>\OpConxps\Binn\` to prevent them from being deleted during upgrades.

## Glossary

**SMADDI (SMA Dynamic Data Input)**: An optional OpCon component that dynamically updates the OpCon database using XML text files placed in monitored input directories. SMADDI uses a Windows service and stored procedures to validate and commit the data.

**DSN (Data Source Name)**: An ODBC connection identifier that stores database connection parameters. OpCon utilities use system DSNs to connect to the OpCon SQL Server database.

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SMA Resource Monitor (SMARM)**: A Windows service that monitors files, counters, services, and processes on Windows machines. When a monitored condition is met, it sends OpCon events to trigger automation actions.

**SMA Connection Configuration**: A utility that generates the database connection file (.dat) used by OpCon server programs and utilities to connect to the OpCon SQL Server database.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.
