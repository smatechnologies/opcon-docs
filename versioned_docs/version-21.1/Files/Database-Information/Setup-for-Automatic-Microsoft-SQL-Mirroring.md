---
sidebar_label: 'Automatic Setup for Mirroring'
---

# Setup for Automatic Microsoft SQL Mirroring

Database mirroring is one of the options provided by SQL Server to increase the availability of a database. Database mirroring can be configured in one of two operating modes, high-performance mode or high-safety mode.

High-performance mode operates asynchronously and the principal server does not wait for a response from the mirror before committing a transaction and responding to the client. In high-performance mode the mirror server can lag behind the principal, especially if the principal is very busy, and there is a risk of some data loss if the principal fails and processing is switched to the mirror.

High-safety mode operates synchronously and a transaction is committed on both the principal and mirror before responding to the client. This increased level of data security comes at the cost of increased transaction latency and consequently slightly reduced performance of the application. In some of the literature on the subject high-safety mode is further decomposed into two separate modes, high-availability mode and high-protection mode. High-availability mode is essentially high-safety mode with automatic failover and high-protection mode is high-safety mode with manual failover.

Since potential data loss, without appropriate checks and balances in place, is highly undesirable in the context of OpCon processing it is recommended that OpCon not be used with database mirroring in high-performance mode. Setting up database mirroring in high-performance mode will not be covered in this topic.

## Prerequisites

- The principal server and the mirror server must be separate instances of SQL Server and must be running the same edition of SQL Server.
- The database being mirrored must have exactly the same name on both the principal server and the mirror server.
- The recovery model of the database must be FULL on both the principal server and the mirror server.
- For two server instances to communicate in a database mirroring session, the login account of each instance requires access to the other instance. Also, each login account requires connect permission to the database mirroring endpoint of the other instance.
- If the computer running SQL Server has a firewall, the firewall configuration must allow both incoming and outgoing connections for the port specified in the endpoint.
- While setting up database mirroring, there must be no active database or transaction log backups. The setup scripts will automatically take a backup to begin the mirroring process.
- A database on the Mirror server must be created with the same name as the database on the principal server BEFORE the user can begin setting up mirroring. If using manual failover, the user must set up the ODBC configuration to point the Mirrored database on the Mirrored server.

## Considerations

1. The partners (principal and mirror) should run on comparable systems that can handle identical workloads.
2. If using high-safety mode with automatic failover, the normal load on each of the failover partners should use less than 50 percent of the CPU. If the work load overloads the CPU, a failover partner might be unable to ping the other server instances in the mirroring session, resulting in an unnecessary failover. If the machine is unable to keep the CPU usage below 50 percent, using high-safety mode without automatic failover is recommended.
3. If possible, the path (including the drive letter) of the mirror database should be identical to the path of the principal database. If the file layouts must differ, the MOVE option in the RESTORE statement is required (e.g., if the principal database is on drive'F:' but the mirror system lacks an F: drive).
4. All of the server instances in a mirroring session should use the same master code page and collation. Differences can cause a problem during mirroring setup.
5. For best performance, use a dedicated network interface card (NIC) for mirroring.
6. The database on the mirror server cannot be accessed by applications
7. The mirroring process is (typically) synchronous and this means the principal must wait for a response from the mirror before committing database changes. This can have a negative impact on performance.
8. Do not reconfigure an in-use database mirroring endpoint. The server instances use each other's endpoints to learn the state of the other systems. If the endpoint is reconfigured, it might restart, which can appear to be an error to the other server instances. This is particularly important in high-safety mode with automatic failover, in which reconfiguring the endpoint on a partner could cause a failover to occur.
9. Only content within the principal database is mirrored. Associated information in the **master** or **msdb** system databases cannot be mirrored. Such associated information includes SQL Server Agent jobs set up against the principal database and logins that are added to the principal server. If such information is important to supporting role switching, the information should be duplicated at the mirrored site. If it is possible, after roles are switched it is best to programmatically reproduce the information on the new principal database. The most common issues are logins and jobs. Make sure that logins exist on the mirror server for all of the database users.
10. Microsoft recommends that database mirroring be configured during off-peak hours because configuration can impact performance.
11. While it is possible for Database Mirroring to be paused, if it is paused for long periods of time this will cause the transaction log on the principal server to continue to grow and it cannot be truncated. This may cause either the transaction log or the disk on which it resides to fill up.
12. Only the database on the current principal server can be backed up. The mirror database cannot be backed up because it is in the RESTORING state.

## Configuring Command Files

SMA Technologies provides the following command files to aid with mirroring:

- To set up mirroring, SMA Technologies provides the two command files SMA_DBMirrorCreateLoginsAndEndpoints.cmd and SMA_DBMirrorSetup.cmd
- To aid with manual failover and fail back processes, SMA Technologies provides the SMA_ManualFailoverToMirror.cmd and SMA_ManualFailbackToPrincipal.cmd files.
- To aid with removal of mirroring, SMA Technologies provides the SMA_DBMirrorRemove.cmd file.

### Modify the Scripting Variables Command Files on the Primary Server

1. Log on as a *Windows user with access to the OpCon installation directories*.
2. Use menu path: **Start \> All Programs \> OpConxps \> Utilities \> SMA OpCon Configuration Utility**.
3. Click the **Mirroring** tab.
4. Replace the default values of the scripting variables according to the [Mirroring Information Worksheet](Database-Mirroring-Checklist.md#Mirrorin).
5. After reviewing all the values on the screen, mark the **Mirroring Variables Verified** checkbox at the end of the list of values.
6. If not previously configured during installation, configure the **Environment** and **Maintenance** tabs.
7. Replace the default values of the scripting variables.
8. Click the **Update Scripts** button.
9. **Close** the program.
10. If a Witness Server will be used in the mirroring configuration,
11. Right-click the **Start** button and select **Explore** from the menu.
12. Browse to the <Configuration Directory\>**\\Utilities\\Database\\** directory.
13. Right-click **SMA_SetDBMirroringScriptingVariables.cmd** and select **Edit** from the menu.
14. Find the section in the command file named "Scripting Variables used on the witness server".
15. Delete the characters "**rem**" from the front of the SET command for each of the five (5) Witness Server variables.
16. Use menu path: **File \> Save**.
17. **Close** the file.

### Modify the Mirroring Command Files to Enable a Witness Server

These steps are only required if a Witness Server will be used in the mirroring configuration. If a Witness Server will not be used, skip this procedure and go to [Modify the Failover and Failback Command Files](#Modify_the_Failover_and_Failback_Command_Files).

#### Modify SMA_DBMirrorCreateLoginsAndEndpoints.cmd

1. Right-click **SMA_DBMirrorCreateLoginsAndEndpoints.cmd**, and select **Edit** from the menu.
2. Find the section containing the **SMA_CREATEWITNESSENDPOINT** script.
3. Delete the characters "**rem**" from the front of the two (2) lines as instructed inside the command file.
4. Find the section containing the **SMA_CREATEWITNESSLOGIN** scripts.
5. Delete the characters "**rem**" from the front of the six (6) lines as instructed inside the command file.
6. Use menu path: **File \> Save**.
7. **Close** the file.

#### Modify SMA_DBMirrorSetup.cmd

1. Right-click **SMA_DBMirrorSetup.cmd**, and select **Edit** from the menu.
2. Find the section containing the **SMA_SETWITNESS** script.
3. Delete the characters "**rem**" from the front of the two (2) lines as instructed inside the command file.
4. Find the section containing the **SMA_ADDWITNESSMONITORJOB** script.
5. Delete the characters "**rem**" from the front of the four (4) lines as instructed inside the command file.
6. Use menu path: **File \> Save**.
7. **Close** the file.

#### Modify SMA_DBMirrorRemove.cmd

1. Right-click **SMA_DBMirrorRemove.cmd** and select **Edit** from the menu.
2. If high-availability has been configured, find the line containing the **SMA_REMOVEWITNESS** script.
3. Delete the characters "**rem**" from the front of the line containing the **SMA_REMOVEWITNESS** script and from next line down.
4. If the mirrored database will be used by OpCon programs after the mirroring is removed:
   1. Find the line containing the **SMA_DROPMIRROR** script.
   2. Add the characters "**rem**" to the front of the line containing the **SMA_DROPMIRROR** script and to the front of the next line down to comment them out.
   3. Find the line containing the **SMA_RESTOREMIRRORWITHRECOVERY** script.
   4. Delete the characters "**rem**" from the front of the line containing the **SMA_RESTOREMIRRORWITHRECOVERY** script and from the next line down.
5. Use menu path: **File \> Save**.
6. **Close** the file.

### Modify the Failover and Failback Command Files

If planning to use Manual Failover and SMAServMan should be automatically stopped before failover and started after failover, modify the failover command files.

#### Modify SMA_ManualFailoverToMirror.cmd

1. Right-click **SMA_ManualFailoverToMirror.cmd** and select **Edit** from the menu.
2. Find the line containing **SC \\\\%PrincipalServerName% stop SMA_ServMan**.
3. Delete the characters "**rem**" from the front of the stop command.
4. Find the line containing **SC \\\\%MirrorServerName% start SMA_ServMan**.
5. Delete the characters "**rem**" from the front of the start command.
6. Use menu path: **File \> Save**.
7. **Close** the file.

#### Modify SMA_ManualFailbackToPrincipal.cmd

1. Right-click **SMA_ManualFailoverToMirror.cmd** and select **Edit** from the menu.
2. Find the line containing **SC \\\\%MirrorServerName% stop SMA_ServMan**.
3. Delete the characters "**rem**" from the front of the stop command.
4. Find the line containing **SC \\\\%PrincipalServerName% start SMA_ServMan**.
5. Delete the characters "**rem**" from the front of the start command.
6. Use menu path: **File \> Save**.
7. **Close** the file.

## Setting Up Database Mirroring

Before completing the procedure to set up mirroring, be sure to complete all of the procedures in the section titled [Configuring Command Files](#Configur).

### Execute the Command Scripts to Set Up Mirroring

1. Use menu path: **Start \> Run**.
2. Enter *cmd* in the **Open** text box and click **OK**.
3. In the **cmd** box, change directories to the <Configuration Directory\>**\\Utilities\\Database\\** directory by entering: `cd *OpConDatabaseScriptDir*`.
4. Enter *SMA_DBMirrorCreateLoginsAndEndpoints.cmd*.
5. Read the logs for each of the SQL scripts to verify success.
6. Enter *SMA_DBMirrorSetup.cmd*.
7. Read the logs for each of the SQL scripts to verify success.

## Switching Roles in a Database Mirroring Session (Failover)

The process of switching the database that services client requests between the principal and mirror servers is known as role switching. It is through role switching that the failover capability is enabled. There are three types of role switching supported:

- [Manual Failover](#Manual)
- [Forced Service](#Forced)
- [Automatic Failover](#Automati)

The following table summarizes how role switching is supported under the different operating modes discussed in this document.

||High-Protection Mode(High Safety with no witness server)|High Availability Mode
                                (High Safety with witness server)|
|--- |--- |--- |
|Manual Failover|Yes|Yes|
|Forced Service|Yes|No|
|Automatic Failover|No|Yes|

### Manual Failover

SQL Server supports manual failover only in high-safety mode, and it is intended to be used primarily for administrative purposes rather than as a response to error conditions. An example scenario where manual failover could be useful would be in maintaining database availability during a hardware or software upgrade. The principal and mirror databases must be in a synchronized state before the database owner can initiate a manual failover. When manual failover is initiated, all user processes currently connected to the principal database will be disconnected. After failover, all user processes must reconnect to the new principal server.

### Execute the Command Script to Fail Over

From the SAM application server, execute the SMA_ManualFailoverToMirror.cmd file to initiate the failover.

1. Use menu path: **Start \> Run**.
2. Enter *cmd* in the **Open** text box and click **OK**.
3. In the **cmd** box, change directories to the <Configuration Directory\>**\\Utilities\\Database\\** directory by entering: `cd *OpConDatabaseScriptDir*`.
4. Enter `SMA_ManualFailoverToMirror.cmd`.
5. Read the logs for each of the SQL scripts to verify success.

### Execute the Command Script to Fail Back

From the SAM application server, execute the SMA_ManualFailbackToPrincipal.cmd file to initiate the failback to the principal server.

1. Use menu path: **Start \> Run**.
2. Enter *cmd* in the **Open** text box and click **OK**.
3. In the **cmd** box, change directories to the <Configuration Directory\>**\\Utilities\\Database\\** directory by entering: `cd *OpConDatabaseScriptDir*`.
4. Enter `SMA_ManualFailbackToPrincipal.cmd`.
5. Read the logs for each of the SQL scripts to verify success.

#### Potential Issues with Manual Failover and OpCon

Some of the potential issues SMA Technologies has identified with Manual Failover with Mirroring and OpCon include:

- OpCon program components are not currently designed to take advantage of the functionality available with the SQL Native Client to automatically reconnect to the mirror server if the principal server becomes unavailable.
- Do not reconfigure an in-use database mirroring endpoint. The server instances use each other's endpoints to learn the state of the other systems. If the endpoint is reconfigured, it might restart, which can appear to be an error to the other server instances.

### Forced Service

SQL Server supports forced service in high-safety mode with no witness and also in high-performance mode. When running in high-protection mode this is typically how one would switch processing to the mirror server in the event of a fault on the principal server. Before forcing service it is important to verify that the principal server is genuinely unavailable. According to the SQL Server documentation "If the principal server was merely disconnected from the database mirroring session and is still running, some clients might continue to access the original principal database. Before you force service, it is important to prevent clients from accessing the original principal server. Otherwise, after service is forced, the original principal database and the current principal database could be updated independently of the other."

On the mirror server the SQL script SMA_MIRRORFORCEDFAILOVER.sql can be used to initiate a forced service failover.

#### Potential Issues with Forced Service and OpCon

Some of the potential issues SMA Technologies has identified with Forced Service with Mirroring and OpCon include:

- OpCon program components are not currently designed to take advantage of the functionality available with the SQL Native Client to automatically reconnect to the mirror server if the principal server becomes unavailable.
- While the SQL Server database users are mirrored with the OpCon database, because the principal and mirror databases must be on separate instances of SQL Server, there is a high probability that the SIDs of the SQL Server logins will be mismatched between the two instances or even that some logins will not exist on both instances. This could lead to possible database connection problems such as not being able to connect at all using the opconsam or opconui logins or, if an SID of a SQL login from the principal server coincidentally matches the SID of a different login from the mirror server, being logged in but not as the expected user which could affect permissions to the database. This can be resolved by running the SMA_REMAPSQLUSERSTOLOGINS.sql script but the script must be run before any attempt is made to reconnect OpCon applications to the database. This problem does not exist for Windows authenticated logins.
- Do not reconfigure an in-use database mirroring endpoint. The server instances use each other's endpoints to learn the state of the other systems. If the endpoint is reconfigured, it might restart, which can appear to be an error to the other server instances.

### Automatic Failover

SQL Server supports automatic failover in high-safety mode with a witness participating in the database mirroring session. Automatic failover will only occur when both the witness server and the mirror server have lost contact with the principal, have retained contact with each other and the database is in a SYNCHRONIZED state. Requiring that the database be synchronized prevents data loss during failover, because every transaction committed on the principal database is also committed on the mirror database.

On either the principal server or the mirror server the SQL script SMA_REMOVEWITNESS.sql can be used to remove the witness from the database mirroring session. The result of removing the witness from a database mirroring session that is running in high-availability mode is that the session will continue to run in high protection mode.

#### Potential Issues with Automatic Failover and OpCon

Some of the potential issues SMA Technologies has identified with Automatic Failover with Mirroring and OpCon include:

The current design of OpCon predates the availability of database mirroring technology and as a result does not take into account automatic failover at the database level. This presents specific issues in some areas:

1. The OpCon SMAServMan component will only allow automatic failover in one direction, from the primary to the standby. If OpCon and SQL Server are installed on the same physical servers (principal and mirror), with database mirroring configured for automatic failover, then an automatic failover from the principal to the mirror and subsequent seamless automatic failover back to the original principal is not possible.
2. In the event of a database connection failure OpCon programs will continuously retry the database connection until they are either shut down or the database they are attempting to connect to is once again available. In an automatic failover database mirroring configuration it is possible that the principal and mirror roles could switch, i.e., the principal database is "pulled out" from under the OpCon applications. In this case the applications will continue to attempt to reconnect to the database, all the while maintaining contact with the SMAServMan management application, and application failover at the OpCon level will not be initiated if SMAServMan is configured for automatic failover.
3. OpCon program components are not currently designed to take advantage of the functionality available with the SQL Native Client to automatically reconnect to the mirror server if the principal server becomes unavailable.

While the SQL Server database users are mirrored with the OpCon database, because the principal and mirror databases must be on separate instances of SQL Server, there is a high probability that the SIDs of the SQL Server logins will be mismatched between the two instances or even that some logins will not exist on both instances. This could lead to possible database connection problems such as not being able to connect at all using the opconsam or opconui logins or, if an SID of a SQL login from the principal server coincidentally matches the SID of a different login from the mirror server, being logged in, but not as the expected user which could affect permissions to the database. This can be resolved by running the SMA_REMAPSQLUSERSTOLOGINS.sql script, but the script must be run before any attempt is made to reconnect OpCon applications to the database. This problem does not exist for Windows authenticated logins.

As noted in the section titled Considerations above, if the workload on the server overloads the CPU it is possible that unexpected and unwanted occurrences of automatic failover may take place.

Do not reconfigure an in-use database mirroring endpoint. The server instances use each other's endpoints to learn the state of the other systems. If the endpoint is reconfigured, it might restart, which can appear to be an error to the other server instances. This is particularly important in high-safety mode with automatic failover, in which reconfiguring the endpoint on a partner could cause a failover to occur.

## Monitoring Database Mirroring

Database mirroring can either be monitored through the Database Mirroring Monitor or by using the sp_dbmmonitor... set of system stored procedures. In order for a user to be able to monitor database monitoring they must either be a member of the sysadmin fixed server role or have been added as a member of the dbm_monitor fixed database role in the msdb system database.

When database monitoring is set up through SQL Server Management Studio a SQL Server Agent job named "Database Mirroring Monitor Job" is automatically added and run every minute by the SQL Server Agent. When database mirroring is set up via scripting, this job must be added manually using the sp_dbmmonitoraddmonitoring system stored procedure. The SMA_DBMirrorSetup.cmd command file has been set up to create this job using the system stored procedures and a scheduling interval of 5 minutes.

The interval at which the job runs can be adjusted by running the sp_dbmmonitorchangemonitoring system stored procedure. For example:

```sql
EXEC sp_dbmmonitorchangemonitoring 1, 5 ;
```

Where:

- 1 = the identifier of the "Update period" parameter. "Update period" is currently the only parameter available.
- 5 = the new update period in minutes. This must be an integer value between 1 and 120.

### Important Metrics to Monitor

Of the values displayed on the Status tab of the Database Mirroring Monitor, probably the most important to keep a check on are Unsent Log, Unrestored Log, Oldest Unsent Transaction, and Mirror Commit Overhead.

- Unsent Log specifies how many KB of transaction log on the principal server have not yet been sent to the mirror server. This value gives an indication of the potential for data loss in terms of volume in the event the principal fails.
- Unrestored Log specifies how many KB of unrestored transaction log the mirror server has in the redo queue. This value gives an indication of the "failover time" that will be necessary before the mirror server can take over serving up the database in the event that the principal fails.
- Oldest Unsent Transaction is the time stamp of the oldest transaction in the send queue of the principal server. This value gives an indication of the potential for data loss in terms of time in the event the principal fails.
- Mirror Commit Overhead specifies the average delay per transaction in milliseconds. This is the amount of latency introduced by the principal server having to wait for the mirror server to write the transaction into its redo log. This metric is only relevant in high-safety mode.
- Mirroring State specifies the state of each partner in the mirroring session. The possible states are Unknown, Synchronizing, Synchronized, Suspended and Disconnected. When all is progressing well both partners should be in a Synchronized state.

### Using the Database Mirroring Monitor

To launch the Database Mirroring Monitor from SQL Server Management Studio, complete the following procedure:

#### Launch the Database Mirroring Monitor

1. Log on as a *local administrative user*.
2. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
3. Select **Database Engine** in the **Server type** drop-down list.
4. Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.
5. Select **Windows Authentication** in the **Authentication** drop-down list.
6. Click the **Connect** button.
7. Use menu path: **View \> Object Explorer**.
8. Expand the **SQL Server** hosting the OpCon database.
9. Expand the **Databases** folder.
10. Right-click the **mirrored database** to be monitored.
11. Use menu path: **Tasks \> Launch Database Mirroring Monitor**.

#### Use the Database Mirroring Monitor

1. Click the **ellipsis** button (\...) under the **History** column.
2. Use the filter options and refresh to update the information in the history display.
3. Click **Close ☒**.
4. Click the **Warnings** tab.
5. View the values of thresholds set on any of the following metrics: **Unsent Log**, **Unrestored Log**, **Oldest Unsent Transaction**, and **Mirror Commit Overhead**.
6. Click the **Set Thresholds** button to customize the threshold settings.

## Enabling Alerts on Database Mirroring Events

There are two types of events that SQL server can generate in response to certain conditions that might occur during a database mirroring session. The first type is SQL Server message events that are logged in the Windows event log if the warning thresholds described above are set. The second type is Windows Management Instrumentation (WMI) events that are generated when the internal state of a database mirroring session changes.

When the SMA_DBMirroringSetup.cmd file was executed, it created a complete set of database alerts for both SQL Server message events and WMI state change events on both the principal and mirror servers. All events are created in a disabled state and those selected for activation must first be enabled.

### Enable Alerts for Mirroring

1. Log on as a *local administrative user*.
2. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
3. Select **Database Engine** in the **Server type** drop-down list.
4. Select the desired \[OpCon Database Server\] in the **Server name**     drop-down list.
5. Select **Windows Authentication** in the **Authentication** drop-down list.
6. Click the **Connect** button.
7. Use menu path: **View \> Object Explorer**.
8. Expand the **SQL Server Agent**.
9. Expand the **Alerts** folder.
10. Right-click the **alert to be enabled** and select **Enable**.
11. Repeat Step 10 for each alert that is to be enabled.

## Removing Database Mirroring

Before completing the procedure to remove mirroring, be sure to complete the [Modify SMA_DBMirrorRemove.cmd](#Modify_SMA_DBMirrorRemove.cmd) procedure.

### Execute the Command Scripts to Remove Mirroring

1. Use menu path: **Start \> Run**.
2. Enter *cmd* in the **Open** text box and click **OK**.
3. In the **cmd** box, change directories to the <Configuration Directory\>**\\Utilities\\Database\\** directory by entering: `cd *OpConDatabaseScriptDir*`.
4. Enter *SMA_DBMirrorRemove.cmd*.
5. Read the logs for each of the SQL scripts to verify success.
