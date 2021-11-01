# Configuration

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

In this mode, the SMADDI service is able to monitor input directories on
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

1. Use menu path: **Start \> Control Panel**.
2. Double-click the **Administrative Tools** icon.
3. Double-click the **Services** icon to run the Service Control
    Manager.
4. Double-click **SMA Dynamic Data Input**.
5. Select **Automatic** in the **Startup Type** drop-down list.
6. Click the **Log On** tab.
7. Click the **This account** radio button.
8. Click **Browse** to find the Domain User.
9. Click the **Domain User** and click **OK**.
10. Enter the *password* in the **Password** text box.
11. Reenter the *password* in the **Confirm Password** text box and
    click **OK**.
12. **Close ☒** the **Services** window.

### Second Option: Running the Service as the Local System

In this mode, the SMADDI service is only able to monitor input
directories on the local machine.

#### Configure the Service to Run as a Local System on Windows

1. Use menu path: **Start \> Control Panel**.
2. Double-click the **Administrative Tools** icon.
3. Double-click the **Services** icon to run the Service Control
    Manager.
4. Double-click **SMA Dynamic Data Input**.
5. Select **Automatic** in the **Startup Type** drop-down list..
6. Click the **Log On** tab.
7. Click **Local System account** radio button and click **OK**.
8. **Close ☒** the **Services** window.

## Configuring the Database Connection

To configure SMADDI's database connection to the OpCon database, use the
SMA ODBC Configuration tool.

### Create a System DSN

Select a Driver

1. Log in as a *Windows user with Local Administrative Rights*.
2. Use menu path: **Start \> All Programs \> OpConxps \> DDI \> SMA
    ODBC Configuration**.
3. Click the **ODBC** button.
4. Click the **System DSN** tab.
5. Click **Add**.
6. Select the **SQL Server Native Client** driver in the **Name**
    column then click **Finish**.

Define ODBC Details

In the Create a New Data Source to SQL Server window:

Enter a unique *Data Source name* in the **Name** field. SMA Technologies suggests using the name of the
database.

:::warning
Do not use the same name as the SQL server instance name.
:::

Enter *Connection to the OpCon scheduling database* in the
**Description** field.

Enter, in the **Server** field, the *Host Name* of the server hosting
the database with which the SAM will be communicating then click
**Next**.

Select the **With SQL Server authentication using a login ID and
password entered by the user** radio button.

Enter *opconui* in the **Login ID** field.

Enter *opconui's password* in the **Password** field then click
**Next**.

Select the **Change the default database to** checkbox.

Select the **OpCon database**.

Accept the remaining default values on the screen and click the **Next**
button.

Accept all default values on the last screen and click the **Finish**
button.

In the ODBC MS SQL Server Setup window:

Click the **Test Data Source** button.

If the test succeeds, exit the ODBC administrator by clicking **OK** on
subsequent screens.

If the test fails, click **Cancel**.

i.  Click the **Back** button until the screen from step 7 is displayed.
ii. Repeat Steps 7 - 17 until the test is successful.

In the ODBC Data Source Administrator window:

Click **OK**.

### Configure the Database Connection Information

After creating the System DSN, return to the **SMA ODBC Configuration**
window.

In the SMA ODBC Configuration window:

Click the **General** tab.

On the General tab:

In the **Data Source Name** list box, choose the **Data Source Name
(DSN)** created in the previous procedure.

Choose Step 5 or 6 for your desired authentication method.

For SQL Authentication:

a.  Enter *opconsam* in the **Database Login ID** field.
b.  Click the **Connect** button.
c.  Enter the *opconsam password* in the **Verify Password** field and
    click **OK**.
d.  If Verification is successful, click **OK**. If Verification fails,
    click **OK** on the failure message and go back to Step 5.

For Windows Authentication to SQL Server:

a.  Select the **Use Windows Authentication** checkbox.
b.  Click the **Connect** button.
c.  If Verification is successful, click **OK**. If Verification fails,
    click **OK** on the failure message and contact your SQL
    administrator.

## Configuring the SMADDI Service

To change the configuration of the SMADDI service, open and modify the
SMADDI.ini file. The .ini file contains:

- [General Settings](#General)
- [Debug Options](#Debug)
- [Directories to Monitor](#Director)

### Modify the SMADDI Configuration File

1. Right click **Start** then select **Explore** to open **Windows
    Explorer**.
2. Browse to the **DDI** directory.
3. Right-click the **SMADDI.ini** file.
4. Select **Open With** in the right-click menu.
5. Select **Notepad** in the **Choose the program you want use** list
    box.
6. Make any necessary modifications to the .ini file in **Notepad**.
    For complete information on the SMADDI.ini settings, refer to the
    tables in the next sections.
7. Use menu path: **File \> Save**.
8. **Close ☒ Notepad**.

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

+--------------------+---------+-------------------------------------+
| Debug Options      | Default | Description                         |
+====================+=========+=====================================+
| ArchiveDaysToKeep  | 7       | -   Sets the number of days of log  |
|                    |         |     history to keep.                |
|                    |         | -   SMADDI only cleans out files    |
|                    |         |     when active. Consequently,      |
|                    |         |     archive files may exist beyond  |
|                    |         |     this defined day range. For     |
|                    |         |     example, if SMADDI is inactive  |
|                    |         |     for 60 days, archive files may  |
|                    |         |     exist for two months before     |
|                    |         |     cleanup.                        |
|                    |         | -   Automatic cleanup reduces the   |
|                    |         |     disk storage required for       |
|                    |         |     logging.                        |
+--------------------+---------+-------------------------------------+
| MaximumLogFileSize | 150000  | Sets the maximum size in bytes for  |
|                    |         | each log file.                      |
+--------------------+---------+-------------------------------------+
| CreateOutputFile   | Yes     | -   Determines if an output file    |
|                    |         |     should be written for each file |
|                    |         |     that is processed.              |
|                    |         | -   If No, output files are not     |
|                    |         |     written.                        |
|                    |         | -   If Yes, output files are        |
|                    |         |     written.                        |
|                    |         | -   Output files are written to the |
|                    |         |     Output subdirectory of the      |
|                    |         |     respective directory being      |
|                    |         |     monitored by the SMADDI         |
|                    |         |     Service.                        |
|                    |         | -   Output filenames are the same   |
|                    |         |     as the output filename with     |
|                    |         |     **--Out** appended. For         |
|                    |         |     example, the input file of      |
|                    |         |     NewMaster.txt would be called   |
|                    |         |     NewMaster-Out.txt.              |
+--------------------+---------+-------------------------------------+
| Trace              | OFF     | -   Determines if the SMADDI        |
|                    |         |     service writes the string       |
|                    |         |     passed to the stored procedures |
|                    |         |     to the SMADDI.log file.         |
|                    |         | -   If OFF, stored procedure data   |
|                    |         |     is not traced.                  |
|                    |         | -   If ON, stored procedure data is |
|                    |         |     written to the log file.        |
+--------------------+---------+-------------------------------------+

: SMADDI Configuration: Debug Options

### Directories to Monitor

The Directories to Monitor section contains the list of directories to
be monitored by the SMADDI service. Up to 20 different directories may
be monitored. The following settings are NOT dynamic. The SMADDI service
must be stopped and restarted to detect any changes.

  Directories to Monitor   Default     Description
  ------------------------ ----------- --------------------------------------------
  Dir1                     C:\\temp1   An input directory for the SMADDI service.

  : SMADDI Configuration: Directories to Monitor Settings
:::
