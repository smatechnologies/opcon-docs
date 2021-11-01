# Machines

All systems with LSAMs installed must be defined as a machine in the
OpCon database. Once a machine is defined in
the database, the SAM and supporting services can begin scheduling jobs
on it.

The following information applies to defining machines:

- **Name**: Defines the official host name or alias of the machine
    where the LSAM is installed. The machine name must be resolvable to
    a TCP/IP address. For additional information, refer to [Machine Name Resolution](#Machine).
- **Documentation**: Provides an area for descriptions, explanations,
    and notes that can be updated for the defined machine.
     in the **Enterprise Manager** online help.
- **Machine Type**: Defines the type of LSAM (Agent) being defined.
- **Socket Number**: Defines the socket (port number) for
    communication with the LSAM. The socket number must match the one
    configured on the machine where the LSAM was installed.
- **Max Concurrent Jobs (Server)**: This field shows the number of
    maximum jobs allowed by the OpCon server.
  - If this value is smaller than the Max Concurrent Jobs (Agent),
        the SAM will use this value to determine the max.
  - A value of zero (0) indicates that the Max Concurrent Jobs is
        controlled by the Agent.
- **Advanced Settings**: The advanced settings for a machine determine
    specific communication, logging, Available Properties, and SMA File
    Transfer settings. For complete information, refer to [Advanced Machine Configuration](#Advanced).
- **Communication Status**: Determines if SMANetCom should be
    communicating with the defined machine. If communication is started,
    SMANetCom attempts communication with the LSAM.
- **Job Starts**: Determines if the SAM should send job     start information to the LSAM. While the primary purpose of an LSAM
    is to start jobs, LSAMs also have the ability to send external
    OpCon events. If the condition exists
    where new job starts should not be initiated on the LSAM, but
    external OpCon events should still
    process, Job Starts can be disabled.
- **Machine Group Assignment**: Defines the machine groups for the
    machine. The machine group must be defined prior to assigning it to
    the machine. For additional information, refer to [Machine Groups](./machine-groups.md).

## Machine Name Resolution

For the SMANetCom to communicate with an LSAM to run jobs, the Machine
name in the database must resolve to a TCP/IP address. Consequently, the
machine name must match either a host name recognized by the DNS server
or a TCP/IP address must be manually configured.

The following information provides different methods for associating a
TCP/IP address with the OpCon machine name:

- The DNS server (For information on configuring a DNS server, contact
    the network administrator.)
- Assign the TCP/IP address to the machine through the advanced
    configuration options in OpCon. For
    additional information, refer to [Communication Settings](#Communic).
- The hosts file on the OpCon application
    server. For additional information, refer to **[Configure the Hosts     File on the OpCon Application
    Server](#Configure_the_Hosts_File_on_the__Application_Server)
    ** section.

:::note
To confirm name resolution for DNS or hosts file configuration, ping the machine by name from the OpCon application server.
:::

### Configure the Hosts File on the OpCon Application Server

Complete the following procedure on the OpCon
application server:

1. Right-click **Start** on the **Windows** task bar and select
    **Explore** from the menu.
2. Browse to the **<Windows Directory\>\\System32\\Drivers\\etc\\**
    directory.
3. Right-click the **hosts** file and select **Open With**.
4. Select an **ASCII text editor** (e.g., Notepad) in the **Choose the
    program you want use** list.
5. Insert *a new line* below the last line containing a TCP/IP address.
6. Type the *TCP/IP address* for the **MCP LSAM** machine.
7. Click the key.
8. Type the *Hostname alias* as it is entered in the Enterprise
    Manager.
9. Use menu path: **File \> Save**.
10. Open a command prompt and ping the machine by name to confirm the
    connection (e.g., ping Servername).

## Advanced Machine Configuration

Advanced Machine Configuration contains machine parameters, parameter
values, and whether each value is from the system (default) or is
user-defined. The default value for each setting is functional for most
LSAMs; however, consult the platform-specific LSAM documentation for
detailed information. An asterisk (\*) may appear in front of some of
the values -- this indicates that the value is not the default value. If
an asterisk appears in front, then after the value is displayed, the
default value is shown in parentheses (Default). Refer to [Configuring Advanced Machine Parameters and
Properties](../Files/UI/Enterprise-Manager/Configuring-Advanced-Machine-Properties.md)
 in the **Enterprise Manager** online help.

The administrative options are maintained in the following categories:

- [Administrative Machine Information](#Administ)
- [Communication Settings](#Communic)
- [Logging](#Logging)
- [Time Settings](#Time)
- [Buffer Settings](#Buffer)
- [File Transfer Settings](#File)
- [SAP BW Details](#SAP)
- [SAP R/3 and CRM Details](#SAP2)

### Administrative Machine Information

- **Allow "Kill Job"**: Determines if the kill function is allowed
    on the machine. The default value of False disables the feature. Set
    the value to True to enable the feature.
  - This parameter only applies to the MCP, SAP BW, SAP R/3 and CRM,
        SQL, UNIX, Windows (MSLSAM only), and z/OS platforms.
- **Available Property** (Optional): Each Available Property defines
    an available user defined property for the machine. There is no
    limit to the number of properties that can be associated with a
    machine. To make use of the Machine Properties, use tokens with the
    jobs to reference the Machine Properties (e.g.,
    \[\[**MI**.PropertyName\]). For more information, refer to [Using  Properties for Automation](./using-properties.md) and [Machine Instance Property Name Syntax](./using-properties.md#machine).
  - Define a property with the following syntax: **Property
        Name=Property Value**. For information on defining properties,
        refer to [Defining Properties](./defining-properties.md).
- **System Information Sent from the LSAM**: The following fields will
    appear with their values from the LSAM if the LSAM is communicating
    with the server and the LSAM supports the ability to send the
    information.
  - **Time Sent**: The Time the message was sent in a long time
        format CCYY-MM-DD HH:MM:SS (24-hour clock).
    - Value example: Monday 2011-08-08 14:28:59
  - **Time Zone Name**: The local time zone name on the LSAM system.
        This value will only appear if the LSAM supports the ability to
        send the information.
    - Value example: CST
  - **Time Offset from UTC (hours)**: The local time zone offset
        from UTC in hours formatted as HH.MM in decimal format to
        provide half (.5) and quarter hour (.25) offsets. This value
        will only appear if the LSAM supports the ability to send the
        information.
    - Value example: 06.00
  - **Agent Version**: The currently running version of the LSAM on
        the system.
    - Value example: 15.03.12
  - **OS Type**: The Operating System name according to the vendor
        for the LSAM system.
    - Value Example: HP-UX
  - **OS Version**: The version of the operating system on the LSAM
        system according to the vendor, including any "service packs",
        "patches", or "updates".
    - Value Example: 10.2
  - **Hostname**: The network name of the machine where the LSAM is
        running.
    - Value Example: Jupiter3
  - **Agent Name**: The OpCon machine name assigned to this agent as
        recorded on the LSAM system.
    - Value Example: ProductionUnixServer
  - **Agent Socket**: The LSAM connected socket that is established
        with SMANetCom. It will be formatted as IPAddress:Port\#. The IP
        Address will be either IP4 or IP6 format.
    - Value Example: 126.40.90.36:05263
  - **JORS Socket**: The JORS listening socket. It will be formatted
        as IPAddress:Port\#. The IP Address will be either IP4 or IP6
        format.
    - Value Example: 126.40.90.36:05264
  - **SMAFTServerPort**: The listening port for the SMAFT server on
        the LSAM system.
    - Value Example: 05265
  - **SMAFTAgentPort**: The fixed port for SMAFT agent on the LSAM
        system.
    - Value Example: 05266
  - **Max Concurrent Jobs (Agent)**: The maximum concurrent jobs
        allowed by the LSAM. This value will only appear if the LSAM
        supports the ability to send the information.
    - Value Example: 500
  - **SMA Communications Protocol**: The SMA Communications Protocol
        by which the agent expects to be communicating with SMANetCom.
    - Value Example: Contemporary,XML
  - **Check CRC**: Indicates if the agent is doing a CRC check on
        all messages.
    - Value Example: True
  - **Close Socket**: Indicates if the agent closes the socket after
        ever communication. False indicates the agent keeps the socket
        open.
    - Value Example: False
  - **Accept Messages From IP**: The IP Addresses the agent should
        accept connections from.  Values include "All" if any IP
        address can connect; otherwise, the value is a comma separated
        list of IP addresses.
    - Value Example: All
  - **SMANetCom Socket**: The peer name from the SMANetCom
        connection. It will be formatted as IPAddress:Port\#. The IP
        Address will be either IP4 or IP6 format.
    - Value Example: 126.40.90.59:05189
  - **CPU ID**: The unique identifier of the CPU on the LSAM system,
        if the platform supports it.
    - Value Example: za120fnpeil2-01
  - **CPU Type**: The processor type (x86, x64, s390, s390x, zArch,
        etc.) on the LSAM system.
    - Value Example: x64
  - **CPU Model**: The model number of the processor on the LSAM
        system, used to determine the processor capacity (e.g., MIPS
        rating).
    - Value Example: P8600
  - **CPU Count**: The number of CPUs in the LSAM system.
    - Value Example: 4
  - **File Transfer**: Defines if File Transfer is enabled for the
        LSAM and in what capacity. The value will be "Outgoing",
        "Incoming", or "Both". Only LSAMs supporting this feature
        will send back a value.
    - Value Example: Both
  - **JORS Feature**: Defines if the LSAM has the JORS feature
        enabled. The value will be "True" if enabled. Only LSAMs
        supporting this feature will send back a value.
    - Value Example: 10.2
  - **Resource Monitor Feature**: Defines if the LSAM has the
        Resource Monitor feature enabled. Value will be "True" if
        enabled. Only LSAMs supporting this feature will send back a
        value.
    - Value Example: True
  - **Agent Special Features**: Value will be a comma separated list
        of special features enabled for the agent. Version information
        or any other special details should be enclosed in parentheses
        if desired.
    - Value Example: RSJ (1.30.0012), Displays Handler, Message
            Handler
  - **Max Jobs**: The maximum concurrent jobs allowed by the agent.
    - Value Example: 500

### Communication Settings

- **Fully Qualified Domain Name** (Optional): Defines the Fully
    Qualified Domain Name of the machine to configure communication
    using this name instead of the Machine Name.
  - SMANetCom and the LSAMDataRetriever first use the Fully
        Qualified Domain Name for communication if it is specified. If
        not specified, they look for a TCP/IP address. If that is not
        specified, they use the Machine Name for communication.
  - There is no validation on the text, and up to 4000 characters
        are allowed.
- **TCP/IP Address** (Optional): Defines the TCP/IP address of the
    LSAM machine. This definition discontinues the conversion of a
    machine name to a TCP/IP address by the Host file or by DNS.
  - If specified, this field requires a valid IPv4 or IPv6 address.
- **SMA NetCom Identifier** (Optional): Defines a unique SMANetCom
    name to the LSAM. To increase bandwidth for very large
    installations, an OpCon administrator may
    configure multiple instances of SMANetCom.
- **SMA Communications Protocol**: Defines the method by which
    SMANetCom communicates with the LSAM. This setting is a read-only
    parameter for informational purposes. Only the platform-specific
    data migration script can change the value. Values include:
  - Legacy, Non-XML
  - Contemporary, Non-XML
  - Contemporary, XML

**Use TLS for Scheduling Communications**: The default for this
parameter is FALSE. Specify TRUE when this machine should use TLS
Security.

**TLS Certificate Distinguished Name**: If specified, this name must
match the server name on the certificate installed on the machine where
this agent resides. If this field is left blank, then the name on the
certificate is assumed to be either the fully qualified domain name
(FQDN) of the agent machine, if specified in the machine's settings, or
the "OpCon" machine name for the agent, if the FQDN is not specified.
For more information, refer to [Validation of the Digital Certificate Distinguished Name](../server-programs/network-communications.md#validati)
 in the **Server Programs** online help.

**TLS Certificate Serial Number**: An identifier for the LSAM
certificate, optionally (refer below) required only when the LSAM uses a
self-signed certificate to identify itself to OpCon. This number can be
found in the certificate store of the actual operating system where the
LSAM software is installed. When the TLS Certificate Serial Number will
be used, the self-signed certificate must be installed into the
Microsoft Windows certificate store of the OpCon server because OpCon
cannot use one of the locally stored Certificate Authority certificates
to validate the LSAM's self-signed certificate. The serial number
provides the key that OpCon programs use to read the local copy of the
self-signed certificate.\
\

This field is optional if any of the following is true:

1. The servername on the certificate matches the FQDN (fully qualified
    domain name) that was registered in the machine record
2. The servername on the certificate matches the machine name defined
    in Opcon
3. The servername on the certificate matches the "TLS Certificate
    Distinguished Name" that was registered in the machine record

**Check Certificate Revocation List**: The default for this parameter is
FALSE. If TRUE, then connection to the LSAM will fail if its certificate
has been revoked. Please refer to Microsoft Windows documentation for
procedures required to maintain a certification revocation list on the
OpCon server machine.

**Gateway** (Optional): Defines a machine to relay messages between
SMANetCom and other LSAM machines.

- Only machines that have the same SMA Communications Protocol can be
    assigned to this parameter.
- This parameter only applies to the z/OS, OS 2200, and BIS platforms.

:::caution
Unless requested by SMA Technologies, do not change this value.
:::

**JORS Port Number** (Optional): Defines the port that the Job Output
Retrieval System (JORS) service monitors for job output. This port
number must match the JORS port number configured on the LSAM
configuration. For additional information, refer to the LSAM online help
for the desired platform. For more information on the JORS Port Number
and viewing job output, refer to [Viewing a Job Output File](../operations/job-output.md#Viewing).

- The platforms this parameter applies to include:
  - IBM i
  - Java
  - MCP
  - OS 2200
  - SAP BW
  - SAP R/3
  - SQL
  - Tuxedo ART
  - UNIX
  - Windows (MSLSAM only)
  - z/OS
- Valid values range from 1024 to 32767
- Default value is '0' (a value of zero disables the feature).

**Requires XML Escape Sequences**: Determines if the SAM converts
reserved characters (e.g., "<", "\>", "&", etc.) before sending
messages to an LSAM.

- If True, the reserved characters are converted.

- If False (default), the reserved characters are not converted.

- **Check CRC**: Determines if all LSAM-SMANetCom messages are checked
    for the SMA Technologies proprietary digital     signature. With the default value of True, messages are checked. Set
    the value to False to disable the feature.
- **Close Socket During Synchronization**: Determines if SMANetCom
    will close the socket after its initial message with the LSAM.
    Synchronization between SMANetCom and the LSAM occurs more
    efficiently when the socket settings are the same for both. The
    default value of False determines that the socket will remain open.
    Set the value to False to close the connection after initial
    communication.

### Logging

- **TraceAllMessages**: Determines if all LSAM-SMANetCom messages are
    traced. With the default value of True, messages are traced. Set the
    value to False to reduce the amount of logging by suppressing both
    the outbound poll messages (TX9s) and the "No messages waiting"
    (-) messages.

### Time Settings

- **Time Zone Name**: Defines the local time zone name on the LSAM
    system where the Machine physically exists. This value will only
    appear if the LSAM supports the ability to send the information.
  - Value example: CST
- **Time Offset from UTC (hours)**: Defines the local time zone offset
    from UTC in hours formatted as HH.MM in decimal format to provide
    half (.5) and quarter hour (.25) offsets. This value will only
    appear if the LSAM supports the ability to send the information.
  - Value example: 06.00
- **Connection Attempt Timeout (ms)**: Defines in milliseconds how
    long SMANetCom attempts to connect to an LSAM. If an LSAM does not
    respond during this time, SMANetCom discontinues connection attempts
    and the graphical interfaces report the machine as "down".
  - Valid values range from 1000 (Default) to 60000 milliseconds.
- **Time Offset from SAM (hours)**: Defines a read-only setting that
    shows the calculated value of the difference between the Machine's
    time and SAM's time. This field only appears if the machine has
    Time Zone Name and Time Offset from UTC (hours) configured, AND the
    SAM has stored its Time Zone Name and Offset from UTC in the
    database.
- **Poll Interval (ms)**: Defines in milliseconds how frequently
    SMANetCom requests messages (known as a TX9 message) from the LSAM.
  - Valid values range from 500 to 60000 milliseconds.
  - Default value: 1000
- **Check Machine Status (sec)**: Defines in seconds how frequently
    SMANetCom requests machine status (known as a TX4 message) from the
    LSAM.
  - Valid values range from 60 to 300 seconds.
  - Default value: 120
- **Response Timeout (sec)**: Defines in seconds how long SMANetCom
    waits for a response after polling the LSAM (known as a TX9
    message). SMANetCom drops the connection if the LSAM does not
    respond within this time period; nevertheless, SMANetCom attempts
    reconnection.
  - Valid values range from 30 (Default) to 600 seconds.
- **Consecutive Send Sleep Time (ms)**: Defines in milliseconds the wait time between blocks.
  - Valid values range from 100 (Default) to 60000 milliseconds.

### Buffer Settings

- **MaxConsecutiveSend Messages**: Defines the maximum number of
    outbound messages (i.e., a block) to a single LSAM that SMANetCom
    sends before waiting. The maximum and wait time (refer to the
    [Consecutive Send Sleep Time     (ms)](#Consecutive_Send_Sleep_Time_(ms)) parameter) allow the
    operating system to efficiently manage the outbound TCP/IP stack.
  - Valid values range from 0 to 500 messages.
  - Default value: 100
- **Send BufferCount**: Defines the number of outbound TCP/IP buffers
    to allocate for the LSAM connection. The size of one TCP/IP buffer
    is 8192 bytes.
  - Valid values range from 10 to 100 buffers.
  - Default value: 25
- **Receive BufferCount**: Defines the number of inbound TCP/IP
    buffers to allocate for the LSAM connection. The size of one TCP/IP
    buffer is 8192 bytes.
  - Valid values range from 10 to 100 buffers.
  - Default value: 25

### File Transfer Settings

The Advanced Machine Properties File Transfer Settings category are only
available for IBM i, MCP, OS 2200, UNIX, Windows, and z/OS machines. For
information on configuration for File Transfer jobs, refer to [File Transfer Job Details](../job-types/file-transfer.md).

:::note
The File Transport Port Number (TLS), Support TLS for SMAFT Server Communications, and Support TLS for SMAFT Agent Communications settings will be available only if the LSAM currently supports TLS Security for SMA File Transfer jobs.
:::

- **File Transfer Role**: Determines if the machine is allowed to
    process SMA File Transfer jobs. If allowed, the machine must be
    configured to send and/or receive. Valid values include:
  - None
  - Source
  - Destination
  - Both
- **File Transfer Port Number (Non-TLS)**: Defines the port for
    \[unsecured\] File Transfer communications.     -   The port number must match the one configured on the machine
        where the File Transfer Server was installed. For additional
        information, refer to the LSAM online help for the desired
        platform.
  - Valid values range from 1024 to 32767. The Default value is 0.
- **File Transfer Port Number (TLS)**: Defines the port for
    \[secured\] File Transfer communications.     -   If this field is blank or has a value of 0, it will indicate
        that the LSAM does not support TLS Security for SMAFT.

  - The port number must match the one configured on the machine
        where the File Transfer Server was installed. For additional
        information, refer to the LSAM online help for the desired
        platform.

  - Valid values range from 1024 to 32767. The Default value is 0.
- **Support non-TLS for SMAFT Server Communications**: Determines if
    the SMAFT Server currently allows SMAFT connections to be accepted
    using an unsecured data link with the remote SMAFT Agent. Valid
    values are True or False.
- **Support non-TLS for SMAFT Agent Communications**: Determines if
    the SMAFT Agent currently allows SMAFT jobs to be requested using an
    unsecured data link with the remote SMAFT Server. Valid values are
    True or False.
- **Support TLS for SMAFT Agent Communications**: Determines if the
    SMAFT Agent currently supports SMAFT jobs to be requested using a
    TLS-secured data link with the remote SMAFT Server. Valid values are
    True or False.
- **Support TLS for SMAFT Server Communications**: Determines if the
    SMAFT Server currently supports SMAFT connections to be accepted
    using a TLS-secured data link with the remote SMAFT Agent. Valid
    values are True or False.

### SAP BW Details

If maintaining Advanced Machine Parameters for an SAP BW Machine, the
SAP BW Details category appears to define connection information for the
LSAM to connect to the SAP BW system.

**Client ID**: Defines the SAP BW Client ID for the SAPQueryProcessor to
connect to the SAP System.

- Valid values are three-digit numbers ranging from 000 to 999.
- A valid number must be in this field to create jobs in the
    Enterprise Manager.
- Default value: 850

**Gateway**: Defines the full connection string for the
SAPQueryProcessor to connect to the SAP system.

If connecting to an SAP machine within the network, enter the TCP/IP
address.

If connecting to an SAP machine through a router, define the complete
router connection string.

:::tip Example
The following example is a router connection string:

```shell
/H/127.0.0.1/H/cpce801
```

- **cpce801** is the SAP machine name
- **127.0.0.1** is the TCP/IP address of the SAP machine
- A valid connection string must be in this field to create jobs in the Enterprise Manager.

:::

**System Number**: Defines the system number for the SAPQueryProcessor
to connect to the SAP system.

- Valid values are two-digit numbers ranging from 00 (Default) to 99.
- A valid number must be in this field to create jobs in the
    Enterprise Manager.

**RFC Trace**: Determines if the SAP RFC trace for the SAPQueryProcessor
message requests should be turned on. Refer to
[SAPQUERYPROCESSOR](../server-programs/request-router.md#SAPQUERY)
 in the **Server Programs** online help.

**R3Name**: Defines the SAP R/3 instance name when an MSHOST is defined
for the Gateway setting.

**Group**: Defines the name of the SAP server group for a load balancing
connection when an MSHOST is defined for the Gateway setting.

**Query Listener Port**: Defines the port on which the SAP BW LSAM
listens for proxy requests.

### SAP R/3 and CRM Details

If maintaining Advanced Machine Parameters for an SAP R/3 and CRM
Machine, the SAP R/3 and CRM Details category appears to define
connection information for the LSAM to connect to the SAP R/3 or SAP CRM
system.

**Client ID**: Defines the SAP R/3 and CRM Client ID for the
SAPQueryProcessor to connect to the SAP System.

- Valid values are three-digit numbers ranging from 000 to 999.
- A valid number must be in this field to create jobs in the
    Enterprise Manager.
- Default Value: 850

**Gateway**: Defines the full connection string for the
SAPQueryProcessor to connect to the SAP system.

If connecting to an SAP machine within the network, enter the TCP/IP
address.

If connecting to an SAP machine through a router, define the complete
router connection string.

:::tip Example
The following example is a router connection string:

```shell
/H/127.0.0.1/H/cpce801
```

- **cpce801** is the SAP machine name
- **127.0.0.1** is the TCP/IP address of the SAP machine
- A valid connection string must be in this field to create jobs in the Enterprise Manager.

:::

**System Number**: The system number for the SAPQueryProcessor to
connect to the SAP system.

- Valid values are two-digit numbers ranging from 00 (Default) to 99.
- A valid number must be in this field to create jobs in the
    Enterprise Manager.

**RFC Trace**: Determines if the SAP RFC trace for the SAPQueryProcessor
message requests should be turned on. Refer to
[SAPQUERYPROCESSOR](../server-programs/request-router.md#SAPQUERY)
 in the **Server Programs** online help.

- Valid values are Off and On.

**R3Name**: Defines the SAP R/3 instance name when an MSHOST is defined
for the Gateway setting.

**Group**: Defines the name of the SAP server group for a load balancing
connection when an MSHOST is defined for the Gateway setting.

**Query Listener Port**: Defines the port on which the SAP LSAM listens
for proxy requests.
