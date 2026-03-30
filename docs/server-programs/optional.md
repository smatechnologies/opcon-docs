---
title: Optional Components
description: "Optional components in OpCon extend the core server with additional capabilities such as LDAP synchronization, notification handling, and data input processing."
product_area: Server Programs
audience: System Administrator
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - System Configuration
last_updated: 2026-03-18
doc_type: reference
---

# Optional Components

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

Optional components in OpCon extend the core server with additional capabilities — such as LDAP synchronization, notification handling, and data input processing. All optional components must be enabled in the SMAServMan.ini file before they will run.

:::note
All of the optional components must be enabled in the SMAServMan.ini file. For more information, refer to [SMA Service Manager (SMAServMan)](./service-manager.md).
:::

## When Would You Use It?

- You need to configure or manage Optional Components in OpCon

## Why Would You Use It?

- **Centralized control**: Managing Optional Components through OpCon provides consistent oversight and a full audit trail for all changes

## SMA LDAP Monitor

The SMA LDAP Monitor (SMALDAPMon) component periodically checks the LDAP server to synchronize Lightweight Directory Access
Protocol (LDAP) users with OpCon users. These users can exist in Active
Directory or OpenLDAP.

:::note
SMA LDAP Monitor currently does not support using Organizational Units in Active Directory. Organizational Unit users must be put in a Group to be found and synced.
:::

OpCon administrators can define the LDAP Group name for synchronization
with OpCon as well as a default OpCon Role for new OpCon User Accounts.

SMA LDAP Monitor will look at the Group and Role in each Sync section
specified in SMALDAPMon.ini and then the following action:

 |Exists in LDAP Group|Exists in OpCon|Member of OpCon Role|Enabled in LDAP Group*|Enabled in OpCon|Action Taken|
|--- |--- |--- |--- |--- |--- |
|Y|Y|Y|Y|Y|No action|
|Y|N|N/A|Y|N/A|User created and added to role|
|Y|Y|N|Y|Y|User added to role|
|Y|Y|Y|Y|N|User enabled in OpCon|
|Y|Y|Y|N|Y|User is disabled if they are not in any other mapped roles|
|Y|Y|Y|N|N|No action|
|N|Y|Y|N/A|Y|User is removed from the role and disabled|
|N|Y|Y|N/A|N|User is removed from the role|
|N|N|N/A|N/A|N/A|No action|

\*Enabled does not apply to OpenLDAP.

:::note
If multiple groups in SMA LDAP Monitor have the same name, by default, all users within those groups will be imported into OpCon and assigned to the specified role. If you only want users from one particular SMA LDAP Monitor group to be imported into OpCon, then the group name must be fully qualified in the SMALDAPMon.ini file.
:::

The program name is SMALDAPMon.exe and it is installed with the SAM to
the same directory of <Target Directory\>\\OpConxps\\SAM\\.
SMALDAPMon.exe is managed by the SMA Service Manager. For more
information, refer to [SMA Service Manager (SMAServMan)](./service-manager.md).

### SMA LDAP Monitor Configuration

The SMA LDAP Monitor configuration determines basic application and
logging behavior. The SMALDAPMon.ini file resides in the <Configuration
Directory\>\\SAM\\folder. The tables contain the definitions of each
configuration parameter. All changes to the configuration are dynamic.

:::note
The Configuration Directory location is based on where you installed your programs. For more information, refer to [File Locations](../file-locations.md) in the **Concepts** online help.
:::

#### Sample Configuration File

```ini
[General Settings]
DirectoryType=ADS
Host=hostname
Port=389
Domain=DC=smausa,DC=com
UserName=EncryptedAdministrator
Password=EncryptedAdministratorPassword
RefreshInterval=300
DefaultUserPassword=EncryptedDefaultUserPassword
UseDefaultUserPassword=false
UserNamePrefix=UsernamePrefix
EnableTls=false
EnableSsl=false

[Debug Options]
ArchiveDaysToKeep=10
MaximumLogFileSize=150000
TraceLevel=4

[Sync1]
Group= Administrators
Role=Role_ocadm

[Sync2]
Group=Operators
Role=Role_Operator
```

### SMALDAPMon.ini

The SMALDAPMon.ini file contains the following major sections:

- [General Settings](#General)
- [Debug Options](#Debug)
- [Sync Options](#Sync)

#### General Settings

The General Settings contain basic information for SMA LDAP Monitor
processing.

|General Settings|Required|Default|Dynamic|Definition|
|--- |--- |--- |--- |--- |
|DirectoryType|Y|ADS|Y|The type of LDAP Server on the network. Valid Values: ADS, OpenLDAP|
|Host|Y|*blank*|Y|Host name or IP address of the LDAP server.|
|Port|Y|389|Y|Port number of the LDAP server.|
|Domain|N|*blank*|Y|Defines the distinguished name. If it is not specified, SMA LDAP Monitor will connect to the first or default distinguished name.|
|UserName*|Y|*blank*|Y|Encrypted login name for the LDAP directory. Must have permissions to connect to and query LDAP information from the network.|
|Password*|Y|*blank*|Y|Encrypted LDAP Password for the user specified in UserName.|
|RefreshInterval|N|60|Y|Time interval (in seconds) at which the service re-synchronizes users' accounts between the LSAP server and the OpCon database.|
|DefaultUserPassword*|N|*blank*|Y|Encrypted default password assigned to newly-created OpCon users. Note: This parameter is required only when the UseDefaultUserPassword parameter is set to True. If users specify UseDefaultUserPassword=true, but do not specify a password, then SMA LDAP Monitor will give an error in the log and exit.|
|UseDefaultUserPassword|N|False|N|An optional parameter that when added to the configuration file and set to True, assigns the value specified in the DefaultUserPassword parameter to newly-created OpCon users.|
|UserNamePrefix|N|*blank*|Y|Defines the text or domain name to prepend to OpCon user names with a backslash in between, e.g., UsernamePrefix\UserName. Applies to ADS only.|
|EnableTls|N|False|Y|TLS encryption will be used for the connection when set to True. If set to True, the EnableSsl parameter will be ignored.|
|Enable SSl|N|False|Y|SSL encryption will be used for the connection when set to True. If set to True, the EnableTls parameter will be ignored.|

\*To encrypt the password manually, use the Password Encryption Tool in the Enterprise Manager. Then, copy and paste the encrypted password for the value of this setting. For more information, refer to [Encrypting Passwords](../Files/UI/Enterprise-Manager/Encrypting-Passwords.md) in the **Enterprise Manager** online help. To encrypt the values using SMALDAPMon, refer to [Command Line Arguments](#Command).

:::note
SMA LDAP Monitor passwords can be longer than 12 characters; however, the Enterprise Manager and Solution Manager have a 12-character limit for passwords. If the password is longer than 12 characters, you cannot use the SMA LDAP Monitor user name and password to log in interactively.
:::

:::note
For OpenLDAP, UserName must contain the encrypted string of common name and domain name(s) separated by a comma. For example: UserName=cn=admin,dc=ldap,dc=smausa,dc=com.
:::

#### Debug Options

The Debug Options configure the SMA LDAP Monitor's logging behavior.

|Debug Options|Required|Default|Dynamic|Definition|
|--- |--- |--- |--- |--- |
|ArchiveDaysToKeep|N|10|Y|Determines the number of days the archive log folders are retained. Each time it archives a log, the service checks for expired archive folders to delete.|
|MaximumLogFileSize|N|150000 (bytes)|Y|Defines the maximum size in bytes for each log file. Determines when the current log file is closed and a new file is started. When the file reaches this maximum size, it is "rolled over." This setting creates small, manageable log files.  SMALDAPMon.log resides in the *Output Directory*\SAM\Log directory. When the log file reaches the maximum size, SMA LDAP Monitor archives the log file. The SAM then maintains the archive folders.Minimum Value = 10000 bytes, Maximum Value = 2147483647 bytes|
|TraceLevel|N|4|Y|Determines the detail of logging. Valid Entries: 0-5. 0 is off and 5 is detailed.0 = Off1 = Critical2 = Error3 = Warning4 = Information5 = Debug|

#### Sync Options

The Sync Option contains the mapping of each LDAP group to an OpCon
role. Multiple Sync Options are allowed. To use multiple syncs, name
them \[Sync\#\], where \# is a numerical value.

:::note
SMA LDAP Monitor does not assign users in the LDAP groups or e-mail distribution groups inside the LDAP group that is being monitored. This means there is a one-to-one (1:1) correspondence between LDAP groups and OpCon roles.
:::

|Sync|Required|Default|Dynamic|Definition|
|--- |--- |--- |--- |--- |
|Group|Y|*blank*|Y|Name of the LDAP group used for managing OpCon users (e.g., OpConUsers)|
|Role|Y|*blank*|Y|Name of the OpCon Role to grant to the new OpCon users added by the SMA LDAP Monitor|

### Command Line Arguments

The SMA LDAP Monitor supports the following arguments which should be
specified with \--\[argument\]=\[value\] or \--\[argument\] \[value\] or -\[argument\] \[value\] except -c, \--credentials, -s, \--standalone and
\--help which do not have a value.

|Argument|Required|Value|
|--- |--- |--- |
|-c, --credentials|N|This parameter sets the credentials and encrypts the user name and passwords in the configuration file. The program can be run the first time only to complete the configuration.|
|-u, --user|N|This parameter is used with -c or --credentials. It defines the user name to connect to the LDAP server.|
|-p, --password|N|This parameter is used with -c or --credentials. It defines the password to connect to the LDAP server.|
|-d, --defaultpassword|N|This parameter is used with -c or --credentials. It defines the OpCon user password to log in Enterprise Manager.|
|-i, --inifile|N|Name of the existing INI file to encrypt the credentials.|
|-s, --standalone|N|Runs SMALDAPMon.exe in standalone mode without SMAServMan. SMALDAPMon.exe will run once, and then the program will exit.|
|--help|N|Displays the help screen.|

:::tip Example
The following commands will encrypt UserName, Password, and DefaultUserPassword in the existing SMALDAPMon.ini file:

```shell
SMALDAPMon.exe -c -u admin -p adminpassword -d opconxps -x ******************** -i SMALDAPMon.ini

SMALDAPMon.exe --credentials --user admin --password adminpassword --defaultpassword opconxps --inifile SMALDAPMon.ini

SMALDAPMon.exe --credentials --user=admin --password=adminpassword --defaultpassword=opconxps
```

:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## Operations

### Monitoring

- `SMALDAPMon.log` resides in `<Output Directory>\SAM\Log\`. The log rolls over when it reaches `MaximumLogFileSize` (default: 150,000 bytes, min: 10,000 bytes). Log archive folders are retained for `ArchiveDaysToKeep` days (default: 10).
- The `TraceLevel` setting controls logging detail (0 = Off, 1 = Critical, 2 = Error, 3 = Warning, 4 = Information, 5 = Debug). The default is 4 (Information). All Debug Options settings are dynamic.
- SMA LDAP Monitor re-synchronizes users between the LDAP server and the OpCon database at the interval defined by `RefreshInterval` (default: 60 seconds). A sync of 300 seconds (5 minutes) is shown in the sample configuration.

### Common Tasks

- All optional components must be enabled in `SMAServMan.ini` before they will run. Refer to [SMA Service Manager (SMAServMan)](./service-manager.md).
- To encrypt credentials in `SMALDAPMon.ini`, run: `SMALDAPMon.exe --credentials --user <user> --password <pass> --defaultpassword <pass> --inifile SMALDAPMon.ini`.
- To run a one-time sync without SMAServMan, use the `--standalone` argument: `SMALDAPMon.exe --standalone`.

### Alerts and Log Files

- Users removed from an LDAP group are removed from the associated OpCon role and disabled if they are not in any other mapped roles.
- If `UseDefaultUserPassword=true` is set but `DefaultUserPassword` is blank, SMA LDAP Monitor logs an error and exits; review the log for this condition after configuration changes.
- If multiple LDAP groups share the same name, all matching group users are imported; fully qualify the group name in `SMALDAPMon.ini` to restrict imports to a specific group.

## Exception Handling

**SMA LDAP Monitor gives an error and exits when UseDefaultUserPassword is true but no password is specified** — If `UseDefaultUserPassword=true` is set in the configuration but the `DefaultUserPassword` parameter is left blank, SMA LDAP Monitor logs an error and exits — Provide a value for the `DefaultUserPassword` parameter whenever `UseDefaultUserPassword` is set to true.

**Organizational Unit users are not found or synced** — SMA LDAP Monitor does not support Organizational Units (OUs) in Active Directory; users in OUs are not discovered during synchronization — Move OU users into an LDAP Group that is mapped in SMALDAPMon.ini so the monitor can find and sync them.

**LDAP password longer than 12 characters prevents interactive login** — While SMA LDAP Monitor passwords can exceed 12 characters, the Enterprise Manager and Solution Manager enforce a 12-character limit; an LDAP user with a password longer than 12 characters cannot log in interactively — Use passwords of 12 characters or fewer if interactive login via the Enterprise Manager or Solution Manager is required for LDAP-synced users.

**Multiple LDAP groups with the same name import all users from all matching groups** — If multiple Sync sections define the same group name, SMA LDAP Monitor imports users from all LDAP groups with that name — Fully qualify the group name in SMALDAPMon.ini (e.g., including domain path) to target only the intended group when multiple groups share a name.

## FAQs

**Q: What does SMA LDAP Monitor do?**

SMA LDAP Monitor (SMALDAPMon) periodically checks an LDAP server to synchronize LDAP users (from Active Directory or OpenLDAP) with OpCon user accounts. It creates, enables, disables, and assigns roles to OpCon users based on their membership in configured LDAP groups.

**Q: Does SMA LDAP Monitor support Organizational Units in Active Directory?**

No. SMA LDAP Monitor does not support Organizational Units (OUs) in Active Directory. Users in OUs must be placed in an LDAP Group to be found and synchronized.

**Q: What happens to an OpCon user if they are removed from an LDAP group?**

If a user exists in OpCon but is no longer in the mapped LDAP group, SMA LDAP Monitor removes them from the associated OpCon role. If they are not in any other mapped roles, the user is also disabled in OpCon.

## Glossary

**TLS (Transport Layer Security)**: An encryption protocol used to secure TCP/IP communications between SMANetCom and agents, ensuring that job start and status data is transmitted safely.

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
