---
title: Component Installations
description: "This topic contains instructions for installing Enterprise Manager and Optional Server components as stand-alone installations."
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

# Component Installations

This topic contains instructions for installing Enterprise Manager and optional server components as stand-alone installations. Select any of the following links to access the installation instructions:

- [Enterprise Manager](#enterprise-manager)
- [SMA OpCon Configuration Utility](#sma-opcon-configuration-utility)
- [SMA OpCon Core](#sma-opcon-core)
- [SMA OpCon DDI](#sma-opcon-ddi)
- [SMA OpCon Schedule Import Export (Deprecated)](#sma-opcon-schedule-import-export)
- [SMA OpCon SNMP Agent](#sma-opcon-snmp-agent)
- [SMA Resource Monitor](#sma-resource-monitor)
- [Silent Mode](#silent-mode)

## Enterprise Manager

Enterprise Manager (EM) is a rich-client application for OpCon. The following installation options are available:

- [New Installation on Windows](#new-installation-on-windows)
- [Upgrade Installation on Windows](#upgrade-installation-on-windows)
- [Installation on Linux](#installation-on-linux)
- [Installation on Mac OSX](#installation-on-mac-osx)
- [Automatic Updates](#automatic-updates)

### New Installation on Windows

If Enterprise Manager has never been installed on a Windows machine, complete the procedures in this section to install Enterprise Manager.

To install Enterprise Manager on Windows for the first time, complete the following steps:

1. Log in as a Windows user with Local Administrative Rights.
2. Close all running applications on the desktop, including OpCon applications.
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and open the installer for the Enterprise Manager application. For a new install, on the **Packages** screen, select **Install** from the **Action** list and then select the version.
5. Complete each screen in the wizard.
6. Select **Finish**.

:::note
For a user to log in to Enterprise Manager, a Database Connection Profile for the OpCon database must exist on the machine. If a profile does not exist, complete the procedure to [create a profile](#create-a-profile-for-the-em-to-connect-to-the-database).
:::

:::note
The installation writes the log file named `SMA_OpCon_Enterprise_Manager_<CPUType>_Install.log` to the Windows directory. Consult this file if any installation problems are suspected.
:::

#### Create a Profile for the EM to Connect to the Database

Set up the Enterprise Manager profile to connect to the same database as the SAM, as described in [Create System DSNs](./configuration.md#Create_System_DSNs).

To create a database connection profile, complete the following steps:

1. Go to **Start > All Programs > OpConxps > Enterprise Manager**.
2. On the Welcome screen, select **OK**.
3. On the Database Connection Profile screen, enter a profile name in the **Profile Name** field.
4. Choose your authentication method and connect to the database:
   - To use SQL Authentication, enter `opconui` in the **Username** field and enter the `opconui` password in the **Password** field.
   - To use Windows Authentication, select the **Use Windows Authentication** option.
5. Enter the server name or IP address in the **SQL Server** field.
   :::caution
   If the server name contains a backslash (\\), the server uses SQL Instance Names. The SQL Server Browser service must be running on that server for Enterprise Manager to successfully connect to the database.
   :::
6. Select the database from the **Database** list, or select the **Database** button to display the available databases.
   :::note
   The database list is only available after all previous fields have been filled in.
   :::
7. (Optional) Enter a value in the **Timeout (sec)** field. The default is 30 seconds.
8. (Optional) Select the **Color** button, select the desired profile color, and select **OK**.
9. Select **Next** to advance to the next screen.
   :::note
   The next screen indicates whether the database connection tested successfully.
   :::
10. If the test was not successful, select **Back** to correct the problem and try again.
11. If the test was successful, select **Next** to choose the method for connecting to the SAM application server for reading log files.
12. On the OpCon data location screen, select the **Directory with Windows integrated authentication** option.
    :::note
    For the default `[[SERVER]]` token in the UNC path to the OpConxps directory on the SAM server, Enterprise Manager automatically replaces that token with the database server IP or hostname specified in the profile (Step 5). With this token in place, if you change the database server in the profile you do not need to change the UNC path, as long as the share directory is the same.
    :::
    - If on the OpCon server, enter the path to the `<Output Directory>` in the **Path** field.
    - If on any other Windows machine on the same domain, first share the `<Output Directory>` (e.g., `C:\ProgramData\OpConxps`) on the OpCon server and grant each user Read permission. Then enter or browse to the path to the `<Output Directory>` on the server in the **Path** field.
13. Select **Finish** to save the profile.

#### Distribute Connection Profiles

After configuring connection profiles on one machine, you can distribute the profiles to all other Enterprise Manager machines with a simple file copy. Before overwriting a user's connection profiles, back up their existing `profiles.xml` file.

To distribute Enterprise Manager connection profiles, complete the following steps:

1. On the machine with all Enterprise Manager profiles configured, browse to the **.enterpriseManager** folder in the user directory.
2. Right-click the **profiles.xml** file and select **Copy** from the menu.
3. Browse to a network location available to all users.
4. Right-click and select **Paste** from the menu.
5. On each target Enterprise Manager machine, browse to the shared location and copy the file.
6. Browse to the user's **.enterpriseManager** folder in the user directory on the target machine.
7. Right-click in the directory and select **Paste** from the menu.
8. If a `profiles.xml` file already exists, confirm whether you want to overwrite it.

:::note
Continuous recommends automating distribution of a central `profiles.xml` file with an OpCon job if common profile information should always be maintained from a single point.
:::

### Upgrade Installation on Windows

Continuous recommends configuring automatic updates for Enterprise Manager. For more information, refer to [Automatic Updates](#automatic-updates). If a manual upgrade is required, complete the procedures in this section.

To manually upgrade Enterprise Manager on Windows, complete the following steps:

1. Log in as a Windows user with Local Administrative Rights.
2. Close all running applications on the desktop, including OpCon applications.
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and open the installer for the Enterprise Manager application. For an upgrade, on the **Packages** screen, select **Upgrade** from the **Action** list and then select the version.
5. Complete each screen in the wizard.
6. Select **Finish**.

:::note
The installation writes the log file named `SMA_OpCon_Enterprise_Manager_<CPUType>_Install.log` to the Windows directory. Consult this file if any installation problems are suspected.
:::

### Installation on Linux

To install Enterprise Manager on a supported Linux system, complete the following steps:

1. Remove the previous **Enterprise Manager** folder.
2. Extract the zip file to the desired location.
3. Run **EnterpriseManager**.

### Installation on Mac OSX

To install Enterprise Manager on a supported Mac OSX system, complete the following steps:

1. Remove the previous **Enterprise Manager** folder.
2. Download the **EnterpriseManager-macosx.cocoa.x86_64.zip** file from the OpCon release.
3. Open a command line and run the following commands to allow macOS to run `EnterpriseManager.app`:

   ```shell
   cd <EM Install Dir>
   xattr -c EnterpriseManager.app
   ```

4. Download the **AdoptOpenJDK 8 JRE .tar.gz** file from <https://adoptopenjdk.net/releases.mdl>:
   1. Select version **OpenJDK 8 JRE - 38 MB .tar.gz**.
   2. Extract the JRE.
   3. Rename the folder `jre8`.
   4. Move the folder to an appropriate location, such as the Enterprise Manager install folder.
5. Update the **EnterpriseManager.ini** file to point to the `jre8` folder downloaded in the previous step.
6. Right-click **EnterpriseManager.app** and select **Show Package Contents**.
7. In the app folder, open **Contents/MacOS**.
8. Open the **EnterpriseManager.ini** file and make the following edits:
   1. Insert a line with `-vm` before the `-vmargs` line.
   2. Insert a line with the path to the JRE library (e.g., `../../../jre8/Contents/Home/lib/jli/libjli.dylib`) immediately after the `-vm` line.
9. Save the file.

You can now open and run **EnterpriseManager.app**. If a security message appears because the app was downloaded from an unknown location, go to **macOS Settings > Security** and allow Enterprise Manager to open.

### Automatic Updates

Enterprise Manager can automatically check for updates. The OpCon administrator defines the update site or sites allowed for the environment. Enterprise Manager supports update sites through an HTTP site, FTP site, or a local network directory.

:::caution
If using a local directory, do not place the update directory inside the directory structure for an Enterprise Manager installation that will be updated. If the update location will be on the SAM server, Continuous recommends using a path such as `C:\EM Updates`.

The repository will exist inside this directory after extraction from the zip file provided by Continuous.
:::

When the administrator receives a new version from Continuous, they can update the repository to distribute it to all Enterprise Manager installations on the network. If database updates are also required, update the database before updating the Enterprise Manager repository. The procedures in this section apply to Enterprise Manager installations on both Windows and Linux.

:::note
On some Windows 7 machines and Windows 2008 R2 servers, automatic updates fail because of insufficient privileges. If this happens, modify the permissions on the EnterpriseManager folder to grant **Full Control** to **Creator Owner**, **Users**, and the **LogonUser**.
:::

#### Update the Repository for the Update Sites

To update the repository at an Enterprise Manager update site, complete the following steps:

1. Log on to a machine as a user with access to the Enterprise Manager update site or sites.
2. Delete the old repository or repositories.
3. Browse to the Enterprise Manager Updates directory on the OpCon installation media.
4. Select the **repository.zip** file.
5. Extract the zip file to the repository location or locations. Choose the option to **Use folder names**.

#### Add an Update Site to Enterprise Manager

To add an update site to Enterprise Manager, complete the following steps:

1. Go to **EnterpriseManager > Preferences** to open the **Preferences** screen.
2. Select the expand arrowhead next to **Enterprise Manager**.
3. Select **Update Sites**.
4. Select the **Add** button.
5. Select the **Local** button and browse to the directory where the `repository.zip` file was extracted.
6. Select the directory and then select **OK**.
7. Select **OK**.

:::note
The administrator can define multiple sites, including sites for testing and sites intended for use by all users.
:::

#### Export Update Sites

To export a list of update sites for distribution, complete the following steps:

1. Use Shift+select or Ctrl+select to select multiple update site names.
2. Select the **Export** button.
3. Verify the location and file name of the export file.
4. Select **Save**.

:::note
This export file can be sent to each user or placed on a shared network location so each Enterprise Manager user can import the list of available update sites.
:::

#### Import an Update Site

If an administrator has created an export file of available update sites, users can import this file to save time.

To import update sites, complete the following steps:

1. Go to **Enterprise Manager > Preferences** to open the **Preferences** screen.
2. Select the expand arrowhead next to **Enterprise Manager**.
3. Select **Update Sites**.
4. Select the **Import** button.
5. Locate the correct import file in the **Import Sites** window.
6. Select **Open** to load the update sites from the import file into the update sites list.

## SMA OpCon Configuration Utility

The SMA OpCon Configuration Utility can be installed independently on a machine. Use the following procedure to perform a new installation or an upgrade.

To install the SMA OpCon Configuration Utility, complete the following steps:

1. Log in as a Windows user with Local Administrative Rights.
2. Close all running applications on the desktop, including OpCon applications.
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and open the installer for the SMA OpCon Configuration Utility package.
5. Complete each screen in the wizard.
6. Select **Finish**.

## SMA OpCon Core

The SMA OpCon Installer is a consolidated installer that installs and configures the following core components:

- Database Scripts
- SAM
- Solution Manager

### Installation

To install SMA OpCon Core components, complete the following steps:

1. Log in as a Windows user with Local Administrative Rights.
2. Close all running applications on the desktop, including OpCon applications.
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and open the installer for SMA OpCon.
5. On the OpCon InstallShield Welcome screen, select **Next**.
   :::note
   If you are performing an upgrade, the **Program Maintenance** screen is displayed. Select the **Modify** option on this screen before proceeding.
   :::
6. On the Destination Folder screen, choose your destination folder and select **Next**.
7. On the Select Path for Output Files screen, change the directory for the output files or retain the default location.
8. Select **Next**.
9. On the Database Server screen, enter the database server name in the **Database server that you are installing to** field.
   :::note
   This information configures the database and sysadmin account for running the database scripts.
   :::
10. (Optional) Select the **Custom Port** option and enter the port number for connecting to the server. If left blank, the port is determined from the SQL Browser.
11. In the Connect using options, select the option to use Windows authentication or SQL Server authentication. The user must have a SQL Server role of `sysadmin`.
12. In the **Name of the SMA OpCon Database** field, enter a unique name for a new database or select an existing database to upgrade.
13. Select **Next**.
    :::note
    If you select an existing OpCon database, the installation upgrades that database and skips the next screen. Proceed with Step 18.
    :::
14. On the Database Variables screen, configure the database variables after the connection is validated:
    - Configure the Database Data File information:
      - **Path to File**: The location of the physical database data file on the SQL database server.
      - **Logical Name**: The unique name (alias) used to refer to the physical database data file.
      - **Initial Size**: The initial size in megabytes allocated for the database data file.
      - **File Growth**: The percentage increment by which the database data file expands when full.
      - **Containment**: Specifies whether database containment is required. Options are `None` or `Partial`. Default is `None`.

      :::tip Example

      ```shell
      C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\OPCONXPS_Data.MDF
      ```

      :::
    - Configure the Log File information:
      - **Path to File**: The location of the physical database transaction log file on the SQL database server.
      - **Logical Name**: The unique name (alias) used to refer to the physical database transaction log file.
      - **Initial Size**: The initial size in megabytes allocated for the database transaction log file.
      - **File Growth**: The percentage increment by which the database transaction log file expands when full.
      - **Max Size**: The maximum size in megabytes beyond which the database transaction log is not allowed to grow.

      :::tip Example

      ```shell
      C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\OPCONXPS_Log.LDF
      ```

      :::

15. Select **Next**.
16. On the Database Connection screen, configure the information required to create a database connection by selecting one of the following options from the **Additional Database Configuration** list:
    - **None**: No setting. This is the default.
    - **AlwaysOn**: SQL Server is configured to use SQL high availability.
    - **Mirroring**: SQL Server is configured to use mirroring.
17. Select **Next**.
18. On the Set Hung Script Options screen, configure the SMTP Server connection information for hung scripts:
    - **SMTP Server**: The SMTP server address.
    - **Email Recipient**: The email address that receives notifications when any OpCon server components stop responding.
    - **Domain Name**: The email domain.
19. Select **Next**.
20. On the Select Optional Service Manager Applications screen, select options for any optional server components you want to install.
21. Select **Next**.
22. On the Connection Configuration screen, enter the server name to which the SAM connects.
    :::note
    This connection information is used by the SAM to connect to SQL Server.
    :::
    :::note
    For Windows authentication, make sure that the SMA Service Manager runs as a user that has privileges to the OpCon database. For more information, refer to [Add the SQL Server Logins for SMA Service Manager](./configuration.md#Add_the_SQL_Server_Logins_for_SMA_Service_Manager).
    :::
23. (Optional) Select the **Custom Port** option and enter the port number for connecting to the server. If left blank, the port is determined from the SQL Browser.
24. Enter the name of the SQL Server database.
25. Configure the connection by selecting one of the following options from the **Configuration** list:
    - **None**: No setting. This is the default.
    - **AlwaysOn**: SQL Server is configured to use SQL high availability.
    - **Mirroring**: SQL Server is configured to use mirroring.
26. Specify how to connect to the database: select the option to use Windows authentication, or enter valid username and password credentials to use SQL Server authentication. The user must be a member of the `opconxps` database role in the OpCon database.
27. Select **Next**.
28. On the Set RestAPI Options screen, configure the settings for the REST API service:

    - **Port**: The port number for the REST API.
      :::note
      You may specify a different port number, but confirm it is not already in use by another service.
      :::
    - **Certificate Serial Number**: The certificate serial number for the REST API to use.
      :::note
      If you leave this field blank, a self-signed certificate is created and saved in the API configuration file. If you already have a certificate installed in the local and trusted certificate stores, enter the certificate serial number; after installation, the API uses the stored certificate on startup.
      :::
    - To register your own self-signed certificate outside of the installer, complete the following steps:
      1. Create a self-signed certificate using IIS.
      2. Open **certmgr** and verify that the newly created certificate is listed in the **Trusted Root Certificate Authorities** certificate store.
      3. Select the new certificate in the list.
      4. Select the **Details** tab, copy the **Thumbprint** value into a text editor such as Notepad, and remove all spaces. The resulting value replaces `<certificate thumbprint>` in Step 6.
      5. Open the command prompt in Administrator mode (Run as administrator).
      6. Run the following commands:

         ```shell
         netsh http delete sslcert ipport=0.0.0.0:<port>

         netsh http add sslcert ipport=0.0.0.0:<port> certhash=<certificate thumbprint> appid={1664a5b8-3de3-460a-86da-f27ed83a139a}
         ```

    - To allow the REST API to install a self-signed certificate, complete the following steps:
      1. Go to `ProgramData\OpConxps\SAM` and open the **SMAOpConRestApi.ini** file.
      2. Verify that **Port** has a valid port number.
      3. Verify that **CertificateSerialNumber** is blank.
      4. Save and close the configuration file.
      5. Open the command prompt in Administrator mode (Run as administrator).
      6. Change the directory to the `SAM` folder under the OpConxps installation folder.
      7. Run the following command: `SMAOpConRestApi.Controllers.exe -setcertificate`
      8. Go to `ProgramData\OpConxps\SAM\Log` and open the **SMAOpConRestApi.log** file to view the results of the certificate creation.
    - To allow the REST API to install a custom certificate, complete the following steps:
      1. Go to `ProgramData\OpConxps\SAM` and open the **SMAOpConRestApi.ini** file.
      2. Verify that **Port** has a valid port number.
      3. In the **CertificateSerialNumber** field, enter the custom certificate serial number without spaces.
      4. Save and close the configuration file.
      5. Open the command prompt in Administrator mode (Run as administrator).
      6. Change the directory to the `SAM` folder under the OpConxps installation folder.
      7. Run the following command: `SMAOpConRestApi.Controllers.exe -setcertificate`

      :::note
      Solution Manager is integrated with the SMA OpCon REST API. After installation, you can access Solution Manager at `https://127.0.0.1`.
      :::

29. Select **Next**.
30. On the Ready to Install the Program screen, review the summary information.
31. Select **Install**.
32. Wait while the installation completes. This may take a few minutes.
33. On the InstallShield Wizard Completed screen, select **Finish**.

:::note
The installation writes the log files named `SMA_OpCon_Database_Scripts_Install.log` and `SMA_OpCon_SAM_Server_Install.log` to the Windows directory. Consult these files if any installation problems are suspected.
:::

## SMA OpCon DDI

The SMA OpCon DDI installation can be run independently on a machine. Use the following procedure to perform a new installation or an upgrade.

To install SMA OpCon DDI, complete the following steps:

1. Log in as a Windows user with Local Administrative Rights.
2. Close all running applications on the desktop, including OpCon applications.
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and open the installer for the SMA OpCon DDI package.
5. Complete each screen in the wizard.
6. Select **Finish**.

## SMA OpCon Schedule Import Export

:::warning
Continuous is no longer actively developing the original ImpEx application. Continuous now offers a more advanced and reliable solution, Deploy. ImpEx no longer receives updates; Deploy is its replacement.
:::

The SMA OpCon Schedule Import Export installation can be run independently on a machine. Follow the procedure in this section to perform a new installation or an upgrade.

To install SMA OpCon Schedule Import Export, complete the following steps:

1. Log in as a Windows user with Local Administrative Rights.
2. Close all running applications on the desktop, including OpCon applications.
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and open the installer for the SMA OpCon Schedule Import Export package.
5. Complete each screen in the wizard.
6. Select **Finish**.

### Set Schedule Import Export to Run as Administrator

Schedule Import Export must run as Administrator to configure the System DSNs for SQL Server and Access databases.

To configure Schedule Import Export to run as Administrator, complete the following steps:

1. Locate `ImpEx.exe` in the following location: `<Target Directory>\OpConxps\Utilities\`
2. Right-click **ImpEx.exe** and select **Run as Administrator** from the menu.
3. Refer to [Create System DSNs](./configuration.md#Create_System_DSNs) for configuring System DSNs.

:::note
To uninstall the Schedule Import Export utility, remove it through **Add/Remove Programs**.
:::

## SMA OpCon SNMP Agent

For the SMA Notify Handler to send SNMP traps, the SNMP Agent must be installed and configured on the SAM application server. Complete the procedures in this section to install and configure the SMA OpCon SNMP Agent.

:::note
To uninstall the SNMP Agent, remove it through **Add/Remove Programs**. Then check the `OpConxps\SNMP` folder to verify that `SMAagent.dll` has been deleted. If the file is still present, a program is still using it. To resolve this, stop the programs using the DLL and then delete it, or restart the machine.
:::

### Install the SNMP Agent

To install the SNMP Agent, complete the following steps:

1. Log in as a Windows user with Local Administrative Rights.
2. Close all running applications on the desktop, including OpCon applications.
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and open the installer for the SMA OpCon SNMP Agent package.
5. Complete each screen in the wizard.
6. Select **Finish**.

### Enable the SNMP Service in Windows

The Windows SNMP Service is required to process SNMP trap notifications.

To enable the Windows SNMP Service, complete the following steps:

1. Open **Control Panel** on your Windows machine.
2. Select **Programs and Features**.
3. Select the **Turn Windows features on or off** link.
4. Select the **Simple Network Management Protocol (SNMP)** option in the **Windows Features** dialog.
5. Select **OK** to enable the service.

### Configure the SNMP Service Properties

To configure the SNMP service settings on the recipient computer to receive SNMP trap notifications, complete the following steps:

1. Open **Control Panel** on your Windows machine.
2. Select **Administrative Tools > Services**.
3. Select **SNMP Service**.
4. Select the **Traps** tab in the **SNMP Service Properties** window.
5. Add the community name (e.g., `public`) to the **Community name** list.
6. In the **Trap destinations** field, enter the IP address or host name of the machine receiving the traps.
7. Select the **Security** tab.
8. Verify that the **Send authentication trap** option is selected.
9. Add the community name (e.g., `public`) to the **Accepted community names** list.
10. Select the **Accept SNMP packets from any hosts** option.
11. Select **Apply** and then **OK** to save the changes.

### Configure the SMA Notify Handler

Once the SNMP Service properties are configured, complete the following steps:

1. Select **Server Options**.
2. Select the **Notification Settings** tab.
3. Select **SNMP Notifications Enabled**.
4. Select **True** in the list at the bottom of the screen and then select **Update**.
5. Select **Save** on the **Server Options** toolbar.
6. Select **Close** to the right of the **Server Options** tab to close the **Server Options** screen.

## SMA Resource Monitor

The SMA OpCon Resource Monitor can be installed as a stand-alone service. For information, refer to the following sections:

- [Requirements](#requirements)
- [New Installation](#new-installation)
- [Upgrade Installation](#upgrade-installation)
- [Silent Mode Installation](#silent-mode)

### Requirements

The SMA OpCon Resource Monitor requires the following:

- Any supported version of Windows with Microsoft .NET Framework 4.5.2 installed
- A supported version of the Agent for Microsoft installed on the machine

### New Installation

To perform the first installation of SMA OpCon Resource Monitor on a machine, complete the following steps:

1. Log in as a Windows user with Local Administrative Rights.
2. Close all running applications on the desktop, including OpCon applications.
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and open the installer for the SMA OpCon Resource Monitor package. On the **Packages** screen, select **Install** from the **Action** list and then select the version.
5. Complete each screen in the wizard.
6. Select **Finish**.

:::note
The installation writes the log file named `SMA_OpCon_Resource_Monitor_Install.log` to the Windows directory. Consult this file if any installation problems are suspected.
:::

#### Modify the SMAResourceMonitor.ini File

To modify the SMAResourceMonitor.ini configuration file, complete the following steps:

1. Right-click the **Start** button and select **Explore** from the menu.
2. Browse to the `<Configuration Directory>\SMAResourceMonitor` directory.
3. Find the **SMAResourceMonitor.ini** file.
4. Right-click the file and select **Open With**.
5. Select an ASCII text editor such as Notepad from the **Choose the program you want to use** list.
6. Make any necessary modifications to the `.ini` file. For complete information on the SMAResourceMonitor.ini settings, refer to [SMAResourceMonitor.ini](../utilities/SMA-Resource-Monitor/Service.md#SMAResou).
7. Go to **File > Save**.
8. Close the text editor.

#### Set Up Service Startup

By default, the SMA Resource Monitor service is set to **Automatic (Delayed Start)** startup and runs under the local system account. To change the default settings, complete the following steps.

:::note
Continuous recommends leaving the SMA Microsoft Resource Monitor service set to **Automatic (Delayed Start)** to avoid potential issues at startup time while other services and programs start.
:::

On the application server:

1. Go to **Start > Administrative Tools > Server Manager**.
   :::note
   On Server 2012, go to **Server Manager > Tools > Services** and then skip to Step 3.
   :::
2. Expand the **Configuration** option.
3. Select the **Services** icon.
4. In the Services window, select the newly installed **SMA Microsoft Resource Monitor** service.
5. In the **SMA Microsoft Resource Monitor Properties** window on the **General** tab, select the service startup type:
   - Automatic (Delayed Start)
   - Automatic
   - Manual
   - Disabled
6. On the **Log On** tab, select the **Log on as** option for the service:
   - **This account**: If the service needs access to network directories, enter a domain user in the field, then enter and confirm the password.
   - **Local System account**: If the service runs as the local system account, select this option to clear the default domain user displayed in the field.
7. Select **OK**.
8. Refer to [SMA Resource Monitor](../utilities/SMA-Resource-Monitor/Introduction.md) to configure and operate the SMA Resource Monitor.

:::note
The **SMAResourceMonitor.ini** file contains the service name.
:::

#### Set Folder Options to Show File Extensions

Continuous recommends configuring folder options on the Windows machine to show file extensions, so you can verify exact file names on the system.

:::tip Example
If file extensions are not displayed and you create a text document named `test.txt`, the operating system creates a file named `test.txt.txt`. If SMA Resource Monitor is looking for `test.txt`, it cannot find `test.txt.txt`.
:::

To show file extensions in folder options, complete the following steps:

1. Right-click the **Start** button and select **Explore** from the menu.
2. Go to **Tools > Folder Options**.
3. Select the **View** tab.
4. Verify that the **Hide extensions of known file types** option is not selected.
5. Select the **Apply to All Folders** button.

### Upgrade Installation

#### Stop the Service

To stop the SMA Resource Monitor service before upgrading, complete the following steps:

1. Go to **Start > Administrative Tools > Server Manager**.
2. Expand the **Configuration** option.
3. Select the **Services** icon.
4. Select **SMA OpCon Resource Monitor** in the **Services** list.
5. Go to **Action > Stop**.
6. Confirm the service **Status** is **Stopped**.
7. Close the **Services** window.

#### Remove the SMA Resource Monitor

If the previous version of the Resource Monitor was installed from a release lower than 16, you must first uninstall the previous version. If you are upgrading from the initial 16 release or later, you can skip this procedure.

:::note
As an alternative, you can use the [OpCon Web Installer (OWI)](https://github.com/smatechnologies/opcon-web-installer) to uninstall previous versions of the SMA Resource Monitor.
:::

To remove the previous SMA Resource Monitor installation, complete the following steps:

1. Go to **Start > Control Panel**.
2. Select the **Programs and Features** icon.
3. Select **SMA OpCon Resource Monitor**.
4. Select the **Uninstall** button in the toolbar.
5. Select the **Remove** option and select **Next**.
6. Select **OK** to confirm the removal.
7. If the **InstallShield Removal Complete** screen asks to restart the computer, select the option to restart now.
8. Select **Finish**.

#### Install the SMA Resource Monitor

To install the upgraded SMA Resource Monitor, complete the following steps:

1. Log in as a Windows user with Local Administrative Rights.
2. Close all running applications on the desktop, including OpCon applications.
3. Download the OpCon Web Installer (OWI) zip file from <https://github.com/smatechnologies/opcon-web-installer>.
4. Run the **OpCon Web Installer.exe** file to download and open the installer for the SMA OpCon Resource Monitor package. On the **Packages** screen, select **Upgrade** from the **Action** list and then select the version.
5. Complete each screen in the wizard.
6. Select **Finish**.

:::note
The installation writes the log file named `SMA_OpCon_Resource_Monitor_Install.log` to the Windows directory. Consult this file if any installation problems are suspected.
:::

#### Restart the Service

To restart the SMA Resource Monitor service after upgrading, complete the following steps:

1. Go to **Start > Administrative Tools > Server Manager**.
2. Expand the **Configuration** option.
3. Select the **Services** icon.
4. Select **SMA OpCon Resource Monitor** in the **Services** list.
5. Go to **Action > Start**.
6. Confirm the service **Status** is **Started**.
7. Close the **Services** window.

## Silent Mode

The **SilentInstall.cmd** file installs all MSI packages located in the same directory as the script. Most MSI packages have unique features and parameters, so you should work with one package at a time. The **SilentInstall.cmd** file also supports multiple instance packages.

### Silent Mode Install

To perform a silent mode installation, complete the following steps:

1. Copy the MSI package and **SilentInstall.cmd** file from the installation package into a directory on your server (e.g., `C:\SilentInstall`).
2. Right-click the **SilentInstall.cmd** file in the local folder and select **Edit** from the menu.
3. Find and enable the preferred command based on your requirements:
   - Set the `_siType` variable to `1` to perform a complete install of the MSI package.
   - Set the `_siType` variable to `2` and set the `_siRemove` variable to `"<feature>,<feature>"` to perform a complete install of the MSI package except for the specified features. Refer to [Silent Install Features](#silent-install-features) for the complete feature list.
   - Set the `_siType` variable to `3` to perform an install of the default components.
   - Set the `_siInstances` variable to the desired number of instances to perform a multi-instance install of the MSI package. The valid range is 1 to 51.
     :::note
     The `_siInstances` functionality is only valid for the following multi-instance-enabled Agent installers: SAP, SAPBW, and Windows.
     :::
4. Edit the `_siPath` variable if you do not want to install to the default path. If you do not define a custom path, x86 packages install to `%ProgramFiles(x86)%\OpConxps` and x64 packages install to `%ProgramFiles%\OpConxps`.
5. Edit the `_siParameter` variable to specify custom values for any parameters. If you do not define custom parameter values, the default values are used. Refer to [Silent Install Parameters](#silent-install-parameters) for a complete list of parameters.

   :::tip Example

   ```batch
   set _siParameter="RESMON_MSGIN='C:\PATH TO MSLSAM\MSLSAM\MSGIN'"
   ```

   :::

   :::note
   To perform a minor upgrade during a silent mode install, include the following parameters in the `_siParameter` variable:

   ```shell
   _siParameter=REINSTALLMODE="vomus" REINSTALL="ALL"
   ```

   :::

6. Go to **File > Save**.
7. Select the **SilentInstall.cmd** file in the local folder to run the command.
8. Review the log file to confirm installation. Log files for silent installations are created in `%WINDIR%` (usually `C:\Windows`) and use the naming convention `<package name>_Silent.log`.

   :::tip Example
   If you perform a silent installation of `SMA OpCon Windows LSAM x86 Install.msi`, the log file in `%WINDIR%` is: `SMA_OpCon_Windows_LSAM_x86_Install_Silent.log`
   :::

### Silent Mode Uninstall

The **SilentUninstall.cmd** file uninstalls all MSI packages located in the same directory as the script. If multiple instances are installed, the command removes all instances of each package.

:::note
This procedure assumes the product is already installed from a 15.0 or higher package.
:::

To perform a silent mode uninstall, complete the following steps:

1. Copy the MSI package and **SilentUninstall.cmd** file from the OpCon installation package into any directory on your server (e.g., `C:\SilentUninstall`).
2. Select the **SilentUninstall.cmd** file in the local folder to run the command.

### Silent Install Features

If you set `_siType=2`, the following features can be defined in a comma-separated string for the `_siRemove` variable.

#### SMA OpCon MS Dynamics AX 2009 Connector

|Feature|Description|
|--- |--- |
|MS_DynamicsAX_2009_EMPlugin_x64|Installs Enterprise Manager x64 plug-in for MS Dynamics AX 2009 Connector|
|MS_DynamicsAX_2009_EMPlugin_x86|Installs Enterprise Manager x86 plug-in for MS Dynamics AX 2009 Connector|

#### SMA OpCon MS Dynamics AX 2012 Connector

|Feature|Description|
|--- |--- |
|MS_DynamicsAX_2012_EMPlugin_x64|Installs Enterprise Manager plug-in for MS Dynamics AX 2012 Connector|
|MS_DynamicsAX_2012_EMPlugin_x86|Installs Enterprise Manager plug-in for MS Dynamics AX 2012 Connector|

#### SMA OpCon MS Dynamics AX 2012 R3 Connector

|Feature|Description|
|--- |--- |
|MS_DynamicsAX_2012_R3_EMPlugin_x64|Installs Enterprise Manager plug-in for MS Dynamics AX 2012 R3 Connector|
|MS_DynamicsAX_2012_R3_EMPlugin_x86|Installs Enterprise Manager plug-in for MS Dynamics AX 2012 R3 Connector|

#### SMA OpCon MS Orchestrator Connector

|Feature|Description|
|--- |--- |
|MS_Orchestrator_EMPlugin|Installs Enterprise Manager plug-in for the SMA MS Orchestrator Connector|

#### SMA OpCon MS SQL Connector

|Feature|Description|
|--- |--- |
|SMA_MSSQL_EMPlugin|Installs Enterprise Manager plug-in for the MS SQL Connector|

#### SMA OpCon SAM

|Feature|Description|
|--- |--- |
|DOBATCH|Installs SMA OpCon DoBatch|

#### SMA OpCon SAP Business Objects Connector

|Feature|Description|
|--- |--- |
|SAP_Business_Objects_EMPlugin_x64|Installs Enterprise Manager plug-in for the SAP Business Objects Connector|
|SAP_Business_Objects_EMPlugin_x86|Installs Enterprise Manager plug-in for the SAP Business Objects Connector|

#### SMA OpCon SAP Data Services Connector

|Feature|Description|
|--- |--- |
|SAP_Data_Services_EMPlugin_x64|Installs Enterprise Manager plug-in for the SAP Data Services Connector|
|SAP_Data_Services_EMPlugin_x86|Installs Enterprise Manager plug-in for the SAP Data Services Connector|

#### SMA OpCon VMWare Connector

|Feature|Description|
|--- |--- |
|VMWare_EMPlugin_x64|Installs Enterprise Manager plug-in for the VMWare Connector|
|VMWare_EMPlugin_x86|Installs Enterprise Manager plug-in for the VMWare Connector|

#### SMA OpCon Web Services (RESTful) Connector

|Feature|Description|
|--- |--- |
|Web_Services_RESTful_EMPlugin_x64|Installs Enterprise Manager plug-in for the Web Services (RESTful) Connector|
|Web_Services_RESTful_EMPlugin_x86|Installs Enterprise Manager plug-in for the Web Services (RESTful) Connector|

### Silent Install Parameters

The following parameters can be defined as a space-separated string in the format `PARAMETER="VALUE"` for the `_siParameter` variable.

### SMA OpCon

|Parameter|Description|
|--- |--- |
|APPLIST_SAM|Activates SAM in SMAServMan.ini. Blank: Not Selected, 1: Selected. Default value: 1|
|APPLIST_SMALDAPMON|Activates the LDAP Monitor application in SMAServMan.ini. Blank: Not Selected, 1: Selected|
|APPLIST_SMANETCOM|Activates the SMA Network Communications Module in SMAServMan.ini. Blank: Not Selected, 1: Selected. Default value: 1|
|APPLIST_SMANOTIFYHANDLER|Activates the SMA Notify Handler application in SMAServMan.ini. Blank: Not Selected, 1: Selected. Default value: 1|
|APPLIST_SMAREQUESTROUTER|Activates the SMA Request Router application in SMAServMan.ini. Blank: Not Selected, 1: Selected. Default value: 1|
|APPLIST_SMASTARTTIMECALCULATOR|Activates the SMA Start Time Calculator application in SMAServMan.ini. Blank: Not Selected, 1: Selected. Default value: 1|
|CONNECTCONFIG_SQL_AUTHENTICATION|Determines whether the installation uses Windows Authentication or SQL Server Authentication when connecting to the specified SQL Server and SMA OpCon database. Blank: SQL Server Authentication, 1: Windows Authentication|
|CONNECTCONFIG_SQL_CONFIGURATION|Defines the SQL Server high availability option. Valid values: `AlwaysOn`, `Mirroring`, and `None`.|
|CONNECTCONFIG_SQL_DATABASE|Defines the SMA OpCon database name to create or upgrade. Required. Must be a string.|
|CONNECTCONFIG_SQL_PASSWORD|Defines the password for SQL Server Authentication. Required when `CONNECTCONFIG_SQL_AUTHENTICATION` is blank (SQL Server Authentication).|
|CONNECTCONFIG_SQL_PORT|Defines the port number for connecting to the server. Required when `CONNECTCONFIG_SQL_PORT_USE` is set to 1. Range: 1–65535|
|CONNECTCONFIG_SQL_PORT_USE|Determines whether a custom port number is used to connect to the server. Blank: Not Selected, 1: Selected|
|CONNECTCONFIG_SQL_SERVER|Defines the name of the SQL Server hosting the SMA OpCon database.|
|CONNECTCONFIG_SQL_USERNAME|Defines the username for SQL Server Authentication. Required when `CONNECTCONFIG_SQL_AUTHENTICATION` is blank (SQL Server Authentication).|
|DOMAIN_NAME|Specifies the domain name for hung scripts.|
|EMAIL_RECIPIENT|Specifies the email recipient for hung scripts.|
|IS_SQLSERVER_AUTHENTICATION|Determines whether the installation uses Windows Authentication or SQL Server Authentication. 0: Windows Authentication, 1: SQL Server Authentication. Default: 0|
|IS_SQLSERVER_CONFIGURATION|Defines the SQL Server high availability option. Valid values: `AlwaysOn`, `Mirroring`, `None`. Default: `None`|
|IS_SQLSERVER_DATABASE|Defines the SMA OpCon database name to create or upgrade. Required. Must be a string.|
|IS_SQLSERVER_DBDATAFILEGROWTH|Defines the percentage growth rate for the SMA OpCon database data file. Must be an integer. Default: 10|
|IS_SQLSERVER_DBFILECONTAINMENT|Specifies whether database containment is required. Valid values: `PARTIAL`, `NONE`. Default: `NONE`|
|IS_SQLSERVER_DBLOGFILEGROWTH|Defines the percentage growth rate for the SMA OpCon database log file. Must be an integer. Default: 10|
|IS_SQLSERVER_INITIALDBFILESIZE|Defines the initial database data file size in MB. Must be an integer. Default: 200|
|IS_SQLSERVER_INITIALDBLOGSIZE|Defines the initial database log file size in MB. Must be an integer. Default: 1000|
|IS_SQLSERVER_LOGICALDBDATAFILE|Defines the logical name of the SMA OpCon database data file. Must be a string. Default: `OPCONXPS_Data`|
|IS_SQLSERVER_LOGICALDBLOGFILE|Defines the logical name of the SMA OpCon database log file. Must be a string. Default: `OPCONXPS_Log`|
|IS_SQLSERVER_MAXDBLOGSIZE|Defines the maximum database log file size in MB. Must be an integer. Default: 10000|
|IS_SQLSERVER_PASSWORD|Defines the password for SQL Server Authentication. Required when `IS_SQLSERVER_AUTHENTICATION` is 1.|
|IS_SQLSERVER_PATHDBDATAFILE|Defines the path to the SMA OpCon database data file. Required. Default: `C:\Program Files\Microsoft SQL Server\MSSQL.10\MSSQL\Data\OPCONXPS_Data.MDF`|
|IS_SQLSERVER_PATHDBLOGFILE|Defines the path to the SMA OpCon database log file. Required. Default: `C:\Program Files\Microsoft SQL Server\MSSQL.10\MSSQL\Data\OPCONXPS_LOG.LDF`|
|IS_SQLSERVER_PORT|Defines the port number for connecting to the server. Required when `IS_SQLSERVER_PORT_USE` is 1. Range: 1–65535|
|IS_SQLSERVER_PORT_USE|Determines whether a custom port number is used. Blank: Not Selected, 1: Selected|
|IS_SQLSERVER_SERVER|Defines the name of the SQL Server instance hosting the SMA OpCon database.|
|IS_SQLSERVER_UPGRADE|Determines whether the installation creates a new database or upgrades an existing one. 0: New Install, 1: Upgrade Install. Default: 0|
|IS_SQLSERVER_USERNAME|Defines the username for SQL Server Authentication. Required when `IS_SQLSERVER_AUTHENTICATION` is 1.|
|PORT_NUMBER|Defines the port number for the REST API service when TLS encryption is active. Default: 443. Range: 1–65535|
|SMTP_SERVER|Specifies the SMTP server for hung scripts.|
|TLS_ACTIVE|Enables TLS encryption for the REST API service. Blank: Not Selected, 1: Selected. Default: 1|
|TLS_CERT_SN|Defines the certificate serial number for TLS encryption. Generated and set automatically if `TLS_ACTIVE=1` and `TLS_CERT_SN` is blank.|

### SMA OpCon Agent for Microsoft

|Parameter|Description|
|--- |--- |
|INSTANCENAME|Appends an instance name description to the agent long service name and service description per instance.|
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the installation folder.|
|PATH_OUTPUT|Defines a custom physical path for the location where programs write their output files. If specified, this must be a path on a local hard drive.|
|PORT_NUMBER_JORS|Defines the port number through which the JORS service communicates all SMA File Transfer job information. Default: 3110|
|PORT_NUMBER_SAM|Defines the port number through which the agent and SMANetCom communicate. Default: 3100|
|PORT_NUMBER_SMAFT|Defines the port number through which all SMA File Transfer communication occurs when not using TLS encryption. Default: 3110|
|TLS_ACTIVE|Indicates whether TLS encryption is used for communication between the agent and the OpCon server. Default: `True`. Range: `True`, `False`|
|TLS_CERT_REVOCATION|Indicates whether to validate certificates against the local certificate store's revocation list. Default: `False`. Range: `True`, `False`|
|TLS_CERT_SN|Identifies the locally stored digital certificate that identifies the agent to SMANetCom. Default: `76c9f9bdae61c28d4ca11fe313ad7970`|
|TLS_CLIENT_VALIDATION|Indicates whether TLS client validation is performed. Default: `True`. Range: `True`, `False`|
|TLS_PORT_NUMBER|Defines the port number for all SMA File Transfer communication when using TLS encryption. Default: 3111|

### SMA OpCon Agent for SAP

|Parameter|Description|
|--- |--- |
|INSTANCENAME|Appends an instance name description to the agent long service name and service description per instance.|
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the installation folder.|
|PATH_OUTPUT|Defines a custom physical path for the location where programs write their output files. If specified, this must be a path on a local hard drive.|
|PORT_NUMBER_JORS|Defines the socket number used for communicating job output information with Enterprise Manager. Default: 13110|
|PORT_NUMBER_SAM|Defines the port number through which the agent and SMANetCom communicate. Default: 13100|

### SMA OpCon Agent for SAP BW

|Parameter|Description|
|--- |--- |
|INSTANCENAME|Appends an instance name description to the agent long service name and service description per instance.|
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the installation folder.|
|PATH_OUTPUT|Defines a custom physical path for the location where programs write their output files. If specified, this must be a path on a local hard drive.|
|PORT_NUMBER_JORS|Defines the socket number used for communicating job output information with Enterprise Manager. Default: 13110|
|PORT_NUMBER_SAM|Defines the port number through which the agent and SMANetCom communicate. Default: 13100|

### SMA OpCon Agent for SQL

|Parameter|Description|
|--- |--- |
|INSTANCENAME|Appends an instance name description to the agent long service name and service description per instance.|
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the installation folder.|
|PATH_OUTPUT|Defines a custom physical path for the location where programs write their output files. If specified, this must be a path on a local hard drive.|
|PORT_NUMBER_JORS|Defines the socket number used for communicating job output information with Enterprise Manager. Default: 13110|
|PORT_NUMBER_SAM|Defines the port number through which the agent and SMANetCom communicate. Default: 13100|

### SMA OpCon Resource Monitor

|Parameter|Description|
|--- |--- |
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the installation folder.|
|PATH_OUTPUT|Defines a custom physical path for the location where programs write their output files. If specified, this must be a path on a local hard drive.|
|RESMON_MSGIN|Sets the path to the Agent for Microsoft MSGIN folder for use by Resource Monitor.|

### SMA OpCon SAP Business Objects Connectors

|Parameter|Description|
|--- |--- |
|PATH_OUTPUT|Defines a custom physical path for the location where programs write their output files. If specified, this must be a path on a local hard drive.|

### SMA OpCon SAP Data Services Connector

|Parameter|Description|
|--- |--- |
|PATH_OUTPUT|Defines a custom physical path for the location where programs write their output files. If specified, this must be a path on a local hard drive.|

### SMA OpCon SMArt Email

|Parameter|Description|
|--- |--- |
|EMAIL_PASSWORD|Defines the password used to connect to the mail server. Required.|
|EMAIL_PROTOCOL|Defines the protocol for connecting to the mail server. Options: `POP`, `IMAP`.|
|EMAIL_USERNAME|Defines the user used to connect to the mail server. Required.|
|OPCON_PASSWORD|Defines the OpCon user's external password for submitting external events. Required.|
|OPCON_USERNAME|Defines the OpCon user for submitting external events. Required.|
|PATH_MSGIN|Defines the path to the MSGIN directory for SAM where external events are submitted.|
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the installation folder.|
|SECURITY_PROTOCOL|Defines the preferred encryption type when connecting to the mail server. Options: `SSL`, `TLS_1_1`, `TLS_1_2`.|
|SERVER_NAME|Defines the name or IP address of the mail server.|
|SERVER_PORT|Defines the port number used by the server for email protocol communication.|

### SMA OpCon VMWare Connector

|Parameter|Description|
|--- |--- |
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the installation folder.|
|PATH_OUTPUT|Specifies the physical root path for the location of the output files generated by the application.|

### SMA OpCon Web Services (RESTful) Connector

|Parameter|Description|
|--- |--- |
|PATH_OPCONXPS|Specifies the physical path to the location of the configuration files to be migrated to PROGRAMDATA if different from the installation folder.|
|PATH_OUTPUT|Specifies the physical root path for the location of the output files generated by the application.|
