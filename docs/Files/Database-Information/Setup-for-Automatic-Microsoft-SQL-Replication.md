---
sidebar_label: 'Automatic Setup for Replication'
title: Setup for Automatic Microsoft SQL Replication
description: "Setup for Automatic Microsoft SQL Replication lets OpCon automate the configuration and removal of SQL Server transactional replication."
product_area: Database Administration
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - System Configuration
last_updated: 2026-06-02
doc_type: procedural
---

# Setup for Automatic Microsoft SQL Replication

Setup for Automatic Microsoft SQL Replication lets OpCon automate the configuration and removal of SQL Server transactional replication, removing the need for manual DBA intervention on each failover cycle.

Database replication in SQL Server uses a publishing metaphor with three roles: publisher, distributor, and subscriber. OpCon uses transactional replication to distribute data from the production database to the failover database. Data moves from publisher to distributor, then is either "pushed" to the subscriber by the distributor or "pulled" from the distributor by the subscriber.

This topic assumes the publisher and subscriber run on distinct SQL Server instances on separate machines. The distributor may share an instance with either the publisher or subscriber, or run on its own.

## Prerequisites

- The OpCon database server must have Microsoft SQL Server Standard or Enterprise edition installed.
- The Microsoft SQL Server Backward Compatibility Components must be installed. To download this package, go to: <https://technet.microsoft.com/en-us/library/cc707787(v=sql.120).aspx>.
- The version of SQL Server on the distributor must be the same or later than the version on the publisher.
- The OpCon database must exist on both the Publisher Server and Subscriber Server before starting replication setup. Both databases must have the Recovery model set to **Full**.
- OpCon SAM and supporting services must be installed on the Primary and Secondary OpCon servers.
- The Windows Agent must be installed on both the primary and secondary OpCon servers to facilitate backup file transfers during failover recovery. Machines must also be configured to enable SMA File Transfer. For information on configuring machines to support file transfer, refer to [Advanced Machine Configuration](../../objects/machines.md#Advanced) in the **Concepts** online help.
- Complete the [Replication Information Worksheet](Database-Replication-Checklist.md#Replicat).

## Considerations

The publisher and subscriber should run on comparable systems that can handle identical workloads.

Do not change the password for the `distributor_admin` login manually. Always use the `sp_changedistributor_password` stored procedure, the **Distributor Properties** dialog, or the **Update Replication Passwords** dialog in SQL Server Management Studio. Password changes made this way are applied to local publications automatically. If the `distributor_admin` password is changed manually, the `DistributorKey` entry in `SMA_SetDBReplicationScriptingVariables.cmd` must also be updated.

Microsoft recommends running each replication agent under a different Windows account with Windows authentication for all agent connections. Grant only the required privileges for each agent:

:::note
The scripts provided by Continuous to automate the replication setup automatically grant the appropriate database privileges. Folder share permissions must be configured manually.
:::

**Snapshot Agent**

- Be a member of the `db_owner` fixed database role in the distribution database.
- Have write permissions on the snapshot share.
- Be a member of the `db_owner` fixed database role in the publication database.

**Log Reader Agent**

- Be a member of the `db_owner` fixed database role in the distribution database.
- Be a member of the `db_owner` fixed database role in the publication database.

**Distribution Agent for a pull subscription**

- Be a member of the `db_owner` fixed database role in the subscription database.
- Be a member of the PAL (Publication Access List).
- Have read permissions on the snapshot share.

**Distribution Agent for a push subscription**

- Be a member of the `db_owner` fixed database role in the distribution database.
- Be a member of the PAL.
- Have read permissions on the snapshot share.
- Be a member of the `db_owner` fixed database role in the subscription database.

A Windows domain user with SQL Server `sysadmin` fixed server role privileges on the distributor and subscriber SQL Server instances must exist. This user serves as the proxy for the replication agent accounts.

If using a pull subscription, use a network share rather than a local path for the snapshot folder.

Before releasing the `SMAReplicationRecoverToPrimary` Schedule, ensure all other OpCon Schedules are On Hold and no jobs are running.

## Configuration

Configuration for automating replication setup includes the following steps:

- [Verify Windows Accounts](#Verify)
- [Configure the Command Files](#Configur)
- [Configure Snapshot Folder Share and Permissions](#Configur2)
- [Import the SMAReplication Schedules](#Import)
- [Configure the Agent Machine Definitions](#Configur3)
- [Validate Property Definitions](#Validate)
- [Configure the SMAReplicationSetup Schedule](#Configur4)
- [Configure the SMAReplicationMonitor Schedule](#Configur5)
- [Configure the SMAReplicationTearDown Schedule](#Configur6)

### Verify Windows Accounts {#Verify}

In the completed [Replication Information Worksheet](Database-Replication-Checklist.md#Replicat), there are Windows domain user accounts required for the replication process. With the completed worksheet for reference, complete the procedures below to verify that the users exist and that they are granted the `sysadmin` fixed server role in the distributor and subscriber SQL Server instances.

#### Verify and Create Windows Domain Accounts

To verify that the required Windows domain accounts exist and create any that are missing, complete the following steps:

1. Log in as a *domain administrator*.
2. Go to **Start > Control Panel**.
3. Select **Administrative Tools**.
4. Select **Active Directory Users and Computers**.
5. Expand the **Active Directory Name** (for example, `CompanyName.local`).
6. Select the **Users** folder.
7. Find the user account listed for the **DomainUser** variable in the **Name** column on the right.
8. If the account does not exist, right-click the **Users** folder and select **New > User**.
9. Enter a *descriptive name* in the **First Name** field.
10. Enter a *last name* in the **Last Name** field.
11. Enter the *name defined for the variable* in the **User Login Name** field, then select **Next**.
12. Enter a *password* in the **Password** field.
13. Re-enter the *password* in the **Confirm Password** field.
14. Clear the **User must change password at next logon** option.
15. Select the **Password never expires** option, then select **Next**.
16. If an Exchange server is on the network, choose the desired settings and select **Next**.
17. Review the summary information and select **Finish**.
18. Repeat steps 8–17 for the **RunSnapshotAgentAs**, **RunLogReaderAgentAs**, and **RunDistributionAgentAs** variables.

**Result:** The required Windows domain accounts exist and are ready for assignment.

### Configure the Command Files {#Configur}

Continuous provides the following command files to automate replication setup:

- `SMA_DBReplicationSetUpDistributor.cmd`
- `SMA_DBReplicationSetUpPublisher.cmd`
- `SMA_DBReplicationCreatePullSubscriptionOnSubscriber.cmd`
- `SMA_DBReplicationCreatePullSubscriptionOnPublisher.cmd`
- `SMA_DBReplicationCreatePushSubscriptionOnPublisher.cmd`
- `SMA_DBReplicationStartSnapshotAgent.cmd`
- `SMA_DBReplicationMonitorLogReaderAgent.cmd`
- `SMA_DBReplicationMonitorDistributionAgent.cmd`

Continuous provides the following command files to automate disabling replication:

- `SMA_DBReplicationDropPullSubscriptionOnSubscriber.cmd`
- `SMA_DBReplicationDropSubscriptionOnPublisher.cmd`
- `SMA_DBReplicationDropPushSubscriptionOnSubscriber.cmd`
- `SMA_DBReplicationRemovePublisher.cmd`
- `SMA_DBReplicationRemoveDistributor.cmd`
- `SMA_StopServiceManager.cmd`

Continuous provides the following command file to automate recovery to the primary machine:

- `SMA_DBReplicationRestoreDBOnPublisher.cmd`

Continuous provides the following command files to set scripting variables required by the other command files:

- `SMA_SetDBReplicationScriptingVariables.cmd`
- `SMA_SetDBMaintenanceScriptingVariables.cmd`

#### Modify the Scripting Variables Command Files on the Primary Server

To set the scripting variable values for the primary server, complete the following steps:

1. Log on as a *Windows user* with access to the OpCon installation directories.
2. Go to **Start > All Programs > OpConxps > Utilities > SMA OpCon Configuration Utility**.
3. Select the **Replication** tab.
4. Replace the default values of the scripting variables according to the [Replication Information Worksheet](Database-Replication-Checklist.md#Replicat).
5. After reviewing all values on the screen, select the **Replication Variables Verified** option at the end of the list.
6. If not previously configured during installation, configure the **Environment** and **Maintenance** tabs and replace the default values.
7. Select **Update Scripts**.
8. Select **Close**.

**Result:** The scripting variable values are saved and the command files are updated for the primary server.

#### Copy the Command Files to the Secondary Server

To copy the command files from the primary server to the secondary server, complete the following steps:

1. On the primary OpCon Server, right-click **Start** and select **Explore**.
2. Go to `<Configuration Directory>\Utilities\Database\`.

   :::note
   The Configuration Directory location depends on where you installed OpCon. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
   :::

3. Hold the **Ctrl** key and select each of the following files:
   - `SMA_DBReplicationSetUpDistributor.cmd`
   - `SMA_DBReplicationSetUpPublisher.cmd`
   - `SMA_DBReplicationCreatePullSubscriptionOnSubscriber.cmd`
   - `SMA_DBReplicationCreatePullSubscriptionOnPublisher.cmd`
   - `SMA_DBReplicationCreatePushSubscriptionOnPublisher.cmd`
   - `SMA_DBReplicationStartSnapshotAgent.cmd`
   - `SMA_DBReplicationMonitorLogReaderAgent.cmd`
   - `SMA_DBReplicationMonitorDistributionAgent.cmd`
   - `SMA_DBReplicationDropPullSubscriptionOnSubscriber.cmd`
   - `SMA_DBReplicationDropSubscriptionOnPublisher.cmd`
   - `SMA_DBReplicationDropPushSubscriptionOnSubscriber.cmd`
   - `SMA_DBReplicationRemovePublisher.cmd`
   - `SMA_DBReplicationRemoveDistributor.cmd`
   - `SMA_StopServiceManager.cmd`
   - `SMA_DBReplicationRestoreDBOnPublisher.cmd`
   - `SMA_SetDBReplicationScriptingVariables.cmd`
   - `SMA_SetDBMaintenanceScriptingVariables.cmd`

4. Press **Ctrl+C** to copy the files.
5. Go to `<Configuration Directory>\Utilities\Database\` on the secondary SAM Application server.

   :::note
   To access the directory on the secondary server, that directory must be shared to the user currently logged on to the primary machine, or the user must have administrative access to the secondary server.
   :::

6. Press **Ctrl+V** to paste the files.

**Result:** All command files are available on both the primary and secondary servers.

#### Modify the SMA_SetReplicationScriptingVariables.cmd File on the Secondary Server

To update the server name variable for the secondary server, complete the following steps:

1. Right-click `SMA_SetDBReplicationScriptingVariables.cmd` and select **Edit**.
2. Find the **OpConxpsServerName** variable.
3. Change the value of the variable to the correct value for the secondary server.
4. Go to **File > Save**.
5. Close the file.

**Result:** The secondary server command file references the correct server name.

### Configure Snapshot Folder Share and Permissions {#Configur2}

The snapshot folder on the Distributor server must be shared, and the SQL Agent users must have the correct permissions to the share.

#### Create the Snapshot Folder Share and Grant Permissions

To create the snapshot folder share and assign the required permissions, complete the following steps:

1. Log on to the Distributor Database Server as a *Windows user* with local administrative privileges.
2. Right-click **Start** and select **Explore**.
3. Go to the **repldata** folder in the SQL installation path. The default path is `C:\Program Files\Microsoft SQL Server\MSSQL.10.MSSQLServer\MSSQL\repldata`.
4. If the **repldata** folder does not exist:
   1. Select the **MSSQL** folder.
   2. Go to **File > New > Folder**.
   3. Enter `repldata` to replace the **NewFolder** name.
5. Right-click the **repldata** folder and select **Sharing and Security**.
6. Select the **Share this folder** option.
7. In the **Share Name** field, enter the share name used to define the **REPLDATAFolder** variable in `SMA_SetDBReplicationScriptingVariables.cmd`.
8. Select **Permissions**.
9. In the **Permissions for repldata** window, select **Add**.
10. In the **Select Users, Computers, or Groups** window, if the **From this location** field does not contain the correct Active Directory location:
    1. Select **Locations**.
    2. Expand **Entire Directory**.
    3. Select the desired active directory name and select **OK**.
11. Select **Advanced**, then select **Find Now**.
12. Hold the **Ctrl** key and select both the **RunSnapshotAgentAs** and **RunDistributionAgentAs** users from the **Name** column.
13. Select **OK**, then select **OK** again.
14. In the **Permissions for repldata** window, select the user defined for the **RunSnapshotAgentAs** variable and select the **Change** option in the **Permissions** list.
15. Select the user defined for the **RunDistributionAgentAs** variable and select the **Read** option in the **Permissions** list.

**Result:** The snapshot share is created and the SQL Agent service accounts have the correct permissions.

### Import the SMAReplication Schedules {#Import}

Continuous provides the `SMAReplication.MDB` file as a transport database for the Schedules and jobs that automate the replication processes.

#### Create a DSN for the Transport Database

To create a system DSN for the SMAReplication transport database, complete the following steps:

The first time the utility starts, a prompt appears to select a DSN for the Microsoft Access database. If this is not the first time the utility has started, log in to the OpCon database, then create the DSN for the SMAUtility database and the AdHoc database.

1. Log in to the primary SAM application server as a local administrative user.
2. Go to **Start > Programs > Opconxps > Utilities > Schedule Import Export**.
3. Select **ODBC**.
4. Select the **System DSN** tab and select **Add**.
5. Select **Microsoft Access Driver (\*.mdb)** in the list and select **Finish**.
6. Enter `SMAReplication` in the **Data Source Name** field.
7. (Optional) Enter a *description* in the **Description** field and select **Select**.
8. In the **Directories** frame, browse to the `SMAReplication.MDB` file (for example, `C:\Program Files\OpConxps\Utilities\IMPEX.MDB`).
9. Select the `.mdb` file and select **OK**.
10. Select **OK** three times to close all dialogs.

**Result:** A system DSN named `SMAReplication` is available for use by the Schedule Import Export utility.

#### Log In to the Schedule Import Export Utility

To log in to the Schedule Import Export utility and select the SMAReplication data source, complete the following steps:

1. Enter any OpCon user account with privileges to import and export Schedules (for example, `ocadm`) in the **User Login ID** field. For information on user accounts, refer to [User Accounts](../../administration//user-accounts.md) in the **Concepts** online help.
2. Enter the *password* for the user in the **Password** field.
3. Select the **OpCon database** in the **Data Source** field and select **OK**.
4. Go to **File > Select Access DSN**.
5. Select the **SMAReplication** data source in the list and select **OK**.

#### Import the SMAReplication Schedules

To import the SMAReplication Schedules from the transport database, complete the following steps:

1. Select one of the four Schedules in the **Transport Database** list to select them all.
2. Select **Import from Transport Database** on the toolbar.
3. Select the **Machine** tab.
4. Select the machine named **SMAReplicationPrimary**.
5. Select the **Machine Name** of the *Windows Agent installed on the primary OpCon server*.
6. Select the machine named **SMAReplicationSecondary**.
7. Select the **Machine Name** of the *Windows Agent installed on the secondary OpCon server*.
8. Select **Import**.
9. Select **OK** on the warning message about Batch User IDs.
10. Select **OK** on the termination message.

**Result:** The SMAReplication Schedules are imported into the OpCon database.

### Configure the Agent Machine Definitions {#Configur3}

The Agents on the primary and secondary SAM application servers must have specific configurations for all replication jobs to run successfully. Complete the procedures below to make the required configurations.

#### Log In to the Primary Database from Enterprise Manager

To log in to the primary OpCon database using Enterprise Manager, complete the following steps:

1. Go to **Start > Programs > OpConxps > Enterprise Manager**.
2. Enter a *case-sensitive User Login ID* (for example, `ocadm`) in the **Username** field.
3. Enter the *case-sensitive password* in the **Password** field.
4. Select the **Profile to the Primary database** in the **Profile** list.
5. Select **Login**.

#### Configure the Agent Machine Definitions

To configure the machine definitions for the primary and secondary Agents, complete the following steps:

1. Select **Machines**.
2. Select the **Primary Machine** in the **Select Machine** list.
3. Right-click the machine graphic and select **Stop Communication**.
4. Select **Open Advanced Settings Panel**.
5. Select **Allow "Kill Job"**.
6. Select **True** from the list and select **Update**.
7. Select the **Communication Settings** tab.
8. Select **JORS Port Number**.
9. Enter the *JORS Port Number* as defined in the `MSLSAM.ini` file in the Agent's `<Configuration Directory>\MSLSAM` folder (for example, `3110`), then select **Update**.
10. Select **Requires XML Escape Sequences**.
11. Confirm the value is **True** and select **Accept**.
12. Review the value for **SMA Communications Protocol**. If it is set to **Contemporary XML**, continue with this procedure. If the setting has any other value, contact <support@smatechnologies.com> for more information.
13. Select the **File Transfer Settings** tab.
14. Select **File Transfer**.
15. Select **Two-way** in the list and select **Update**.
16. Select **File Transfer Port Number**.
17. Enter the *same port number* entered for the JORS Port Number in step 9, then select **Update**.
18. Select **Save**.
19. Right-click the machine graphic and select **Start Communication**.
20. Select the **Secondary Machine** in the **Select Machine** list.
21. Repeat steps 3–19 for the secondary machine.

**Result:** Both Agents are configured with the correct communication and file transfer settings for replication.

### Validate Property Definitions {#Validate}

The replication jobs use several OpCon Global Properties. The values for these properties must be configured correctly for the replication jobs to succeed.

To validate and update the required Global Property values, complete the following steps:

1. In Enterprise Manager under **Administration**, select **Global Properties**.
2. Select **SMAOpConDataPath** in the **Select Global Property** list.
3. In the **Global Property Value** field, verify the path to the `<Configuration Directory>` on the SAM Application server.
   - If the path differs from the default (`C:\ProgramData\OpConxps\`), update the value to match the correct path.
   - Select **Save**.
4. Select **SMAOpConPath** in the **Select Global Property** list.
5. In the **Global Property Value** field, verify the path to the Utilities folder on the SAM Application server.
   - If the path differs from the default (`C:\Program Files\OpConxps\`), update the value.
   - Select **Save**.
6. Select **PrimaryDBUpdateKey** in the **Select Global Property** list.
7. Replace `SMA$usa` in the **Global Property Value** field with the *sa password on the Primary Database Server*, then select **Save**.
8. Select **FullDBBackupOn2ndary** in the **Select Global Property** list.
9. In the **Global Property Value** field, verify the full path and file name of the full database backup file on the secondary SAM Application server as created by the `SMADBBackup` job.
   - If the path or file name differs, update the value, then select **Save**.
10. Select **FullDBBackupOnPrimary** in the **Select Global Property** list.
11. In the **Global Property Value** field, verify the full path and file name of the full database backup file on the primary SAM Application server as created by the `SMADBBackup` job.
    - If the path or file name differs, update the value, then select **Save**.
12. Select **SecondaryDBUpdateKey** in the **Select Global Property** list.
13. Replace `SMA$usa` in the **Global Property Value** field with the *sa password on the Secondary Database Server*, then select **Save**.
14. Select **TLogBackupOn2ndary** in the **Select Global Property** list.
15. In the **Global Property Value** field, verify the full path and file name of the transaction log backup file on the secondary SAM Application server as created by the `SMATLogBackup` job.
    - If the path or file name differs, update the value, then select **Save**.
16. Select **TLogBackupOnPrimary** in the **Select Global Property** list.
17. In the **Global Property Value** field, verify the full path and file name of the transaction log backup file on the primary SAM Application server as created by the `SMADBBackup` job.
    - If the path or file name differs, update the value, then select **Save**.

**Result:** All Global Properties are verified and set to the correct values for replication.

### Configure the SMAReplicationSetup Schedule {#Configur4}

By default, Continuous distributes the SMAReplicationSetup Schedule with Pull Replication configured. The **CreatePullSubscriptionOnPublisher** and **CreatePullSubscriptionOnSubscriber** jobs are active by default. If Push Replication will be used, modify the job frequencies to disable the Pull jobs and enable the **CreatePushSubscriptionOnPublisher** job.

#### Configure the SMAReplicationSetup Jobs for Push Replication

To configure the SMAReplicationSetup Schedule for Push Replication, complete the following steps:

1. Select **Job Master**.
2. Select **SMAReplicationSetup** in the **Schedule** list.
3. Select **CreatePullSubscriptionOnPublisher** in the **Job** list.
4. Select the **Frequency** tab.
5. Select the **Do Not Schedule** option in the **Job Build Status** frame and select **Save**.
6. Select **CreatePullSubscriptionOnSubscriber** in the **Job** list.
7. Select the **Do Not Schedule** option and select **Save**.
8. Select **CreatePushSubscriptionOnPublisher** in the **Job** list.
9. Select the **Release** option and select **Save**.

**Result:** The SMAReplicationSetup Schedule is configured to use Push Replication.

### Configure the SMAReplicationMonitor Schedule {#Configur5}

The SMAReplicationMonitor Schedule must run every day to ensure replication runs without interruption. If either monitor job fails, configure notifications so an administrator can address the problem and restart replication.

#### Configure the SMAReplicationMonitor Schedule for Auto-Build and Delete

To configure the SMAReplicationMonitor Schedule for automatic build and delete, complete the following steps:

1. Select **Schedule Master**.
2. Select **SMAReplicationMonitor** in the **Schedule** list.
3. Select the **Auto Build** option.
4. Enter `1` or any desired value for the **days in advance** to build.
5. Enter `1` or any desired value for the number of **days** to build.
6. Select the **Auto Delete** option.
7. Enter `1` or any desired value for the **days ago** to delete.
8. Select **Save**.

**Result:** The SMAReplicationMonitor Schedule builds and deletes automatically each day.

#### Set Up Notifications for the SMAReplicationMonitor Jobs

The following procedure configures text message notifications through job-level events. The notification can use any `$NOTIFY` event type and can instead be managed through the Event Notification System (ENS). For information on ENS, refer to [Event Notification](../../notifications/Components.md) in the **Concepts** online help.

:::caution
If notifications are not configured on the SMAReplicationMonitor jobs, replication could fail without anyone noticing. While the method described below is not required, Continuous strongly recommends configuring some form of automatic notification.
:::

To configure text message notifications for the SMAReplicationMonitor jobs, complete the following steps:

1. In Enterprise Manager under **Administration**, select **Job Master**.
2. Select **SMAReplicationMonitor** in the **Schedule** list.
3. Select **MonitorDistributionAgent** in the **Job** list.
4. Select the **Events** tab.
5. Select **Add**.
6. Select the **$NOTIFY:TEXTMSG** template in the **Event Template** list.
7. Select **Failed** in the **Job Status** list.
8. In the text field below the **Job Status** list:
   1. Replace `<to>` with the *email address for the cell phone number*.
   2. Replace `<message>` with the notification text. Continuous recommends: `Replication has failed on the OpConxps database. The [[$JOB NAME]] job has failed.`
   :::note
   The completed event string reads: `$NOTIFY:TEXTMSG,5551212@cellprovider.com,Replication has failed on the OpConxps database. The [[$JOB NAME]] job has failed.`
   :::
   3. Select all of the text defined for `<to>` and `<message>` and press **Ctrl+C** to copy it for use with the next job.
   4. Select **OK**.
9. Select **MonitorLogReaderAgent** in the **Job** list.
10. Select the **Events** tab and select **Add**.
11. Select the **$NOTIFY:TEXTMSG** template in the **Event Template** list.
12. Select **Failed** in the **Job Status** list.
13. Select the text field below the **Job Status** list and press **Ctrl+V** to paste the text from the previous event definition.
14. Modify the *email address* and *message* if desired and select **OK**.

**Result:** Both SMAReplicationMonitor jobs send a text message notification when they fail.

### Configure the SMAReplicationTearDown Schedule {#Configur6}

By default, Continuous distributes the SMAReplicationTearDown Schedule with Pull Replication configured. The **DropPullSubscriptionOnSubscriber** and **DropPullSubscriptionOnPublisher** jobs are active by default. If Push Replication will be used, modify the job frequencies to disable the Pull jobs and enable the **DropPushSubscriptionOnPublisher** and **DropPushSubscriptionOnSubscriber** jobs.

#### Configure the SMAReplicationTearDown Jobs for Push Replication

To configure the SMAReplicationTearDown Schedule for Push Replication, complete the following steps:

1. Select **Job Master** (if not already open).
2. Select **SMAReplicationTearDown** in the **Schedule** list.
3. Select **DropPullSubscriptionOnSubscriber** in the **Job** list.
4. Select the **Frequency** tab.
5. Select the **Do Not Schedule** option in the **Job Build Status** frame and select **Save**.
6. Select **DropPullSubscriptionOnPublisher** in the **Job** list.
7. Select the **Do Not Schedule** option and select **Save**.
8. Select **DropPushSubscriptionOnPublisher** in the **Job** list.
9. Select the **Release** option and select **Save**.
10. Select **DropPushSubscriptionOnSubscriber** in the **Job** list.
11. Select the **Release** option and select **Save**.

**Result:** The SMAReplicationTearDown Schedule is configured to use Push Replication.

## Automated Replication Setup

Continuous provides two Schedules for automated replication setup:

- [SMAReplicationSetup](#SMARepli)
- [SMAReplicationMonitor](#SMARepli2)

### SMAReplicationSetup Schedule Definition {#SMARepli}

The SMAReplicationSetup Schedule runs on demand when initially setting up replication, when the primary server comes back online after an outage, or after a failover event. The Schedule consists of the following OpCon jobs:

- [SetUpDistributor](#SetUpDis)
- [SetUpPublisher](#SetUpPub)
- [CreatePullSubscriptionOnSubscriber](#CreatePu)
- [CreatePullSubscriptionOnPublisher](#CreatePu2)
- [CreatePushSubscriptionOnPublisher](#CreatePu3)
- [StartSnapshotAgent](#StartSna)

#### SetUpDistributor {#SetUpDis}

The SetUpDistributor job runs `SMA_DBReplicationSetUpDistributor.sql` via `SMA_DBReplicationSetUpDistributor.cmd`. This job configures the distributor, creates the distribution database, adds the replication housekeeping jobs to SQL Server Agent, and adds the Snapshot Agent job and Log Reader Agent job to SQL Server Agent on the distributor instance.

The log file is placed in the directory configured in the `SQLScriptOutputDirectory` scripting variable and is named `<PublicationName>_ReplicationSetUpDistributor.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### SetUpPublisher {#SetUpPub}

The SetUpPublisher job runs `SMA_DBReplicationSetUpPublisher.sql` via `SMA_DBReplicationSetUpPublisher.cmd`. This job configures the publisher server, enables the OpCon database for publishing, creates the publication, and adds the articles to be published.

The log file is named `<PublicationName>_ReplicationSetUpPublisher.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### CreatePullSubscriptionOnSubscriber {#CreatePu}

The CreatePullSubscriptionOnSubscriber job runs `SMA_DBReplicationCreatePullSubscriptionOnSubscriber.sql` via `SMA_DBReplicationCreatePullSubscriptionOnSubscriber.cmd`. This job creates the pull subscription on the subscriber server and adds the distribution agent job to SQL Server Agent on the subscriber instance.

The log file is named `<PublicationName>_SubscriberCreatePullSubscription.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### CreatePullSubscriptionOnPublisher {#CreatePu2}

The CreatePullSubscriptionOnPublisher job runs `SMA_DBReplicationCreatePullSubscriptionOnPublisher.sql` via `SMA_DBReplicationCreatePullSubscriptionOnPublisher.cmd`. This job creates the pull subscription information on the publisher server.

The log file is named `<PublicationName>_CreatePullSubscriptionOnPublisher.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### CreatePushSubscriptionOnPublisher {#CreatePu3}

The CreatePushSubscriptionOnPublisher job runs `SMA_DBReplicationCreatePushSubscriptionOnPublisher.sql` via `SMA_DBReplicationCreatePushSubscriptionOnPublisher.cmd`. This job creates the push subscription on the publisher server. By default, this job's frequency is set to **Do Not Schedule** because Pull subscription is enabled by default. To use Push subscription, set this job to a **Release** build status and change the Pull subscription jobs to **Do Not Schedule**. For more information, refer to [Configure the SMAReplicationSetup Jobs for Push Replication](#Configure_the_SMAReplicationSetup_Jobs_for_Push_Replication).

The log file is named `<PublicationName>_CreatePushSubscriptionOnPublisher.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### StartSnapshotAgent {#StartSna}

The StartSnapshotAgent job runs `SMA_DBReplicationStartSnapshotAgent.cmd`. This job uses `SMASqlSMOAPP.EXE` to start the Snapshot Agent on the distributor server so that the initial snapshot of the OpCon database is created.

The log file is named `StartSnapshotAgent.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

### SMAReplicationMonitor Schedule Definition {#SMARepli2}

The SMAReplicationMonitor Schedule runs every day to continuously monitor the Log Reader Agent and Distribution Agent SQL Server Agent jobs. The Schedule consists of two OpCon jobs.

#### MonitorDistributionAgent

The MonitorDistributionAgent job runs `SMA_DBReplicationMonitorDistributionAgent.cmd`. This job uses `SMASqlSMOAPP.EXE` to monitor the Distribution Agent and verify that it is running continuously. For pull subscriptions, the Distribution Agent runs on the subscriber server; for push subscriptions, it runs on the distributor server. The job automatically detects the subscription type and runs against the correct SQL instance.

If this job fails, review the SQL Server Agent Error Logs in SQL Server Management Studio under **SQL Server Agent > Error Logs**.

#### MonitorLogReaderAgent

The MonitorLogReaderAgent job runs `SMA_DBReplicationMonitorLogReaderAgent.cmd`. This job uses `SMASqlSMOAPP.EXE` to monitor the Log Reader Agent on the distributor server and verify that it is running continuously.

If this job fails, review the SQL Server Agent Error Logs in SQL Server Management Studio under **SQL Server Agent > Error Logs**.

### Building and Running the Replication Setup Schedules

After meeting all of the [Prerequisites](#Prerequisites) and completing the [Configuration](#Configuration), you can set up replication at any time by building the SMAReplicationSetup and SMAReplicationMonitor Schedules. Complete the procedures in this section to set up replication.

#### Build the Replication Schedules On Hold

To build the replication Schedules, complete the following steps:

1. Log in to Enterprise Manager using the [Log In to the Primary Database from Enterprise Manager](#Log_in_to_the_Primary_Database_from_Enterprise_Manager) procedure.
2. Select **Schedule Build**.
3. Select **SMAReplicationSetup** in the **Schedule Selection** frame.
4. Accept the default options so the Schedules build for today.
5. Select the **Overwrite existing schedules** option and select **Build**.
6. Accept the default selection to build the Schedule **On Hold** and select **OK**.
7. Select **SMAReplicationMonitor** in the **Schedule Selection** frame.
8. Accept the default date for the **Start** date (today).
9. In the **Stop** date, select tomorrow's date from the calendar.
10. Select the **Overwrite** option and select **Build**.
11. Accept the default selection to build the Schedule **On Hold** and select **OK**.
12. Select **Close**.

**Result:** Both Schedules are built for today with a status of On Hold.

#### Run the SMAReplicationSetup Schedule

To run the SMAReplicationSetup Schedule and start replication, complete the following steps:

1. Select **List**.
2. Select today's date.
3. In the tree view, select **SMAReplicationSetup** to see the jobs.
4. Right-click **SMAReplicationSetup** and select **Release**.
5. Wait for all jobs to finish with a status of **Finished OK**. If any jobs fail, review the log files to determine the cause, fix the error, then restart the failed job.
6. After all jobs finish with **Finished OK**, review the log files for each job to verify replication is set up correctly.

:::note
Microsoft SQL Server procedures for setting up replication do not always return error codes to scripts. Review the log files for each job as described in the [SMAReplicationSetup Schedule Definition](#SMARepli) section.
:::

**Result:** Replication is set up and running between the publisher and subscriber servers.

#### Run the SMAReplicationMonitor Schedule and Configure Daily Monitoring

After replication is successfully set up through the SMAReplicationSetup Schedule, complete the following steps to monitor replication status automatically:

1. In the tree view under today's date, select **SMAReplicationMonitor** to see the jobs.
2. Right-click **SMAReplicationMonitor** and select **Release**.

**Result:** The SMAReplicationMonitor Schedule runs and begins monitoring replication daily.

## Controlled Failover with Automation

The SMAReplicationTearDown Schedule is included with the SMA Replication Schedules for use in failover testing. This Schedule assists customers who perform disaster recovery, business continuity, and failover and recovery testing.

### SMAReplicationTearDown Schedule Definition {#SMARepli3}

The SMAReplicationTearDown Schedule consists of nine OpCon jobs:

- [KillReplicationMonitors](#KillRepl)
- [DropPullSubscriptionOnSubscriber](#DropPull)
- [DropPullSubscriptionOnPublisher](#DropPull2)
- [DropPushSubscriptionOnPublisher](#DropPush)
- [DropPushSubscriptionOnSubscriber](#DropPush2)
- [RemovePublisher](#RemovePu)
- [RemoveDistributor](#RemoveDi)
- [RunDBUpdateCmdOnSecondary](#RunDBUpd2)
- [StopSMAServiceManagerOnPrimary](#StopSMAS2)

After the RemoveDistributor job runs, you can check the Replication Monitor to confirm that the replication process has been completely removed.

#### KillReplicationMonitors {#KillRepl}

The KillReplicationMonitors job stops the jobs running on the SMAReplicationMonitor Schedule before replication is stopped by the other jobs. The job is a NULL job that finishes with **Finished OK** and then triggers `$JOB:KILL` events.

#### DropPullSubscriptionOnSubscriber {#DropPull}

The DropPullSubscriptionOnSubscriber job runs `SMA_DBReplicationDropPullSubscriptionOnSubscriber.sql` via `SMA_DBReplicationDropPullSubscriptionOnSubscriber.cmd`. This job drops the pull subscription from the subscriber server and removes the distribution agent job from SQL Server Agent on the subscriber instance.

The log file is named `<PublicationName>_SubscriberDropPullSubscription.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

When this job finishes with **Finished OK**, replication has stopped and data processed on the publisher server will not be sent to the subscriber server.

#### DropPullSubscriptionOnPublisher {#DropPull2}

The DropPullSubscriptionOnPublisher job runs `SMA_DBReplicationDropSubscriptionOnPublisher.sql` via `SMA_DBReplicationDropSubscriptionOnPublisher.cmd`. This job drops the pull subscription from the publisher server.

The log file is named `<PublicationName>_DropSubscriptionOnPublisher.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### DropPushSubscriptionOnPublisher {#DropPush}

The DropPushSubscriptionOnPublisher job runs `SMA_DBReplicationDropSubscriptionOnPublisher.sql` via `SMA_DBReplicationDropSubscriptionOnPublisher.cmd`. This job drops the push subscription from the publisher server. By default, this job's frequency is set to **Do Not Schedule** because Pull subscription is enabled by default. To use Push subscription, set this job to a **Release** build status and change the Pull subscription jobs to **Do Not Schedule**. For more information, refer to [Configure the SMAReplicationTearDown Jobs for Push Replication](#Configure_the_SMAReplicationTearDown_Jobs_for_Push_Replication).

The log file is named `<PublicationName>_DropSubscriptionOnPublisher.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

When this job finishes with **Finished OK**, replication has stopped and data processed on the publisher server will not be sent to the subscriber server.

#### DropPushSubscriptionOnSubscriber {#DropPush2}

The DropPushSubscriptionOnSubscriber job runs `SMA_DBReplicationDropPushSubscriptionOnSubscriber.sql` via `SMA_DBReplicationDropPushSubscriptionOnSubscriber.cmd`. This job cleans up metadata about the push subscription on the subscriber server. By default, this job's frequency is set to **Do Not Schedule** because Pull subscription is enabled by default. To use Push subscription, set this job to a **Release** build status and change the Pull subscription jobs to **Do Not Schedule**. For more information, refer to [Configure the SMAReplicationTearDown Jobs for Push Replication](#Configure_the_SMAReplicationTearDown_Jobs_for_Push_Replication).

The log file is named `<PublicationName>_SubscriberDropPushSubscription.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### RemovePublisher {#RemovePu}

The RemovePublisher job runs `SMA_DBReplicationRemovePublisher.sql` via `SMA_DBReplicationRemovePublisher.cmd`. This job drops the published articles from the publication, drops the publication, disables replication on the OpCon database, and drops the subscriber SQL Server instance as a registered subscriber on the publisher instance.

The log file is named `<PublicationName>_RemoveReplicationPublisher.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### RemoveDistributor {#RemoveDi}

The RemoveDistributor job runs `SMA_DBReplicationRemoveDistributor.sql` via `SMA_DBReplicationRemoveDistributor.cmd`. This job drops the publisher at the distributor, drops the distribution database, disables distribution on the distributor, and removes the Log Reader Agent job and Distribution Agent job from SQL Server Agent on the distributor.

The log file is named `<PublicationName>_RemoveReplicationDistributor.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors. When this job finishes with **Finished OK**, replication is disabled on the primary server. The next jobs prepare the secondary server to take over processing.

#### RunDBUpdateCmdOnSecondary {#RunDBUpd2}

The RunDBUpdateCmdOnSecondary job runs `DB_Update.cmd`, which runs the following SQL scripts:

- `Schema_Install.sql`
- `SMALOOKUP_Update.sql`
- `DBFuncs_Install.sql`
- `DBProcs_Install.sql`
- `PDSAFramework.sql`
- `PDSAFrameworkData.sql`

This job ensures all primary keys and object permissions are applied to the OpCon database on the subscriber server, and that the database functions, stored procedures, and pertinent OpCon system data tables are current.

#### StopSMAServiceManagerOnPrimary {#StopSMAS2}

The StopSMAServiceManagerOnPrimary job runs `SMA_StopServiceManager.cmd` to stop the SMA Service Manager Windows service on the primary server. This job is optional and can be disabled if you prefer to stop SMA Service Manager manually.

If anyone is still logged in to a graphical interface with its DSN pointing at the primary OpCon database, this job stays in a **Running** state because the database cannot be updated after the SMA Service Manager stops.

### Building and Running the SMAReplicationTearDown Schedule

After meeting all of the [Prerequisites](#Prerequisites) and completing the [Configuration](#Configuration), you can disable replication at any time by building the SMAReplicationTearDown Schedule.

#### Build the SMAReplicationTearDown Schedule On Hold

To build the SMAReplicationTearDown Schedule, complete the following steps:

1. Log in to Enterprise Manager using the [Log In to the Primary Database from Enterprise Manager](#Log_in_to_the_Primary_Database_from_Enterprise_Manager) procedure.
2. Select **Schedule Build**.
3. Select **SMAReplicationTearDown** in the **Schedule Selection** frame.
4. Accept the default options so the Schedule builds for today.
5. Select the **Overwrite existing schedules** option and select **Build**.
6. Accept the default selection to build the Schedule **On Hold** and select **OK**.
7. Select **Close**.

**Result:** The SMAReplicationTearDown Schedule is built for today with a status of On Hold.

#### Run the SMAReplicationTearDown Schedule

To run the SMAReplicationTearDown Schedule and disable replication, complete the following steps:

1. Select **List**.
2. Select today's date.
3. In the tree view, select **SMAReplicationTearDown** to see the jobs.
4. Right-click **SMAReplicationTearDown** and select **Release**.
5. Wait for all jobs to finish with a status of **Finished OK**. If any jobs fail, review the log files, fix the error, then restart the failed job.
6. After all jobs finish with **Finished OK**, review the log files for each job to confirm replication is fully disabled.

:::note
Microsoft SQL Server procedures for disabling replication do not always return error codes to scripts. Review the log files for each job as described in the [SMAReplicationTearDown Schedule Definition](#SMARepli3) section.
:::

**Result:** Replication is disabled and the secondary server is prepared to take over processing.

#### Fail Over to the Subscribing Database and Secondary SMA Service Manager

If SMA Service Manager should begin processing on the secondary server, configure SMA Service Manager on the secondary server, then complete the following steps to start the service:

1. Log on to the secondary SAM application server as a local administrative user.
2. Go to **Start > Control Panel**.
3. Select **Administrative Tools**.
4. Select **Services**.
5. Select the **SMA OpCon Service Manager** service.
6. Select **Automatic (Delayed Start)** in the **Startup type** list and select **OK**.
7. Select **Start** to start the service, then close the **Services** window.
8. Go to **Start > Programs > OpConxps > Log Monitors >** *Log File*.
9. Open the `SMANetCom.log`, `SAM Critical.log`, and `SAM.log` files to verify that the secondary server is processing normally.
10. When SAM is processing normally with the subscribing database, all graphical interfaces should connect to the subscribing database for production processing until the OpCon administrator indicates that the publishing database server is available again.

**Result:** SMA Service Manager is running on the secondary server and processing jobs from the subscribing database.

## Recovery to the Primary Server

The SMAReplicationRecoverToPrimary Schedule is included with the SMA Replication Schedules for use when transferring processing back to the primary server.

### SMAReplicationRecoverToPrimary Schedule Definition

The SMAReplicationRecoverToPrimary Schedule consists of five OpCon jobs:

- [TransferFullDBBackupToPrimary](#Transfer)
- [TransferTLogBackupToPrimary](#Transfer2)
- [RestoreDatabaseOnPrimary](#RestoreD)
- [RunDBUpdateCmdOnPrimary](#RunDBUpd)
- [StopSMAServiceManagerOnSecondary](#StopSMAS)

#### TransferFullDBBackupToPrimary {#Transfer}

The TransferFullDBBackupToPrimary job uses the OpCon File Transfer feature to move the secondary database backup file to the primary server as a binary file.

#### TransferTLogBackupToPrimary {#Transfer2}

The TransferTLogBackupToPrimary job uses the OpCon File Transfer feature to move the secondary database transaction log file to the primary server as a binary file.

#### RestoreDatabaseOnPrimary {#RestoreD}

The RestoreDatabaseOnPrimary job runs `SMA_DBReplicationRestoreDBOnPublisher.cmd` to restore the database from the subscriber server onto the publisher server.

The RestoreDatabaseOnPrimary job performs three steps:

1. Kill any database sessions active at the time.
2. Restore the database.
3. Delete the replication stored procedures (`sp_MS...`) from the database.

#### RunDBUpdateCmdOnPrimary {#RunDBUpd}

The RunDBUpdateCmdOnPrimary job runs `DB_Update.cmd`, which runs the following SQL scripts:

- `Schema_Install.sql`
- `SMALOOKUP_Update.sql`
- `DBFuncs_Install.sql`
- `DBProcs_Install.sql`
- `PDSAFramework.sql`
- `PDSAFrameworkData.sql`

This job ensures all primary keys and object permissions are applied to the OpCon database on the publisher server, and that the database functions, stored procedures, and pertinent OpCon system data tables are current.

#### StopSMAServiceManagerOnSecondary {#StopSMAS}

The StopSMAServiceManagerOnSecondary job runs `SMA_StopServiceManager.cmd` to stop the SMA Service Manager Windows service on the secondary server. This job is optional and can be disabled if you prefer to stop SMA Service Manager manually.

If anyone is still logged in to a graphical interface with its DSN pointing at the primary OpCon database, this job stays in a **Running** state because the database cannot be updated after the SMA Service Manager stops.

### Building and Running the SMAReplicationRecoverToPrimary Schedule

After meeting all of the [Prerequisites](#Prerequisites) and completing the [Configuration](#Configuration), you can restore processing to the primary server at any time by building the SMAReplicationRecoverToPrimary Schedule.

#### Build the SMAReplicationRecoverToPrimary Schedule On Hold

To build the SMAReplicationRecoverToPrimary Schedule, complete the following steps:

1. Log in to Enterprise Manager using the [Log In to the Primary Database from Enterprise Manager](#Log_in_to_the_Primary_Database_from_Enterprise_Manager) procedure.
2. Select **Schedule Build**.
3. Select **SMAReplicationRecoverToPrimary** in the **Schedule Selection** frame.
4. Accept the default options so the Schedule builds for today.
5. Select the **Overwrite existing schedules** option and select **Build**.
6. Accept the default selection to build the Schedule **On Hold** and select **OK**.
7. Select **Close**.

**Result:** The SMAReplicationRecoverToPrimary Schedule is built for today with a status of On Hold.

#### Run the SMAReplicationRecoverToPrimary Schedule

To run the SMAReplicationRecoverToPrimary Schedule and restore the primary database, complete the following steps:

1. Select **List**.
2. Select today's date.
3. In the tree view, select **SMAReplicationRecoverToPrimary** to see the jobs.
4. Right-click **SMAReplicationRecoverToPrimary** and select **Release**.
5. Wait for all jobs to finish with a status of **Finished OK**. If any jobs fail, review the log files, fix the error, then restart the failed job.

**Result:** The primary database is restored from the secondary server and ready for the SMA Service Manager to start.

#### Start the SMA Service Manager on the Primary Server

After properly configuring SMA Service Manager on the primary server, complete the following steps to start the service:

1. Go to **Start > Control Panel**.
2. Select **Administrative Tools**.
3. Select **Services**.
4. Scroll to the **SMA OpCon Service Manager** service.
5. Select **SMA OpCon Service Manager**.
6. Select **Automatic (Delayed Start)** in the **Startup type** list and select **OK**.
7. Select **SMA OpCon Service Manager** and select **Start**.
8. Go to **Start > Programs > OpConxps > Log Monitors >** *Log File Name*.
9. Review the `SMAServMan`, `SAM`, `Critical`, `SMANetCom`, and `SMANetComTrace` logs to verify that SAM and SMANetCom connected successfully to the database.

**Result:** SMA Service Manager is running on the primary server and processing jobs from the primary database.
