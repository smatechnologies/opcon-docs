---
title: Remote Instances
description: "A remote instance is an instance of OpCon that runs on a remote server."
product_area: Core Concepts
audience: Automation Engineer, Application Owner
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Application Owner
  - Getting Started
last_updated: 2026-03-18
doc_type: conceptual
---

# Remote Instances

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Application Owner

## What Is It?

A *remote instance* is an instance of OpCon that runs on a remote server. Once connection information is defined, instances can communicate and share properties. Tokens used in expression dependencies in one environment can reference properties in another environment.

:::note
If a job has an expression dependency on a remote OpCon instance and that instance is unavailable (database server not running or network issue), the job goes On Hold.
:::

The following fields apply to defining remote instances:

- **Name**: Name of the remote instance
- **Documentation**: Area for descriptions and notes about the remote instance
    - For information on inserting hyperlinks into the Documentation area, refer to Entering and Opening Hyperlinks in the Documentation Frame in the Enterprise Manager online help
- **Server**: Name of the server where the database resides
- **Database**: Name of the database to connect to
- **User**: Authorized SQL Server username for connecting to the database
- **Password**: Password for the authorized SQL Server user
- **Windows Authentication**: Use Windows Authentication to connect to the database
    - The SMA Service Manager must run as a user with privileges to the OpCon database. For more information, refer to [Add the OpConxps Active Directory Group to the SQL Server](../installation/configuration.md#Add_the_OpConxps_Active_Directory_Group_to_the_SQL_Server) in the **OpCon Installation** online help
- **Mirroring On**: Indicates the instance uses mirroring so the proper connection string is used
- **Transparent Network IP Resolution**: Specifies how to resolve the IP address when issues arise. Available options:
    - **Auto**: Automatically detects Network IP resolution. This is the default
    - **Disabled**: Disables transparent Network IP resolution
    - **Enabled**: Enables transparent Network IP resolution

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Name | Name of the remote instance | — | — |
| Documentation | Area for descriptions and notes about the remote instance | — | — |
| Server | Name of the server where the database resides | — | — |
| Database | Name of the database to connect to | — | — |
| User | Authorized SQL Server username for connecting to the database | — | — |
| Password | Password for the authorized SQL Server user | — | — |
| Windows Authentication | Use Windows Authentication to connect to the database | — | — |
| Mirroring On | Indicates the instance uses mirroring so the proper connection string is used | — | — |
| Transparent Network IP Resolution | Specifies how to resolve the IP address when issues arise. | — | — |
## FAQs

**Q: What is a remote instance used for?**

A remote instance defines connection information for another OpCon environment running on a separate server. Once defined, tokens in expression dependencies can reference properties in the remote instance's environment.

**Q: What happens if a job has an expression dependency on a remote instance that is unavailable?**

If the remote OpCon instance is unavailable (for example, due to a database server outage or network issue), the dependent job is placed On Hold.

**Q: Does Windows Authentication work for remote instance connections?**

Yes. Select **Windows Authentication** to connect using Windows credentials instead of SQL Server username and password. The SMA Service Manager must run as a user with privileges to the remote OpCon database.

## Glossary

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
