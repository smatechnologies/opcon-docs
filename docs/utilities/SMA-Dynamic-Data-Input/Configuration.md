---
title: Configuration
description: "After the SMADDI service has been installed with the SAM and the SMADDI stored procedures have been installed with the database, address the following topics before starting the service: -."
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

# Configuration

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

After the SMADDI service has been installed with the SAM and the SMADDI
stored procedures have been installed with the database, address the
following topics before starting the service:

- [Configuring the Windows Service Options](#Configur)
- [Configuring the Database Connection](#Configur2)
- [Configuring the SMADDI Service](#Configur3)

## Configuring the Windows Service Options

There are two options for configuring the SMADDI service based on the
way the service is used:

### First Option: Running the Service as a Windows Domain User

In this mode, the SMADDI service can monitor input directories on
the local machine and on the network.

See the Domain Administrator about acquiring the appropriate privileges.
The domain user must have the following privileges:

- Membership in the local administrator group
- Log on as a service
- Act as part of the operating system
- Increase quotas
- Replace a process-level token

:::caution
This user must log on to this machine BEFORE trying to start the service. The initial login creates a Windows user profile required by the SMADDI service running as a Domain User.
:::

#### Configure the Service to Run as a Domain User on Windows

1. Use menu path: **Start \> Control Panel**
2. Select the **Administrative Tools** icon
3. Select the **Services** icon to run the Service Control
    Manager.
4. Select **SMA Dynamic Data Input**
5. Select **Automatic** in the **Startup Type** list
6. Select the **Log On** tab
7. Select the **This account** radio button
8. Select **Browse** to find the Domain User
9. Select the **Domain User** and select **OK**
10. Enter the *password* in the **Password** text box
11. Reenter the *password* in the **Confirm Password** text box and
    select **OK**.
12. **Close ☒** the **Services** window

### Second Option: Running the Service as the Local System

In this mode, the SMADDI service is only able to monitor input
directories on the local machine.

#### Configure the Service to Run as a Local System on Windows

1. Use menu path: **Start \> Control Panel**
2. Select the **Administrative Tools** icon
3. Select the **Services** icon to run the Service Control
    Manager.
4. Select **SMA Dynamic Data Input**
5. Select **Automatic** in the **Startup Type** list
6. Select the **Log On** tab
7. Select **Local System account** radio button and select **OK**
8. **Close ☒** the **Services** window

## Configuring the Database Connection

To configure SMADDI's database connection to the OpCon database, use the
SMA ODBC Configuration tool.

### Create a System DSN

Select a Driver

To configure the Database Connection, complete the following steps:

1. Log in as a *Windows user with Local Administrative Rights*
2. Use menu path: **Start \> All Programs \> OpConxps \> DDI \> SMA
    ODBC Configuration**.
3. Select the **ODBC** button
4. Select the **System DSN** tab

5. Select **Add**
6. Select the **SQL Server** driver in the **Name**
    column then select **Finish**.

Define ODBC Details

In the Create a New Data Source to SQL Server window:

Enter a unique *Data Source name* in the **Name** field. Continuous suggests using the name of the
database.

:::warning
Do not use the same name as the SQL server instance name.
:::

Enter *Connection to the OpCon scheduling database* in the
**Description** field.

Enter, in the **Server** field, the *Host Name* of the server hosting
the database with which the SAM will be communicating then select
**Next**.

Select the **With SQL Server authentication using a login ID and
password entered by the user** radio button.

Enter *opconui* in the **Login ID** field.

Enter *opconui's password* in the **Password** field then select
**Next**.

Select the **Change the default database to** option.

Select the **OpCon database**.

Accept the remaining default values on the screen and select the **Next**
button.

Accept all default values on the last screen and select the **Finish**
button.

In the ODBC MS SQL Server Setup window:

Select the **Test Data Source** button.

If the test succeeds, exit the ODBC administrator by clicking **OK** on
subsequent screens.

If the test fails, select **Cancel**.

i.  Select the **Back** button until the screen from step 7 is displayed.
ii. Repeat Steps 7 - 17 until the test is successful.

In the ODBC Data Source Administrator window:

Select **OK**.

### Configure the Database Connection Information

After creating the System DSN, return to the **SMA ODBC Configuration**
window.

In the SMA ODBC Configuration window:

Select the **General** tab.

On the General tab:

In the **Data Source Name** list box, choose the **Data Source Name
(DSN)** created in the previous procedure.

Choose Step 5 or 6 for your desired authentication method.

For SQL Authentication:

a.  Enter *opconsam* in the **Database Login ID** field.
b.  Select the **Connect** button.
c.  Enter the *opconsam password* in the **Verify Password** field and
    select **OK**.
d.  If Verification is successful, select **OK**. If Verification fails,
    select **OK** on the failure message and go back to Step 5.

For Windows Authentication to SQL Server:

a.  Select the **Use Windows Authentication** option.
b.  Select the **Connect** button.
c.  If Verification is successful, select **OK**. If Verification fails,
    select **OK** on the failure message and contact your SQL
    administrator.

## Configuring the SMADDI Service

To change the configuration of the SMADDI service, open and modify the
SMADDI.ini file. The .ini file contains:

- [General Settings](#General)
- [Debug Options](#Debug)
- [Directories to Monitor](#Director)

### Modify the SMADDI Configuration File

1. Right select **Start** then select **Explore** to open **Windows
    Explorer**.
2. Browse to the **DDI** directory
3. Right-click the **SMADDI.ini** file
4. Select **Open With** in the right-click menu
5. Select **Notepad** in the **Choose the program you want use** list
    box.
6. Make any necessary modifications to the .ini file in **Notepad**
    For complete information on the SMADDI.ini settings, refer to the
    tables in the next sections.
7. Use menu path: **File \> Save**
8. **Close ☒ Notepad**

### General Settings

The General Settings section contains information about how the service
interacts with the Windows operating system. Do not modify these
settings.

  General Settings     Default                  Description
  -------------------- ------------------------ ------------------------------------------------------------
  ShortServiceName     SMA_DDI                  The hidden internal service name Windows refers to.
  DisplayServiceName   SMA Dynamic Data Input   The service name displayed in the Service Control Manager.

  : SMADDI Configuration: General Settings

### Debug Options

The Debug Options section contains information about logging. All of the
following settings are dynamic. The SMADDI service automatically detects
any changes.

|Debug Options|Default|Description|
|--- |--- |--- |
|ArchiveDaysToKeep|7|Sets the number of days of log history to keep. SMADDI only cleans out files when active. Consequently, archive files may exist beyond this defined day range. For example, if SMADDI is inactive for 60 days, archive files may exist for two months before cleanup. Automatic cleanup reduces the disk storage required for logging.|
|MaximumLogFileSize|150000|Sets the maximum size in bytes for each log file.|
|CreateOutputFile|Yes|Determines if an output file should be written for each file that is processed. Output files are written to the Output subdirectory of the respective directory being monitored by the SMADDI Service. Output filenames are the same as the output filename with –Out appended. For example, the input file of NewMaster.txt would be called NewMaster-Out.txt.|
|Trace|OFF|Determines if the SMADDI service writes the string passed to the stored procedures to the SMADDI.log file.|

### Directories to Monitor

The Directories to Monitor section contains the list of directories to
be monitored by the SMADDI service. Up to 20 different directories may
be monitored. The following settings are NOT dynamic. The SMADDI service
must be stopped and restarted to detect any changes.

|Directories to Monitor|Default|Description|
|--- |--- |--- |
|Dir1|C:\temp1|An input directory for the SMADDI service.|

## Security Considerations

### Authentication

The SMADDI database connection supports two authentication methods: SQL Authentication using the opconsam Login ID and password, or Windows Authentication to SQL Server. The correct method is selected in the SMA ODBC Configuration tool.

When the service runs as a Windows Domain User (required to monitor network directories), that domain user must log on to the machine at least once before the service is started. The initial login creates the Windows user profile required by the service. The domain user requires specific OS-level privileges: membership in the local administrator group, log on as a service, act as part of the operating system, increase quotas, and replace a process-level token. When running as Local System, the service can only monitor local directories.

### Data Security

The ODBC System DSN used by SMADDI must not share its name with the SQL Server instance name. The DSN stores the database server hostname, database name, and authentication credentials used to connect to the OpCon scheduling database.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## Operations

### Common Tasks
- Set the SMADDI service Startup Type to **Automatic** in the Windows Service Control Manager; choose either **Domain User** (to monitor network directories) or **Local System** (local directories only).
- After modifying `Directories to Monitor` in `SMADDI.ini`, stop and restart the SMADDI service — these settings are not dynamic and require a restart to take effect.
- `Debug Options` settings (log file size, archive retention, trace, output file creation) are dynamic and take effect without a service restart.

### Alerts and Log Files
- SMADDI logs processing details to `SMADDI.log`; the `MaximumLogFileSize` (default: 150,000 bytes) controls when logs roll over.
- The `ArchiveDaysToKeep` setting (default: 7 days) controls how long archived log files are retained; SMADDI only cleans archive files when active.
- Set `CreateOutputFile=Yes` to generate an output file (named `<InputFile>-Out.txt`) for each file processed, written to the Output subdirectory of the monitored directory.
- Set `Trace=ON` to write stored procedure input strings to `SMADDI.log` for debugging.

## Exception Handling

**SMADDI service fails to start when running as a Domain User** — If the Domain User account has never logged on to the machine, no Windows user profile exists, and the service cannot start — The Domain User must log on to the machine interactively at least once before the service is started for the first time so that the required profile is created.

**Database connection test fails during ODBC DSN setup** — If the Test Data Source step returns a failure, the connection details (server name, login ID, or password) are incorrect or the database is unavailable — Select Cancel and go back to correct the server name, authentication credentials, or database selection, then retry the test until it succeeds.

**SQL Authentication verification fails in SMA ODBC Configuration** — If Verification fails after entering the opconsam credentials, the password or login ID is incorrect or the account lacks access to the OpCon database — Select OK on the failure message, correct the credentials, and attempt verification again; for Windows Authentication failures, contact your SQL administrator.

**Data Source name conflicts with SQL server instance name** — Using the same name for the DSN as the SQL server instance name causes connection problems — Use a unique Data Source name (Continuous suggests using the name of the database) that does not match the SQL server instance name.

## FAQs

**Q: What are the two options for configuring the SMADDI Windows service account?**

The service can run as the Local System account (local directories only) or as a Windows Domain User (local and network directories). The Domain User must have specific privileges including local administrator membership, log on as a service, and act as part of the operating system.

**Q: What must a Domain User do before starting the SMADDI service for the first time?**

The Domain User must log on to the machine at least once before the service starts. The initial login creates the Windows user profile required by the SMADDI service when running as a Domain User.

**Q: What name should you avoid when creating a System DSN for the SMADDI database connection?**

Do not use the same name as the SQL server instance name for the Data Source Name (DSN). Continuous suggests using the database name as the DSN name to avoid connection problems caused by name conflicts.

## Glossary

**SMADDI (SMA Dynamic Data Input)**: An optional OpCon component that dynamically updates the OpCon database using XML text files placed in monitored input directories. SMADDI uses a Windows service and stored procedures to validate and commit the data.

**DSN (Data Source Name)**: An ODBC connection identifier that stores database connection parameters. OpCon utilities use system DSNs to connect to the OpCon SQL Server database.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
