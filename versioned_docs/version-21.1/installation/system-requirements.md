# Getting Started

:::warning
Do not use the underscore character (\_) in the naming convention of the dedicated OpCon server name (e.g., myservername_2017). Usage of the underscore in the server name will directly affect OpCon license validation.
:::

## Hardware requirements

On the OpCon server, please ensure the following minimum hardware requirements are met based on environment size.  Select the larger environment suggested if daily job count and concurrent job executions recommend different sizes.

| Environment Size | Small | Medium | Large |
| ----------| ----- | ------ | ----- |
| Daily job count | Less than 20,000 | 20,000-39,999 | 40,000 or more |
| Concurrent job executions | Less than 50 | 50-99 | 100 or more |
| Hard Drives | 10,000 RPM SATA or SAS drives | 15,000 RPM SATA or SAS drives |  15,000 RPM SATA or SAS drives |
| Disk Space| 100 GB Disk Space | 175 GB Disk Space | 250 GB Disk Space
| CPU | Dual-core, 2GHz or better | Dual-core, 2GHz or better | Dual-core, 2GHz or better |
| Memory | 4 GB RAM | 8 GB RAM | 16 GB RAM |

The initial database size is 200 MB, and the initial log file size is 10 GB. After the initial size, the database size will be based on Schedules, Jobs, Auditing, and History information.

:::note
If running SQL Server on the same server as OpCon, the memory requirements must be doubled for the environment.
:::

:::caution
Any of the following will negatively impact performance and may require increased hardware:

- Keeping several dates' schedules open and in-process
- Heavy usage of OpCon events
- Heavy usage of ad-hoc Schedule Builds
- Heavy usage of expression dependencies
:::

## Software requirements

The following requirements apply to all Windows-based installations:

| Component | Requirement |
| - | - |
| Operating system | Windows Server 2012 R2 or greater |
| .NET Core Runtime | .NET Core & ASP .NET Core 3.0 Runtime or greater |
| .NET Framework Runtime |  .NET Framework 4.5 or greater |

:::note
The **SMA OpCon Install** comes packaged with the .NET Core and .NET Framework requirements and will prompt to install them if they are not found on the server.
:::

## Database Requirements

:::note
All editions of SQL Server are supported; however, **large environments** must use **Standard Edition or better**.
:::

:::note
For any edition of SQL Server, customers must set up both SQL Server and OpCon maintenance procedures and monitor the environment to ensure continuous processing.
:::

The database must be one of the following:

- Microsoft SQL Server version 2012 with Service Pack 3
- Microsoft SQL Server version 2014 with the most recent Service Pack
    applied
- Microsoft SQL Server version 2016 with the most recent Service Pack
    applied
- Microsoft SQL Server version 2017 with the most recent Service Pack
    applied
- Microsoft SQL Server version 2019 with the most recent Service Pack
    applied

:::caution
If the SAM and the SQL database are on different machines, then the Distributed Transaction Coordinator (MSDTC) service must either be running on both machines or not running on either machine. It does not matter if the service is running or not if both the SAM and SQL are on the same machine. Running on the one machine and not the other will cause performance issues and result in a very large SQL server error log.
:::

### SQL Server Administrative Requirements

- If SQL server is installed on a separate machine, the Microsoft SQL
    Administrative Utilities compatible with the SQL server's version
    of MSSQL must be installed on the SAM server.

### Recommendations

The volume of jobs, OpCon events, and users active in the database
directly affects the amount of hardware required at a site. Depending on
the level of performance expected, customers should consider increased
processor and memory for the OpCon server. Disk space requirements also
depend on the number and size of log files, database backups, and
history that must be retained.

For best performance and easiest support, SMA Technologies recommends that a machine be
dedicated as the OpCon server. The Schedule Activity Monitor (SAM) and
supporting services, Enterprise Manager (EM), Database, and Windows LSAM
(MSLSAM) are all required components for the OpCon server.

:::warning
Installing any additional applications on the OpCon server will directly affect the processing speed for the data center automation.
:::

:::warning
If installing the SAM and supporting services (SAM-SS) on a machine with a Windows Regional locale setting other than English (US), please contact SMA Technologies before installation.
:::

### Failover Machines

SMA Technologies strongly recommends installation and configuration of failover machines for the OpCon Server applications
and database. Whether hosted together or separately, they represent mission critical applications and data. Separate identical
hardware should be set up and configured for failover. SMA Technologies recommends using transactional
replication or SQL Mirroring in addition to setting up database and
transaction log backups on the primary and secondary databases.

### Configure the Security Environment for SQL Server

OpCon can work with either mode of authentication supported by Microsoft
SQL Server. Before deciding on the authentication mode, consider the
following:

- Windows Authentication mode: In Windows Authentication mode, only
    Windows User accounts with access to the SQL Server are allowed to
    connect to databases on the server. This means that any Windows User
    account that has privileges to the OpCon database can connect
    directly to the database through any program supporting SQL
    connectivity.
- SQL Server and Windows Authentication mode: In SQL Server and
    Windows Authentication mode, either Windows user accounts with
    access to the SQL Server or SQL users can connect to databases on
    the server. The OpCon database installation scripts will detect the
    security mode and create the required SQL users for OpCon.
  - SMA Technologies recommends using SQL         authentication to the OpCon database as this limits the number
        of users with direct authorization to SQL server. This helps to
        isolate the connections to the OpCon database to a reduced set
        of known database users. It is important to restrict knowledge
        of passwords for the OpCon SQL logins (opconsam and opconui) to
        authorized individuals only.

### Create the OpConxps Active Directory Group

If using Windows Authentication to SQL or using the SMA LDAP Monitor for
OpCon logins, authorized users on the network must be granted access to
the OpCon database on the database server.

To create the Active Directory group, complete the procedure below.
After installing the OpCon database later in this document, another
procedure will describe how to grant privileges to the Active Directory
group in SQL Server if Windows Authentication to SQL is desired.

1. Log in as a *domain administrator*.
2. Use menu path: **Start \> Settings \> Control Panel**.
3. Double-click **Administrative Tools**.
4. Double-click **Active Directory Users and Computers**.
5. Expand the **Active Directory Name** (e.g., CompanyName.local).
6. Right-click **Users**.
7. Use menu path: **New \> Group**.
8. Enter a *descriptive name* (e.g., OpConxps) in the **First Name**
    field.
9. Enter a *description* (e.g., Domain Group for SMA OpCon Users) in
    the **Full Name** field.
10. Enter the *same name as the First Name in Step 8* (e.g., OpConxps)
    in the **User Name** field.
11. Click **Next**.
12. Add the *proper windows users* to the new group.
13. Click **Next**.
14. Review the summary information for the user and click **Finish**.

### Confirm the SQL TCP/IP Port Number

If multiple versions of SQL Server have been installed on the SQL Server
machine, it is important to confirm that the SQL Native Client TCP/IP
Port number matches the SQL Server's TCP/IP Port number.

#### Confirm the SQL Server Port Number

To confirm the SQL Port number, complete the following procedure:

On the SQL Server machine hosting the OpCon database:

Log in as a *local administrative user*.

Use menu path: **Start \> All Programs \> Microsoft SQL Server \>
Configuration Tools \>\
SQL Server Configuration Manager**.

In the Microsoft SQL Server Configuration Manager window:

Expand **SQL Server Network Configuration**.

Click **Protocols for SQL Environment**.

Right-click **TCP/IP** in the **Protocol Name** column and select
**Properties** from the menu.

In the TCP/IP Properties window:

Click the **IP Addresses** tab.

In the IP Addresses tab:

Scroll to the bottom of the list to the **IPAll** section.

Write down the *value* for the **TCP Dynamic Ports** or **TCP Port**.
(Only one of these parameters should have a value.)

In the TCP/IP Properties window:

Click the **OK** button.

In the Microsoft SQL Server Configuration Manager window:

Expand **SQL Native Client Configuration**.

Click **Client Protocols**.

Right-click **TCP/IP** in the **Name** column and select **Properties**
from the menu.

In the TCP/IP Properties window:

Compare the value of the **Default Port** parameter to the value
recorded for the SQL Server TCP/IP port number identified in Step 8.

If the port numbers match, click the **Cancel** button.

If the port numbers do not match:
a.  In the **Default Port** value, change the number to match the SQL
    Server TCP/IP port number identified in Step 8.
b.  Click the **OK** button.

In the Microsoft SQL Server Configuration Manager window:

Close the **SQL Server Configuration Manager**.

## Installation Media

Throughout this manual, the text "*<media\>*" appears in many paths
to represent the OpCon distribution media. OpCon is available in the
following methods of delivery:

- **FTP**:If downloading the files over FTP, the best practice is to
    download the installation files directly to a folder on the hard
    drive of the machine where the software will be installed. Run the
    installation from the hard drive.
- **URL**: Download the OpCon Web Installer (OWI) directly from
    <https://github.com/smatechnologies/opcon-web-installer>.

## Determining Installation Locations

OpCon programs and output files can be installed to separate custom
locations, providing the option to keep all files off of the system
drive.

- SMA Technologies strongly recommends     including \\OpConxps or an OpCon-related name at the end of your
    path for programs and output file locations.
- SMA Technologies also strongly recommends     that you use the same path for each program and output file location
    on the same machine (e.g., SAM, Database Scripts, Resource Monitor,
    etc.).
- For the simplest final directory structures, SMA Technologies recommends installing your
    software to a non-system drive (if available). This will keep all
    program, configuration, and output files in the same directory
    structure.
- If installing to the system drive (e.g., C:\\), SMA Technologies complies with Microsoft standards
    to store configuration files in ProgramData.
- For more information, refer to [File     Locations](../reference/property-expressions-syntax.md) in the
    **Concepts** online help.
:::
:::
