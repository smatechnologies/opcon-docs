---
title: SMA Resource Monitor Service
description: "The SMA Resource Monitor service reads the Rule files to determine what to monitor."
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

# SMA Resource Monitor Service

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The SMA Resource Monitor service reads the Rule files to determine what
to monitor. When a monitored resource rule is met, the service reads the
Actn files to send OpCon events to the SAM.

:::note
When a mapped drive or UNC path is specified in File Name Path, the Resource Monitor Service needs to be running as a domain user who has access to mapped drives or the UNC path being monitored.
:::

## When Would You Use It?

- Use this feature when a monitored resource rule is met

## Why Would You Use It?

- **SMA Resource**: The SMA Resource Monitor service reads the Rule files to determine what

## Configure the SMA Resource Monitor Service Log On

1. Use menu path: **Start \> Settings \> Control Panel**
2. Select the **Administrative Tools** icon
3. Select the **Services** icon to run the Service Control Manager
4. Select the **SMA Microsoft Resource Monitor** in the **Services** list
    - If not selected already, select **Automatic (Delayed Start)** from the **Startup Type** list box
    :::warning
    Continuous recommends leaving the SMA Microsoft Resource Monitor service set to Automatic (Delayed Start) to avoid potential issues at startup time while other services and programs start up.
    :::
5. Select the **Log On** tab
6. To run the service as the Local System Account:
    - Select **Local System** account radio button
    - Select **OK**
7. To run the service as a Domain User:
    - Select **This account** radio button
    - Select **Browse** to find the *Domain User*
    - Select the **Domain User**
    - Select **OK**
8. **Close ☒** the **Services** window

## Start the SMA Resource Monitor Service

To start the SMA Resource Monitor Service, complete the following steps:

1. Use menu path: **Start \> Settings \> Control Panel**
2. Select the **Administrative Tools** icon
3. Select the **Services** icon to run the Service Control
    Manager.
4. Select the **SMA Microsoft Resource Monitor** in the Services list
5. Use menu path: **Action \> Start**
6. Confirm the SMA Microsoft Resource Monitor's **Status** is
    **Started**.
7. **Close ☒** the **Services** window

## Stop the SMA Resource Monitor

To stop the SMA Resource Monitor, complete the following steps:

1. Use menu path: **Start \> Settings \> Control Panel**
2. Select the **Administrative Tools** icon
3. Select the **Services** icon to run the Service Control
    Manager.
4. Select the **SMA Microsoft Resource Monitor** in the Services list
5. Use menu path: **Action \> Stop**
6. Confirm the SMA Microsoft Resource Monitor's **Status** is
    **Stopped**.
7. **Close ☒** the **Services** window

## Logging

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

The SMA Resource Monitor creates a single log file located in the: `<Output Directory\>\\SMAResourceMonitor\\Log\\` directory.

The log file is named SMAResourceMonitor.log

The SMA Resource Monitor archives log files when they reach the maximum
log file size configured in the .ini file. All archived log files reside
in the: `<Output Directory\>\\SMAResourceMonitor\\Log\\Archive` folder.

If an archive folder for the day does not already exist, the SMA
Resource Monitor creates one. The folder names use the following naming
convention: yyyy_mm_dd (Weekday). The logging mechanism generates the
weekday name matching the format recognized by the regional settings of
the user running the SMA Resource Monitor service.

:::tip Example
Make sure the file is done arriving before it is created.

For large file transfers, it takes time for the complete file to arrive. Set the 'Wait Verify' value high enough to make sure that the file should not have changed size in that time. As soon as the size matches the same previous size and the file is no longer in use, the action group(s) will be triggered.
:::

As a log file fills up, SMA Resource Monitor moves it to the current
archive folder and renames it using the following naming convention: SMA
Resource Monitor StartTime - StopTime.log.

:::tip Example
An SMA Resource Monitor archive file for the time range of 12:58:16 to 13:58:00 would be named SMAResourceMonitor 125816 - 135800.log.
:::

Once per day the SMA Resource Monitor deletes old archive folders. The
SMA Resource Monitor retains 10 days of archived logs by default. If
desired, change the Log Archive Max Retention setting in the .ini file.

## Configuration

The configuration for the SMA Resource Monitor service and UI is managed
through a single .ini file named SMAResouceMonitor.ini.

### Modify the SMAResourceMonitor.ini File

1. Right-click on **Start** and select **Explore** from the menu
2. Browse to the <Configuration Directory\>\\SMAResourceMonitor\\
    directory on the OpCon server.
3. Find the **SMAResourceMonitor.ini** file
4. Right-click the file and select **Open With**
5. Select an ASCII text editor (e.g., Notepad) from the **Choose the
    program you want use** list box.
6. Make any necessary modifications to the .ini file in the text
    editor. For complete information on the SMAResourceMonitor.ini
    settings, see the tables in the next section.
7. Use menu path: **File \> Save**
8. **Close ☒** the text editor

### SMAResourceMonitor.ini

The SMAResourceMonitor.ini file resides in the <Configuration
Directory\>\\SMAResourceMonitor\\ directory.

:::note
The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

All settings in the configuration file apply to the machine on which the
file resides. The INI file contains the following major sections:
*General* and *Debug Options*.

#### General

The General table contains basic information for SMA Resource Monitor processing.

| General | Default | Description | Dynamic (Y \| N) | Required |
| --- | --- | --- | --- | --- |
| ShortServiceName= | SMA_MSRESOURCE_MONITOR | - Defines the hidden internal (e.g., registry) service name Windows refers to. | N | Y |
| DisplayServiceName= | SMA Microsoft Resource Monitor | - Defines the service name displayed in the Service Control Manager. | N | Y |
| PathToRuleAndActionFiles | ".\Rules" | - Defines the full path to the directory containing the Rules and Actions files.<br />- The default path is a relative path from your <Configuration Directory\> to a sub folder named "Rules".|N|Y|
| MSGINDirectory | N/A | - Defines the path to the ```<Configuration Directory\>\MSLSAM\MSGIN```directory for placing OpCon Events. | N | Y |
| ExternalEventUser | Blank | - Defines the OpCon user for all events sent by the SMA Resource Monitor.<br />**- Maximum characters allowed: 15**<br /><br />**NOTE** <br />- You may specify a cleartext password. Then restart the SMAResourceMonitor service. When the service reads the INI file and finds an unencrypted password, it will encrypt the password and update the ini file. <br />- To manually encrypt the password, use the Password encryption tool in the Enterprise Manager. Then, copy and paste the encrypted password for the value of this setting. *For more information, refer to Encrypting Passwords in the Enterprise Manager online help.* | N | Y |
| ExternalEventPassword | Blank | - Defines the OpCon External Event Password for the OpCon User. This password is used for all events sent by the SMA Resource Monitor. <br />**- Maximum characters allowed: 20**<br /><br />**NOTE** <br />- You may specify a cleartext password. Then restart the SMAResourceMonitor service. When the service reads the INI file and finds an unencrypted password, it will encrypt the password and update the ini file. <br />- To manually encrypt the password, use the Password encryption tool in the Enterprise Manager. Then, copy and paste the encrypted password for the value of this setting. *For more information, refer to Encrypting Passwords in the Enterprise Manager online help.* | N | Y |
| SampleFrequency | 5 | - Defines (in seconds) how often samples are taken for Counter Monitors to establish an average.<br />**- Minimum Value: -1<br />- Maximum Value: - 300** | N | Y |
| NetworkRetryTimer | 30 | - Defines the number of seconds to wait before retrying a network connection that is down (this is a connection on which the SMA Resource Monitor is monitoring a file.) | N | Y |
| InitializationScript | Blank | - The full path to the initialization script. The initialization script runs when the SMAResourceMonitor service starts. Continuous recommends using this script to map network drives or to perform any other required initialization procedure. Enclose the path in double quotes ("<path\>"). | N | N | 
| TerminationScript | Blank | - The full path to the termination script which runs when the SMAResourceMonitor service stops. Continuous recommends using this script to disconnect network drives or to perform any other required termination procedure. Enclose the path in double quotes ("<path\>"). | N | N |
| WebServiceURL | Blank | - Defines the web services URL for the OpCon Web Services. Example: ```http://localhost:85``` | N | N |

#### Debug Options

| Debug Options | Default | Description | Dynamic (Y \| N) | Required |
| --- | --- | --- | --- | --- |
| ArchiveDaysToKeep | 10 | Determines the number of days of history (i.e., archive folders) to keep. Each Time it archives a log, the SMA Resource Monitor checks for expired archive folders to delete. | Y | N |
| MaximumLogFileSize | 15000 | Defines the maximum size in bytes for each log file. Determines when the current log file is closed and a new file is started. When the file reaches this maximum size, it is "rolled over". This setting creates small manageable log files. SMAResourceMonitor.log resides in the ```<Output Directory\>\SMAResourceMonitor\Log``` directory.  Once per day the SMA Resource Monitor deletes old archive folders. | Y | N | 
| TraceLevel | 0 | Determines the detail of debug trace logs. Valid Values:<ul><li>0 = None</li><li>1 = Basic (non-detailed trace)</li><li>2 = Detailed</li><li>3 = Very Detailed (Traces all the possible debug information in the application.)</li></ul> | Y | N | 

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## Operations

### Monitoring
- The service reads Rule files (`PathToRuleAndActionFiles`, default: `.\Rules`) to determine what to monitor; when a rule is met, it reads the corresponding Action files and sends OpCon events to SAM.
- Set `TraceLevel` in `SMAResourceMonitor.ini` to `1` (Basic), `2` (Detailed), or `3` (Very Detailed) to increase log verbosity for troubleshooting; default is `0` (None).
- The `NetworkRetryTimer` (default: 30 seconds) controls how long the service waits before retrying a down network connection being monitored.

### Common Tasks
- Start the service: in Services (SCM), select **SMA Microsoft Resource Monitor** and use **Action > Start**; confirm Status shows **Started**.
- Stop the service: in Services (SCM), select **SMA Microsoft Resource Monitor** and use **Action > Stop**; confirm Status shows **Stopped**.
- Set the service startup type to **Automatic (Delayed Start)** to avoid conflicts with other services initializing at system startup.
- Run the service as a Domain User (rather than Local System) when monitoring mapped drives or UNC paths; the Domain User must have access to those network resources.

### Alerts and Log Files
- The active log file is `SMAResourceMonitor.log` in `<Output Directory>\SMAResourceMonitor\Log\`.
- When the log reaches the `MaximumLogFileSize` (default: 15,000 bytes), it is archived to `<Output Directory>\SMAResourceMonitor\Log\Archive\yyyy_mm_dd (Weekday)\` and renamed with start and stop times.
- The service retains 10 days of archived logs by default; change the `ArchiveDaysToKeep` setting in `SMAResourceMonitor.ini` to adjust retention.

## Exception Handling

**Service cannot access mapped drives or UNC paths** — When the SMA Resource Monitor service is configured to run as the Local System account, it cannot access network-mapped drives or UNC paths — Change the service Log On account to a Domain User who has access to the required network resources, then restart the service.

**Service fails or encounters conflicts at startup** — Starting the SMA Resource Monitor with a Startup Type other than Automatic (Delayed Start) can cause conflicts when other services and programs are still initializing — Continuous recommends setting the Startup Type to Automatic (Delayed Start) in the Service Control Manager to avoid startup-time issues.

## FAQs

**Q: What account should the SMA Resource Monitor service run as when monitoring network paths?**

When monitoring mapped drives or UNC paths, the service must run as a Domain User who has access to those network resources. Running as the Local System account limits monitoring to local directories only.

**Q: What startup type does Continuous recommend for the SMA Resource Monitor service?**

Continuous recommends setting the startup type to Automatic (Delayed Start) to avoid potential conflicts during system startup while other services and programs are initializing.

**Q: How long does the SMA Resource Monitor keep archived log files, and how is this configured?**

By default, the SMA Resource Monitor retains 10 days of archived log files. To change this retention period, update the Log Archive Max Retention setting in the SMAResourceMonitor.ini configuration file.

## Glossary

**MSGIN**: A directory monitored by an agent for incoming OpCon event files. Placing a properly formatted event file in MSGIN causes the agent to forward it to SAM for processing.

**SMA Resource Monitor (SMARM)**: A Windows service that monitors files, counters, services, and processes on Windows machines. When a monitored condition is met, it sends OpCon events to trigger automation actions.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
