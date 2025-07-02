---
sidebar_label: 'Manual Setup for Replication'
---

# Manual Setup for Microsoft SQL Replication

This section covers the manual steps for setting up Microsoft SQL Replication.

Database replication is one of the options provided by SQL Server to improve the availability of a database. Database replication is based on a publishing industry metaphor and there are three roles to be fulfilled in a database replication topology: publisher, distributor, and subscriber. There are three types of replication that can be used: transactional, merge, and snapshot.

OpCon makes use of transactional replication to distribute data from the production database to the failover database. Data moves from the publisher to the distributor, and from there, it can be either "pushed" to the subscriber by the distributor or "pulled" from the distributor by the subscriber.

This topic assumes that the publisher and subscriber will be distinct instances of SQL Server on physically separate machines while the distributor may be on it's own instance of SQL Server or it may share an instance of SQL Server with either the publisher or subscriber.

## Requirements

Verify that the following is set up **prior** to attempting transactional replication on the Publishing OpCon Database Server:

- The OpCon database server must have Microsoft SQL Server or Enterprise edition installed.
- The version of SQL Server on the distributor must be the same or later than the version of SQL Server on the publisher
- Both the Publishing and Subscribing OpCon databases must have the Recovery model set to Full.
- The MSSQLSERVER service must be running as a domain user with local administrative rights, not as system.

## Publishing and Subscribing Servers

The Publication Server is the server containing the primary OpCon database. This is referred to throughout this section as the "Publishing Database Server". The Subscription Server is any other SQL server that should contain a copy of the OpCon database. This is referred to throughout this section as the "Subscribing Database Server".

### Registering the Database Servers

If absent from the SQL Server group, register the publishing and/or subscribing database servers for SQL to recognize the servers.

#### Register Database Servers

On the Desired Database Server:

1. Log in as a local administrative user.
2. Use menu path: **Start \> All Programs \> SQL Server Management Studio**.
3. Select **Database Engine** in the **Server type** drop-down list.
4. Select the desired \[OpCon Database Server\] in the **Server name** drop-down list.
5. Select one of the following options in the **Authentication**drop-down list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority.
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box.
6. Click the **Connect** button.

##### Register the Database Server

1. In the Microsoft SQL Server Management Studio window: Click the toolbar menu path: **View \> Registered Servers**.
2. In the Registered Servers frame: Expand (+) the **Database Engine**.
3. Right-click **Local Server Groups** and select **New Server Registration** from the menu.
4. In the New Server Registration window: Enter or select the **server name** in the **Server name** drop-down list.
5. If selecting the server name and it is not in the list, select **<Browse for more....\>**.
6. In the Browse for Servers window: Browse through the **Local Servers** or **Network Servers** to find the server.
7. Click on the **server** and click **OK**.
8. In the New Server Registration window: Select one of the following options in the **Authentication** drop-down list:
   - **Windows Authentication** to log in with the current Windows User with local administrative authority on the target server.
   - **SQL Server Authentication** then enter *sa* in the **Login** text box and the *sa's password* in the **Password** text box.
9. Click the **Test** button. Make sure the connection results are successful.
10. In the New Server Registration pop-up window: Click **OK**.
11. In the New Server Registration window: Click **Save**.

### Publication

In replication, the publishing database publishes to a subscriber. Set up the OpCon database as a publisher in order to produce the subscribing database.

#### Setting up a Publisher

Perform the following procedure to enable and to configure publication of the OpCon database.

##### Enable the Publisher

To use this procedure, refer to [Log into SQL Management Studio](#Login_to_SQL_Management_Studio) on the *Publishing Server*.

In the Microsoft SQL Server Management Studio:

1. Use menu path: **View \> Object Explorer**.
2. In the Object Explorer frame: Expand the **Replication** folder
3. Right-click the **Local Publications** folder and select **New Publication**.
4. On the New Publication Wizard Welcome screen: Click **Next**.
5. If publishing has not yet been enabled for the server, complete:
   - On the Distributer screen:
     1. Select the **desired Distributor**.
     2. Click **Next**.
     3. Select the **Yes, configure the SQL Server Agent service to start automatically** radio button and click **Next**.
     4. Confirm the folder for the snapshot in the **Snapshot folder** text box and click **Next**.
6. Click the **OpCon Database** and click **Next**.
7. On the Publication Type screen: Select **Transactional Publication** and click **Next**.
8. On the Articles screen: Select **Tables** under *Objects to Publish* and click **Next**.
9. On the Filter Table Rows screen: Click **Next**.
10. On the Snapshot Agent screen: Select the **Create a snapshot immediately and keep the snapshot
available to initialize subscriptions** checkbox and click **Next**.
11. On the Agent Security screen: Click the **Security Settings** button for the *Snapshot Agent*.
12. On the Snapshot Agent Security screen: Select the **Run under the SQL Server Agent service account** radio button.
13. Select the **Using the following SQL Server login** radio button .
14. Enter the *Login name* for the SQL Server (preferably the sa account or its equivalent) in the **Login** text box.
15. Enter the *password* for the login in the **Password** text box.
16. Reenter the *password* for the login in the **Confirm Password** text box and click **OK**.
17. On the Agent Security screen: Clear the **Use the security settings from the Snapshot Agent** checkbox and click **Next**.
18. On the Wizard Actions screen: Select the **Create the publication** checkbox and click **Next**.
19. On the Complete the Wizard screen: Enter a *Publication name* and click **Finish**.
    :::note
    On the Create Publications screen, the goal is to see "Success" with 0 Errors and 0 Warnings. If errors are present, rerun the New Publication Wizard process.
    :::
20. Click **Close**.

### Subscription

In replication, the subscribing database subscribes to the publication on the publishing database. Set up an additional database as a subscriber in order to produce the secondary database.

#### Setting up a Subscription

Determine the subscription type and perform the appropriate procedure to create a subscription for the OpCon database publication.

##### Deciding on a Subscription Type

There are two types of Subscriptions that can be configured: Push and Pull. SMA Technologies fully supports both types of subscriptions. Please review the following information to decide which method to employ.

###### Considering Push Subscriptions

The following is an excerpt from the SQL Server Books Online regarding Push Subscriptions:

- Use push subscriptions when:
  - Data will typically be synchronized on demand or on a frequently recurring schedule.
  - Publications require near real-time movement of data without polling.
  - The higher processor overhead at a Publisher using a local Distributor does not affect performance.
  - You need easier administration from a centralized location (the Distributor).
  - The centralized Distributor will establish the schedule on which connections will be made with remote, occasionally connected Subscribers. With push subscriptions, the Distribution Agent (for snapshot and transactional publications) or the Merge Agent (for merge publications) runs at the Distributor. However, if you need to off load agent processing from the Distributor but retain some of the benefits of easier administration, you can run the agent at the Subscriber.
  - Source: "Push Subscriptions", in SQL Server Books Online Version 8.00.000 \[HTML Help file\] Microsoft Corporation, Seattle, WA.

###### Considering Pull Subscriptions

The following is an excerpt from the SQL Server Books Online regarding Pull Subscriptions:

- Use pull subscriptions when:
  - Administration of the subscription will take place at the Subscriber.
  - The publication has a large number of Subscribers (for example, Subscribers using the Internet), and when it would be too resource-intensive to run all the agents at one site or all at the Distributor.
  - Subscribers are autonomous, disconnected, and/or mobile. Subscribers will determine when they will connect to the Publisher/Distributor and synchronize changes.
  - Data will typically be synchronized on demand or on a schedule rather than continuously. One feature of pull subscriptions is that the Distribution Agent for snapshot and transactional publications and the Merge Agent for merge publications all run at the Subscriber. This can result in a reduction of the amount of processing overhead on the Distributor.
  - Source: "Push Subscriptions", in SQL Server Books Online Version 8.00.000 \[HTML Help file\] Microsoft Corporation, Seattle, WA.

##### First Option: Setting Up a Push Subscription

If a *Push Subscription* is the best choice for this environment, complete the steps below. If *Pull Subscription* is the best choice for this environment, skip the steps below and refer to [Set Up a Pull Subscription](#Set_Up_a_Pull_Subscription).

To use this procedure, refer to [Log into SQL Management Studio](#Login_to_SQL_Management_Studio) on the *Publishing Server*.

1. Go to the **Object Explorer** frame.
2. Expand (+) the **Replication** folder.
3. Right-click the **Local Subscriptions** folder and select **New Subscriptions**.
4. Click **Next**.
5. Leave the **Run all agents at the Distributor, <Server name\> \[push subscriptions\]** radio button selected and click **Next**. 
6. If the secondary server is not available, click the **Add Subscriber** button.
7. Select **Add SQL Server Subscriber**.
8. Enter the *<Subscribing Server name\>*.
9. Select the checkbox beside the **subscriber** you wish to use.
10. Select the **subscribing database** in the **Subscription Database** drop-down list and click **Next**.
11. Click the **ellipsis** button (\...).
12. Select the **Run under the SQL Server Agent service account** radio button.
13. Select the **Using the following SQL Server login** radio button under *Connect to the Subscriber*.
14. Enter the *Login name* for the sa account or its equivalent in the **Login** text box.
15. Enter the *Password* for the sa account in the **Password** text box.
16. Reenter the *password* for the sa account in the **Confirm Password** text box and click **OK**.
17. Click **Next**.
18. Accept the *Run Continuously* default for the Agent Schedule and click **Next**.
19. Select the checkbox under *Initialize*.
20. Select **Immediately** in the **Initialize When** drop-down list.
21. Click **Next**.
22. Select the **Create the subscription(s)** checkbox and click **Next**.
23. Click **Finish**.
24. Watch until it completes successfully and click **Close ☒**.

##### Second Option: Setting Up a Pull Subscription

If a *Pull Subscription* is the best choice for this environment, complete the steps below. If a *Push Subscription* is the best choice for this environment, skip the steps below and refer to [Set Up a Push Subscription](#Set_up_a_Push_Subscription).

To use this procedure, refer to [Log into SQL Management Studio](#Login_to_SQL_Management_Studio) on the *Subscribing Server*.

1. Go to the **Object Explorer** frame.
2. Expand (+) the **Replication** folder.
3. Right-click the **Local Subscriptions** folder and select **New Subscriptions**.
4. On the New Subscriptions Wizard welcome screen: Click **Next**.
5. On the Publication screen: Select the <Find SQL Server Publisher\> in the **Publisher** drop-down list.
6. On the Connect to Server screen: Select the desired **server name** in the **Server name** combo box.
7. Select **SQL Server Authentication** in the **Authentication** drop-down box.
8. Enter the desired *Login ID* in the **Login** combo box.
9. Enter a valid *password* for the Login ID in the **Password** text box.
10. Click the **Connect** button.
11. On the Publication screen: Go to the **Databases and publications** frame.
12. Expand (+) the **database** and select the **publication** the subscription is going to be assigned to.
13. Click **Next**.
14. On the Distribution Agent Location screen: Select the **Run each agent at its Subscriber \[pull subscriptions\]** radio button and click **Next**.
15. On the Subscribers screen: Select the **subscriber** checkbox you wish to use.
16. Select the **subscribing database** in the **Subscription Database** drop-down list.
17. To create a new database:
    1. Select **<New Database\...\>** in the **Subscription Database** drop-down list.
    2. Enter a *Database name* in the **Database name** text box. You can leave the rest at default and click **OK**.
    3. Make sure the *new database* is selected in the **Subscription Database** drop-down list.
18. To add an additional subscriber:
    1. Click the **Add SQL Server Subscriber** button.
    2. Select the **Add SQL Server Subscriber**in the **Add Subscriber** drop-down list.
19. On the Connect to Server screen: Select the **Subscribing Server name**in the **Server name** drop-down list.
    1. Select **<Browse for more\>**if the desired server is not in the list.
    2. Click the **Network Servers** tab.
    3. (+) Expand the **Database Engine**.
    4. Scroll through the list and select the **desired server** and click **OK**.
20. Select **SQL Server Authentication** in the **Authentication** drop-down list.
    1. Enter the *login name* for the server in the **Login** combo box. 
    2. Enter *Password* for the login in the **Password** text box.
    3. Click the **Connect** button.
21. On the Subscribers screen: Select the **new subscribing database** checkbox.
    1. Select the **subscribing database** in the **Subscription Database** drop-down list.
    2. Click **Next**.
22. On the Distribution Agent Security screen: Click the **ellipsis** button (\...) next to the first subscriber.
23. In the Distribution Agent Security window:
    1. Leave the **Run under the following Windows account** radio button selected.
    2. Enter your *domain account* in the **Process account** text box.
    3. Enter your *domain account password*in the **Password** text box.
    4. Reenter your *domain account password*in the **Confirm Password** text box.
    5. Leave everything else at default and click **OK**.
24. Repeat this process for each of the subscribers and click **Next**.
25. On the Synchronization Schedule screen: Accept **Run Continuously** in the **Agent Schedule** drop-down list and click **Next**.
26. On the Initialize Subscriptions screen: Select the **Initialize** checkbox.
27. Select **Immediately** in the **Initialize When** drop-down list and click **Next**.
28. On the Wizard Actions screen: Select the **Create the Subscription** checkbox and click **Next**.
29. On the Complete the Wizard screen: Click **Finish**.
30. On the Creating Subscription(s) screen: Watch until it completes successfully and click **Close ☒**.

### Verifying Replication

Perform the following procedure to verify replication is working correctly.

:::note
If opting to manually refresh in Management Studio, be sure to refresh when you are verifying the replication.
:::

#### Verify Replication

To use this procedure, refer to [Log into SQL Management Studio](#Login_to_SQL_Management_Studio) on the *Publishing Server*.

1. Go to the **Object Explorer** frame.
2. Expand (+) the **Replication** folder.
3. Right-click the **Local Publications** folder and select **Launch Replication Monitor**.
4. Expand the **publishing database**.
5. Click on the **Publication** to view the status and performance details.
6. Double-click the **Subscription** to view additional status details.
7. View the information and click **Close ☒**.
8. Click the **Warning and Agents** tab.
9. Double click the **Snapshot Agent** to view all the transactions replicated.
10. View the transactions replicated and click **Close ☒**.
11. Click the **Tracer Tokens**.
12. *(Optional)* Click the **Insert Tracer** button to view the latency of the replication and click **Close ☒**.
13. *(Optional)* Expand (+) the **Databases** folder and the subscribing Database.
14. *(Optional)* Look through the Tables to make sure everything as been replicated properly and click **Close ☒**.

## Configuring the Subscribing Server for Failover

In the event of failover to the subscribing database, the subscribing database must fully support OpCon processing and replication to the subscribing database must cease. Refer to the information below to configure the subscribing server.

### Executing the Database Upgrade Scripts

For information on running the Database Upgrade scripts, refer to [Update Database](../../utilities/Graphical-Utilities/SMA-OpCon-Configuration-Utility.md#Update_Database) in the **Utilities** online help.

### Configuring Failover Scripts and the SMA Service Manager

SMA Technologies provides two SQL scripts and a command file, for stopping replication and for disconnecting all users from the publishing database. The following sections describe the use of the SQL scripts and command file. Installed with the SAM-SS, the required files are in the <Configuration Directory\>\\Utilities\\Database\\ directory.

:::note
The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

#### Determining Values for the Command Files

The StopRepl.cmd and StopRepl_WinAuth.cmd files run the SMA_STOPREPL.sql and SMA_DELPULL.sql scripts through SQL Server Management Studio. The command files log the results of the queries in the SMA_STOPREPL.log and SMA_DELPULL.log files in the <Output Directory\>\\SAM\\Log\\ directory.

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

##### StopRepl.cmd File

The following variables exist within the StopRepl.cmd file. Determine the correct value and use the information to update the file.

- **%1**: Defines the directory path of the parent directory to the OpCon <Configuration Directory\> on the Secondary SAM application server. Exclude the trailing backslash (\\) and always enclose this parameter in double quotes (e.g., "C:\\ProgramData").
- **%2**: The password with which sa logs in to the SQL Server on which the Publishing OpCon database exists.
- **%3**: The password with which sa logs in to the SQL Server on which the Subscribing OpCon database exists.

##### StopRepl_WinAuth.cmd File

The following variable exists within the StopRepl_WinAuth.cmd file. Determine the correct value, and use the information to update the file.

- **%1**: Defines the directory path of the parent directory to the OpCon <Configuration Directory\> on the Secondary SAM application server. Exclude the trailing backslash (\\) and always enclose this parameter in double quotes (e.g., "C:\\ProgramData").

#### Modifying the Stop Replication Command File

By default, the StopRepl.cmd file and StopRepl_WinAuth.cmd files only execute the SMA_STOPREPL.sql script. When replication is using a push subscription, the default function of the command file is sufficient. When replication is using a pull subscription, the administrator must modify the StopRepl.cmd file to also execute the SMA_DELPULL.sql script.

When replication is using either a push or a pull subscription, the administrator should modify the event string at the end of the command file to enable notification upon failover.

##### Modify the Stop Replication Command File

On the Secondary SAM application server:

1. Log in as a *Windows user* with Local Administrative Rights.
2. On the Windows taskbar: Right-click **Start** and select **Explore**.
3. In the Folders frame: Browse to the <Configuration Directory\>**\\Utilities\\Database\\** directory.
   :::note
   The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
   :::
4. Right-click the desired **StopRepl command file**.
   - If using *SQL Authentication*, right-click the **StopRepl.cmd** file.
   - If using *Windows Authentication to SQL*, right-click the **StopRepl_WinAuth.cmd** file.
5. Select **Edit** in the right-click menu.
   :::note
   The command file should open with an ASCII text editor (e.g., Notepad).
   :::
6. Replace all command file variables (e.g., %1, %2, and so forth) with the values in [Determining Values for the Command Files](#Determin).
7. If replication is using a pull subscription, remove the **rem** characters from the eighth line that executes the SMA_DELPULL.sql script.
8. On the last line:
   - Replace **<Severity\>** with the desired *Windows Event Severity* value (I=Informational, W=Warning, E=Error).
   - Replace **<EventID\>** with a *one- to five-digit ID* for notification.
   - Replace **<UserID\>** with a valid *OpCon User Login ID*.
   - Replace **<EventPassword\>** with the *external event password* for the User Login ID.

#### Executing the Stop Replication Command File

If implementing manual failover for OpCon, the failover procedures in this manual provide information on executing the StopRepl.cmd or StopRepl_WinAuth.cmd file. For additional information, refer to [Manual Failover to the Subscribing Database Server](Failover-and-Recovery-with-Replication.md#Manual).

If implementing automatic failover for OpCon, configure the Secondary SMAServMan to execute the StopRepl.cmd or StopRepl_WinAuth.cmd file for the desired failover trigger. For information on configuring SMAServMan for failover, refer to [Automatic Failover to the Subscribing Database Server](Failover-and-Recovery-with-Replication.md#Automati).
