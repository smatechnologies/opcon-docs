---
sidebar_label: 'Manual Setup for Replication'
title: Manual Setup for Microsoft SQL Replication
description: "Manual setup for Microsoft SQL Replication configures the publisher, distributor, and subscriber roles needed for OpCon transactional replication."
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

# Manual Setup for Microsoft SQL Replication

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

Manual setup for Microsoft SQL Replication configures the publisher, distributor, and subscriber roles needed for OpCon transactional replication. This approach is used when the automatic replication setup cannot be used or when the DBA prefers full control over the configuration steps.

Database replication improves SQL Server database availability using three roles: publisher, distributor, and subscriber. OpCon uses transactional replication to distribute data from the production database to the failover database. Data moves from the publisher to the distributor, then is either pushed to the subscriber by the distributor or pulled from the distributor by the subscriber.

This topic assumes the publisher and subscriber are distinct SQL Server instances on separate machines. The distributor may be on its own instance or share an instance with either the publisher or subscriber.

## When Would You Use It?

- Database replication improves SQL Server database availability using three roles: publisher, distributor, and subscriber

## Why Would You Use It?

- **Operational value**: Improves SQL Server database availability using three roles: publisher, distributor, and

## Requirements

Verify the following before attempting transactional replication on the Publishing OpCon Database Server:

- The OpCon database server must have Microsoft SQL Server or Enterprise edition installed
- The distributor's SQL Server version must be the same or later than the publisher's
- Both the Publishing and Subscribing OpCon databases must have the Recovery model set to Full
- The MSSQLSERVER service must run as a domain user with local administrative rights, not as system

## Publishing and Subscribing Servers

The Publication Server contains the primary OpCon database (referred to as the "Publishing Database Server"). The Subscription Server contains a copy of the OpCon database (referred to as the "Subscribing Database Server").

### Registering the Database Servers

If absent from the SQL Server group, register the publishing and/or subscribing database servers so SQL recognizes them.

#### Register Database Servers

On the desired database server:

To publish and Subscribing Servers, complete the following steps:

1. Log in as a local administrative user
2. Go to **Start > All Programs > SQL Server Management Studio**
3. Select **Database Engine** in the **Server type** list
4. Select the desired \[OpCon Database Server\] in the **Server name** list
5. Select one of the following in the **Authentication** list:
   - **Windows Authentication** to log in with the current Windows user with local administrative authority
   - **SQL Server Authentication**, then enter *sa* in the **Login** field and the *sa password* in the **Password** field
6. Select the **Connect** button

##### Register the Database Server

1. Go to **View > Registered Servers**
2. In the Registered Servers frame, expand **Database Engine**
3. Right-click **Local Server Groups** and select **New Server Registration**
4. Enter or select the server name in the **Server name** list
5. If the server is not in the list, select **\<Browse for more...\>** and browse **Local Servers** or **Network Servers** to find it
6. Select the **server** and select **OK**
7. Select one of the following in the **Authentication** list:
   - **Windows Authentication** to log in with the current Windows user with local administrative authority
   - **SQL Server Authentication**, then enter *sa* in the **Login** field and the *sa password* in the **Password** field
8. Select the **Test** button and confirm the connection is successful
9. Select **OK**, then select **Save**

### Publication

Set up the OpCon database as a publisher to produce the subscribing database.

#### Setting up a Publisher

##### Enable the Publisher

Log into SQL Management Studio on the Publishing Server, then:

1. Go to **View > Object Explorer**
2. In the Object Explorer frame, expand the **Replication** folder
3. Right-click **Local Publications** and select **New Publication**
4. On the New Publication Wizard welcome screen, select **Next**
5. If publishing has not yet been enabled for the server:
   - On the Distributor screen, select the **desired Distributor** and select **Next**
   - Select **Yes, configure the SQL Server Agent service to start automatically** and select **Next**
   - Confirm the snapshot folder path and select **Next**
6. Select the **OpCon Database** and select **Next**
7. On the Publication Type screen, select **Transactional Publication** and select **Next**
8. On the Articles screen, select **Tables** under *Objects to Publish* and select **Next**
9. On the Filter Table Rows screen, select **Next**
10. On the Snapshot Agent screen, select **Create a snapshot immediately and keep the snapshot available to initialize subscriptions** and select **Next**
11. On the Agent Security screen, select **Security Settings** for the *Snapshot Agent*
12. On the Snapshot Agent Security screen, select **Run under the SQL Server Agent service account**
13. Select **Using the following SQL Server login**
14. Enter the *Login name* (preferably sa or equivalent) in the **Login** field
15. Enter and confirm the password in the **Password** and **Confirm Password** fields, then select **OK**
16. On the Agent Security screen, clear **Use the security settings from the Snapshot Agent** and select **Next**

17. On the Wizard Actions screen, select **Create the publication** and select **Next**
18. On the Complete the Wizard screen, enter a *Publication name* and select **Finish**
    :::note
    On the Create Publications screen, the goal is to see "Success" with 0 Errors and 0 Warnings. If errors are present, rerun the New Publication Wizard.
    :::
19. Select **Close**

### Subscription

Set up an additional database as a subscriber to produce the secondary database.

#### Setting up a Subscription

##### Deciding on a Subscription Type

Two subscription types are available: Push and Pull. Continuous fully supports both.

**Use push subscriptions when:**

- Data synchronizes on demand or on a recurring schedule
- Publications require near real-time data movement without polling
- Higher processor overhead at a Publisher with a local Distributor does not affect performance
- Easier centralized administration from the Distributor is needed
- The Distribution Agent or Merge Agent runs at the Distributor; optionally, you can run it at the Subscriber to offload agent processing while retaining some centralized administration benefits

**Use pull subscriptions when:**

- Subscription administration occurs at the Subscriber
- The publication has many Subscribers and running all agents at one site would be too resource-intensive
- Subscribers are autonomous, disconnected, or mobile and determine their own sync schedule
- Reducing processing overhead on the Distributor is a priority; the Distribution Agent or Merge Agent runs at the Subscriber

##### First Option: Setting Up a Push Subscription

Log into SQL Management Studio on the Publishing Server, then:

1. Go to the **Object Explorer** frame
2. Expand the **Replication** folder
3. Right-click **Local Subscriptions** and select **New Subscriptions**
4. Select **Next**
5. Leave **Run all agents at the Distributor, \<Server name\> [push subscriptions]** selected and select **Next**
6. If the secondary server is not available, select **Add Subscriber > Add SQL Server Subscriber** and enter the *\<Subscribing Server name\>*
7. Select the **subscriber** option, select the **subscribing database** in the **Subscription Database** list, and select **Next**

8. Select the **ellipsis** button (\...)
9. Select **Run under the SQL Server Agent service account**
10. Select **Using the following SQL Server login** under *Connect to the Subscriber*
11. Enter the *Login name* (sa or equivalent), *Password*, and *Confirm Password*, then select **OK**
12. Select **Next**
13. Accept the *Run Continuously* default for the Agent Schedule and select **Next**
14. Select the **Initialize** option, select **Immediately** in the **Initialize When** list, and select **Next**
15. Select **Create the subscription(s)** and select **Next**
16. Select **Finish**, wait for successful completion, then select **Close**

##### Second Option: Setting Up a Pull Subscription

Log into SQL Management Studio on the Subscribing Server, then:

1. Go to the **Object Explorer** frame
2. Expand the **Replication** folder
3. Right-click **Local Subscriptions** and select **New Subscriptions**
4. Select **Next**
5. On the Publication screen, select **\<Find SQL Server Publisher\>** in the **Publisher** list
6. On the Connect to Server screen, select the **server name**, select **SQL Server Authentication**, enter the *Login ID* and *password*, then select **Connect**
7. On the Publication screen, expand the **database** in the Databases and publications frame, select the **publication**, and select **Next**
8. On the Distribution Agent Location screen, select **Run each agent at its Subscriber [pull subscriptions]** and select **Next**
9. On the Subscribers screen, select the **subscriber** option and select the **subscribing database** in the **Subscription Database** list
   - To create a new database: select **\<New Database...\>**, enter a *Database name*, select **OK**, and confirm the new database is selected
   - To add an additional subscriber: select **Add SQL Server Subscriber**, then connect to the subscribing server using SQL Server Authentication. If the server is not listed, select **\<Browse for more\>**, select the **Network Servers** tab, expand **Database Engine**, select the server, and select **OK**
10. Select **Next**
11. On the Distribution Agent Security screen, select the **ellipsis** button (\...) next to the first subscriber
12. In the Distribution Agent Security window, leave **Run under the following Windows account** selected. Enter your *domain account*, *password*, and *Confirm Password*, then select **OK**
13. Repeat for each subscriber and select **Next**
14. Accept **Run Continuously** in the **Agent Schedule** list and select **Next**
15. Select the **Initialize** option, select **Immediately** in the **Initialize When** list, and select **Next**
16. On the Wizard Actions screen, select **Create the Subscription** and select **Next**
17. Select **Finish**, wait for successful completion, then select **Close**

### Verifying Replication

:::note
If refreshing manually in Management Studio, refresh before verifying replication.
:::

#### Verify Replication

Log into SQL Management Studio on the Publishing Server, then:

1. Go to the **Object Explorer** frame
2. Expand the **Replication** folder
3. Right-click **Local Publications** and select **Open Replication Monitor**
4. Expand the **publishing database**
5. Select the **Publication** to view status and performance details
6. Select the **Subscription** to view additional status details, then select **Close**
7. Select the **Warning and Agents** tab
8. Select the **Snapshot Agent** to view all replicated transactions, then select **Close**
9. Select **Tracer Tokens**
10. *(Optional)* Select **Insert Tracer** to view replication latency, then select **Close**
11. *(Optional)* Expand **Databases** and the subscribing database and review the tables to confirm replication, then select **Close**

## Configuring the Subscribing Server for Failover

In the event of failover, the subscribing database must fully support OpCon processing and replication must cease.

### Running the Database Upgrade Scripts

For information on running the Database Upgrade scripts, refer to [Update Database](../../utilities/Graphical-Utilities/SMA-OpCon-Configuration-Utility.md#Update_Database) in the **Utilities** online help.

### Configuring Failover Scripts and the SMA Service Manager

Continuous provides two SQL scripts and a command file for stopping replication and disconnecting all users from the publishing database. These files are installed with the SAM-SS in the \<Configuration Directory\>\\Utilities\\Database\\ directory.

:::note
The Configuration Directory location depends on your installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

#### Determining Values for the Command Files

The StopRepl.cmd and StopRepl_WinAuth.cmd files run SMA_STOPREPL.sql and SMA_DELPULL.sql through SQL Server Management Studio. Results are logged in SMA_STOPREPL.log and SMA_DELPULL.log in the \<Output Directory\>\\SAM\\Log\\ directory.

:::note
The Output Directory was configured during installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
:::

**StopRepl.cmd variables:**

- **%1**: Directory path of the parent directory to the OpCon \<Configuration Directory\> on the Secondary SAM application server. Exclude the trailing backslash and enclose in double quotes (e.g., "C:\\ProgramData")
- **%2**: The sa password for the SQL Server hosting the Publishing OpCon database
- **%3**: The sa password for the SQL Server hosting the Subscribing OpCon database

**StopRepl_WinAuth.cmd variable:**

- **%1**: Directory path of the parent directory to the OpCon \<Configuration Directory\> on the Secondary SAM application server. Exclude the trailing backslash and enclose in double quotes (e.g., "C:\\ProgramData")

#### Modifying the Stop Replication Command File

By default, both command files run only SMA_STOPREPL.sql. For push subscriptions, this default is sufficient. For pull subscriptions, modify StopRepl.cmd to also run SMA_DELPULL.sql. For both subscription types, modify the event string at the end of the command file to enable failover notification.

##### Modify the Stop Replication Command File

On the Secondary SAM application server:

1. Log in as a Windows user with Local Administrative Rights

2. Right-click **Start** and select **Explore**
3. Browse to the \<Configuration Directory\>**\\Utilities\\Database\\** directory
   :::note
   The Configuration Directory location depends on your installation. For more information, refer to [File Locations](../../file-locations.md) in the **Concepts** online help.
   :::
4. Right-click the appropriate command file:
   - SQL Authentication: **StopRepl.cmd**
   - Windows Authentication: **StopRepl_WinAuth.cmd**
5. Select **Edit** to open the file in a text editor
6. Replace all command file variables (%1, %2, etc.) with the correct values from [Determining Values for the Command Files](#Determin)
7. If using a pull subscription, remove the **rem** characters from the eighth line that runs SMA_DELPULL.sql
8. On the last line:
   - Replace **\<Severity\>** with the desired Windows Event Severity (I=Informational, W=Warning, E=Error)
   - Replace **\<EventID\>** with a one- to five-digit notification ID
   - Replace **\<UserID\>** with a valid OpCon User Login ID
   - Replace **\<EventPassword\>** with the external event password for the User Login ID

#### Running the Stop Replication Command File

- For manual failover, refer to [Manual Failover to the Subscribing Database Server](Failover-and-Recovery-with-Replication.md#Manual)
- For automatic failover, configure the Secondary SMAServMan to run the appropriate command file. Refer to [Automatic Failover to the Subscribing Database Server](Failover-and-Recovery-with-Replication.md#Automati)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| %1 | Directory path of the parent directory to the OpCon \ on the Secondary SAM application server. | — | — |
| %2 | The sa password for the SQL Server hosting the Publishing OpCon database | — | — |
| %3 | The sa password for the SQL Server hosting the Subscribing OpCon database | sufficient | — |
## FAQs

**Q: How many steps does the Manual Setup for Microsoft SQL Replication procedure involve?**

The Manual Setup for Microsoft SQL Replication procedure involves 86 steps. Complete all steps in order and save your changes.

**Q: What does Manual Setup for Microsoft SQL Replication cover?**

This page covers Requirements, Publishing and Subscribing Servers, Configuring the Subscribing Server for Failover.

## Glossary

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
