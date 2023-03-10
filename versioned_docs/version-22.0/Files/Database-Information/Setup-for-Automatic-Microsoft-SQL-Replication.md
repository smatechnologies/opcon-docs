---
sidebar_label: 'Automatic Setup for Replication'
---

# Setup for Automatic Microsoft SQL Replication

This topic covers the steps for setting up OpCon to automate the setup and tear-down of Microsoft SQL Replication.

Database replication is one of the options provided by SQL Server to improve the availability of a database. Database replication is based on a publishing industry metaphor, and there are three roles to be fulfilled in a database replication topology: publisher, distributor, and subscriber. There are three types of replication that can be used: transactional, merge, and snapshot.

OpCon makes use of transactional replication to distribute data from the production database to the failover database. Data moves from the publisher to the distributor, and from there, it can be either "pushed" to the subscriber by the distributor or "pulled" from the distributor by the subscriber.

This topic assumes that the publisher and subscriber will be distinct instances of SQL Server on physically separate machines while the distributor may be on its own instance of SQL Server or it may share an instance of SQL Server with either the publisher or subscriber.

## Prerequisites

- The OpCon database server must have Microsoft SQL Server Standard or Enterprise edition installed.
- The Microsoft SQL Server Backward Compatibility Components must be installed. To download this package, go to: <https://technet.microsoft.com/en-us/library/cc707787(v=sql.120).aspx>.
- The version of SQL Server on the distributor must be the same or later than the version of SQL Server on the publisher.
- The OpCon database must exist on the Publisher Server and Subscriber Server prior to starting the replication set up. Both the Publishing and Subscribing OpCon databases must have the Recovery model set to Full.
- OpCon SAM and supporting services must be installed on the Primary and Secondary OpCon servers.
- The MSLSAM must be installed on both the primary and secondary OpCon servers to facilitate the transferring of the backup files during the failover recovery process. The machines must also be configured to enable SMA File Transfer. For information on configuring machines to support file transfer, refer to [Advanced Machine Configuration](../../objects/machines.md#Advanced) in the **Concepts** online help.
- Complete the [Replication Information Worksheet](Database-Replication-Checklist.md#Replicat).

## Considerations

The publisher and subscriber should run on comparable systems that can handle identical workloads.

Do not change the password for the distributor_admin login manually. Always use the sp_changedistributor_password stored procedure, or the Distributor Properties, or the Update Replication Passwords dialog boxes in SQL Server Management Studio, because password changes are then applied to local publications automatically. If the password for the distributor_admin login is changed, then the DistributorKey entry in the SMA_SetDBReplicationScriptingVariables.cmd must also be updated.

Microsoft recommends as best practice that each replication agent run under a different Windows account, and Windows authentication should be used for all replication agent connections. For best security, grant only the required privileges for each agent. The following is a list of required privileges for each agent:

:::note
The scripts provided by SMA Technologies to automate the replication setup will automatically grant the appropriate database privileges. Folder share permissions must be configured manually.
:::

Snapshot Agent

1. Be a member of the db_owner fixed database role in the distribution database
2. Have write permissions on the snapshot share
3. Be a member of the db_owner fixed database role in the publication database

Log Reader Agent

1. Be a member of the db_owner fixed database role in the distribution database
2. Be a member of the db_owner fixed database role in the publication database

Distribution Agent for a pull subscription

1. Be a member of the db_owner fixed database role in the subscription database
2. Be a member of the PAL (Publication Access List)
3. Have read permissions on the snapshot share

Distribution Agent for a push subscription

1. Be a member of the db_owner fixed database role in the distribution database
2. Be a member of the PAL
3. Have read permissions on the snapshot share
4. Be a member of the db_owner fixed database role in the subscription database

A Windows domain user that has been assigned SQL Server sysadmin fixed server role privileges on the distributor and subscriber SQL Server instances must exist. This user will be used as the proxy for the accounts that the replication agents will run as.

If using a pull subscription, use a network share rather than a local path for the snapshot folder.

Before releasing the SMAReplicationRecoverToPrimary schedule ensure that all other OpCon schedules are On Hold and no jobs are currently running.

## Configuration

Configuration for automating replication setup includes the following:

- [Verify Windows Accounts](#Verify)
- [Configure the Command Files](#Configur)
- [Configure Snapshot Folder Share and     Permissions](#Configur2)
- [Import the SMAReplication Schedules](#Import)
- [Configure the LSAM Machine Definitions](#Configur3)
- [Validate Property Definitions](#Validate)
- [Configure the SMAReplicationSetup Schedule](#Configur4)
- [Configure the SMAReplicationMonitor Schedule](#Configur5)
- [Configure the SMAReplicationTearDown Schedule](#Configur6)

### Verify Windows Accounts

In the completed [Replication Information Worksheet](Database-Replication-Checklist.md#Replicat), there are Windows domain user accounts required for the replication process. With the completed worksheet for reference, complete the procedures below to verify that the users exist and that they are granted the sysadmin fixed server role in the distributor and subscriber SQL Server instances.

#### Verify and/or Create Windows Domain Accounts

1. Log in as a *domain administrator*.
2. Use menu path: **Start \> Control Panel**.
3. Double-click **Administrative Tools**.
4. Double-click **Active Directory Users and Computers**.
5. Expand the **Active Directory Name** (e.g., CompanyName.local).
6. Click the **Users** folder.
7. Find the user account listed for the **DomainUser** variable in the **Name** column on the right.
8. If it does not exist, right-click the **Users** folder.
9. Select **New \> User** from the menu.
10. Enter, in the **First Name** field, a *name to help describe the user for the variable*.
11. Enter, in the **Last Name** field, a *last name to help describe the user for the variable*.
12. Enter the *name defined for the variable* in the **User Login Name** field and click **Next**.
13. Enter a *password* for the user in the **Password** field.
14. Reenter the *password* for the user in the **Confirm Password** field.
15. Unselect the **User must change password at next logon** checkbox.
16. Select the **Password never expires** checkbox and click **Next**.
17. If an **Exchange server** is on the network, choose the desired settings and click **Next**.
18. Review the summary information for the user and click **Finish**.
19. Find the user account listed for the **RunSnapshotAgentAs** variable in the **Name** column on the right.
20. If it does not exist, right-click the **Users** folder.
21. Repeat Steps 9 - 16.
22. Find the user account listed for the **RunLogReaderAgentAs** variable in the **Name** column on the right.
23. If it does not exist, right-click the **Users** folder.
24. Repeat Steps 9 - 16.
25. Find the user account listed for the **RunDistributionAgentAs** variable in the **Name** column on the right.
26. If it does not exist, right-click the **Users** folder .
27. Repeat Steps 9 - 16.

### Configure the Command Files

SMA Technologies provides the following command files to aid with automating replication setup:

- SMA_DBReplicationSetUpDistributor.cmd
- SMA_DBReplicationSetUpPublisher.cmd
- SMA_DBReplicationCreatePullSubscriptionOnSubscriber.cmd
- SMA_DBReplicationCreatePullSubscriptionOnPublisher.cmd
- SMA_DBReplicationCreatePushSubscriptionOnPublisher.cmd
- SMA_DBReplicationStartSnapshotAgent.cmd
- SMA_DBReplicationMonitorLogReaderAgent.cmd
- SMA_DBReplicationMonitorDistributionAgent.cmd

SMA Technologies provides the following command files to aid with automating the disabling of replication:

- SMA_DBReplicationDropPullSubscriptionOnSubscriber.cmd
- SMA_DBReplicationDropSubscriptionOnPublisher.cmd
- SMA_DBReplicationDropPushSubscriptionOnSubscriber.cmd
- SMA_DBReplicationRemovePublisher.cmd
- SMA_DBReplicationRemoveDistributor.cmd
- SMA_StopServiceManager.cmd

SMA Technologies provides the following command file to aid with automating the recovery to the primary machine:

- SMA_DBReplicationRestoreDBOnPublisher.cmd

SMA Technologies provides the following command files to set scripting variables required by the other command files:

- SMA_SetDBReplicationScriptingVariables.cmd
- SMA_SetDBMaintenanceScriptingVariables.cmd

### Modify the Scripting Variables Command Files on the Primary Server

1. Log on as a *Windows user* with access to the OpCon installation directories.
2. Use menu path: **Start \> All Programs \> OpConxps \> Utilities \> SMA OpCon Configuration Utility**.
3. Click the **Replication** tab.
4. Replace the default values of the scripting variables according to the [Replication Information Worksheet](Database-Replication-Checklist.md#Replicat).
5. After reviewing all the values on the screen, select the **Replication Variables Verified** checkbox at the end of the list of values.
6. If not previously configured during installation, configure the **Environment** and **Maintenance** tabs.
7. Replace the default values of the scripting variables.
8. Click the **Update Scripts** button.
9. **Close** the program.

### Copy the Command Files to the Secondary Server

On the OpCon Server:

1. Right-click on **Start** and select **Explore**.
2. Browse to the <Configuration Directory\>**\\Utilities\\Database\\** directory.
   :::note
   The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
   :::
3. Press the **Ctrl** key and hold while clicking the following files:
   - SMA_DBReplicationSetUpDistributor.cmd
   - SMA_DBReplicationSetUpPublisher.cmd
   - SMA_DBReplicationCreatePullSubscriptionOnSubscriber.cmd
   - SMA_DBReplicationCreatePullSubscriptionOnPublisher.cmd
   - SMA_DBReplicationCreatePushSubscriptionOnPublisher.cmd
   - SMA_DBReplicationStartSnapshotAgent.cmd
   - SMA_DBReplicationMonitorLogReaderAgent.cmd
   - SMA_DBReplicationMonitorDistributionAgent.cmd
   - SMA_DBReplicationDropPullSubscriptionOnSubscriber.cmd
   - SMA_DBReplicationDropSubscriptionOnPublisher.cmd
   - SMA_DBReplicationDropPushSubscriptionOnSubscriber.cmd
   - SMA_DBReplicationRemovePublisher.cmd
   - SMA_DBReplicationRemoveDistributor.cmd
   - SMA_StopServiceManager.cmd
   - SMA_DBReplicationRestoreDBOnPublisher.cmd
   - SMA_SetDBReplicationScriptingVariables.cmd
   - SMA_SetDBMaintenanceScriptingVariables.cmd
4. Press **Ctrl+C** to copy the files or right-click the selected list and select **Copy** from the menu.
5. Browse to the Secondary SAM Application server to the <Configuration Directory\>**\\Utilities\\Database** directory and click in the folder.
   :::note
   To access the directory on the Secondary server, the directory must be shared to the user currently logged on to the Primary machine, or the user must have administrative access to the Secondary server.
   :::
6. Press **Ctrl+V** to paste the files, or right click in the directory and select **Paste** from the menu.

Continue with the procedure below from the same Explorer window and directory open to the Secondary server.

### Modify the SMA_SetReplicationScriptingVariables.cmd File on the Secondary Server

1. Right-click the **SMA_SetDBReplicationScriptingVariables.cmd** file and select **Edit** from the menu.
2. Find the **OpConxpsServerName** variable.
3. Change the value of the variable to the correct value for the Secondary server.
4. Use menu path: **File \> Save**.
5. **Close** the file.

### Configure Snapshot Folder Share and Permissions

The snapshot folder on the Distributer server must be shared, and the SQL Agent users must have the correct permissions to the share.

#### Create the Snapshot Folder Share and Grant Permissions

1. Log on to the Distributer Database Server as a *Windows user* with local administrative privileges.
2. Right-click on **Start** and select **Explore**.
3. In the Explorer window: Browse to the **repldata** folder in the SQL installation path. The default path is **C:\\Program Files\\Microsoft SQL Server\\MSSQL.10.MSSQLServer\\MSSQL\\repldata**.
4. If the **repldata** folder does not exist:
   1. Click the **MSSQL** folder.
   2. Use menu path: **File \> New \> Folder**.
   3. Enter *repldata* to replace the **NewFolder** name.
5. Right-click the **repldata** folder and select **Sharing and Security** from the menu.
6. Select the **Share this folder** radio button.
7. In the **Share Name** field, set the name to the share name used to define the **REPLDATAFolder** variable in the **SMA_SetDBReplicationScriptingVariables.cmd** file.
8. Click the **Permissions** button.
9. In the Permissions for repldata window: Click **Add**.
10. In the Select Users, Computers, or Groups window: If the **From this location** box does not contain the correct Active Directory Location:
    1. Click the **Locations** button.
    2. Expand the **Entire Directory**.
    3. Click the **desired active directory name** and click **OK**.
11. In the Select Users, Computers, or Groups window: Click the **Advanced** button.
12. Click the **Find Now** button.
13. Press and hold the **Ctrl** key on the keyboard.
14. In the **Name** column, click the users definedfor the **RunSnapshotAgentAs** and **RunDistributionAgentAs** variables in the SMA_SetDBReplicationScriptingVariables.cmd file.
15. Release the **Ctrl** key and click **OK**.
16. Click **OK** again.
17. In the Permissions for repldata window: Click the user defined for the **RunSnapshotAgentAs** variable.
18. Select the **Change** checkbox in the **Permissions** list.
19. Click the user defined for the **RunDistributionAgentAs** variable.
20. Select the **Read** checkbox in the **Permissions** list.

### Import the SMAReplication Schedules

SMA Technologies provides the SMAReplication.MDB file as a transport database for the schedules and jobs to automate the replication processes.

#### Create a DSN for the Transport Database

The first time the utility is activated, there is a prompt to select a DSN for the Microsoft Access database. If this is not the first time the utility has been activated, log in to the OpCon database and then create the DSN for the SMAUtility database and the AdHoc database.

1. Log in to the Primary SAM application server as a local administrative user.
2. Use menu path: **Start \> Programs \> Opconxps \> Utilities \> Schedule Import Export**.
3. Click the **ODBC** button.
4. Click the **System DSN** tab and click **Add**.
5. Select **Microsoft Access Driver (\*.mdb)** in the drop-down list and click **Finish**.
6. Enter *SMAReplication* in the **Data Source Name** text box.
7. *(Optional)* Enter a *description* in the **Description** text box and click **Select**.
8. Go to the **Directories** frame.
9. Browse to the **SMAReplication.MDB** file (e.g., C:\\Program Files\\OpConxps\\Utilities\\IMPEX.MDB).
10. Click the **.mdb** file then click **OK**.
11. Click **OK**(again).
12. Click **OK**.
13. Click **OK**.

#### Log In to the Schedule Import Export Utility to Import the SMAReplication Schedule

1. Enter, in the **User Login ID** field, any OpCon user account with privileges to import and export schedules (e.g., ocadm). For information on User Accounts, refer to [User Accounts](../../administration//user-accounts.md) in the **Concepts** online help.
2. Enter the *password* for the user in the **Password** text box.
3. Select the **OpCon database** in the **Data Source** field and click **OK**.
4. Use menu path: **File \> Select Access DSN**.
5. Select the new **SMAReplication datasource** in the list and click **OK**.

#### Import the SMAReplication Schedules

1. Click on one of the four schedules in the **Transport Database** list box to select them all.
2. Click the **Import from Transport Database** button on the toolbar.
3. Click the **Machine** tab.
4. Click the machine named **SMAReplicationPrimary**.
5. Click the **Machine Name** of the *MSLSAM installed on the Primary OpCon server*.
6. Click the machine named **SMAReplicationSecondary**.
7. Click the **Machine Name** of the *MSLSAM installed on the Secondary OpCon server*.
8. Click the **Import** button.
9. Click **OK** on the warning message about Batch User IDs.
10. Click **OK** on the termination message.

### Configure the LSAM Machine Definitions

The LSAMs on the Primary and Secondary SAM application servers must have certain configurations in the database for all of the replication jobs to execute successfully. Complete the procedures below to make the required configurations.

#### Log in to the Primary Database from the Enterprise Manager

1. Use menu path: **Start \> Programs \> OpConxps \> Enterprise Manager**.
2. Enter a *case-sensitive User Login ID* (e.g., ocadm) in the **Username** text box.
3. Enter the *case-sensitive password* for the user in the **Password** text box.
4. Select the **Profile to the Primary database** in the **Profile** drop-down list.
5. Click **Login** to login to the Enterprise Manager.

#### Configure the LSAM Machine Definitions

1. Double-click **Machines**.
2. Select the **Primary Machine** in the **Select Machine** list.
3. Right-click over the graphic and select **Stop Communication** from the menu.
4. Click on **Open Advanced Settings Panel**.
5. Click **Allow "Kill Job"**.
6. Select **True** from the list and click **Update**.
7. Click the **Communication Settings** tab.
8. Click **JORS Port Number**.
9. Enter the *JORS Port Number* as it is defined in the MSLSAM.ini file found in the LSAM's <Configuration Directory\>\\MSLSAM folder (e.g., 3110), and click **Update**.
10. Click **Requires XML Escape Sequences**.
11. Confirm the value for this setting is **True** and click **Accept**.
12. Look at the value for the **SMA Communications Protocol**. If it is set to **Contemporary**,**XML**, continue with this procedure. If the parameter has any other value, contact <support@smatechnologies.com> for more information.
13. Click the **File Transfer Settings** tab.
14. Click **File Transfer**.
15. Select **Two-way** in the list box and click **Update**.
16. Click **File Transfer Port Number**.
17. Enter the *same port number* as was entered for the JORS Port Number in Step 8 and click **Update**.
18. Click **Save**.
19. Right-click over the graphic and select **Start Communication** from the menu.
20. Select the **Secondary Machine** in the **Select Machine** list.
21. Repeat Steps 3 - 20.

### Validate Property Definitions

The jobs on the replication schedules make use of several OpCon Global Properties. The values for these properties must be configured with the correct values for the replication jobs to be successful.

#### Validate Property Definitions

1. In EM Navigation under Administration double-click **Global Properties**.
2. On the Global Properties Editor: Select **SMAOpConDataPath** in the **Select Global Property** list box.
3. In the **Global Property Value** text box, verify the path to the <Configuration Directory\> on the SAM Application server.
   1. If the path on the SAM Application server is different from the default (i.e., C:\\ProgramData\\OpConxps\\), modify the value to match the correct path.
   2. Click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.
4. Select **SMAOpConPath** in the **Select Global Property** list box.
5. In the **Global Property Value** text box, verify the path to the Utilities folder on the SAM Application server.
   1. If the path on the SAM Application server is different from the default (i.e., C:\\Program Files\\OpConxps\\), modify the value to match the correct path.
   2. Click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.
6. Select **PrimaryDBUpdateKey** in the **Select Global Property** list box.
7. Replace **SMA$usa** in the **Global Property Value** text box with the *sa password on the Primary Database Server*.
8. Click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.
9. Select **FullDBBackupOn2ndary** in the **Select Global Property** list box.
10. In the **Global Property Value** text box, verify the full path and file name of the full database backup file on the Secondary SAM Application Server as would be created by the SMADBBackup job.
    1. If any part of the path and or the file name for the backup file on the Secondary SAM Application server is different, modify the value to match the correct path and filename.
    2. Click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.
11. Select **FullDBBackupOnPrimary** in the **Select Global Property** list box.
12. In the **Global Property Value** text box, verify the full path and file name of the full database backup file on the Primary SAM Application Server as would be created by the SMADBBackup job.
    1. If any part of the path and or the file name for the backup file on the Primary SAM Application server is different, modify the value to match the correct path and filename.
    2. Click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.
13. Select **SecondaryDBUpdateKey** in the **Select Global Property** list box.
14. Replace **SMA$usa** in the **Global Property Value** text box with the *sa password on the Secondary Database Server*.
15. Click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.
16. Select **TLogBackupOn2ndary** in the **Select Global Property** list box.
17. In the **Global Property Value** text box, verify the full path and file name of the transaction log backup file on the Secondary SAM Application Server as would be created by the SMATLogBackup job.
    1. If any part of the path and or the file name for the backup file on the Secondary SAM Application server is different, modify the value to match the correct path and filename.
    2. Click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.
18. Select **TLogBackupOnPrimary** in the **Select Global Property** list box.
19. In the **Global Property Value** text box, verify the full path and file name of the transaction log backup file on the Primary SAM Application Server as would be created by the SMADBBackup job.
    1. If any part of the path and or the file name for the backup file on the Primary SAM Application serve is different, modify the value to match the correct path and filename.
    2. Click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.

### Configure the SMAReplicationSetup Schedule

By default, SMA Technologies distributes the SMAReplicationSetup schedule with Pull Replication configured. In the case of the SMAReplicationSetup jobs, the CreatePullSubscriptionOnPublisher job and CreatePullSubscriptionOnSubscriber job are active by default. If Push Replication will be set up, then modify the job's frequencies to disable the Pull jobs and to enable the CreatePushSubscriptionOnPublisher job.

#### Configure the SMAReplicationSetup Jobs for Push Replication

1. Double-click **Job Master**.
2. Select **SMAReplicationSetup** in the **Schedule** list.
3. Select **CreatePullSubscriptionOnPublisher** in the **Job** list.
4. Click the **Frequency** tab.
5. Select the **Do Not Schedule** radio button in the **Job Build Status** frame and click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.
6. Select **CreatePullSubscriptionOnSubscriber** in the **Job** list.
7. Select the **Do Not Schedule** radio button and click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.
8. Select **CreatePushSubscriptionOnPublisher** in the **Job** list.
9. Select the **Release** radio button and click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.

### Configure the SMAReplicationMonitor Schedule

The SMAReplicationMonitor schedule must run every day to ensure replication runs without interruption. Additionally, if either monitor job fails, notifications should be configured for an administrator to address the problem and restart replication.

#### Configure the SMAReplicationMonitor Schedule for Auto-Build and Delete

1. Double-click **Schedule Master**.
2. Select **SMAReplicationMonitor** in the **Schedule** list.
3. Select the **Auto Build** checkbox.
4. Enter *1* or any *desired value* for the **days in advance** to build.
5. Enter *1* or any *desired value* for the number of **days** to build.
6. Select the **Auto Delete** checkbox.
7. Enter *1* or any *desired value* for the **days ago** to delete.
8. Click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.

#### Set up Notifications for the SMAReplicationMonitor Jobs

The following procedure configures text messages through job level events; however, the notification can be any $NOTIFY type event and could instead be managed through ENS if desired. For information on ENS, refer to [Event Notification](../../notifications/Components.md) in the **Concepts** online help.

:::caution
If notifications are not configured on the SMAReplicationMonitor jobs, replication could fail without anyone noticing. While the method described below need not be used, SMA Technologies **strongly** recommends that some form of automatic notification be configured.
:::

1. In EM Navigation under Administration: Double-click **Job Master**.
2. In the Job Master editor under the Selection section: Select **SMAReplicationMonitor** in the **Schedule** list.
3. Select **MonitorDistributionAgent** in the **Job** list.
4. In the Job Properties section: Click the **Events** tab.
5. On the Events tab: Click **Add**.
6. On the Event Definition dialog: Select the **$NOTIFY:TEXTMSG** template in the **Event Template** list.
7. Select **Failed** in the **Job Status** list.
8. Below the Job Status list:
   1. Replace **<to\>** with the *email address to a cell phone number*.
   2. Replace **<message\>** with the message to deliver in the text. SMA Technologies recommends the following     message: `Replication has failed on the OpConxps database. The [[$JOB NAME]] job has failed.`
   :::note
   The finished event string would read:

   `$NOTIFY:TEXTMSG,5551212@cellprovider.com,Replication has failed on the OpConxps database. The [[$JOB NAME]] job has failed.`
   :::
   3. Select all of the text defined for the <to\> and <message\> (all of the text should be highlighted gray).
   4. Press **Ctrl + C** on the keyboard to copy the text for use with the next job.
   5. Click **OK**.
9. Under the Selection section: Select **MonitorLogReaderAgent** in the **Job** list.
10. On the Events tab: Click **Add**.
11. On the Event Definition dialog: Select the **$NOTIFY:TEXTMSG** template in the **Event Template** list.
12. Select **Failed** in the **Job Status** list.
13. Click in the field below the **Job Status** list and press **Ctrl + V** on the keyboard to paste the text from the previous event definition (refer to Step 8d).
14. Modify the *email address* and *message* if desired and click **OK**.

### Configure the SMAReplicationTearDown Schedule

By default, SMA Technologies distributes the SMAReplicationTearDown schedule with Pull Replication configured. In the case of the SMAReplicationTearDown jobs, the DropPullSubscriptionOnSubscriber job and DropPullSubscriptionOnPublisher job are active by default. If Push Replication will be set up, then modify the job's frequencies to disable the Pull jobs and to enable the DropPushSubscriptionOnPublisher and DropPushSubscriptionOnSubscriber jobs.

#### Configure the SMAReplicationTearDown Jobs for Push Replication

1. Double-click **Job Master** (if not already open).
2. Select **SMAReplicationTearDown** in the **Schedule** list.
3. Select **DropPullSubscriptionOnSubscriber** in the **Job** list.
4. Click the **Frequency** tab.
5. Select the **Do Not Schedule** radio button in the **Job Build Status** frame and click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.
6. Select **DropPullSubscriptionOnPublisher** in the **Job** list.
7. Click the **Do Not Schedule** radio button and click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.
8. Select **DropPushSubscriptionOnPublisher** in the **Job** list.
9. Select the **Release** radio button and click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.
10. Select **DropPushSubscriptionOnSubscriber** in the **Job** list.
11. Select the **Release** radio button and click ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**.

## Automated Replication Setup

SMA Technologies provides two schedules to use for the automated replication setup:

- [SMAReplicationSetup](#SMARepli)
- [SMAReplicationMonitor](#SMARepli2)

### SMAReplicationSetup Schedule Definition

The SMAReplicationSetup schedule will be executed on request when it is time to initially set up replication, when the primary server has been brought back on-line after an outage, or after a 'failover' event. The SMAReplicationSetup schedule consists of five OpCon jobs:

- [SetUpDistributor](#SetUpDis)
- [SetUpPublisher](#SetUpPub)
- [CreatePullSubscriptionOnSubscriber](#CreatePu)
- [CreatePullSubscriptionOnPublisher](#CreatePu2)
- [CreatePushSubscriptionOnPublisher](#CreatePu3)
- [StartSnapshotAgent](#StartSna)

#### SetUpDistributor

The SetUpDistributor job will execute the SQL script SMA_DBReplicationSetUpDistributor.sql from a Windows command file called SMA_DBReplicationSetUpDistributor.cmd. This job configures the distributor, creates the distribution database, adds the replication "housekeeping" jobs to the SQL Server agent and also adds the Snapshot Agent job (PublisherSQLInstance-PublicationDatabaseName-PublicationName-1) and LogReader agent job (PublisherSQLInstance-PublicationDatabaseName-1) to the SQL Server Agent on the distributor SQL Server instance.

The log file created by this script will be placed in the directory configured in the SQLScriptOutputDirectory scripting variable. It will be named <PublicationName\>\_ReplicationSetUpDistributor.log where <PublicationName\> is the name configured in the PublicationName scripting variable. After the job finishes, check this log file to ensure that no errors have occurred during execution of the job. Pay special attention to errors that may have been issued from SQL Server.

#### SetUpPublisher

The SetUpPublisher job will execute the SQL script SMA_DBReplicationSetUpPublisher.sql from a Windows command file called SMA_DBReplicationSetUpPublisher.cmd. This job configures the publisher server, enables the OpCon database for publishing, creates the publication, and adds the articles to be published.

The log file created by this script will be placed in the directory configured in the SQLScriptOutputDirectory scripting variable. It will be named <PublicationName\>\_ReplicationSetUpPublisher.log where <PublicationName\> is the name configured in the PublicationName scripting variable. After the job finishes, check this log file to ensure that no errors have occurred during execution of the job. Pay special attention to errors that may have been issued from SQL Server.

#### CreatePullSubscriptionOnSubscriber

The CreatePullSubscriptionOnSubscriber job will execute the SQL script SMA_DBReplicationCreatePullSubscriptionOnSubscriber.sql from a Windows command file called SMA_DBReplicationCreatePullSubscriptionOnSubscriber.cmd. This job creates the pull subscription information on the subscriber server and adds the distribution agent job to the SQL Server Agent on the subscriber SQL Server instance.

The log file created by this script will be placed in the directory configured in the SQLScriptOutputDirectory scripting variable. It will be named <PublicationName\>\_SubscriberCreatePullSubscription.log where <PublicationName\> is the name configured in the PublicationName scripting variable. After the job finishes, check this log file to ensure that no errors have occurred during execution of the job. Pay special attention to errors that may have been issued from SQL Server.

#### CreatePullSubscriptionOnPublisher

The CreatePullSubscriptionOnPublisher job will execute the SQL script SMA_DBReplicationCreatePullSubscriptionOnPublisher.sql from a Windows command file called SMA_DBReplicationCreatePullSubscriptionOnPublisher.cmd. This job creates the pull subscription information on the publisher server.

The log file created by this script will be placed in the directory configured in the SQLScriptOutputDirectory scripting variable. It will be named <PublicationName\>\_CreatePullSubscriptionOnPublisher.log where <PublicationName\> is the name configured in the PublicationName scripting variable. After the job finishes, check this log file to ensure that no errors have occurred during execution of the job. Pay special attention to errors that may have been issued from SQL Server.

#### CreatePushSubscriptionOnPublisher

The CreatePushSubscriptionOnPublisher job will execute the SQL script SMA_DBReplicationCreatePushSubscriptionOnPublisher.sql from a Windows command file called SMA_DBReplicationCreatePushSubscriptionOnPublisher.cmd. This job creates the push subscription on the publisher server. By default this job's frequency is set to Do Not Schedule because the Pull subscription is enabled by default. To use a Push subscription, set this job to a Release build status and change the Pull subscription jobs to Do Not Schedule. For information, refer to [Configure the SMAReplicationSetup Jobs for Push Replication](#Configure_the_SMAReplicationSetup_Jobs_for_Push_Replication).

The log file created by this script will be placed in the directory configured in the SQLScriptOutputDirectory scripting variable. It will be named <PublicationName\>\_CreatePushSubscriptionOnPublisher.log where <PublicationName\> is the name configured in the PublicationName scripting variable. After the job finishes, check this log file to ensure that no errors have occurred during execution of the job. Pay special attention to errors that may have been issued from SQL Server.

#### StartSnapshotAgent

The StartSnapshotAgent job will execute the Windows command file called SMA_DBReplicationStartSnapshotAgent.cmd. This job uses the SMASQLDMOApp.exe utility to start the Snapshot Agent on the distributor server so that the initial snapshot of the OpCon database is created.

The log file created by this script will be placed in the directory configured in the SQLScriptOutputDirectory scripting variable. It will be named StartSnapshotAgent.log. After the job finishes, check this log file to ensure that no errors have occurred during execution of the job. Pay special attention to errors that may have been issued from SQL Server.

### SMAReplicationMonitor Schedule Definition

This schedule will run every day in order to provide continuous monitoring of the log reader agent and distribution agent SQL Server Agent jobs. The SMAReplicationMonitor schedule consists of 2 OpCon jobs.

#### MonitorDistributionAgent

The MonitorDistributionAgent job will execute the Windows command file called SMA_DBReplication MonitorDistributionAgent.cmd. This job uses the SMASQLDMOApp.exe utility to monitor the Distribution Agent to check that it is running continuously. For pull subscriptions the Distribution Agent runs on the subscriber server. For push subscriptions the Distribution Agent runs on the distributor server. The job automatically detects the subscription type and executes against the correct SQL instance.

If this job fails, check the SQL Server Agent Error Logs. View the logs from the Microsoft SQL Server Management Studio in the Error Logs folder under the SQL Server Agent.

#### MonitorLogReaderAgent

The MonitorLogReaderAgent job will execute the Windows command file called SMA_DBReplicationMonitorLogReaderAgent.cmd. This job uses the SMASQLDMOApp.exe utility to monitor the LogReader Agent on the distributor server to check that it is running continuously.

If this job fails, check the SQL Server Agent Error Logs. View the logs from the Microsoft SQL Server Management Studio in the Error Logs folder under the SQL Server Agent.

### Building and Executing the Replication Setup Schedules

After meeting all of the [Prerequisites](#Prerequi) and completing the [Configuration](#Configur7), replication can be set up any time by building the SMAReplicationSetup and SMAReplicationMonitor schedules. Complete the procedures in this section to set up replication.

#### Build the Replication Schedules On Hold

On any machine with an OpCon Enterprise Manager, complete the following
steps:

1. [Log in to the Primary Database from the Enterprise Manager](#Log_in_to_the_Primary_Database_from_the_Enterprise_Manager).
2. Double-click **Schedule Build**.
3. Select the **SMAReplicationSetup** schedule in the **Schedule Selection** frame.
4. Accept the default options so that the schedules will build for today.
5. Select the **Overwrite existing schedules** checkbox and click **Build**.
6. Accept the default selection to build the schedule On Hold and click **OK**.
7. Select the **SMAReplicationMonitor** schedule in the **Schedule Selection** frame.
8. Accept the default date for the **Start** date (today).
9. In the **Stop** date, select **tomorrow's date** from the calendar.
10. Click the **Overwrite** option and click **Build**.
11. Accept the default selection to build the schedule On Hold and click **OK**.
12. Click **Close ☒**.

#### Run the SMAReplicationSetup Schedule

1. Double-click **List**.
2. Double-click **today's date**.
3. In the tree view under the date, double-click the **SMAReplicationSetup** schedule to see the jobs.
4. Right-click the **SMAReplicationSetup** schedule and select **Release** from the menu.
5. Wait for all of the jobs to finish with a status of Finished OK. If any jobs fail, check the log files to determine the reason for failure. Fix the error then restart the failed job.
6. After all the jobs have Finished OK, review the log files for each job to ensure replication is set up correctly. Microsoft SQL Server procedures for setting up replication do not always return error codes to scripts. For information on the log files to review, please refer to the definitions of each job within the [SMAReplicationSetup Schedule Definition](#SMARepli).

#### Run the SMAReplicationMonitor and Configure it for Daily Monitoring

After replication is successfully set up through the SMAReplicationSetup schedule, complete the steps below to automatically monitor the replication status.

1. Double-click the **SMAReplicationMonitor** schedule (in the tree view under *today's date)* to see the jobs.
2. Right-click the **SMAReplicationMonitor** schedule and select **Release** from the menu.

## Controlled Failover with Automation

The SMAReplicationTearDown schedule is included with the SMA Replication schedules for use in failover testing. This schedule aids customers who do testing for disaster recovery, business continuity, and failover and recovery procedures.

### SMAReplicationTearDown Schedule Definition

The SMAReplicationTearDown schedule consists of 9 OpCon jobs:

- [KillReplicationMonitors](#KillRepl)
- [DropPullSubscriptionOnSubscriber](#DropPull)
- [DropPullSubscriptionOnPublisher](#DropPull2)
- [DropPushSubscriptionOnPublisher](#DropPush)
- [DropPushSubscriptionOnSubscriber](#DropPush2)
- [RemovePublisher](#RemovePu)
- [RemoveDistributor](#RemoveDi)
- [RunDBUpdateCmdOnSecondary](#RunDBUpd2)
- [StopSMAServiceManagerOnPrimary](#StopSMAS2)

Once the RemoveDistributor job runs, the Replication Monitor can be checked to ensure the replication process has been completely removed.

#### KillReplicationMonitors

The KillReplicationMonitors job is set up to stop the jobs that are currently executing on the SMAReplicationMonitor schedule before replication itself is stopped by the other jobs. The job is a NULL job that Finishes OK and then triggers the $JOB:KILL events.

#### DropPullSubscriptionOnSubscriber

The DropPullSubscriptionOnSubscriber job executes the SQL script SMA_DBReplicationDropPullSubscriptionOnSubscriber.sql from a Windows command file called SMA_DBReplicationDropPullSubscriptionOnSubscriber.cmd. This job drops the pull subscription from the subscriber server and removes the distribution agent job from the SQL Server Agent on the subscriber SQL Server instance.

The log file created by this script will be placed in the directory configured in the SQLScriptOutputDirectory scripting variable. It will be named <PublicationName\>\_SubscriberDropPullSubscription.log where <PublicationName\> is the name configured in the PublicationName scripting variable. After the job finishes, check this log file to ensure that no errors have occurred during execution of the job. Pay special attention to errors that may have been issued from SQL Server.

When this job Finishes OK, replication has stopped and any information processed on the publisher server from then on will not be sent to the subscriber server.

#### DropPullSubscriptionOnPublisher

The DropPullSubscriptionOnPublisher job executes the SQL script SMA_DBReplicationDropSubscriptionOnPublisher.sql from a Windows command file called SMA_DBReplicationDropSubscriptionOnPublisher.cmd. This job drops the pull subscription from the publisher server.

The log file created by this script will be placed in the directory configured in the SQLScriptOutputDirectory scripting variable. It will be named <PublicationName\>\_DropSubscriptionOnPublisher.log where <PublicationName\> is the name configured in the PublicationName scripting variable. After the job finishes, check this log file to ensure that no errors have occurred during execution of the job. Pay special attention to errors that may have been issued from SQL Server.

#### DropPushSubscriptionOnPublisher

The DropPushSubscriptionOnPublisher job executes the SQL script SMA_DBReplicationDropSubscriptionOnPublisher.sql from a Windows command file called SMA_DBReplicationDropSubscriptionOnPublisher.cmd. This job drops the push subscription from the publisher server. By default this job's frequency is set to Do Not Schedule because the Pull subscription is enabled by default. To use a Push subscription, set this job to a Release build status and change the Pull subscription jobs to Do Not Schedule. For information, refer to [Configure the SMAReplicationTearDown Jobs for Push Replication](#Configure_the_SMAReplicationTearDown_Jobs_for_Push_Replication).

The log file created by this script will be placed in the directory configured in the SQLScriptOutputDirectory scripting variable. It will be named <PublicationName\>\_DropSubscriptionOnPublisher.log where <PublicationName\> is the name configured in the PublicationName scripting variable. After the job finishes, check this log file to ensure that no errors have occurred during execution of the job. Pay special attention to errors that may have been issued from SQL Server.

When this job Finishes OK, replication has stopped and any information processed on the publisher server from then on will not be sent to the subscriber server.

#### DropPushSubscriptionOnSubscriber

The DropPushSubscriptionOnSubscriber job executes the SQL script SMA_DBReplicationDropPushSubscriptionOnSubscriber.sql from a Windows command file called SMA_DBReplicationDropPushSubscriptionOnSubscriber.cmd. This job cleans up metadata about the push subscription on the subscriber server. By default this job's frequency is set to Do Not Schedule because the Pull subscription is enabled by default. To use a Push subscription, set this job to a Release build status and change the Pull subscription jobs to Do Not Schedule. For information, refer to [Configure the SMAReplicationTearDown Jobs for Push Replication](#Configure_the_SMAReplicationTearDown_Jobs_for_Push_Replication).

The log file created by this script will be placed in the directory configured in the SQLScriptOutputDirectory scripting variable. It will be named <PublicationName\>\_SubscriberDropPushSubscription.log where <PublicationName\> is the name configured in the PublicationName scripting variable. After the job finishes, check this log file to ensure that no errors have occurred during execution of the job. Pay special attention to errors that may have been issued from SQL Server.

#### RemovePublisher

The RemovePublisher job executes the SQL script SMA_DBReplicationRemovePublisher.sql from a Windows command file called SMA_DBReplicationRemovePublisher.cmd. This job drops the published articles from the publication, drops the publication and disables replication on the OpCon database. It also drops the subscriber SQL Server instance as a registered subscriber on the publisher instance.

The log file created by this script will be placed in the directory configured in the SQLScriptOutputDirectory scripting variable. It will be named <PublicationName\>\_RemoveReplicationPublisher.log where <PublicationName\> is the name configured in the PublicationName scripting variable. After the job finishes, check this log file to ensure that no errors have occurred during execution of the job. Pay special attention to errors that may have been issued from SQL Server.

#### RemoveDistributor

The RemoveDistributor job executes the SQL script SMA_DBReplicationRemoveDistributor.sql from a Windows command file called SMA_DBReplicationRemoveDistributor.cmd. This job drops the publisher at the distributor, drops the distribution database and disables distribution on the distributor. It also removes the LogReader Agent job and Distribution Agent job from the SQL Server Agent on the distributor.

The log file created by this script will be placed in the directory configured in the SQLScriptOutputDirectory scripting variable. It will be named <PublicationName\>\_RemoveReplicationDistributor.log where <PublicationName\> is the name configured in the PublicationName scripting variable. After the job finishes, check this log file to ensure that no errors have occurred during execution of the job. Pay special attention to errors that may have been issued from SQL Server. When this job Finishes OK, replication has been disabled on the primary server. The next jobs prepare the secondary server to take over processing.

#### RunDBUpdateCmdOnSecondary

The RunDBUpdateCmdOnSecondary job executes a Windows command file called DB_Update.cmd that runs the following SQL scripts:

- Schema_Install.sql
- SMALOOKUP_Update.sql
- DBFuncs_Install.sql
- DBProcs_Install.sql
- PDSAFramework.sql
- PDSAFrameworkData.sql

This job ensures that all primary keys and object permissions are applied to the OpCon database residing on the subscriber server. It also ensures that the database functions, stored procedures and pertinent OpCon system data tables in the database are current.

#### StopSMAServiceManagerOnPrimary

The StopSMAServiceManagerOnPrimary job executes a Windows command file called SMA_StopServiceManager.cmd that will stop the SMA Service Manager Windows service on the primary server. This job is optional and can be disabled if the SMA Service Manager will be stopped manually.

If anyone is still logged in to a graphical interface that has its data source (DSN) pointing at the primary OpCon database, the StopSMAServiceManagerOnPrimary job will stay in a Job Running state because the database cannot be updated after the SMA Service Manager stops.

### Building and Executing the SMAReplicationTearDown Schedule

After meeting all of the [Prerequisites](#Prerequi) and completing the [Configuration](#Configur7), replication can be disabled any time by building the SMAReplicationTearDown schedule. Complete the procedures in this section to tear down replication.

#### Build the SMAReplicationTearDown Schedule On Hold

On any machine with an OpCon Enterprise Manager, complete the following steps:

1. [Log in to the Primary Database from the Enterprise Manager](#Log_in_to_the_Primary_Database_from_the_Enterprise_Manager).
2. Double-click **Schedule Build**.
3. Select the **SMAReplicationTearDown** schedule in the **Schedule Selection** frame.
4. Accept the default options so the schedules will build for today.
5. Select the **Overwrite existing schedules** checkbox and click **Build**.
6. Accept the default selection to build the schedule On Hold and click **OK**.
7. Click **Close ☒**.

#### Run the SMAReplicationTearDown Schedule

1. Double-click **List**.
2. Double-click **today's date**.
3. In the tree view under the date, double-click the **SMAReplicationTearDown** schedule to see the jobs.
4. Right-click the **SMAReplicationTearDown** schedule.
5. Select **Release** from the menu.
6. Wait for all of the jobs to finish with a status of Finished OK. If any jobs fail, check the log files to determine the reason for failure. Fix the error and then restart the failed job.
7. After all the jobs have Finished OK, review the log files for each job to ensure replication is disabled completely. Microsoft SQL Server procedures for disabling replication do not always return error codes to scripts. For information on the log files to review, refer to the definitions of each job within the [SMAReplicationTearDown Schedule Definition](#SMARepli3).

#### Fail Over to the Subscribing Database and Secondary SMAServMan

If the SMA Service Manager should begin processing on the secondary server, configure the SMA Service Manager on the secondary server then complete the following steps to start the service:

1. Log on to the *Secondary SAM application server* as a local administrative user.
2. Use menu path: **Start \> Control Panel**.
3. Double-click **Administrative Tools**.
4. Double-click the **Services** icon.
5. Double-click the **SMA OpCon Service Manager** service.
6. Select **Automatic (Delayed Start)** in the **Startup type** drop-down list.
7. Click **OK**.
8. Click **Start** to start the service and click **Close ☒** on the **Services** window.
9. Use menu path: **Start \> Programs \> OpConxps \> Log Monitors \>** *Log File*. To navigate to the Log files.
10. Open the SMANetCom.log, SAM Critical.log, and SAM.log to verify that the *Secondary Server* is processing normally.
11. When the SAM-SS is processing normally with the *Subscribing database*, all graphical interfaces should connect to the *Subscribing database* for production processing until the OpCon administrator indicates that the *Publishing Database Server* is available again.

## Recovery to the Primary Server

The SMAReplicationRecoverToPrimary is included with the SMA Replication schedules to use when transferring processing back to the primary server.

### SMAReplicationRecoverToPrimary Schedule Definition

The SMAReplicationRecoverToPrimary schedule consists of 5 OpCon jobs:

- [TransferFullDBBackupToPrimary](#Transfer)
- [TransferTLogBackupToPrimary](#Transfer2)
- [RestoreDatabaseOnPrimary](#RestoreD)
- [RunDBUpdateCmdOnPrimary](#RunDBUpd)
- [StopSMAServiceManagerOnSecondary](#StopSMAS)

#### TransferFullDBBackupToPrimary

The TransferFullDBBackupToPrimary job employs SMA Technologies' File Transfer feature to move the secondary database's backup file to the primary server. The backup file will be transferred as a binary file.

#### TransferTLogBackupToPrimary

The TransferTLogBackupToPrimary job employs SMA Technologies' File Transfer feature to move the secondary database's transaction log file to the primary server. The backup file will be transferred as a binary file.

#### RestoreDatabaseOnPrimary

The RestoreDatabaseOnPrimary job executes a Windows command file called SMA_DBReplicationRestoreDBOnPublisher.cmd that will restore the database from the subscriber server onto the publisher server.

There are three steps to the RestoreDatabaseOnPrimary SQL job:

1. Kill any database sessions that may be logged in at the time
2. Restore the database
3. Delete the replication stored procedures (sp_MS...) from the database

#### RunDBUpdateCmdOnPrimary

TheRunDBUpdateCmdOnPrimary job executes a Windows command file called DB_Update.cmd that runs the following SQL scripts:

- Schema_Install.sql
- SMALOOKUP_Update.sql
- DBFuncs_Install.sql
- DBProcs_Install.sql
- PDSAFramework.sql
- PDSAFrameworkData.sql

This job ensures that all primary keys and object permissions are applied to the OpCon database residing on the publisher server. It also ensures that the database functions, stored procedures and pertinent OpCon system data tables in the database are current.

#### StopSMAServiceManagerOnSecondary

The StopSMAServiceManagerOnSecondary job executes a Windows command file called SMA_StopServiceManager.cmd that will stop the SMA Service Manager Windows service on the secondary server. This job is optional and can be disabled if the SMA Service Manager will be stopped manually.

If anyone is still logged in to a graphical interface that has its data source (DSN) pointing at the primary OpCon database, the StopSMAServiceManagerOnSecondary job will stay in a Job Running state because the database cannot be updated after the SMA Service Manager stops.

### Building and Executing the SMAReplicationRecoverToPrimary Schedule

After meeting all of the [Prerequisites](#Prerequi) and completing the [Configuration](#Configur7), processing can be restored to the primary server any time by building the SMAReplicationRecoverToPrimary schedule. Complete the procedures in this section to recover processing to the primary server.

#### Build the SMAReplicationRecoverToPrimary Schedule On Hold

On any machine with an OpCon Enterprise Manager, complete the following steps:

1. [Log in to the Primary Database from the Enterprise Manager](#Log_in_to_the_Primary_Database_from_the_Enterprise_Manager).
2. Double-click **Schedule Build**.
3. Select the **SMAReplicationRecoverToPrimary** schedule in the **Schedule Selection** frame.
4. Accept the default options so the schedules will build for today.
5. Select the **Overwrite existing schedules** checkbox and click **Build**.
6. Accept the default selection to build the schedule **On Hold** and click **OK**.
7. Click **Close ☒**.

#### Run the SMAReplicationTearDown Schedule

1. Double-click **List**.
2. Double-click **today's date**.
3. Double-click the **SMAReplicationRecoverToPrimary** (in the tree view under the date) schedule to see the jobs.
4. Right-click the **SMAReplicationRecoverToPrimary** schedule and select **Release** from the menu.
5. Wait for all of the jobs to finish with a status of Finished OK. If any jobs fail, check the log files to determine the reason for failure. Fix the error and then restart the failed job.

#### Start the SMA Service Manager on the Primary Server

After properly configuring the SMA Service Manager on the primary server, complete the following steps to start the service:

1. Use menu path: **Start \> Control Panel**.
2. In the Control Panel window: Double-click the **Administrative Tools** icon.
3. In the Administrative Tools window: Double-click the **Services** icon.
4. In the Services window: Scroll down to the **SMA OpCon Service Manager** service.
5. Change the *SMAServMan's* **Startup Type** to **Automatic (Delayed Start)** using the following steps:
   1. Double-click on **SMA OpCon Service Manager**.
   2. Select **Automatic (Delayed Start)** in the **Startup type** drop-down list and click **OK**.
6. In the Services List: Click on **SMA OpCon Service Manager** and click **Start**.
7. Use menu path: **Start \> Programs \> OpConxps \> Log Monitors \>Log File Name**.
8. View the SMAServMan, SAM, Critical, SMANetCom, and SMANetComTrace logs to verify that the SAM and SMANetCom connected successfully to the database.
