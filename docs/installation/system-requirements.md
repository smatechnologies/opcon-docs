---
title: Getting Started
description: "Getting Started with OpCon covers the hardware and software requirements that must be met before installation, along with key naming conventions and initial configuration considerations for the OpCon server."
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

# Getting Started

**Theme:** Overview  
**Who Is It For?** System Administrator

## What Is It?

Getting Started with OpCon covers the hardware and software requirements that must be met before installation, along with key naming conventions and initial configuration considerations for the OpCon server.

:::warning
Do not use the underscore character (\_) in the naming convention of the dedicated OpCon server name (e.g., myservername_2017). Underscores in the server name directly affect OpCon license validation.
:::

## When Would You Use It?

- You need to configure or manage Getting Started in OpCon

## Why Would You Use It?

- **Centralized control**: Managing Getting Started through OpCon provides consistent oversight and a full audit trail for all changes

## Supported browsers

Solution Manager supports the following browsers:

- Firefox 77.0 and later
- Google Chrome 85.0 and later
- Microsoft Edge (Chromium-based, Blink Engine) 85.0 and later
- Safari (OSX/MacOS or iOS only) 12.0 and later

## Hardware requirements

Ensure the following minimum hardware requirements are met on the OpCon server based on environment size. Select the larger environment if daily job count and concurrent job executions recommend different sizes.

| Environment Size | Small | Medium | Large |
| ----------| ----- | ------ | ----- |
| Daily job count | Less than 20,000 | 20,000-39,999 | 40,000 or more |
| Concurrent job executions | Less than 50 | 50-99 | 100 or more |
| Hard Drives | 10,000 RPM SATA or SAS drives | 15,000 RPM SATA or SAS drives |  15,000 RPM SATA or SAS drives |
| Disk Space| 100 GB | 175 GB | 250 GB |
| CPU | Dual-core, 2GHz or better | Dual-core, 2GHz or better | Dual-core, 2GHz or better |
| Memory | 4 GB RAM | 8 GB RAM | 16 GB RAM |

The initial database size is 200 MB and the initial log file size is 10 GB. After the initial size, database size grows based on Schedules, Jobs, Auditing, and History data.

:::note
If running SQL Server on the same server as OpCon, double the memory requirements for the environment.
:::

:::caution
The following negatively impact performance and may require increased hardware:

- Keeping several dates' schedules open and in-process
- Heavy usage of OpCon events
- Heavy usage of ad-hoc Schedule Builds
- Heavy usage of expression dependencies
:::

## Software requirements

The following requirements apply to all Windows-based installations:

| Component | Requirement |
| - | - |
| Operating system | Microsoft-supported Windows Server versions* |
| .NET Core Runtime | .NET Core & ASP .NET Core 3.0 Runtime or greater |
| .NET Framework Runtime |  .NET Framework 4.5 or greater |

*New releases are fully tested once open to the general public for 6 months or more. Installing before the 6-month mark is at your own risk.

:::note
**SMA OpCon Install** is packaged with the .NET Core and .NET Framework requirements and will prompt to install them if not found on the server.
:::

## Database Requirements

:::note
All editions of SQL Server are supported; however, **large environments** must use **Standard Edition or better**.
:::

:::note
For any SQL Server edition, set up both SQL Server and OpCon maintenance procedures and monitor the environment to ensure continuous processing.
:::

:::caution
Between versions 21 and 22, installations were changed to fail for non-contained databases. Only contained databases are allowed going forward, as containment is required to support Azure SQL (security information like users cannot exist outside the database in the cloud). Existing installs without containment will continue working.
:::

OpCon supports all Microsoft-supported editions of Microsoft SQL Server. New releases are fully tested once open to the general public for 6 months or more. Installing before the 6-month mark is at your own risk. Other SQL server types may produce unexpected results during installation and normal operation.

:::caution
If the SAM and SQL database are on different machines, the Distributed Transaction Coordinator (MSDTC) service must either run on both machines or neither. Running on one machine but not the other causes performance issues and a very large SQL Server error log.
:::

### SQL Server Administrative Requirements

If SQL Server is installed on a separate machine, install the Microsoft SQL Administrative Utilities compatible with that SQL Server version on the SAM server.

### Recommendations

Job volume, OpCon events, and active users directly affect hardware requirements. Consider increased processor and memory depending on performance needs. Disk space requirements depend on the number and size of log files, database backups, and retained history.

For best performance and easiest support, Continuous recommends dedicating a machine as the OpCon server. Required components include the Schedule Activity Monitor (SAM), supporting services, Enterprise Manager (EM), Database, and Windows LSAM (MSLSAM).

:::warning
Installing additional applications on the OpCon server directly affects processing speed for data center automation.
:::

:::warning
If installing SAM and supporting services on a machine with a Windows Regional locale setting other than English (US), contact Continuous before installation.
:::

### Failover Machines

Continuous strongly recommends installing and configuring failover machines for the OpCon Server applications and database. Both represent mission-critical applications and data. Set up separate, identical hardware for failover. Continuous recommends transactional replication or SQL Mirroring, plus database and transaction log backups on primary and secondary databases.

### Configure the Security Environment for SQL Server

OpCon works with either authentication mode supported by Microsoft SQL Server:

- **Windows Authentication mode**: Only Windows User accounts with SQL Server access can connect to databases. Any Windows User account with privileges to the OpCon database can connect directly through any SQL-compatible program
- **SQL Server and Windows Authentication mode**: Either Windows user accounts or SQL users can connect to databases. The OpCon database installation scripts detect the security mode and create the required SQL users
  - Continuous recommends SQL authentication to the OpCon database, as it limits direct SQL Server authorization to a reduced set of known database users. Restrict knowledge of OpCon SQL login passwords (opconsam and opconui) to authorized individuals only

### Create the OpConxps Active Directory Group

If using Windows Authentication to SQL or the SMA LDAP Monitor for OpCon logins, grant authorized network users access to the OpCon database on the database server. After installing the OpCon database, a separate procedure describes how to grant privileges to the Active Directory group in SQL Server if Windows Authentication is desired.

#### Create the Group in Active Directory

To create the OpConxps group in Active Directory, complete the following steps:

1. Log in as a *domain administrator*
2. Go to **Start > Settings > Control Panel**
3. Select **Administrative Tools**
4. Select **Active Directory Users and Computers**
5. Expand the **Active Directory Name** (e.g., CompanyName.local)
6. Right-click **Users**
7. Go to **New > Group**

#### Configure and Save the Group

To configure the group name, description, and membership, complete the following steps:

1. Enter a *descriptive name* (e.g., OpConxps) in the **First Name** field
2. Enter a *description* (e.g., Domain Group for SMA OpCon Users) in the **Full Name** field
3. Enter the *same name as in Step 1* (e.g., OpConxps) in the **User Name** field
4. Select **Next**
5. Add the *proper Windows users* to the new group
6. Select **Next**
7. Review the summary and select **Finish**

### Confirm the SQL TCP/IP Port Number

If multiple SQL Server versions are installed on the SQL Server machine, confirm the SQL Native Client TCP/IP Port number matches the SQL Server TCP/IP Port number.

#### Confirm the SQL Server Port Number

##### Find the SQL Server TCP Port

To find the SQL Server TCP port number, complete the following steps:

1. On the SQL Server machine hosting the OpCon database, log in as a *local administrative user*
2. Go to **Start > All Programs > Microsoft SQL Server > Configuration Tools > SQL Server Configuration Manager**
3. Expand **SQL Server Network Configuration**
4. Select **Protocols for SQL Environment**
5. Right-click **TCP/IP** in the **Protocol Name** column and select **Properties**
6. Select the **IP Addresses** tab
7. Scroll to the **IPAll** section at the bottom of the list
8. Write down the value for **TCP Dynamic Ports** or **TCP Port** (only one should have a value)
9. Select **OK**

##### Verify the SQL Native Client Port

To verify the SQL Native Client port matches the SQL Server port, complete the following steps:

1. Expand **SQL Native Client Configuration**
2. Select **Client Protocols**
3. Right-click **TCP/IP** in the **Name** column and select **Properties**
4. Compare the **Default Port** value to the SQL Server port from the previous procedure
   - If the values match, select **Cancel**
   - If they do not match, update **Default Port** to match and select **OK**
5. Close **SQL Server Configuration Manager**

## Installation Media

Throughout this manual, the text "*<media\>*" represents the OpCon distribution media. OpCon is available via:

- **FTP**: Download installation files directly to a folder on the target machine's hard drive and run the installation from the hard drive
- **URL**: Download the OpCon Web Installer (OWI) from <https://github.com/smatechnologies/opcon-web-installer>.

## Determining Installation Locations

OpCon programs and output files can be installed to separate custom locations, keeping all files off the system drive.

- Include \\OpConxps or an OpCon-related name at the end of program and output file location paths
- Use the same path for each program and output file location on the same machine (e.g., SAM, Database Scripts, Resource Monitor)
- Install to a non-system drive when available to keep all program, configuration, and output files in the same directory structure
- If installing to the system drive (e.g., C:\\), Continuous stores configuration files in ProgramData per Microsoft standards
- For more information, refer to [File Locations](../reference/property-expressions-syntax.md) in the **Concepts** online help

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Windows Authentication mode | Only Windows User accounts with SQL Server access can connect to databases. | — | — |
| SQL Server and Windows Authentication mode | Either Windows user accounts or SQL users can connect to databases. | — | — |
| FTP | Download installation files directly to a folder on the target machine's hard drive and run the installation from the hard drive | — | — |
| URL | Download the OpCon Web Installer (OWI) from  | — | — |
## Security Considerations

### Authentication

OpCon supports two SQL Server authentication modes: Windows Authentication (only Windows User accounts with SQL Server access can connect) and SQL Server and Windows Authentication (either Windows or SQL users can connect). Continuous recommends SQL authentication to limit direct SQL Server access to a reduced set of known database users (opconsam and opconui). Knowledge of OpCon SQL login passwords must be restricted to authorized individuals only.

Between versions 21 and 22, installations were changed to require contained databases. Only contained databases are allowed going forward, as containment is required to support Azure SQL and keeps security information such as users inside the database.

If using Windows Authentication to SQL or the SMA LDAP Monitor for OpCon logins, authorized network users must be granted access to the OpCon database through an Active Directory group (for example, OpConxps) created on the domain.

### Data Security

Continuous strongly recommends installing and configuring failover machines for the OpCon Server applications and database, as both represent mission-critical applications and data. Transactional replication or SQL Mirroring plus database and transaction log backups on both primary and secondary databases are recommended.

If the SAM and SQL database are on different machines, the Distributed Transaction Coordinator (MSDTC) service must either run on both machines or neither; running it on only one machine causes performance issues and a large SQL Server error log.

## Operations

### Monitoring

- Size the OpCon server based on daily job count and concurrent job executions: Small (< 20,000 jobs / < 50 concurrent): 4 GB RAM, 100 GB disk; Medium (20,000–39,999 / 50–99): 8 GB RAM, 175 GB disk; Large (40,000+ / 100+): 16 GB RAM, 250 GB disk. Double memory requirements if SQL Server runs on the same machine.
- The following usage patterns negatively impact performance and may require increased hardware: keeping several dates' schedules open in-process, heavy OpCon event usage, heavy ad-hoc schedule builds, and heavy expression dependency usage.
- Continuous recommends setting up separate, identical failover hardware for both the OpCon Server applications and the database; use transactional replication or SQL Mirroring plus database and transaction log backups on both primary and secondary databases.

### Common Tasks

- Confirm the SQL Native Client TCP/IP port number matches the SQL Server TCP/IP port number when multiple SQL Server versions are installed: use **SQL Server Configuration Manager > SQL Server Network Configuration > Protocols > TCP/IP > IP Addresses > IPAll** to find the port, then compare with **SQL Native Client Configuration > Client Protocols > TCP/IP > Default Port**.
- If using Windows Authentication, create an Active Directory group (e.g., `OpConxps`) and add authorized network users to it; grant this group access to the OpCon database after installation.

### Alerts and Log Files

- If the SAM and SQL database are on different machines, the MSDTC service must run on both machines or neither; running it on only one machine causes performance degradation and a very large SQL Server error log.
- Do not use underscore characters (`_`) in the dedicated OpCon server name; underscores directly affect OpCon license validation.
- Installing additional (non-OpCon) applications on the OpCon server directly reduces automation processing speed; dedicate the server exclusively to OpCon components.

## Exception Handling

**Underscore character in the OpCon server name causes license validation failure** — Underscores in the dedicated OpCon server naming convention directly affect OpCon license validation — Do not use underscores in the server name (e.g., use `myservername2017` not `myservername_2017`); rename or reconfigure the server and request a new license if the issue has already occurred.

**Non-contained database blocks installation starting with version 22** — Between versions 21 and 22, installations were changed to fail for non-contained databases; only contained databases are allowed going forward — Convert the existing database to a contained database or create a new contained database before upgrading or performing a fresh installation.

**MSDTC mismatch between SAM and SQL machines causes performance issues and large error log** — If the SAM and SQL database are on different machines and the Distributed Transaction Coordinator (MSDTC) service runs on only one of the two, performance degrades and the SQL Server error log grows very large — Either enable MSDTC on both machines or disable it on both; the service must run consistently on both or neither.

**Additional applications installed on the OpCon server reduce automation processing speed** — Installing non-OpCon applications on the dedicated OpCon server directly affects processing speed for data center automation — Dedicate the OpCon server exclusively to OpCon components (SAM, supporting services, Enterprise Manager, database, and Windows LSAM) and avoid installing other software.

**Heavy event or ad-hoc schedule build usage requires increased hardware** — Keeping several dates' schedules open, heavy OpCon event usage, heavy ad-hoc schedule builds, and heavy expression dependencies each negatively impact performance — Increase processor and memory beyond the baseline requirements when any of these usage patterns apply.

## FAQs

**Q: What are the hardware requirements for a small OpCon environment?**

A small environment (fewer than 20,000 daily jobs and fewer than 50 concurrent executions) requires 10,000 RPM SATA or SAS drives, 100 GB disk space, a dual-core 2 GHz or better CPU, and 4 GB RAM. If SQL Server runs on the same machine, double the memory requirement.

**Q: What SQL Server editions are supported?**

All Microsoft-supported SQL Server editions are supported. However, large environments must use Standard Edition or better. New SQL Server releases are fully tested after 6 months of general availability.

**Q: Why should you avoid underscores in the OpCon server name?**

Underscores in the dedicated OpCon server name directly affect OpCon license validation and should not be used in the server naming convention.

## Glossary

**MSDTC (Microsoft Distributed Transaction Coordinator)**: A Windows service that coordinates distributed transactions across multiple machines. Required when the SAM and the SQL Server database reside on different servers.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**TCP/IP**: The network communication protocol used for all data exchange between SMANetCom on the OpCon server and agents on target machines.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
