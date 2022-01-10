# Component Installations

This topic contains instructions for installing the Enterprise Manager and Optional Server components as stand-alone installations. Click on any of the following links to access the installation instructions:

- [Enterprise Manager](#enterprise-manager)
- [SMA OpCon Configuration Utility](#SMA5)
- [SMA OpCon Core](#SMA_OpCon_Core)
- [SMA OpCon DDI](#SMA6)
- [SMA OpCon Schedule Import Export](#SMA)
- [SMA OpCon SNMP Agent](#SMA9)
- [SMA Resource Monitor](#SMA10)
- [Silent Mode](#Silent)

## Enterprise Manager

The Enterprise Manager (EM) is a rich client application for OpCon. To install the Enterprise Manager, use the following procedures:

- [New Installation on Windows](#new-installation-on-windows)
- [Upgrade Installation on Windows](#upgrade-installation-on-windows)
- [Installation on Linux](#installation-on-linux)
- [Installation on Mac OSX](#installation-on-mac-osx)
- [Automatic Updates](#automatic-updates)

### New Installation on Windows

If the Enterprise Manager has never been installed on a Windows machine, complete the procedures in this section to install the EM.

1. Log in as a *Windows user with Local Administrative Rights*.
2. Exit all running applications on the desktop (including OpCon applications).
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and launch the installer for the Enterprise Manager application. *For a new install, once you determine which package on the **Packages** screen that you would like to install, you will select **Install** from the **Action** drop-down list then select the version.*
5. Go through each screen to complete the wizard.
6. Click **Finish**.

:::note
In order for a user to log in to Enterprise Manager, a Database Connection Profile for the OpCon database must exist on the machine. If a profile does not exist, complete the procedure to [create a profile](#Create_a_Profile_for_the_EM_to_Connect_to_the_Database).
:::

:::note
The installation writes the log file named SMA_OpCon_Enterprise_Manager\_<CPUType\>\_Install.log to the Windows directory. Consult this file if any installation problems are suspected.
:::

#### Create a Profile for the EM to Connect to the Database

Set up the EM profile to connect to the same database as the SAM as per the procedure to [Create System DSNs](./configuration.md#Create_System_DSNs).

1. Use menu path: **Start \> All Programs \> OpConxps \> Enterprise Manager**.
2. On the Welcome screen: Click **OK**.
3. On the Database Connection Profile screen: Enter a *Profile Name*in the **Profile Name** text box.
4. Choose your authentication method and connect to the database.
   - To use SQL Authentication, enter *opconui* in the **Username** field and enter *opconui's password*in the **Password** text box.
   - To use Windows Authentication, select the **Use Windows Authentication** checkbox.
5. Enter the *Server name* or *IP Address* in the **SQL Server** text box.
   :::caution
   If connecting to a Server with a backslash (\\) in the name, this means the server uses SQL Instance Names. The SQL Server Browser services must be running on that server for the EM to successfully connect to the database.
   :::
6. Select the **database** in the **Database** drop-down list or click the **Database** button to show the *available databases*.
   :::note
   The list of databases will only be made available once each of the previous text boxes have been filled in.
   :::
7. *(Optional)* Type the *Timeout (sec)* (It is set to 30 by default).
8. *(Optional)* Click on the **Color** button, select the desired **profile color**, and click **OK**.
9. Click **Next** to advance to the next window.
   :::note
   The next window will indicate whether the database connection has tested successfully.
   :::
10. If the test was not successful: Click the **Back** button to correct the problem and try again.
11. If the test was successful: Click the **Next** button to go on to choose the method for connecting to the SAM application server for reading log files.
12. On the OpCon data location screen: Choose the **Directory with Windows integrated authentication** radio button.
    :::note
    For the default \[\[SERVER\]\] token in the UNC path to the OpConxps directory on the SAM server, the EM will automatically replace that token with the database server IP/Hostname specified in the profile (refer to Step 5). With this token in place, if you change the database server in the profile you will not need to change the UNC path (as long as the share directory is the same).
    :::
    - If on the OpCon server, in the **Path** field, enter the path to the <Output Directory\>.
    - If on any other Windows machine on the same Domain, first share the <Output Directory\> (e.g., C:\\ProgramData\\OpConxps) on the OpCon server to users and grant the each user Read permission. Then, in the **Path** field, enter or browse to select the path to the <Output Directory\> on the server.
13. Click **Finish** to save the profile.

#### Distribute Connection Profiles

After configuring the connection profiles on one machine for the EM, you can distribute the profiles to all other EM machines with a simple file copy. After first installation on many machines, this process may be helpful; however, after users have configured their own profiles there may be a reason they should have a unique set of connection profiles. Before overwriting a user's connection profiles, be sure to back up their existing profiles.xml file.

1. On the machine with all the EM profiles already configured, browse to the **.enterpriseManager** in the *user directory*.
2. Right-click the **profiles.xml** file and select **Copy** from the menu.
3. Browse to a *network location* available to all users.
4. Right-click and select **Paste** from the menu.
5. In any other EM machine, browse to the *shared location* and copy the file.
6. On the other EM machine, browse to the user's **.enterpriseManager** in the *user directory*.
7. Right-click in the directory and select **Paste** from the menu.
8. If a **Profiles.xml file** already exists, confirm if you should overwrite the file.

:::note
SMA Technologies recommends automating distribution of a "central" Profiles.xml file with an OpCon job if common profile information should always be maintained from a single point.
:::

### Upgrade Installation on Windows

SMA Technologies recommends configuring Automatic updates for the Enterprise Manager (EM). For more information, refer to [Automatic Updates](#automatic-updates). If a manual upgrade is required, complete the procedures in this section to uninstall and reinstall the EM.

1. Log in as a *Windows user with Local Administrative Rights*.
2. Exit all running applications on the desktop (including OpCon applications).
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and launch the installer for the Enterprise Manager application. *For an upgrade, once you determine which package on the **Packages** screen that you would like to upgrade, you will select **Upgrade** from the **Action** drop-down list then select the version.*
5. Go through each screen to complete the wizard.
6. Click **Finish**.

:::note
The installation writes the log file named SMA_OpCon_Enterprise_Manager\_<CPUType\>\_Install.log to the Windows directory. Consult this file if any installation problems are suspected.
:::

### Installation on Linux

Follow the procedure in this section to install the Enterprise Manager on a supported Linux system.

1. Remove the previous **Enterprise Manager folder**.
2. Extract the **zip file** to the desired location.
3. Execute **EnterpriseManager**.

### Installation on Mac OSX

Follow the procedure in this section to install the Enterprise Manager on a supported Mac OSX system.

1. Remove the previous **Enterprise Manager folder**.
2. Download the **EnterpriseManager-macosx.cocoa.x86_64.zip** file from the OpCon release.
3. Open a *command line* and run the following command to allow MacOS to run EnterpriseManager.app:

   ```shell
   cd <EM Install Dir\>
   xattr -c EnterpriseManager.app
   ```

4. Download **AdoptOpenJDK 8 JRE .tar.gz** at the following location: <https://adoptopenjdk.net/releases.mdl>.
   1. Select version **OpenJDK 8** **JRE - 38 MB .tar.gz**.
   2. Extract the **JRE**.
   3. Rename the *folder* **«jre8»**.
   4. Move the *folder* to an appropriate location (e.g., the EnterpriseManager install folder).
5. Update the **EnterpriseManager.ini** file to point to the **jre8** downloaded in the previous step.
6. Right-click on **EnterpriseManager.app** and select *show packet content*.
7. In the app folder, drill-down into **Contents/MacOS**.
8. Open the **EnterpriseManager.ini** file.
   1. Add the location of the **jre8** (e.g., a relative path to the Enterprise Manager).
   2. Insert a *line 5* with `«-vm»`.
   3. Insert a *line 6* with `«../../../jre8/Contents/Home/lib/jli/libjli.dylib»`.
   4. Line 7 should now be `«-vmargs»` (which was line 5 before the file was edited).
9. **Save** the file.

You should be able to double-click and run the **EnterpriseManager.app**. You might see a security message that asks you to allow the app to run, as it was download from an unknown location. Go to MacOS Settings \> Security and allow EnterpriseManager to open.

### Automatic Updates

The Enterprise Manager (EM) can automatically check for updates. The OpCon administrator should define the update site(s) allowed for the environment. EM supports update sites through an http site, FTP site, or a local network directory.

:::caution
If choosing a local directory, do not place the Update directory inside the directory structure for an EM that will be updated. If the update location will be on the SAM server, SMA Technologies recommends using a path similar to the following: C:\EM Updates.

The repository will exist inside this directory after extraction from the zip file provided by SMA Technologies.
:::

When the administrator receives a new version from SMA Technologies, they can update the repository locations to distribute it to all EM installations in the network. If database updates are also required, the administrator should update the database before updating the EM repository. The procedures in this section apply to EM installations on both Windows and Linux.

:::note
On some Windows 7 machines and Windows 2008 R2 Servers, the automatic updates will fail because of lack of privileges on the machine. If this happens, modify the privileges on the EnterpriseManager folder to grant "Full Control" to "Creator Owner", "Users", and the "LogonUser".
:::

#### Update the Repository for the Update Sites

1. Log on to a machine *as a user with access to the EM Update Site(s)*.
2. Delete the **old repository(s)**.
3. Browse to the Enterprise Manager Updates directory on the OpCon Installation media.
4. Double-click the **repository.zip** file.
5. Extract the **zip file** to the repository location(s). Be sure to choose the option to "**Use folder names**".

#### Add an Update Site to the Enterprise Manager

1. Use menu path: **EnterpriseManager\>Preferences** to open the **Preferences** screen.
2. Click on the ![Expand Arrow](../Resources/Images/Installation/EMarrowtoexpand.png) **arrowhead** to expand the **Enterprise Manager**.
3. Click **Update Sites**.
4. Click the **Add** button.
5. Click the **Local** button and search for the directory where the repository.zip file was extracted.
6. Click on the **directory** and then click **OK**.
7. Click **OK**.

:::note
The site Administrator can define multiple sites. This may include sites for testing as well as sites intended for use by all users at the customer site.
:::

#### Export Update Sites

An administrator may wish to export a number of update sites so a list will be available for each user to import.

1. Shift/click or Ctrl/click to select multiple *Update Site Names*.
2. Click on the **Export** button.
3. Check the **location** and **file name** of the export file.
4. Click the **Save**button.

:::note
This export file can be sent to each user or placed on a shared network location so each EM user can import the list of update sites available.
:::

#### Import an Update Site

If an administrator has made an import file of available update sites, users can import this file to save time

1. Use menu path: **Enterprise Manager\>Preferences** to open the **Preferences** screen.
2. Click on the ![Expand Arrow](../Resources/Images/Installation/EMarrowtoexpand.png) **arrowhead** to expand the **Enterprise Manager**.
3. Click **Update Sites**.
4. Click the **Import** button.
5. Locate the correct import file in the **Import Sites** window.
6. Click the **Open** button to load the update sites from the import file to the Update sites list.

## SMA OpCon Configuration Utility

The SMA OpCon Configuration Utility installation can be run independently, if desired, on the machine. Use the following procedure to perform a new installation or an upgrade installation on the SMA OpCon Configuration Utility.

1. Log in as a *Windows user with Local Administrative Rights*.
2. Exit all running applications on the desktop (including OpCon applications).
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and launch the installer for the SMA OpCon Configuration Utility package.
5. Go through each screen to complete the wizard.
6. Click **Finish**.

## SMA OpCon Core

The SMA OpCon Installer is a consolidated installer designed to install and configure the following core components:

- Database Scripts
- SAM
- Solution Manager

In this section, you will find instructions for installing the components.

### Installation

On the machine requiring the components:

1. Log in as a *Windows user with Local Administrative Rights*.
2. Exit all running applications on the desktop (including OpCon applications).
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. After extraction: Run the **OpCon Web Installer.exe** file to download and launch the
installer for SMA OpCon.
   :::note
   The subsequent steps will guide you through the installer. Proceed with Step 5.
   :::
5. On the OpCon InstallShield Welcome screen: Click **Next**.
   :::note
   If you are performing an upgrade, then the **Program Maintenance** screen will display. You must select the **Modify** option on this screen before proceeding to the next step.
   :::
6. On the Destination Folder screen: Choose your **destination folder** and click **Next**.
7. On the Select Path for Output Files screen: Change the directory for the output files or retain the default location.
8. Click **Next**.
9. On the Database Server screen: Configure the *database server name* in the **Database server that you
are installing to** field.
   :::note
   This information configures the database and sysadmin account for executing the database scripts.
   :::
10. *(Optional)* Set the **Custom Port** checkbox and enter the port number for connecting to the server. If left blank, the port is determined from the SQL Browser.
11. In the Connect using options: Select the radio button to choose whether to use Windows authentication or SQL Server authentication. *The user must have a SQL Server role of sysadmin.*
12. In the Name of the SMA OpCon Database field: Enter a unique name for a new database or select an existing database to upgrade.
13. Click **Next**.
    :::note
    If you select an existing OpCon database, the installation process will upgrade that database and skip the next screen. Proceed with Step 18.
    :::
14. On the Database Variables screen: Configure your Database Variables after the connection is validated.
    - Configure the Database Data File information by entering the following:
      - **Path to File**: Defines the location of the physical database data file on the SQL database server.
      - **Logical Name**: Defines the unique name (alias) used to refer to the physical database data file.
      - **Initial Size**: Defines the initial size in megabytes allocated for the database data file.
      - **File Growth**: Defines the percentage increment by which the database data file will expand when full.
      - **Containment**: Specifies whether or not database containment is required. Available options are None or Partial. Default setting is None.

      :::tip Example

      ```shell
      C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\OPCONXPS_Data.MDF
      ```

      :::
    - Configure the Log File information by entering the following:
      - **Path to File**: Defines the location of the physical database transaction log file on the SQL database server.
      - **Logical Name**: Defines the unique name (alias) used to refer to the physical database transaction log file.
      - **Initial Size**: Defines the value for the initial size in megabytes allocated for the database transaction log file.
      - **File Growth**: Defines the percentage increment by which the database transaction log file will expand when full.
      - **Max Size**: Defines the maximum size in megabytes beyond which the database transaction log should not be allowed to grow.

      :::tip Example

      ```shell
      C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\OPCONXPS_Log.LDF
      ```

      :::

15. Click **Next**.
16. On the Database Connection screen: Configure the information required to create a database connection by selecting one of the following options from the **Additional Database Configuration** drop-down list:
    - **None**: Specifies no setting. This is the default.
    - **AlwaysOn**: Specifies that SQL Server has been configured to use SQL high availability.
    - **Mirroring**: Specifies that SQL Server has been configured to use mirroring.
17. Click **Next**.
18. On the Set Hung Script Options screen: Configure the SMTP Server connection information for the Hung Scripts by entering the following:
    - **SMTP Server**: Defines the SMTP Server Address.
    - **Email Recipient**: Defines the email address that should receive notifications when any OpCon Server components stop responding.
    - **Domain Name**: Defines the email domain.
19. Click **Next**.
20. On the Select Optional Service Manager Applications screen: Select checkboxes for any optional server components that you wish to install.
21. Click **Next**.
22. On the Connection Configuration screen: Enter the *server name* to which the SAM will connect.
    :::note
    This connection information is used by the SAM to connect to SQL Server.
    :::note
    For Windows authentication, make sure that the SMA Service Manager runs as a user that has privileges to the OpCon database. For more information, refer to [Add the SQL Server Logins for SMA Service Manager](./configuration.md#Add_the_SQL_Server_Logins_for_SMA_Service_Manager).
    :::
23. *(Optional)* Select the **Custom Port** checkbox and enter the port number for connecting to the server. If left blank, the port is determined from the SQL Browser.
24. Enter the *name* of the SQL Server database.
25. Configure the information required to create a connection by selecting one of the following options from the **Configuration** drop-down list:
    - **None**: Specifies no setting. This is the default.
    - **AlwaysOn**: Specifies that SQL Server has been configured to use SQL high availability.
    - **Mirroring**: Specifies that SQL Server has been configured to use mirroring.
26. Specify how to connect to the database. Select the checkbox to use Windows authentication or enter valid username/password credentials to use SQL Server authentication. *The user must be a member of the opconxps database role in the OpCon database.*
27. Click **Next**.
28. On the Set RestAPI Options screen, configure the settings for the RestAPI service by entering the
following:

- **TLS Port Number**: Defines the port number to use for the RestAPI.
    :::note
    The default port number is 443. You may specify a different port number, but be sure that it is not being used by another service.
    :::
- **Certificate Serial Number**: Defines the certificate serial number that the RestAPI will use.
      :::note
      If you choose to leave this field blank, then a self-signed certificate will be created and saved in the API configuration file for you. If you already have a certificate installed in the local and trusted certificate stores, then enter the Certificate Serial Number in the field of the same name; after installation, the API, when it starts, will use the stored certificate.
      :::
- Keep in mind that at any time you may reconfigure the API certificate without running the installer again. To register your own self-signed certificate outside of the installer:
  1. Create a self-signed certificate using IIS.
  2. Open **certmgr** and make sure that the newly-created certificate is copied to (listed in) the **Trusted Root Certificate Authorities** certificate store.
  3. Double-click on the new certificate in the list.
  4. Switch to the **Details** tab, copy the "Thumbprint" value into a text editor (e.g., Notepad), and remove all the spaces. The value (free of any spaces) will replace <certificate thumbprint\> in the command specified in Step 6.
  5. Open the **command prompt** in Administrator mode (*Run as administrator*).
  6. Run the following commands:

     ```shell
     netsh http delete sslcert ipport=0.0.0.0:<port>

     netsh http add sslcert ipport=0.0.0.0:<port> certhash=<certificate thumbprint> appid={1664a5b8-3de3-460a-86da-f27ed83a139a}
     ```

- To allow the RestAPI to install a self-signed certificate, follow these steps:
  1. Go to **ProgramData\\OpConxps\\SAM** and open the **SMAOpConRestApi.ini** file.
  2. Make sure **UseTLS=true**.
  3. Make sure **PortForTLS** has a valid port number.
  4. Make sure **CertificateSerialNumber** is blank.
  5. Save and close the configuration file.
  6. Open the **command prompt** in Administrator mode (*Run as administrator*).
  7. Change the directory to "SAM" under **OpConxps** installation folder.
  8. Run the following command: `SMAOpConRestApi.Controllers.exe - setcertificate`
  9. Go to **ProgramData\\OpConxps\\SAM\\Log** and retrieve the **SMAOpConRestApi.log** file to get the results of the certificate creation.
- To allow the RestAPI to install a custom certificate, follow these steps:
  1. Go to **ProgramData\\OpConxps\\SAM** and open the **SMAOpConRestApi.ini** file.
  2. Make sure **UseTLS=true**.
  3. Make sure **PortForTLS** has a valid port number.
  4. In the **CertificateSerialNumber** field, insert the custom certificate serial number without spaces.
  5. Save and close the configuration file.
  6. Open the **command prompt** in Administrator mode *(Run as administrator)*.
  7. Change the directory to "SAM" under OpConxps installation folder.
  8. Run the following command: `SMAOpConRestApi.Controllers.exe - setcertificate`

  :::note
  Solution Manager is now fully integrated with the SMA OpCon RestAPI. After installation, you can access the Solution Manager application at [https://127.0.0.1](https://127.0.0.1/).
  :::

29. Click **Next**.
30. On the Ready to Install the Program screen: Review the summary information.
31. Click **Install**.
32. Wait while the installation completes. This may take a few minutes.
33. On the InstallShield Wizard Completed screen: Click **Finish**.

:::note
The installation writes the log files named SMA_OpCon_Database_Scripts_Install.log and SMA_OpCon_SAM_Server_Install.log to the Windows directory. Consult this file if any installation problems are suspected.
:::

## SMA OpCon DDI

The SMA OpCon DDI installation can be run independently, if desired, on
the machine. Use the following procedure to perform a new installation or an upgrade
installation on the SMA OpCon DDI.

1. Log in as a *Windows user with Local Administrative Rights*.
2. Exit all running applications on the desktop (including OpCon applications).
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and launch the installer for the SMA OpCon DDI package.
5. Go through each screen to complete the wizard.
6. Click **Finish**.

## SMA OpCon Schedule Import Export

The SMA OpCon Schedule Import Export installation can be run independently, if desired, on the machine. Follow the procedure in this section to perform a new installation or an
upgrade installation on the SMA OpCon Schedule Import Export.

1. Log in as a *Windows user with Local Administrative Rights*.
2. Exit all running applications on the desktop (including OpCon applications).
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and launch the installer for the SMA OpCon Schedule Import Export package.
5. Go through each screen to complete the wizard.
6. Click **Finish**.

### Set Schedule Import Export to Run as Administrator

Schedule Import Export must Run as Administrator to configure the System DSNs for SQL Server and Access databases.

1. Locate ImpEx.exe in the following location: **<Target Directory\>\\OpConxps\\Utilities\\**.
2. Right-click **ImpEx.exe** and select **Run as Administrator** from the menu.
3. Refer to [Create System DSNs](./configuration.md#Create_System_DSNs) for configuring System DSNs.

:::note
If there is a need to uninstall the Schedule Import Export utility, remove the utility through **Add/Remove Programs**.
:::

## SMA OpCon SNMP Agent

For the SMA Notify Handler to be able to send SNMP traps, the SNMP Agent must be installed and configured properly on the SAM application server. Complete the procedures provided in this section to install and configure the SMA OpCon SNMP Agent.

:::note
If there is a need to uninstall the SNMP Agent, remove the Agent through **Add/Remove Programs**. Then, check the OpConxps\\SNMP folder to make sure the SMAagent.dll has been deleted. If the file is still there, then a program is still using the file. To resolve this situation, either stop the programs using the dll then delete the dll, or reboot the machine.
:::

### Install the SNMP Agent

1. Log in as a *Windows user with Local Administrative Rights*.
2. Exit all running applications on the desktop (including OpCon applications).
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and launch the installer for the SMA OpCon SNMP Agent package.
5. Go through each screen to complete the wizard.
6. Click **Finish**.

### Enable the SNMP Service in Windows

Follow these steps to enable the Windows SNMP Service, which is needed to process SNMP Trap notifications.

1. Open the **Control Panel** on your Windows machine.
2. Click on **Programs and Features**.
3. Select the **Turn Windows features on or off** link at the left side of the window.
4. Select the **Simple Network Management Protocol (SNMP)** checkbox in the **Windows Features** dialog.
5. Click **OK** to enable the service.

### Configure the SNMP Service Properties

In order to receive SNMP Trap notifications, follow these steps to configure the SNMP service settings on the recipient computer.

1. Open the **Control Panel** on your Windows machine.
2. Select **Administrative Tools \> Services**.
3. Double-click **SNMP Service**.
4. Click the **Traps** tab in the **SNMP Service Properties** window.
5. Add the *community name* (e.g., public) to the **Community name** list.
6. Enter, in the **Traps destinations** field, the IP address or host name of the machine receiving the traps.
7. Click the **Security** tab.
8. Make sure the **Send authentication trap** checkbox is selected.
9. Add the *community name* (e.g., public) to the **Accepted community names** list.
10. Select the **Accept SNMP packets from any hosts** radio button.
11. Click **Apply** then **OK** to accept the changes.

### Configure the SMA Notify Handler

Once the SNMP Service properties are configured, complete the steps in this section.

1. Double-click on **Server Options**.
2. Click on the **Notification Settings** tab.
3. Click on **SNMP Notifications Enabled**.
4. Select **True** in the drop-down list (bottom of screen) then click **Update**.
5. Click **Save** on the **Server Options** toolbar.
6. Click **Close** to the right of the **Server Options** tab to close the **Server Options** screen.

## SMA Resource Monitor

The SMA OpCon Resource Monitor can be installed as a stand-alone service. For information on a stand-alone installation, refer to the following:

- [Requirements](#Requirem3)
- [New Installation](#New2)
- [Upgrade Installation](#Upgrade2)
- [Silent Mode Installation](#Silent)

### Requirements

The SMA OpCon Resource Monitor requires the following:

- Any supported version of Windows with Microsoft .NET Framework 4.5.2 installed.
- A supported version of the MSLSAM installed on the machine.

### New Installation

If the SMA OpCon Resource Monitor has not been installed on the machine, then follow these procedures for the first installation.

1. Log in as a *Windows user with Local Administrative Rights*.
2. Exit all running applications on the desktop (including OpCon applications).
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and launch the installer for the SMA OpCon Resource Monitor package. *For a new install, on the **Packages** screen, you will select **Install** from the **Action** drop-down list then select the version.*
5. Go through each screen to complete the wizard.
6. Click **Finish**.

:::note
The installation writes the log file named SMA_OpCon_Resource_Monitor_Install.log to the Windows directory. Consult this file if any installation problems are suspected.
:::

#### Modify the SMAResourceMonitor.ini File

1. Right-click on the **Start** button and select **Explore** from the menu.
2. Browse to the <Configuration Directory\\**SMAResourceMonitor** directory.
3. Find the **SMAResourceMonitor.ini** file.
4. Right-click the **file** and select **Open With**.
5. Select an ASCII text editor (e.g., Notepad) in the **Choose the program you want use** list box.
6. Make any necessary modifications to the .ini file in the text editor. For complete information on the SMAResourceMonitor.ini settings, refer to [SMAResourceMonitor.ini](../utilities/SMA-Resource-Monitor/Service.md#SMAResou).
7. Use menu path: **File \> Save**.
8. **Close ☒** the text editor.

#### Set Up Service Startup

By default, the SMA Resource Monitor service is set for an Automatic (Delayed Start) startup and for running under the local system account. If you want to change the default settings, perform the steps provided here.

:::note
SMA Technologies recommends leaving the SMA Microsoft Resource Monitor service set to Automatic (Delayed Start) to avoid potential issues at startup time while other services and programs start up.
:::

On the Application server:

1. Use menu path: **Start \> Administrative Tools \> Server Manager**.
   :::note
   On Server 2012, you must use menu path: **Server Manager \> Tools \> Services**. Then, skip to Step 3.
   :::
2. In the Administrative Tools window: Expand (+) the **Configuration** option.
3. Click the **Services** icon.
4. In the Services window: Double-click the newly installed **SMA Microsoft Resource Monitor** service.
5. In the SMA Microsoft Resource Monitor Properties window on the General tab: Select the **Service Startup** type:
   - Automatic (Delayed Start)
   - Automatic
   - Manual
   - Disabled
6. On the Log On tab: Select **Log on as** for the Service and choose one of the following two
options:
   - **This account**: If the service will run as a user because it needs access to network directories, enter a *Domain User* in the text box.
     - Enter the *password* for the Domain User in the **Password** field.
     - Re-enter the *Password* to confirm in the **Reenter Password** field.
   - **Local System account**: If the service will run as the local system account, select this option to delete the default *Domain User* displayed in the text box.
   - Click the **OK** button.
7. Refer to [SMA Resource Monitor](../utilities/SMA-Resource-Monitor/Introduction.md) to configure and operate the SMA Resource Monitor.

:::note
The **SMAResourceMonitor.ini** file contains the service name.
:::

#### Set Folder Options to Show File Extensions

SMA Technologies recommends the folder options on the Windows machine be configured to show file extensions. With this option set, you will always be sure of the exact file names on the system.

:::tip Example
If file extensions are not displayed and you create a text document named test.txt, the operating system would create a file named **test.txt.txt**. If SMA Resource Monitor is looking for **test.txt**, it will not be able to find test.txt.txt.
:::

1. Right-click on the **Start** button and select **Explore** from the menu.
2. Use menu path: **Tools \> Folder Options**.
3. Click the **View** tab.
4. Make sure the **Hide extensions of known file types** checkbox is not selected.
5. Click the **Apply to All Folders** button (at the top of the window).

### Upgrade Installation

#### Stop the Service

1. Use menu path: **Start \> Administrative Tools \> Server Manager**.
2. Expand (+) the **Configuration** option.
3. Click the **Services** icon.
4. Select **SMA OpCon Resource Monitor** program in the **Services** list.
5. Use menu path: **Action \> Stop**.
6. Confirm the Service's **Status** is **Stopped**.
7. Close the **Services** window.

#### Remove the SMA Resource Monitor

If the previous version of the Resource Monitor was installed from a release lower than 16, you must first uninstall the previous version. If you are upgrading after the initial 16 release, you can skip this procedure.

:::note
As an alternative to these instructions, you can also use the [OpCon Web Installer (OWI)](https://github.com/smatechnologies/opcon-web-installer) to uninstall previous versions of the SMA Resource Monitor.
:::

1. Use menu path: **Start \> Control Panel**.
2. Double-click the **Programs and Features** icon.
3. Select **SMA OpCon Resource Monitor**.
4. Click the **Uninstall** button in the toolbar.
5. Select the **Remove** radio button and click **Next**.
6. Click **OK** to confirm the removal of SMA Resource Monitor.
7. If the **InstallShield Removal Complete screen** asks to restart the computer, select the option to restart now.
8. Click the **Finish** button.

#### Install the SMA Resource Monitor

1. Log in as a *Windows user with Local Administrative Rights*.
2. Exit all running applications on the desktop (including OpCon applications).
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and launch the installer for the SMA OpCon Resource Monitor package. *For an upgrade, on the **Packages** screen, you will select **Upgrade** from the **Action** drop-down list then select the version.*
5. Go through each screen to complete the wizard.
6. Click **Finish**.

:::note
The installation writes the log file named SMA_OpCon_Resource_Monitor_Install.log to the Windows directory. Consult this file if any installation problems are suspected.
:::

#### Restart the Service

1. Use menu path: **Start \> Administrative Tools \> Server Manager**.
2. Expand (+) the **Configuration** option.
3. Click the **Services** icon.
4. Select **SMA OpCon Resource Monitor** program in the **Services** list.
5. Use menu path: **Action \> Start**.
6. Confirm the Service's **Status** is **Started**.
7. Close the **Services** window.

## Silent Mode

This **SilentInstall.cmd** file will install all MSI packages that are located within the same directory as the script. Most MSI packages have unique features and parameters, which means you should only work with one package at a time. The **SilentInstall.cmd** file also includes support for multiple instance packages.

### Silent Mode Install

1. Copy the MSI package and **SilentInstall.cmd** file from the Installation package into a directory on your server (e.g., C:\\SilentInstall).

2. Right-click **SilentInstall.cmd** file in the local folder (e.g., C:\\SilentInstall) and select **Edit** from the menu.
3. Find and enable the preferred command based on your requirements:
   - Set the **\_siType** variable equal to **1** in the file to perform a COMPLETE install of the MSI package.
   - Set the **\_siType** variable equal to **2** and set the **\_siRemove** variable equal to **"<feature\>,<feature\>"** in the file to perform a COMPLETE install of the MSI package, except for features specified to be removed. Refer to the [Silent Install Features](#Silent_Install_Features) section for the complete feature list.
   - Set the **\_siType** variable equal to **3** in the file to perform an install of the default components.
   - Set the **\_siInstances** variable to equal to the **desired number of instances** in the file to perform a MULTI-INSTANCE install of the MSI package. The valid range of values for this parameter is 1 to 51.
     :::note
     The _siInstances functionality is only valid for the following multi-instance-enabled Agent installers: SAP, SAPBW, and Windows.
     :::
4. Edit the **\_siPath** variable if you do not wish to install to the default path for the command chosen. If you do not define a custom path, x86 packages will install to %ProgramFiles(x86)%\\OpConxps and x64 packages will install to %ProgramFiles%\\OpConxps.
5. Edit the \_**siParameter** variable if you wish to specify a custom value for a parameter for the command chosen. If you do not define any custom parameter values, the default values will be used. Refer to the [Silent Install Parameters](#Silent_Install_Parameters) section for a complete list of parameters.

   :::tip Example

   ```batch
   set _siParameter="RESMON_MSGIN='C:\PATH TO MSLSAM\MSLSAM\MSGIN'"
   ```

   :::

   :::note
   To perform a minor upgrade during a Silent Mode Install, the following parameters need to be included in the _siParameter variable:

   ```shell
   -siParameter=REINSTALLMODE="vomus" REINSTALL="ALL"
   ```

   :::

6. Use menu path: **File \> Save**.
7. Double-click **SilentInstall.cmd** file in the local folder (e.g., C:\\SilentInstall\\) to run the command.
8. Check the logfile to confirm installation. The log files for silent installations are created in the %WINDIR% (usually C:\\Windows). They use the naming convention **<package name\>\_Silent.log**.
   :::tip Example
   If you chose to perform a silent installation of the SMA OpCon Windows LSAM x86 Install.msi, the log file in %WINDIR% would be: **SMA_OpCon_Windows_LSAM_x86_Install_Silent.log**
   :::

### Silent Mode Uninstall

The **SilentUninstall.cmd** file will uninstall all MSI packages that are located in the same directory as the script. If there are multiple instances installed, the command will remove all instances of each package.

:::note
This procedure assumes that the product is already installed from a 15.0 or higher package.
:::

1. Copy the MSI package and **SilentUninstall.cmd** file from the OpCon Installation package into any directory on your server (e.g., C:\\SilentUninstall).
2. Double-click **SilentUninstall.cmd** file in the local folder (e.g., C:\\SilentUninstall) to run the command.

### Silent Install Features

If you chose \_**siType=2**, the complete list of features that can be defined in a comma-separated string for the **\_siRemove** variable are specified in this section.

#### SMA OpCon MS Dynamics AX 2009 Connector

|Feature|Description|
|--- |--- |
|MS_DynamicsAX_2009_EMPlugin_x64|Installs the Enterprise Manager x64 plug-in for MS Dynamics AX 2009 Connector|
|MS_DynamicsAX_2009_EMPlugin_x86|Installs the Enterprise Manager x86 plug-in for MS Dynamics AX 2009 Connector|

#### SMA OpCon MS Dynamics AX 2012 Connector

|Feature|Description|
|--- |--- |
|MS_DynamicsAX_2012_EMPlugin_x64|Installs the Enterprise Manager plug-in for MS Dynamics AX 2012 Connector|
|MS_DynamicsAX_2012_EMPlugin_x86|Installs the Enterprise Manager plug-in for MS Dynamics AX 2012 Connector|

#### SMA OpCon MS Dynamics AX 2012 R3 Connector

|Feature|Description|
|--- |--- |
|MS_DynamicsAX_2012_R3_EMPlugin_x64|Installs the Enterprise Manager plug-in for MS Dynamics AX 2012 R3 Connector|
|MS_DynamicsAX_2012_R3_EMPlugin_x86|Installs the Enterprise Manager plug-in for MS Dynamics AX 2012 R3 Connector|

#### SMA OpCon MS Orchestrator Connector

|Feature|Description|
|--- |--- |
|MS_Orchestrator_EMPlugin|Installs the Enterprise Manager plug-in for the SMA MS Orchestrator Connector|

#### SMA OpCon MS SQL Connector

|Feature|Description|
|--- |--- |
|SMA_MSSQL_EMPlugin|Installs the Enterprise Manager plug-in for the MS SQL Connector|

#### SMA OpCon SAM

|Feature|Description|
|--- |--- |
|DOBATCH|Installs SMA OpCon DoBatch|

#### SMA OpCon SAP Business Objects Connector

|Feature|Description|
|--- |--- |
|SAP_Business_Objects \_EMPlugin_x64|Installs the Enterprise Manager plug-in for the SAP Business Objects Connector|
|SAP_Business_Objects \_EMPlugin_x86|Installs the Enterprise Manager plug-in for the SAP Business Objects Connector|

#### SMA OpCon SAP Data Services Connector

|Feature|Description|
|--- |--- |
|SAP_Data_Services \_EMPlugin_x64|Installs the Enterprise Manager plug-in for the SAP Data Services Connector|
|SAP_Data_Services \_EMPlugin_x86|Installs the Enterprise Manager plug-in for the SAP Data Services Connector|

#### SMA OpCon VMWare Connector

|Feature|Description|
|--- |--- |
|VMWare_EMPlugin_x64|Installs the Enterprise Manager plug-in for the VMWare Connector|
|VMWare_EMPlugin_x86|Installs the Enterprise Manager plug-in for the VMWare Connector|

#### SMA OpCon Web Services (RESTful) Connector

|Feature|Description|
|--- |--- |
|Web_Services_RESTful \_EMPlugin_x64|Installs the Enterprise Manager plug-in for the Web Services (RESTful) Connector|
|Web_Services_RESTful_EMPlugin_x86|Installs the Enterprise Manager plug-in for the Web Services (RESTful) Connector|

### Silent Install Parameters

The complete list of parameters that can be defined by a space-separated string using the format PARAMETER="VALUE" for the **\_siParameter** variable are specified in this section.

### SMA OpCon

|Parameter|Description|
|--- |--- |
|APPLIST_SAM|Activates the SAM  in SMAServMan.ini. Blank: Not Selected, 1: Selected. Default value: 1|
|APPLIST_SMALDAPMON|Activates the LDAP Monitor application in SMAServMan.ini. Blank: Not Selected, 1: Selected|
|APPLIST_SMANETCOM|Activates the SMA Network Communications Module  in SMAServMan.ini. Blank: Not Selected, 1: Selected. Default value: 1|
|APPLIST_SMANOTIFYHANDLER|Activates the SMA Notify Handler application in SMAServMan.ini. Blank: Not Selected, 1: Selected. Default value: 1|
|APPLIST_SMAREQUESTROUTER|Activates the SMA Request Router application in SMAServMan.ini. Blank: Not Selected, 1: Selected. Default value: 1|
|APPLIST_SMASTARTTIMECALCULATOR|Activates the SMA Start Time Calculator application in SMAServMan.ini. Blank: Not Selected, 1: Selected. Default value: 1|
|CONNECTCONFIG_SQL_AUTHENTICATION|Determines if the installation will use Windows Authentication or SQL Server Authentication when connecting to the specified SQL Server and SMA OpCon Database. Blank: Use SQL Server Authentication, 1: Use Windows Authentication|
|CONNECTCONFIG_SQL_CONFIGURATION|Defines if the SQL Server High Availability option is used. Valid values: AlwaysOn, Mirroring, and None.|
|CONNECTCONFIG_SQL_DATABASE|Defines the SMA OpCon database name to create or upgrade. This parameter is required. The value must be a string.|
|CONNECTCONFIG_SQL_PASSWORD|Defines the password to use with SQL Server Authentication. This parameter is required when the CONNECTCONFIG_SQL_AUTHENTICATION parameter is set to Blank (SQL Server Authentication).|
|CONNECTCONFIG_SQL_PORT|Defines the port number  used for connecting to the server. This parameter is required when the CONNECTCONFIG_SQL_PORT_USE parameter is set to 1 (Selected). Range: 1 - 65535|
|CONNECTCONFIG_SQL_PORT_USE|Determines whether or not a custom port number will be used to connect to the server. Blank: Not Selected, 1: Selected|
|CONNECTCONFIG_SQL_SERVER|Defines the name of the SQL Server hosting the SMA OpCon database.|
|CONNECTCONFIG_SQL_USERNAME|Defines the username to use with SQL Server Authentication. This parameter is required when the CONNECTCONFIG_SQL_AUTHENTICATION parameter is set to Blank (SQL Server Authentication).|
|DOMAIN_NAME|Specifies the domain name to be used in Hung Scripts.|
|EMAIL_RECIPIENT|Specifies the email recipient to be used in Hung Scripts.|
|IS_SQLSERVER_AUTHENTICATION|Determines if the installation will use Windows Authentication or SQL Server Authentication when connecting to the specified SQL Server and SMA OpCon database. 0: Use Windows Authentication, 1: Use SQL Server Authentication, Default value: 0|
|IS_SQLSERVER_CONFIGURATION|Defines if the SQL Server High Availability option is used. Valid values: AlwaysOn, Mirroring, and None. Default value: None|
|IS_SQLSERVER_DATABASE|Defines the SMA OpCon database name to create or upgrade. This parameter is required. The value must be a string.|
|IS_SQLSERVER_DBDATAFILEGROWTH|Defines the percentage growth rate for the SMA OpCon database data file. The value must be an integer. Default value: 10|
|IS_SQLSERVER_DBFILECONTAINMENT|Specifies whether or not database containment is required. Valid values: PARTIAL and NONE, Default value: NONE|
|IS_SQLSERVER_DBLOGFILEGROWTH|Defines the percentage growth rate for the SMA OpCon database log file. The value must be an integer. Default value: 10|
|IS_SQLSERVER_INITIALDBFILESIZE|Defines the Initial Database data file size in MB. The value must be an integer. Default value: 200|
|IS_SQLSERVER_INITIALDBLOGSIZE|Defines the Initial Database log file size in MB. The value must be an integer. Default value: 1000|
|IS_SQLSERVER_LOGICALDBDATAFILE|Defines the logical name of the SMA OpCon database data file. The value must be a string. Default value: OPCONXPS_Data|
|IS_SQLSERVER_LOGICALDBLOGFILE|Defines the logical name of the SMA OpCon database log file. The value must be a string. Default value: OPCONXPS_Log|
|IS_SQLSERVER_MAXDBLOGSIZE|Defines the Maximum Database log file size in MB. The value must be an integer. Default value: 10000|
|IS_SQLSERVER_PASSWORD|Defines the password to use with SQL Server Authentication. This parameter is required when the IS_SQLSERVER_AUTHENTICATION parameter is set to 1 (SQL Server Authentication).|
|IS_SQLSERVER_PATHDBDATAFILE|Defines the path to the SMA OpCon database data file. This parameter is required. Default value: C:\Program Files\Microsoft SQL Server\MSSQL.10\MSSQL\Data\OPCONXPS_Data.MDF|
|IS_SQLSERVER_PATHDBLOGFILE|Defines the path to the SMA OpCon database log file. This parameter is required. Default value: C:\Program Files\Microsoft SQL Server\MSSQL.10\MSSQL\Data\OPCONXPS_LOG.LDF|
|IS_SQLSERVER_PORT|Defines the port number  used for connecting to the server. This parameter is required when the IS_SQLSERVER_PORT_USE parameter is set to 1 (Selected). Range: 1 - 65535|
|IS_SQLSERVER_PORT_USE|Determines whether or not a custom port number will be used to connect to the server. Blank: Not Selected, 1: Selected|
|IS_SQLSERVER_SERVER|Defines the name of the SQL Server\Instance hosting the SMA OpCon database.|
|IS_SQLSERVER_UPGRADE|Determines if the installation will create a new database or upgrade an existing database. 0: New Install, 1: Upgrade Install, Default value: 0|
|IS_SQLSERVER_USERNAME|Defines the username to use with SQL Server Authentication. This parameter is required when the IS_SQLSERVER_AUTHENTICATION parameter is set to 1 (SQL Server Authentication).|
|PORT_NUMBER|Defines the port number for the RestAPI service to use when TLS encryption is activated. Default value: 443, Range: 1 - 65535|
|SMTP_SERVER|Specifies the SMTP Server to be used in Hung Scripts.|
|TLS_ACTIVE|Enables TLS encryption for the RestAPI service. Blank: Not Selected, 1: Selected, Default value: 1|
|TLS_CERT_SN|Defines the serial number for the certificate to be used for TLS encryption. TLS_CERT_SN will generate and set automatically if TLS_ACTIVE = 1 and TLS_CERT_SN = BLANK.|

### SMA OpCon Agent for Microsoft

|Parameter|Description|
|--- |--- |
|INSTANCENAME|Appends an instance name description to the LSAM Long Service name and Service Description per instance.|
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the folder specified for installation.|
|PATH_OUTPUT|Determines if the installation will configure a custom physical path for the location where the programs will write their output files. If specified, this must be a path on a local hard drive.|
|PORT_NUMBER_JORS|Defines the port number through which the JORS Service communicates all SMA File Transfer job information.  Default value: 3110|
|PORT_NUMBER_SAM|Defines the port number through which the LSAM and the SMANetCom communicate. Default value: 3100|
|PORT_NUMBER_SMAFT|Defines the port number through which all SMA File Transfer communication occurs when not using TLS encryption.  Default value: 3110|
|TLS_ACTIVE|Indicates whether or not  TLS encryption will be used for communication between the LSAM and the OpCon server. Default value: True, Range: True, False|
|TLS_CERT_REVOCATION|Indicates whether or not to validate certificates against the local certificate store's revocation list. Default value: False, Range: True, False|
|TLS_CERT_SN|Serves as an identifier for the locally stored digital certificate that identifies the LSAM to the OpCon SMANetCom communications program.  Default value: 76c9f9bdae61c28d4ca11fe313ad7970|
|TLS_CLIENT_VALIDATION|Indicates whether or not TLS client validation will  be performed. Default value: True, Range: True, False|
|TLS_PORT_NUMBER|Defines the  port number through which all SMA File Transfer communication occurs when using TLS encryption. Default value: 3111|

### SMA OpCon Agent for SAP

|Parameter|Description|
|--- |--- |
|INSTANCENAME|Appends an instance name description to the LSAM Long Service name and Service Description per instance.|
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the folder specified for installation.|
|PATH_OUTPUT|Determines if the installation will configure a custom physical path for the location where the programs will write their output files. If specified, this must be a path on a local hard drive.|
|PORT_NUMBER_JORS|Defines the socket number used for communicating job output information with the Enterprise Manager. Default value: 13110|
|PORT_NUMBER_SAM|Defines the port number through which the LSAM and the SMANetCom communicate. Default value: 13100|

### SMA OpCon Agent for SAP BW

|Parameter|Description|
|--- |--- |
|INSTANCENAME|Appends an instance name description to the LSAM Long Service name and Service Description per instance.|
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the folder specified for installation.|
|PATH_OUTPUT|Determines if the installation will configure a custom physical path for the location where the programs will write their output files. If specified, this must be a path on a local hard drive.|
|PORT_NUMBER_JORS|Defines the socket number used for communicating job output information with the Enterprise Manager. Default value: 13110|
|PORT_NUMBER_SAM|Defines the port number through which the LSAM and the SMANetCom communicate. Default value: 13100|

### SMA OpCon Agent for SQL

|Parameter|Description|
|--- |--- |
|INSTANCENAME|Appends an instance name description to the LSAM Long Service name and Service Description per instance.|
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the folder specified for installation.|
|PATH_OUTPUT|Determines if the installation will configure a custom physical path for the location where the programs will write their output files. If specified, this must be a path on a local hard drive.|
|PORT_NUMBER_JORS|Defines the socket number used for communicating job output information with the Enterprise Manager. Default value: 13110|
|PORT_NUMBER_SAM|Defines the port number through which the LSAM and the SMANetCom communicate. Default value: 13100|

### SMA OpCon Resource Monitor

|Parameter|Description|
|--- |--- |
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the folder specified for installation.|
|PATH_OUTPUT|Determines if the installation will configure a custom physical path for the location where the programs will write their output files. If specified, this must be a path on a local hard drive.|
|RESMON_MSGIN|Sets path to the Agent for Microsoft MSGIN folder to be used by Resource Monitor.|

### SMA OpCon SAP Business Objects Connectors

|Parameter|Description|
|--- |--- |
|PATH_OUTPUT|Determines if the installation will configure a custom physical path for the location where the programs will write their output files. If specified, this must be a path on a local hard drive.|

### SMA OpCon SAP Data Services Connector

|Parameter|Description|
|--- |--- |
|PATH_OUTPUT|Determines if the installation will configure a custom physical path for the location where the programs will write their output files. If specified, this must be a path on a local hard drive.|

### SMA OpCon SMArt Email

|Parameter|Description|
|--- |--- |
|EMAIL_PASSWORD|Defines the password used to connect to the mail server. Required field|
|EMAIL_PROTOCOL|Defines the protocol to use when connecting to the mail server. Available options are POP and IMAP.|
|EMAIL_USERNAME|Defines the user used to connect to the mail server. Required field|
|OPCON_PASSWORD|Defines the OpCon user’s external password used to submit external events. Required field|
|OPCON_USERNAME|Defines the OpCon user used to submit external events. Required field|
|PATH_MSGIN|Defines the path to the MSGIN directory for SAM where external events are submitted.|
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the folder specified for installation.|
|SECURITY_PROTOCOL|Defines the preferred encryption type when connecting to the mail server. The options include the following: SSL, TLS_1_1, TLS_1_2|
|SERVER_NAME|Defines the name or IP address of the mail server.|
|SERVER_PORT|Defines the port number used by the server for communication of the email protocol.|

### SMA OpCon VMWare Connector

|Parameter|Description|
|--- |--- |
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the folder specified for installation.|
|PATH_OUTPUT|Specifies the physical root path to the location of the output files generated by the application.|

### SMA OpCon Web Services (RESTful) Connector

|Parameter|Description|
|--- |--- |
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the folder specified for installation.|
|PATH_OUTPUT|Specifies the physical root path to the location of the output files generated by the application.|
