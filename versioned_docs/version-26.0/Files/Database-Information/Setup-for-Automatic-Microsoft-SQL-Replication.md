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
last_updated: 2026-03-18
doc_type: procedural
---

# Setup for Automatic Microsoft SQL Replication

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

Setup for Automatic Microsoft SQL Replication lets OpCon automate the configuration and removal of SQL Server transactional replication, removing the need for manual DBA intervention on each failover cycle.

Database replication in SQL Server uses a publishing metaphor with three roles: publisher, distributor, and subscriber. OpCon uses transactional replication to distribute data from the production database to the failover database. Data moves from publisher to distributor, then is either "pushed" to the subscriber by the distributor or "pulled" from the distributor by the subscriber.

This topic assumes the publisher and subscriber run on distinct SQL Server instances on separate machines. The distributor may share an instance with either the publisher or subscriber, or run on its own.

## Prerequisites

- The OpCon database server must have Microsoft SQL Server Standard or Enterprise edition installed
- The Microsoft SQL Server Backward Compatibility Components must be installed. To download this package, go to: <https://technet.microsoft.com/en-us/library/cc707787(v=sql.120).aspx>.
- The version of SQL Server on the distributor must be the same or later than the version on the publisher
- The OpCon database must exist on both the Publisher Server and Subscriber Server before starting replication setup. Both databases must have the Recovery model set to Full
- OpCon SAM and supporting services must be installed on the Primary and Secondary OpCon servers
- The MSLSAM must be installed on both the primary and secondary OpCon servers to facilitate backup file transfers during failover recovery. Machines must also be configured to enable SMA File Transfer. For information on configuring machines to support file transfer, refer to [Advanced Machine Configuration](../../objects/machines.md#Advanced) in the **Concepts** online help
- Complete the [Replication Information Worksheet](Database-Replication-Checklist.md#Replicat)

## Considerations

The publisher and subscriber should run on comparable systems that can handle identical workloads.

Do not change the password for the distributor_admin login manually. Always use the sp_changedistributor_password stored procedure, or the Distributor Properties, or the Update Replication Passwords dialog boxes in SQL Server Management Studio — password changes made this way are applied to local publications automatically. If the distributor_admin password is changed manually, the DistributorKey entry in SMA_SetDBReplicationScriptingVariables.cmd must also be updated.

Microsoft recommends running each replication agent under a different Windows account with Windows authentication for all agent connections. Grant only the required privileges for each agent:

:::note
The scripts provided by Continuous to automate the replication setup will automatically grant the appropriate database privileges. Folder share permissions must be configured manually.
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

A Windows domain user with SQL Server sysadmin fixed server role privileges on the distributor and subscriber SQL Server instances must exist. This user serves as the proxy for the replication agent accounts.

If using a pull subscription, use a network share rather than a local path for the snapshot folder.

Before releasing the SMAReplicationRecoverToPrimary schedule, ensure all other OpCon schedules are On Hold and no jobs are running.

## Configuration

Configuration for automating replication setup includes the following:

- [Verify Windows Accounts](#Verify)
- [Configure the Command Files](#Configur)
- [Configure Snapshot Folder Share and     Permissions](#Configur2)
- [Import the SMAReplication Schedules](#Import)
- [Configure the agent Machine Definitions](#Configur3)
- [Validate Property Definitions](#Validate)
- [Configure the SMAReplicationSetup Schedule](#Configur4)
- [Configure the SMAReplicationMonitor Schedule](#Configur5)
- [Configure the SMAReplicationTearDown Schedule](#Configur6)

### Verify Windows Accounts

In the completed [Replication Information Worksheet](Database-Replication-Checklist.md#Replicat), there are Windows domain user accounts required for the replication process. With the completed worksheet for reference, complete the procedures below to verify that the users exist and that they are granted the sysadmin fixed server role in the distributor and subscriber SQL Server instances.

#### Verify and/or Create Windows Domain Accounts

1. Log in as a *domain administrator*
2. Use menu path: **Start \> Control Panel**
3. Select **Administrative Tools**

4. Select **Active Directory Users and Computers**
5. Expand the **Active Directory Name** (e.g., CompanyName.local)
6. Select the **Users** folder
7. Find the user account listed for the **DomainUser** variable in the **Name** column on the right
8. If it does not exist, right-click the **Users** folder

9. Select **New \> User** from the menu
10. Enter, in the **First Name** field, a *name to help describe the user for the variable*
11. Enter, in the **Last Name** field, a *last name to help describe the user for the variable*
12. Enter the *name defined for the variable* in the **User Login Name** field and select **Next**
13. Enter a *password* for the user in the **Password** field
14. Reenter the *password* for the user in the **Confirm Password** field
15. Unselect the **User must change password at next logon** option
16. Select the **Password never expires** option and select **Next**
17. If an **Exchange server** is on the network, choose the desired settings and select **Next**

18. Review the summary information for the user and select **Finish**
19. Find the user account listed for the **RunSnapshotAgentAs** variable in the **Name** column on the right
20. If it does not exist, right-click the **Users** folder
21. Repeat Steps 9 - 16
22. Find the user account listed for the **RunLogReaderAgentAs** variable in the **Name** column on the right

23. If it does not exist, right-click the **Users** folder
24. Repeat Steps 9 - 16
25. Find the user account listed for the **RunDistributionAgentAs** variable in the **Name** column on the right
26. If it does not exist, right-click the **Users** folder 
27. Repeat Steps 9 - 16

### Configure the Command Files

Continuous provides the following command files to automate replication setup:

- SMA_DBReplicationSetUpDistributor.cmd
- SMA_DBReplicationSetUpPublisher.cmd
- SMA_DBReplicationCreatePullSubscriptionOnSubscriber.cmd
- SMA_DBReplicationCreatePullSubscriptionOnPublisher.cmd
- SMA_DBReplicationCreatePushSubscriptionOnPublisher.cmd
- SMA_DBReplicationStartSnapshotAgent.cmd
- SMA_DBReplicationMonitorLogReaderAgent.cmd
- SMA_DBReplicationMonitorDistributionAgent.cmd

Continuous provides the following command files to automate disabling replication:

- SMA_DBReplicationDropPullSubscriptionOnSubscriber.cmd
- SMA_DBReplicationDropSubscriptionOnPublisher.cmd
- SMA_DBReplicationDropPushSubscriptionOnSubscriber.cmd
- SMA_DBReplicationRemovePublisher.cmd
- SMA_DBReplicationRemoveDistributor.cmd
- SMA_StopServiceManager.cmd

Continuous provides the following command file to automate recovery to the primary machine:

- SMA_DBReplicationRestoreDBOnPublisher.cmd

Continuous provides the following command files to set scripting variables required by the other command files:

- SMA_SetDBReplicationScriptingVariables.cmd
- SMA_SetDBMaintenanceScriptingVariables.cmd

### Modify the Scripting Variables Command Files on the Primary Server

1. Log on as a *Windows user* with access to the OpCon installation directories
2. Use menu path: **Start \> All Programs \> OpConxps \> Utilities \> SMA OpCon Configuration Utility**
3. Select the **Replication** tab
4. Replace the default values of the scripting variables according to the [Replication Information Worksheet](Database-Replication-Checklist.md#Replicat)
5. After reviewing all the values on the screen, select the **Replication Variables Verified** option at the end of the list of values
6. If not previously configured during installation, configure the **Environment** and **Maintenance** tabs
7. Replace the default values of the scripting variables
8. Select the **Update Scripts** button
9. **Close** the program

### Copy the Command Files to the Secondary Server

On the OpCon Server:

1. Right-click on **Start** and select **Explore**
2. Browse to the <Configuration Directory\>**\\Utilities\\Database\\** directory
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
4. Press **Ctrl+C** to copy the files or right-click the selected list and select **Copy** from the menu
5. Browse to the Secondary SAM Application server to the <Configuration Directory\>**\\Utilities\\Database** directory and select in the folder
   :::note
   To access the directory on the Secondary server, the directory must be shared to the user currently logged on to the Primary machine, or the user must have administrative access to the Secondary server.
   :::
6. Press **Ctrl+V** to paste the files, or right select in the directory and select **Paste** from the menu

Continue with the procedure below from the same Explorer window and directory open to the Secondary server.

### Modify the SMA_SetReplicationScriptingVariables.cmd File on the Secondary Server

1. Right-click the **SMA_SetDBReplicationScriptingVariables.cmd** file and select **Edit** from the menu
2. Find the **OpConxpsServerName** variable
3. Change the value of the variable to the correct value for the Secondary server
4. Use menu path: **File \> Save**
5. **Close** the file

### Configure Snapshot Folder Share and Permissions

The snapshot folder on the Distributer server must be shared, and the SQL Agent users must have the correct permissions to the share.

#### Create the Snapshot Folder Share and Grant Permissions

1. Log on to the Distributer Database Server as a *Windows user* with local administrative privileges
2. Right-click on **Start** and select **Explore**
3. In the Explorer window: Browse to the **repldata** folder in the SQL installation path. The default path is **C:\\Program Files\\Microsoft SQL Server\\MSSQL.10.MSSQLServer\\MSSQL\\repldata**
4. If the **repldata** folder does not exist:
   1. Select the **MSSQL** folder
   2. Use menu path: **File \> New \> Folder**
   3. Enter *repldata* to replace the **NewFolder** name
5. Right-click the **repldata** folder and select **Sharing and Security** from the menu
6. Select the **Share this folder** radio button
7. In the **Share Name** field, set the name to the share name used to define the **REPLDATAFolder** variable in the **SMA_SetDBReplicationScriptingVariables.cmd** file
8. Select the **Permissions** button
9. In the Permissions for repldata window: Select **Add**
10. In the Select Users, Computers, or Groups window: If the **From this location** box does not contain the correct Active Directory Location:
    1. Select the **Locations** button
    2. Expand the **Entire Directory**
    3. Select the **desired active directory name** and select **OK**
11. In the Select Users, Computers, or Groups window: Select the **Advanced** button
12. Select the **Find Now** button
13. Press and hold the **Ctrl** key on the keyboard
14. In the **Name** column, select the users definedfor the **RunSnapshotAgentAs** and **RunDistributionAgentAs** variables in the SMA_SetDBReplicationScriptingVariables.cmd file
15. Release the **Ctrl** key and select **OK**

16. Select **OK** again
17. In the Permissions for repldata window: Select the user defined for the **RunSnapshotAgentAs** variable
18. Select the **Change** option in the **Permissions** list
19. Select the user defined for the **RunDistributionAgentAs** variable
20. Select the **Read** option in the **Permissions** list

### Import the SMAReplication Schedules

Continuous provides the SMAReplication.MDB file as a transport database for the schedules and jobs to automate the replication processes.

#### Create a DSN for the Transport Database

The first time the utility is activated, there is a prompt to select a DSN for the Microsoft Access database. If this is not the first time the utility has been activated, log in to the OpCon database and then create the DSN for the SMAUtility database and the AdHoc database.

1. Log in to the Primary SAM application server as a local administrative user
2. Use menu path: **Start \> Programs \> Opconxps \> Utilities \> Schedule Import Export**
3. Select the **ODBC** button
4. Select the **System DSN** tab and select **Add**
5. Select **Microsoft Access Driver (\*.mdb)** in the list and select **Finish**
6. Enter *SMAReplication* in the **Data Source Name** text box
7. *(Optional)* Enter a *description* in the **Description** text box and select **Select**

8. Go to the **Directories** frame
9. Browse to the **SMAReplication.MDB** file (e.g., C:\\Program Files\\OpConxps\\Utilities\\IMPEX.MDB)
10. Select the **.mdb** file then select **OK**
11. Select **OK**(again)
12. Select **OK**
13. Select **OK**

#### Log In to the Schedule Import Export Utility to Import the SMAReplication Schedule

1. Enter, in the **User Login ID** field, any OpCon user account with privileges to import and export schedules (e.g., ocadm). For information on User Accounts, refer to [User Accounts](../../administration//user-accounts.md) in the **Concepts** online help
2. Enter the *password* for the user in the **Password** text box
3. Select the **OpCon database** in the **Data Source** field and select **OK**
4. Use menu path: **File \> Select Access DSN**
5. Select the new **SMAReplication datasource** in the list and select **OK**

#### Import the SMAReplication Schedules

1. Select on one of the four schedules in the **Transport Database** list box to select them all
2. Select the **Import from Transport Database** button on the toolbar
3. Select the **Machine** tab
4. Select the machine named **SMAReplicationPrimary**
5. Select the **Machine Name** of the *MSLSAM installed on the Primary OpCon server*
6. Select the machine named **SMAReplicationSecondary**
7. Select the **Machine Name** of the *MSLSAM installed on the Secondary OpCon server*

8. Select the **Import** button
9. Select **OK** on the warning message about Batch User IDs
10. Select **OK** on the termination message

### Configure the agent Machine Definitions

The agents on the Primary and Secondary SAM application servers must have certain configurations in the database for all replication jobs to run successfully. Complete the procedures below to make the required configurations.

#### Log in to the Primary Database from the Enterprise Manager

1. Use menu path: **Start \> Programs \> OpConxps \> Enterprise Manager**
2. Enter a *case-sensitive User Login ID* (e.g., ocadm) in the **Username** text box
3. Enter the *case-sensitive password* for the user in the **Password** text box
4. Select the **Profile to the Primary database** in the **Profile** list
5. Select **Login** to login to the Enterprise Manager

#### Configure the agent Machine Definitions

1. Select **Machines**
2. Select the **Primary Machine** in the **Select Machine** list
3. Right-click over the graphic and select **Stop Communication** from the menu

4. Select on **Open Advanced Settings Panel**
5. Select **Allow "Kill Job"**
6. Select **True** from the list and select **Update**
7. Select the **Communication Settings** tab
8. Select **JORS Port Number**

9. Enter the *JORS Port Number* as it is defined in the MSLSAM.ini file found in the agent's <Configuration Directory\>\\MSLSAM folder (e.g., 3110), and select **Update**
10. Select **Requires XML Escape Sequences**
11. Confirm the value for this setting is **True** and select **Accept**
12. Look at the value for the **SMA Communications Protocol**. If it is set to **Contemporary**,**XML**, continue with this procedure. If the parameter has any other value, contact <support@smatechnologies.com> for more information
13. Select the **File Transfer Settings** tab
14. Select **File Transfer**
15. Select **Two-way** in the list box and select **Update**
16. Select **File Transfer Port Number**
17. Enter the *same port number* as was entered for the JORS Port Number in Step 8 and select **Update**
18. Select **Save**

19. Right-click over the graphic and select **Start Communication** from the menu
20. Select the **Secondary Machine** in the **Select Machine** list
21. Repeat Steps 3 - 20

### Validate Property Definitions

The replication jobs use several OpCon Global Properties. The values for these properties must be configured correctly for the replication jobs to succeed.

#### Validate Property Definitions

1. In EM Navigation under Administration select **Global Properties**
2. On the Global Properties Editor: Select **SMAOpConDataPath** in the **Select Global Property** list box
3. In the **Global Property Value** text box, verify the path to the <Configuration Directory\> on the SAM Application server
   1. If the path differs from the default (i.e., C:\\ProgramData\\OpConxps\\), modify the value to match the correct path
   2. Select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**
4. Select **SMAOpConPath** in the **Select Global Property** list box
5. In the **Global Property Value** text box, verify the path to the Utilities folder on the SAM Application server
   1. If the path differs from the default (i.e., C:\\Program Files\\OpConxps\\), modify the value to match the correct path
   2. Select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**
6. Select **PrimaryDBUpdateKey** in the **Select Global Property** list box
7. Replace **SMA$usa** in the **Global Property Value** text box with the *sa password on the Primary Database Server*
8. Select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**
9. Select **FullDBBackupOn2ndary** in the **Select Global Property** list box
10. In the **Global Property Value** text box, verify the full path and file name of the full database backup file on the Secondary SAM Application Server as would be created by the SMADBBackup job
    1. If the path or file name differs, modify the value to match the correct path and filename
    2. Select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**
11. Select **FullDBBackupOnPrimary** in the **Select Global Property** list box
12. In the **Global Property Value** text box, verify the full path and file name of the full database backup file on the Primary SAM Application Server as would be created by the SMADBBackup job
    1. If the path or file name differs, modify the value to match the correct path and filename
    2. Select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**
13. Select **SecondaryDBUpdateKey** in the **Select Global Property** list box
14. Replace **SMA$usa** in the **Global Property Value** text box with the *sa password on the Secondary Database Server*
15. Select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**
16. Select **TLogBackupOn2ndary** in the **Select Global Property** list box
17. In the **Global Property Value** text box, verify the full path and file name of the transaction log backup file on the Secondary SAM Application Server as would be created by the SMATLogBackup job
    1. If the path or file name differs, modify the value to match the correct path and filename
    2. Select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**
18. Select **TLogBackupOnPrimary** in the **Select Global Property** list box
19. In the **Global Property Value** text box, verify the full path and file name of the transaction log backup file on the Primary SAM Application Server as would be created by the SMADBBackup job
    1. If the path or file name differs, modify the value to match the correct path and filename
    2. Select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**

### Configure the SMAReplicationSetup Schedule

By default, Continuous distributes the SMAReplicationSetup schedule with Pull Replication configured. The CreatePullSubscriptionOnPublisher and CreatePullSubscriptionOnSubscriber jobs are active by default. If Push Replication will be used, modify the job frequencies to disable the Pull jobs and enable the CreatePushSubscriptionOnPublisher job.

#### Configure the SMAReplicationSetup Jobs for Push Replication

1. Select **Job Master**
2. Select **SMAReplicationSetup** in the **Schedule** list
3. Select **CreatePullSubscriptionOnPublisher** in the **Job** list

4. Select the **Frequency** tab
5. Select the **Do Not Schedule** radio button in the **Job Build Status** frame and select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**
6. Select **CreatePullSubscriptionOnSubscriber** in the **Job** list
7. Select the **Do Not Schedule** radio button and select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**
8. Select **CreatePushSubscriptionOnPublisher** in the **Job** list

9. Select the **Release** radio button and select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**

### Configure the SMAReplicationMonitor Schedule

The SMAReplicationMonitor schedule must run every day to ensure replication runs without interruption. If either monitor job fails, notifications should be configured so an administrator can address the problem and restart replication.

#### Configure the SMAReplicationMonitor Schedule for Auto-Build and Delete

1. Select **Schedule Master**
2. Select **SMAReplicationMonitor** in the **Schedule** list
3. Select the **Auto Build** option
4. Enter *1* or any *desired value* for the **days in advance** to build
5. Enter *1* or any *desired value* for the number of **days** to build
6. Select the **Auto Delete** option
7. Enter *1* or any *desired value* for the **days ago** to delete
8. Select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**

#### Set up Notifications for the SMAReplicationMonitor Jobs

The following procedure configures text messages through job level events. The notification can be any $NOTIFY type event and could instead be managed through ENS if desired. For information on ENS, refer to [Event Notification](../../notifications/Components.md) in the **Concepts** online help.

:::caution
If notifications are not configured on the SMAReplicationMonitor jobs, replication could fail without anyone noticing. While the method described below need not be used, Continuous **strongly** recommends that some form of automatic notification be configured.
:::

1. In EM Navigation under Administration: Select **Job Master**

2. In the Job Master editor under the Selection section: Select **SMAReplicationMonitor** in the **Schedule** list
3. Select **MonitorDistributionAgent** in the **Job** list
4. In the Job Properties section: Select the **Events** tab
5. On the Events tab: Select **Add**
6. On the Event Definition dialog: Select the **$NOTIFY:TEXTMSG** template in the **Event Template** list

7. Select **Failed** in the **Job Status** list
8. Below the Job Status list:
   1. Replace **<to\>** with the *email address to a cell phone number*
   2. Replace **<message\>** with the message to deliver in the text. Continuous recommends the following     message: `Replication has failed on the OpConxps database. The [[$JOB NAME]] job has failed.`
   :::note
   The finished event string would read:

   `$NOTIFY:TEXTMSG,5551212@cellprovider.com,Replication has failed on the OpConxps database. The [[$JOB NAME]] job has failed.`
   :::
   3. Select all of the text defined for the <to\> and <message\> (all of the text should be highlighted gray)
   4. Press **Ctrl + C** on the keyboard to copy the text for use with the next job
   5. Select **OK**
9. Under the Selection section: Select **MonitorLogReaderAgent** in the **Job** list
10. On the Events tab: Select **Add**
11. On the Event Definition dialog: Select the **$NOTIFY:TEXTMSG** template in the **Event Template** list
12. Select **Failed** in the **Job Status** list
13. Select in the field below the **Job Status** list and press **Ctrl + V** on the keyboard to paste the text from the previous event definition (refer to Step 8d)
14. Modify the *email address* and *message* if desired and select **OK**

### Configure the SMAReplicationTearDown Schedule

By default, Continuous distributes the SMAReplicationTearDown schedule with Pull Replication configured. The DropPullSubscriptionOnSubscriber and DropPullSubscriptionOnPublisher jobs are active by default. If Push Replication will be used, modify the job frequencies to disable the Pull jobs and enable the DropPushSubscriptionOnPublisher and DropPushSubscriptionOnSubscriber jobs.

#### Configure the SMAReplicationTearDown Jobs for Push Replication

1. Select **Job Master** (if not already open)
2. Select **SMAReplicationTearDown** in the **Schedule** list
3. Select **DropPullSubscriptionOnSubscriber** in the **Job** list

4. Select the **Frequency** tab
5. Select the **Do Not Schedule** radio button in the **Job Build Status** frame and select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**
6. Select **DropPullSubscriptionOnPublisher** in the **Job** list
7. Select the **Do Not Schedule** radio button and select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**
8. Select **DropPushSubscriptionOnPublisher** in the **Job** list

9. Select the **Release** radio button and select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**
10. Select **DropPushSubscriptionOnSubscriber** in the **Job** list
11. Select the **Release** radio button and select ![Save icon](../../Resources/Images/EM/EMsave.png "Save icon") **Save**

## Automated Replication Setup

Continuous provides two schedules to use for the automated replication setup:

- [SMAReplicationSetup](#SMARepli)
- [SMAReplicationMonitor](#SMARepli2)

### SMAReplicationSetup Schedule Definition

The SMAReplicationSetup schedule runs on demand when initially setting up replication, when the primary server comes back online after an outage, or after a failover event. The schedule consists of five OpCon jobs:

- [SetUpDistributor](#SetUpDis)
- [SetUpPublisher](#SetUpPub)
- [CreatePullSubscriptionOnSubscriber](#CreatePu)
- [CreatePullSubscriptionOnPublisher](#CreatePu2)
- [CreatePushSubscriptionOnPublisher](#CreatePu3)
- [StartSnapshotAgent](#StartSna)

#### SetUpDistributor

The SetUpDistributor job runs SMA_DBReplicationSetUpDistributor.sql via SMA_DBReplicationSetUpDistributor.cmd. This job configures the distributor, creates the distribution database, adds the replication housekeeping jobs to SQL Server Agent, and adds the Snapshot Agent job and LogReader Agent job to the SQL Server Agent on the distributor instance.

The log file is placed in the directory configured in the SQLScriptOutputDirectory scripting variable, named `<PublicationName>_ReplicationSetUpDistributor.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### SetUpPublisher

The SetUpPublisher job runs SMA_DBReplicationSetUpPublisher.sql via SMA_DBReplicationSetUpPublisher.cmd. This job configures the publisher server, enables the OpCon database for publishing, creates the publication, and adds the articles to be published.

The log file is named `<PublicationName>_ReplicationSetUpPublisher.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### CreatePullSubscriptionOnSubscriber

The CreatePullSubscriptionOnSubscriber job runs SMA_DBReplicationCreatePullSubscriptionOnSubscriber.sql via SMA_DBReplicationCreatePullSubscriptionOnSubscriber.cmd. This job creates the pull subscription on the subscriber server and adds the distribution agent job to SQL Server Agent on the subscriber instance.

The log file is named `<PublicationName>_SubscriberCreatePullSubscription.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### CreatePullSubscriptionOnPublisher

The CreatePullSubscriptionOnPublisher job runs SMA_DBReplicationCreatePullSubscriptionOnPublisher.sql via SMA_DBReplicationCreatePullSubscriptionOnPublisher.cmd. This job creates the pull subscription information on the publisher server.

The log file is named `<PublicationName>_CreatePullSubscriptionOnPublisher.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### CreatePushSubscriptionOnPublisher

The CreatePushSubscriptionOnPublisher job runs SMA_DBReplicationCreatePushSubscriptionOnPublisher.sql via SMA_DBReplicationCreatePushSubscriptionOnPublisher.cmd. This job creates the push subscription on the publisher server. By default, this job's frequency is set to Do Not Schedule because Pull subscription is enabled by default. To use Push subscription, set this job to a Release build status and change the Pull subscription jobs to Do Not Schedule. For information, refer to [Configure the SMAReplicationSetup Jobs for Push Replication](#Configure_the_SMAReplicationSetup_Jobs_for_Push_Replication).

The log file is named `<PublicationName>_CreatePushSubscriptionOnPublisher.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### StartSnapshotAgent

The StartSnapshotAgent job runs SMA_DBReplicationStartSnapshotAgent.cmd. This job uses the SMASQLDMOApp.exe utility to start the Snapshot Agent on the distributor server so that the initial snapshot of the OpCon database is created.

The log file is named `StartSnapshotAgent.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

### SMAReplicationMonitor Schedule Definition

This schedule runs every day to continuously monitor the log reader agent and distribution agent SQL Server Agent jobs. The schedule consists of 2 OpCon jobs.

#### MonitorDistributionAgent

The MonitorDistributionAgent job runs SMA_DBReplicationMonitorDistributionAgent.cmd. This job uses SMASQLDMOApp.exe to monitor the Distribution Agent and verify that it is running continuously. For pull subscriptions the Distribution Agent runs on the subscriber server; for push subscriptions it runs on the distributor server. The job automatically detects the subscription type and runs against the correct SQL instance.

If this job fails, review the SQL Server Agent Error Logs in Microsoft SQL Server Management Studio under the SQL Server Agent in the Error Logs folder.

#### MonitorLogReaderAgent

The MonitorLogReaderAgent job runs SMA_DBReplicationMonitorLogReaderAgent.cmd. This job uses SMASQLDMOApp.exe to monitor the LogReader Agent on the distributor server and verify that it is running continuously.

If this job fails, review the SQL Server Agent Error Logs in Microsoft SQL Server Management Studio under the SQL Server Agent in the Error Logs folder.

### Building and Running the Replication Setup Schedules

After meeting all of the [Prerequisites](#Prerequi) and completing the [Configuration](#Configur7), replication can be set up any time by building the SMAReplicationSetup and SMAReplicationMonitor schedules. Complete the procedures in this section to set up replication.

#### Build the Replication Schedules On Hold

On any machine with an OpCon Enterprise Manager, complete the following
steps:

1. [Log in to the Primary Database from the Enterprise Manager](#Log_in_to_the_Primary_Database_from_the_Enterprise_Manager)
2. Select **Schedule Build**
3. Select the **SMAReplicationSetup** schedule in the **Schedule Selection** frame
4. Accept the default options so that the schedules will build for today
5. Select the **Overwrite existing schedules** option and select **Build**
6. Accept the default selection to build the schedule On Hold and select **OK**
7. Select the **SMAReplicationMonitor** schedule in the **Schedule Selection** frame
8. Accept the default date for the **Start** date (today)
9. In the **Stop** date, select **tomorrow's date** from the calendar
10. Select the **Overwrite** option and select **Build**
11. Accept the default selection to build the schedule On Hold and select **OK**
12. Select **Close ☒**

#### Run the SMAReplicationSetup Schedule

1. Select **List**
2. Select **today's date**

3. In the tree view under the date, select the **SMAReplicationSetup** schedule to see the jobs
4. Right-click the **SMAReplicationSetup** schedule and select **Release** from the menu
5. Wait for all jobs to finish with a status of Finished OK. If any jobs fail, review the log files to determine the reason for failure. Fix the error then restart the failed job
6. After all jobs have Finished OK, review the log files for each job to ensure replication is set up correctly. Microsoft SQL Server procedures for setting up replication do not always return error codes to scripts. For information on the log files to review, see the definitions of each job within the [SMAReplicationSetup Schedule Definition](#SMARepli)

#### Run the SMAReplicationMonitor and Configure it for Daily Monitoring

After replication is successfully set up through the SMAReplicationSetup schedule, complete the steps below to automatically monitor the replication status.

1. Select the **SMAReplicationMonitor** schedule (in the tree view under *today's date)* to see the jobs
2. Right-click the **SMAReplicationMonitor** schedule and select **Release** from the menu

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

The KillReplicationMonitors job stops the jobs running on the SMAReplicationMonitor schedule before replication is stopped by the other jobs. The job is a NULL job that Finishes OK and then triggers the $JOB:KILL events.

#### DropPullSubscriptionOnSubscriber

The DropPullSubscriptionOnSubscriber job runs SMA_DBReplicationDropPullSubscriptionOnSubscriber.sql via SMA_DBReplicationDropPullSubscriptionOnSubscriber.cmd. This job drops the pull subscription from the subscriber server and removes the distribution agent job from SQL Server Agent on the subscriber instance.

The log file is named `<PublicationName>_SubscriberDropPullSubscription.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

When this job Finishes OK, replication has stopped and any information processed on the publisher server will not be sent to the subscriber server.

#### DropPullSubscriptionOnPublisher

The DropPullSubscriptionOnPublisher job runs SMA_DBReplicationDropSubscriptionOnPublisher.sql via SMA_DBReplicationDropSubscriptionOnPublisher.cmd. This job drops the pull subscription from the publisher server.

The log file is named `<PublicationName>_DropSubscriptionOnPublisher.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### DropPushSubscriptionOnPublisher

The DropPushSubscriptionOnPublisher job runs SMA_DBReplicationDropSubscriptionOnPublisher.sql via SMA_DBReplicationDropSubscriptionOnPublisher.cmd. This job drops the push subscription from the publisher server. By default, this job's frequency is set to Do Not Schedule because Pull subscription is enabled by default. To use Push subscription, set this job to a Release build status and change the Pull subscription jobs to Do Not Schedule. For information, refer to [Configure the SMAReplicationTearDown Jobs for Push Replication](#Configure_the_SMAReplicationTearDown_Jobs_for_Push_Replication).

The log file is named `<PublicationName>_DropSubscriptionOnPublisher.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

When this job Finishes OK, replication has stopped and any information processed on the publisher server will not be sent to the subscriber server.

#### DropPushSubscriptionOnSubscriber

The DropPushSubscriptionOnSubscriber job runs SMA_DBReplicationDropPushSubscriptionOnSubscriber.sql via SMA_DBReplicationDropPushSubscriptionOnSubscriber.cmd. This job cleans up metadata about the push subscription on the subscriber server. By default, this job's frequency is set to Do Not Schedule because Pull subscription is enabled by default. To use Push subscription, set this job to a Release build status and change the Pull subscription jobs to Do Not Schedule. For information, refer to [Configure the SMAReplicationTearDown Jobs for Push Replication](#Configure_the_SMAReplicationTearDown_Jobs_for_Push_Replication).

The log file is named `<PublicationName>_SubscriberDropPushSubscription.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### RemovePublisher

The RemovePublisher job runs SMA_DBReplicationRemovePublisher.sql via SMA_DBReplicationRemovePublisher.cmd. This job drops the published articles from the publication, drops the publication, disables replication on the OpCon database, and drops the subscriber SQL Server instance as a registered subscriber on the publisher instance.

The log file is named `<PublicationName>_RemoveReplicationPublisher.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors.

#### RemoveDistributor

The RemoveDistributor job runs SMA_DBReplicationRemoveDistributor.sql via SMA_DBReplicationRemoveDistributor.cmd. This job drops the publisher at the distributor, drops the distribution database, disables distribution on the distributor, and removes the LogReader Agent job and Distribution Agent job from SQL Server Agent on the distributor.

The log file is named `<PublicationName>_RemoveReplicationDistributor.log`. After the job finishes, review this log file for errors, paying special attention to SQL Server errors. When this job Finishes OK, replication has been disabled on the primary server. The next jobs prepare the secondary server to take over processing.

#### RunDBUpdateCmdOnSecondary

The RunDBUpdateCmdOnSecondary job runs DB_Update.cmd, which runs the following SQL scripts:

- Schema_Install.sql
- SMALOOKUP_Update.sql
- DBFuncs_Install.sql
- DBProcs_Install.sql
- PDSAFramework.sql
- PDSAFrameworkData.sql

This job ensures all primary keys and object permissions are applied to the OpCon database on the subscriber server, and that the database functions, stored procedures, and pertinent OpCon system data tables are current.

#### StopSMAServiceManagerOnPrimary

The StopSMAServiceManagerOnPrimary job runs SMA_StopServiceManager.cmd to stop the SMA Service Manager Windows service on the primary server. This job is optional and can be disabled if the SMA Service Manager will be stopped manually.

If anyone is still logged in to a graphical interface with its DSN pointing at the primary OpCon database, the StopSMAServiceManagerOnPrimary job will stay in a Job Running state because the database cannot be updated after the SMA Service Manager stops.

### Building and Running the SMAReplicationTearDown Schedule

After meeting all of the [Prerequisites](#Prerequi) and completing the [Configuration](#Configur7), replication can be disabled any time by building the SMAReplicationTearDown schedule. Complete the procedures in this section to tear down replication.

#### Build the SMAReplicationTearDown Schedule On Hold

On any machine with an OpCon Enterprise Manager, complete the following steps:

1. [Log in to the Primary Database from the Enterprise Manager](#Log_in_to_the_Primary_Database_from_the_Enterprise_Manager)
2. Select **Schedule Build**
3. Select the **SMAReplicationTearDown** schedule in the **Schedule Selection** frame
4. Accept the default options so the schedules will build for today
5. Select the **Overwrite existing schedules** option and select **Build**
6. Accept the default selection to build the schedule On Hold and select **OK**
7. Select **Close ☒**

#### Run the SMAReplicationTearDown Schedule

1. Select **List**
2. Select **today's date**

3. In the tree view under the date, select the **SMAReplicationTearDown** schedule to see the jobs
4. Right-click the **SMAReplicationTearDown** schedule
5. Select **Release** from the menu
6. Wait for all jobs to finish with a status of Finished OK. If any jobs fail, review the log files to determine the reason for failure. Fix the error and then restart the failed job
7. After all jobs have Finished OK, review the log files for each job to ensure replication is disabled completely. Microsoft SQL Server procedures for disabling replication do not always return error codes to scripts. For information on the log files to review, refer to the definitions of each job within the [SMAReplicationTearDown Schedule Definition](#SMARepli3)

#### Fail Over to the Subscribing Database and Secondary SMAServMan

If the SMA Service Manager should begin processing on the secondary server, configure the SMA Service Manager on the secondary server then complete the following steps to start the service:

1. Log on to the *Secondary SAM application server* as a local administrative user
2. Use menu path: **Start \> Control Panel**
3. Select **Administrative Tools**
4. Select the **Services** icon
5. Select the **SMA OpCon Service Manager** service
6. Select **Automatic (Delayed Start)** in the **Startup type** list
7. Select **OK**

8. Select **Start** to start the service and select **Close ☒** on the **Services** window
9. Use menu path: **Start \> Programs \> OpConxps \> Log Monitors \>** *Log File*. To Go to the Log files
10. Open the SMANetCom.log, SAM Critical.log, and SAM.log to verify that the *Secondary Server* is processing normally
11. When the SAM-SS is processing normally with the *Subscribing database*, all graphical interfaces should connect to the *Subscribing database* for production processing until the OpCon administrator indicates that the *Publishing Database Server* is available again

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

The TransferFullDBBackupToPrimary job uses Continuous' File Transfer feature to move the secondary database's backup file to the primary server as a binary file.

#### TransferTLogBackupToPrimary

The TransferTLogBackupToPrimary job uses Continuous' File Transfer feature to move the secondary database's transaction log file to the primary server as a binary file.

#### RestoreDatabaseOnPrimary

The RestoreDatabaseOnPrimary job runs SMA_DBReplicationRestoreDBOnPublisher.cmd to restore the database from the subscriber server onto the publisher server.

There are three steps to the RestoreDatabaseOnPrimary SQL job:

1. Kill any database sessions that may be logged in at the time
2. Restore the database
3. Delete the replication stored procedures (sp_MS...) from the database

#### RunDBUpdateCmdOnPrimary

TheRunDBUpdateCmdOnPrimary job runs DB_Update.cmd, which runs the following SQL scripts:

- Schema_Install.sql
- SMALOOKUP_Update.sql
- DBFuncs_Install.sql
- DBProcs_Install.sql
- PDSAFramework.sql
- PDSAFrameworkData.sql

This job ensures all primary keys and object permissions are applied to the OpCon database on the publisher server, and that the database functions, stored procedures, and pertinent OpCon system data tables are current.

#### StopSMAServiceManagerOnSecondary

The StopSMAServiceManagerOnSecondary job runs SMA_StopServiceManager.cmd to stop the SMA Service Manager Windows service on the secondary server. This job is optional and can be disabled if the SMA Service Manager will be stopped manually.

If anyone is still logged in to a graphical interface with its DSN pointing at the primary OpCon database, the StopSMAServiceManagerOnSecondary job will stay in a Job Running state because the database cannot be updated after the SMA Service Manager stops.

### Building and Running the SMAReplicationRecoverToPrimary Schedule

After meeting all of the [Prerequisites](#Prerequi) and completing the [Configuration](#Configur7), processing can be restored to the primary server any time by building the SMAReplicationRecoverToPrimary schedule. Complete the procedures in this section to recover processing to the primary server.

#### Build the SMAReplicationRecoverToPrimary Schedule On Hold

On any machine with an OpCon Enterprise Manager, complete the following steps:

1. [Log in to the Primary Database from the Enterprise Manager](#Log_in_to_the_Primary_Database_from_the_Enterprise_Manager)
2. Select **Schedule Build**
3. Select the **SMAReplicationRecoverToPrimary** schedule in the **Schedule Selection** frame
4. Accept the default options so the schedules will build for today
5. Select the **Overwrite existing schedules** option and select **Build**
6. Accept the default selection to build the schedule **On Hold** and select **OK**
7. Select **Close ☒**

#### Run the SMAReplicationTearDown Schedule

1. Select **List**
2. Select **today's date**

3. Select the **SMAReplicationRecoverToPrimary** (in the tree view under the date) schedule to see the jobs
4. Right-click the **SMAReplicationRecoverToPrimary** schedule and select **Release** from the menu
5. Wait for all jobs to finish with a status of Finished OK. If any jobs fail, review the log files to determine the reason for failure. Fix the error and then restart the failed job

#### Start the SMA Service Manager on the Primary Server

After properly configuring the SMA Service Manager on the primary server, complete the following steps to start the service:

1. Use menu path: **Start \> Control Panel**
2. In the Control Panel window: Select the **Administrative Tools** icon
3. In the Administrative Tools window: Select the **Services** icon
4. In the Services window: Scroll down to the **SMA OpCon Service Manager** service
5. Change the *SMAServMan's* **Startup Type** to **Automatic (Delayed Start)** using the following steps:
   1. Select on **SMA OpCon Service Manager**
   2. Select **Automatic (Delayed Start)** in the **Startup type** list and select **OK**
6. In the Services List: Select on **SMA OpCon Service Manager** and select **Start**
7. Use menu path: **Start \> Programs \> OpConxps \> Log Monitors \>Log File Name**
8. View the SMAServMan, SAM, Critical, SMANetCom, and SMANetComTrace logs to verify that the SAM and SMANetCom connected successfully to the database

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## Operations

### Monitoring
- After starting the SMA Service Manager on the primary server, view the SMAServMan, SAM, Critical, SMANetCom, and SMANetComTrace logs to verify SAM and SMANetCom connected successfully to the database.
- Before releasing the `SMAReplicationRecoverToPrimary` schedule, ensure all other OpCon schedules are On Hold and no jobs are running.

### Common Tasks
- To recover to the primary server, release the `SMAReplicationRecoverToPrimary` schedule from the List view; wait for all jobs to finish with **Finished OK** status. If any jobs fail, review log files, fix the error, and restart the failed job.
- Do not change the distributor_admin password manually; always use `sp_changedistributor_password`, Distributor Properties, or the Update Replication Passwords dialog in SQL Server Management Studio. If changed manually, update the `DistributorKey` in `SMA_SetDBReplicationScriptingVariables.cmd` to match.
- Each replication agent (Snapshot, Log Reader, Distribution) should run under a different Windows account with Windows authentication; scripts provided by Continuous automatically grant the required database privileges, but folder share permissions must be configured manually.

### Alerts and Log Files
- If any jobs in the `SMAReplicationRecoverToPrimary` schedule fail, review the relevant log files to determine the failure cause before restarting the failed job.

## FAQs

**Q: How many steps does the Setup for Automatic Microsoft SQL Replication procedure involve?**

The Setup for Automatic Microsoft SQL Replication procedure involves 262 steps. Complete all steps in order and save your changes.

**Q: What does Setup for Automatic Microsoft SQL Replication cover?**

This page covers Prerequisites, Considerations, Configuration.

## Glossary

**JORS (Job Output Retrieval System)**: The system used to retrieve and display job output — logs and reports — from agent machines directly within the OpCon graphical interfaces.

**DSN (Data Source Name)**: An ODBC connection identifier that stores database connection parameters. OpCon utilities use system DSNs to connect to the OpCon SQL Server database.

**SMANetCom (SMA Network Communications Module)**: Handles TCP/IP communication of platform-specific automation information between SAM and all agents. Uses database tables to maintain reliable communication and data integrity.

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.
