---
sidebar_label: 'Automatic Setup for Mirroring'
title: Setup for Automatic Microsoft SQL Mirroring
description: "Database mirroring increases SQL Server database availability and can be configured in two operating modes: high-performance or high-safety."
product_area: Database Administration
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - System Configuration
last_updated: 2026-03-18
doc_type: procedural
---

# Setup for Automatic Microsoft SQL Mirroring

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

Database mirroring increases SQL Server database availability and can be configured in two operating modes: high-performance or high-safety.

**High-performance mode** operates asynchronously. The principal server does not wait for the mirror before committing a transaction. The mirror can lag behind the principal, and there is a risk of data loss if the principal fails.

**High-safety mode** operates synchronously. A transaction is committed on both the principal and mirror before responding to the customer. This increases data security at the cost of higher transaction latency. High-safety mode has two sub-modes: high-availability mode (automatic failover) and high-protection mode (manual failover).

OpCon must not be used with database mirroring in high-performance mode due to the risk of data loss. High-performance mode setup is not covered in this topic.

## When Would You Use It?

- Database mirroring increases SQL Server database availability and can be configured in two operating modes: high-performance or high-safety

## Why Would You Use It?

- **Setup for**: Database mirroring increases SQL Server database availability and can be configured in two operating modes: high-performance or high-safety

## Prerequisites

- The principal and mirror must be separate SQL Server instances running the same edition
- The mirrored database must have the same name on both servers
- The recovery model must be set to FULL on both servers
- Each server instance's login account must have access to the other instance and connect permission to its database mirroring endpoint
- If a firewall is present, it must allow incoming and outgoing connections on the endpoint port
- No active database or transaction log backups can be running during setup. The setup scripts take a backup automatically
- The database on the mirror server must be created with the same name as the principal database before setup begins. If using manual failover, configure the ODBC connection to point to the mirrored database on the mirror server

## Considerations

1. Principal and mirror should run on comparable systems capable of handling identical workloads
2. In high-safety mode with automatic failover, each failover partner's normal CPU load should stay below 50%. CPU overload can prevent a partner from pinging other instances, causing unnecessary failover. If 50% cannot be maintained, use high-safety mode without automatic failover
3. The mirror database path (including drive letter) should match the principal's path. If paths differ, use the MOVE option in the RESTORE statement

4. All server instances in the session must use the same master code page and collation. Differences can cause setup failures
5. For best performance, use a dedicated NIC for mirroring
6. Applications cannot access the database on the mirror server
7. The synchronous mirroring process requires the principal to wait for the mirror before committing changes, which can affect performance
8. Do not reconfigure an in-use database mirroring endpoint. Reconfiguration can cause restarts that appear as errors to other instances, and in high-safety mode with automatic failover, can trigger an unwanted failover
9. Only the principal database content is mirrored. Associated data in **master** or **msdb** (such as SQL Server Agent jobs and logins) is not mirrored. Duplicate this information at the mirrored site if needed for role switching. Ensure logins exist on the mirror server for all database users
10. Configure database mirroring during off-peak hours; configuration can impact performance
11. Pausing mirroring for extended periods causes the transaction log on the principal to grow and prevents truncation, which can fill the log or disk
12. Only the current principal database can be backed up. The mirror database cannot be backed up because it is in the RESTORING state

## Configuring Command Files

Continuous provides the following command files for mirroring:

- **Setup:** `SMA_DBMirrorCreateLoginsAndEndpoints.cmd` and `SMA_DBMirrorSetup.cmd`
- **Manual failover and failback:** `SMA_ManualFailoverToMirror.cmd` and `SMA_ManualFailbackToPrincipal.cmd`
- **Removal:** `SMA_DBMirrorRemove.cmd`

### Modify the Scripting Variables Command Files on the Primary Server

To configure Command Files, complete the following steps:

1. Log on as a *Windows user with access to the OpCon installation directories*
2. Use menu path: **Start \> All Programs \> OpConxps \> Utilities \> SMA OpCon Configuration Utility**
3. Select the **Mirroring** tab
4. Replace the default scripting variable values according to the [Mirroring Information Worksheet](Database-Mirroring-Checklist.md#Mirrorin)
5. Mark the **Mirroring Variables Verified** option after reviewing all values
6. If not previously configured during installation, configure the **Environment** and **Maintenance** tabs and replace their default scripting variable values
7. Select the **Update Scripts** button
8. **Close** the program
9. If a Witness Server will be used:
   1. Right-click the **Start** button and select **Explore**
   2. Browse to the <Configuration Directory\>**\\Utilities\\Database\\** directory
   3. Right-click **SMA_SetDBMirroringScriptingVariables.cmd** and select **Edit**
   4. Find the section named "Scripting Variables used on the witness server"
   5. Delete `rem` from the front of the SET command for each of the five (5) Witness Server variables
   6. Use menu path: **File \> Save**
   7. **Close** the file

### Modify the Mirroring Command Files to Enable a Witness Server

These steps are only required if a Witness Server will be used. If not, skip to [Modify the Failover and Failback Command Files](#Modify_the_Failover_and_Failback_Command_Files).

#### Modify SMA_DBMirrorCreateLoginsAndEndpoints.cmd

1. Right-click **SMA_DBMirrorCreateLoginsAndEndpoints.cmd** and select **Edit**
2. Find the section containing the **SMA_CREATEWITNESSENDPOINT** script
3. Delete `rem` from the front of the two (2) lines as instructed in the file

4. Find the section containing the **SMA_CREATEWITNESSLOGIN** scripts
5. Delete `rem` from the front of the six (6) lines as instructed in the file
6. Use menu path: **File \> Save**
7. **Close** the file

#### Modify SMA_DBMirrorSetup.cmd


1. Right-click **SMA_DBMirrorSetup.cmd** and select **Edit**
2. Find the section containing the **SMA_SETWITNESS** script
3. Delete `rem` from the front of the two (2) lines as instructed in the file
4. Find the section containing the **SMA_ADDWITNESSMONITORJOB** script
5. Delete `rem` from the front of the four (4) lines as instructed in the file

6. Use menu path: **File \> Save**
7. **Close** the file

#### Modify SMA_DBMirrorRemove.cmd


1. Right-click **SMA_DBMirrorRemove.cmd** and select **Edit**
2. If high-availability has been configured, find the line containing the **SMA_REMOVEWITNESS** script and delete `rem` from the front of that line and the next line
3. If the mirrored database will be used by OpCon programs after mirroring is removed:
   1. Find the **SMA_DROPMIRROR** script line and add `rem` to the front of it and the next line to comment them out
   2. Find the **SMA_RESTOREMIRRORWITHRECOVERY** script line and delete `rem` from the front of it and the next line
4. Use menu path: **File \> Save**
5. **Close** the file

### Modify the Failover and Failback Command Files

If using Manual Failover and SMAServMan should be stopped before failover and started after, modify the failover command files.

#### Modify SMA_ManualFailoverToMirror.cmd


1. Right-click **SMA_ManualFailoverToMirror.cmd** and select **Edit**
2. Find the line containing **SC \\\\%PrincipalServerName% stop SMA_ServMan** and delete `rem` from the front of the stop command
3. Find the line containing **SC \\\\%MirrorServerName% start SMA_ServMan** and delete `rem` from the front of the start command
4. Use menu path: **File \> Save**
5. **Close** the file

#### Modify SMA_ManualFailbackToPrincipal.cmd


1. Right-click **SMA_ManualFailoverToMirror.cmd** and select **Edit**
2. Find the line containing **SC \\\\%MirrorServerName% stop SMA_ServMan** and delete `rem` from the front of the stop command
3. Find the line containing **SC \\\\%PrincipalServerName% start SMA_ServMan** and delete `rem` from the front of the start command
4. Use menu path: **File \> Save**
5. **Close** the file

## Setting Up Database Mirroring

Complete all procedures in [Configuring Command Files](#Configur) before proceeding.

### Run the Command Scripts to Set Up Mirroring

1. Use menu path: **Start \> Run**
2. Enter *cmd* in the **Open** text box and select **OK**
3. Change directories to the <Configuration Directory\>**\\Utilities\\Database\\** directory: `cd *OpConDatabaseScriptDir*`
4. Enter *SMA_DBMirrorCreateLoginsAndEndpoints.cmd* and review the logs to verify success
5. Enter *SMA_DBMirrorSetup.cmd* and review the logs to verify success

## Switching Roles in a Database Mirroring Session (Failover)

Role switching transfers customer request handling between the principal and mirror servers, enabling failover. Three types are supported:

- [Manual Failover](#Manual)
- [Forced Service](#Forced)
- [Automatic Failover](#Automati)

The following table summarizes role switching support by operating mode.

||High-Protection Mode(High Safety with no witness server)|High Availability Mode
                                (High Safety with witness server)|
|--- |--- |--- |
|Manual Failover|Yes|Yes|
|Forced Service|Yes|No|
|Automatic Failover|No|Yes|

### Manual Failover

SQL Server supports manual failover only in high-safety mode, primarily for administrative purposes such as hardware or software upgrades rather than error response. The principal and mirror must be synchronized before initiating. When failover is initiated, all user processes connected to the principal are disconnected and must reconnect to the new principal after failover.

### Run the Command Script to Fail Over

From the SAM application server, run `SMA_ManualFailoverToMirror.cmd` to initiate the failover.

1. Use menu path: **Start \> Run**
2. Enter *cmd* in the **Open** text box and select **OK**
3. Change directories to the <Configuration Directory\>**\\Utilities\\Database\\** directory: `cd *OpConDatabaseScriptDir*`
4. Enter `SMA_ManualFailoverToMirror.cmd`
5. Review the logs for each SQL script to verify success

### Run the Command Script to Fail Back

From the SAM application server, run `SMA_ManualFailbackToPrincipal.cmd` to initiate the failback.

1. Use menu path: **Start \> Run**
2. Enter *cmd* in the **Open** text box and select **OK**
3. Change directories to the <Configuration Directory\>**\\Utilities\\Database\\** directory: `cd *OpConDatabaseScriptDir*`
4. Enter `SMA_ManualFailbackToPrincipal.cmd`
5. Review the logs for each SQL script to verify success

#### Potential Issues with Manual Failover and OpCon

- OpCon components are not designed to use SQL Native Client functionality to automatically reconnect to the mirror if the principal becomes unavailable
- Do not reconfigure an in-use database mirroring endpoint. Reconfiguration can cause the endpoint to restart, which may appear as an error to other server instances

### Forced Service

SQL Server supports forced service in high-safety mode with no witness and in high-performance mode. In high-protection mode, this is the typical method for switching processing to the mirror when the principal fails. Before forcing service, verify the principal is genuinely unavailable. If the principal is still running but merely disconnected, some clients may still access it; forcing service could cause the original and new principal databases to be updated independently.

Use the SQL script `SMA_MIRRORFORCEDFAILOVER.sql` on the mirror server to initiate a forced service failover.

#### Potential Issues with Forced Service and OpCon

- OpCon components are not designed to use SQL Native Client functionality to automatically reconnect to the mirror if the principal becomes unavailable
- Because the principal and mirror must be on separate SQL Server instances, SQL Server login SIDs are likely mismatched between instances, or some logins may not exist on both. This can cause connection failures with the `opconsam` or `opconui` logins, or result in users being logged in with unexpected permissions. Run `SMA_REMAPSQLUSERSTOLOGINS.sql` on the mirror before reconnecting any OpCon applications to resolve this. This issue does not affect Windows authenticated logins
- Do not reconfigure an in-use database mirroring endpoint. Reconfiguration can cause restarts that appear as errors to other server instances

### Automatic Failover

SQL Server supports automatic failover in high-safety mode when a witness participates in the session. Failover only occurs when both the witness and mirror have lost contact with the principal, retained contact with each other, and the database is SYNCHRONIZED. This ensures no data loss during failover.

Run `SMA_REMOVEWITNESS.sql` on either the principal or mirror to remove the witness from the session. Removing the witness from a high-availability session causes it to continue in high-protection mode.

#### Potential Issues with Automatic Failover and OpCon

OpCon predates database mirroring technology and does not account for automatic failover at the database level. Known issues include:

1. SMAServMan only allows automatic failover in one direction (primary to standby). If OpCon and SQL Server are installed on the same principal and mirror servers, automatic failover back to the original principal is not possible after a failover to the mirror
2. On a database connection failure, OpCon programs continuously retry the connection until shut down or the database becomes available. If the principal and mirror roles switch, OpCon applications continue retrying the original connection while maintaining contact with SMAServMan. Application-level failover will not be initiated even if SMAServMan is configured for automatic failover
3. OpCon components are not designed to use SQL Native Client functionality to automatically reconnect to the mirror if the principal becomes unavailable

Because the principal and mirror must be on separate SQL Server instances, SQL Server login SIDs are likely mismatched or some logins may not exist on both. This can cause connection failures with `opconsam` or `opconui` logins, or result in users being logged in with unexpected permissions. Run `SMA_REMAPSQLUSERSTOLOGINS.sql` before reconnecting any OpCon applications to resolve this. This issue does not affect Windows authenticated logins.

If server CPU workload overloads the CPU, unexpected automatic failovers may occur (see Considerations).

Do not reconfigure an in-use database mirroring endpoint. Reconfiguration can cause restarts that appear as errors to other instances. In high-safety mode with automatic failover, this can trigger an unwanted failover.

## Monitoring Database Mirroring

Monitor database mirroring using the Database Mirroring Monitor or the `sp_dbmmonitor...` system stored procedures. Users must be a member of the `sysadmin` fixed server role or the `dbm_monitor` fixed database role in the `msdb` system database.

When set up through SQL Server Management Studio, a "Database Mirroring Monitor Job" SQL Server Agent job is created automatically and runs every minute. When set up via scripting, add this job manually using `sp_dbmmonitoraddmonitoring`. The `SMA_DBMirrorSetup.cmd` file creates this job with a 5-minute scheduling interval.

Adjust the interval using `sp_dbmmonitorchangemonitoring`:

```sql
EXEC sp_dbmmonitorchangemonitoring 1, 5 ;
```

Where:

- `1` = the identifier for the "Update period" parameter (currently the only available parameter)
- `5` = the new update period in minutes (must be an integer between 1 and 120)

### Important Metrics to Monitor

The most critical metrics on the Status tab of the Database Mirroring Monitor are:

- **Unsent Log** – KB of transaction log on the principal not yet sent to the mirror. Indicates potential data loss volume if the principal fails
- **Unrestored Log** – KB of unrestored transaction log in the mirror's redo queue. Indicates how long failover will take before the mirror can serve the database
- **Oldest Unsent Transaction** – Timestamp of the oldest transaction in the principal's send queue. Indicates potential data loss in terms of time if the principal fails
- **Mirror Commit Overhead** – Average delay per transaction in milliseconds due to the principal waiting for the mirror to write to its redo log. Only relevant in high-safety mode
- **Mirroring State** – Current state of each mirroring partner: Unknown, Synchronizing, Synchronized, Suspended, or Disconnected. Both partners should be Synchronized during normal operation

### Using the Database Mirroring Monitor

#### Open the Database Mirroring Monitor

To monitor Database Mirroring, complete the following steps:

1. Log on as a *local administrative user*
2. Use menu path: **Start \> All Programs \> SQL Server Management Studio**
3. Select **Database Engine** in the **Server type** list
4. Select the desired \[OpCon Database Server\] in the **Server name** list
5. Select **Windows Authentication** in the **Authentication** list

6. Select the **Connect** button
7. Use menu path: **View \> Object Explorer**
8. Expand the **SQL Server** hosting the OpCon database
9. Expand the **Databases** folder
10. Right-click the **mirrored database** to be monitored
11. Use menu path: **Tasks \> Open Database Mirroring Monitor**

#### Use the Database Mirroring Monitor

1. Select the **ellipsis** button (\...) under the **History** column
2. Use the filter options and refresh to update the history display
3. Select **Close ☒**
4. Select the **Warnings** tab
5. View threshold values for: **Unsent Log**, **Unrestored Log**, **Oldest Unsent Transaction**, and **Mirror Commit Overhead**
6. Select the **Set Thresholds** button to customize threshold settings

## Enabling Alerts on Database Mirroring Events

SQL Server can generate two types of events during a mirroring session:

- **SQL Server message events** – logged in the Windows event log when warning thresholds are exceeded
- **WMI events** – generated when the internal state of a mirroring session changes

Running `SMA_DBMirroringSetup.cmd` creates a complete set of database alerts for both event types on both the principal and mirror servers. All alerts are created in a disabled state and must be enabled before use.

### Enable Alerts for Mirroring

To enable Alerts on Database Mirroring Events, complete the following steps:

1. Log on as a *local administrative user*
2. Use menu path: **Start \> All Programs \> SQL Server Management Studio**
3. Select **Database Engine** in the **Server type** list
4. Select the desired \[OpCon Database Server\] in the **Server name** list
5. Select **Windows Authentication** in the **Authentication** list

6. Select the **Connect** button
7. Use menu path: **View \> Object Explorer**
8. Expand the **SQL Server Agent**
9. Expand the **Alerts** folder
10. Right-click the **alert to be enabled** and select **Enable**
11. Repeat step 10 for each alert to enable

## Removing Database Mirroring

Complete the [Modify SMA_DBMirrorRemove.cmd](#Modify_SMA_DBMirrorRemove.cmd) procedure before proceeding.

### Run the Command Scripts to Remove Mirroring

1. Use menu path: **Start \> Run**
2. Enter *cmd* in the **Open** text box and select **OK**
3. Change directories to the <Configuration Directory\>**\\Utilities\\Database\\** directory: `cd *OpConDatabaseScriptDir*`
4. Enter *SMA_DBMirrorRemove.cmd*
5. Review the logs for each SQL script to verify success

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Unsent Log | KB of transaction log on the principal not yet sent to the mirror. | — | — |
| Unrestored Log | KB of unrestored transaction log in the mirror's redo queue. | — | — |
| Oldest Unsent Transaction | Timestamp of the oldest transaction in the principal's send queue. | — | — |
| Mirror Commit Overhead | Average delay per transaction in milliseconds due to the principal waiting for the mirror to write to its redo log. | — | — |
| Mirroring State | Current state of each mirroring partner: Unknown, Synchronizing, Synchronized, Suspended, or Disconnected. | — | — |
| SQL Server message events | logged in the Windows event log when warning thresholds are exceeded | — | must be enabled before use.  ### Enable Alerts for Mirroring  1. Log on as a *local admi |
| WMI events | generated when the internal state of a mirroring session changes | — | must be enabled before use.  ### Enable Alerts for Mirroring  1. Log on as a *local admi |
## Operations

### Monitoring
- Monitor mirroring status using the **Mirroring State** metric (Unknown, Synchronizing, Synchronized, Suspended, or Disconnected) in the database mirroring monitor.
- In high-safety mode with automatic failover, keep each failover partner's normal CPU load below 50%; CPU overload can cause unnecessary failovers by preventing partners from pinging each other.
- SQL Server message events (logged in the Windows event log) and WMI events are generated when warning thresholds are exceeded; these must be explicitly enabled before use.
- Pausing mirroring for extended periods causes the principal transaction log to grow and prevents truncation; monitor transaction log size if mirroring is suspended.

### Common Tasks
- Set up mirroring by running `SMA_DBMirrorCreateLoginsAndEndpoints.cmd` then `SMA_DBMirrorSetup.cmd` from the `<Configuration Directory>\Utilities\Database\` directory; review logs after each script to verify success.
- Perform a manual failover by running `SMA_ManualFailoverToMirror.cmd`; perform a failback by running `SMA_ManualFailbackToPrincipal.cmd`.
- Remove mirroring by running `SMA_DBMirrorRemove.cmd`; configure the script beforehand to either drop the mirror database or restore it with recovery based on the intended post-removal use.
- Configure database mirroring during off-peak hours; the synchronous mirroring process increases transaction latency and configuration can impact performance.

### Alerts and Log Files
- Review the logs produced by each SQL script after running setup, failover, or failback command files to verify success before proceeding to the next step.
- Only the principal database can be backed up; the mirror database is in the RESTORING state and cannot be backed up.

## Exception Handling

**Using OpCon with database mirroring in high-performance mode risks data loss** — High-performance mode is asynchronous; the mirror can lag behind the principal, and data can be lost if the principal fails — OpCon must not be used with high-performance mode; use high-safety mode (synchronous) instead.

**SQL Server login SIDs are mismatched after failover or forced service, causing connection failures** — Because the principal and mirror are on separate SQL Server instances, login SIDs are likely mismatched or some logins may not exist on both instances; this causes the opconsam or opconui logins to fail connecting to the new principal after a role switch — Run SMA_REMAPSQLUSERSTOLOGINS.sql on the mirror before reconnecting any OpCon applications after a failover; this issue does not affect Windows authenticated logins.

**Reconfiguring an in-use database mirroring endpoint triggers an unwanted failover** — Reconfiguring a mirroring endpoint causes it to restart, which may appear as an error to other server instances; in high-safety mode with automatic failover, this can trigger an unintended failover to the mirror — Do not reconfigure a mirroring endpoint while the mirroring session is active.

**Pausing mirroring for extended periods causes the transaction log to grow and can fill the disk** — When mirroring is paused, the transaction log on the principal cannot be truncated and continues growing; if left paused long enough, the log or disk fills completely — Resume mirroring as soon as possible after a pause and monitor transaction log size; if extended maintenance is needed, plan for log file growth accordingly.

## FAQs

**Q: How many steps does the Setup for Automatic Microsoft SQL Mirroring procedure involve?**

The Setup for Automatic Microsoft SQL Mirroring procedure involves 101 steps. Complete all steps in order and save your changes.

**Q: What does Setup for Automatic Microsoft SQL Mirroring cover?**

This page covers Prerequisites, Considerations, Configuring Command Files.

**Q: Why must OpCon not be used with database mirroring in high-performance mode?**

High-performance mode operates asynchronously, meaning the mirror can lag behind the principal and data loss can occur if the principal fails. OpCon requires synchronous (high-safety) mode to ensure data integrity.

## Glossary

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
