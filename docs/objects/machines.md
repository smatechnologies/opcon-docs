---
title: Machines
description: "All systems with agents installed must be defined as a machine in the OpCon database."
product_area: Core Concepts
audience: Automation Engineer, Application Owner
version_introduced: "[see release notes]"
tags:
  - Procedural
  - Automation Engineer
  - Application Owner
  - Getting Started
last_updated: 2026-03-18
doc_type: procedural
---

# Machines

All systems with agents installed must be defined as a machine in the OpCon database. Once a machine is defined, the SAM and supporting services can begin scheduling jobs on it.

The following fields apply when defining a machine:

- **Name**: Defines the official host name or alias of the machine where the agent is installed. The machine name must be resolvable to a TCP/IP address. For additional information, refer to [Machine Name Resolution](#machine-name-resolution).
- **Documentation**: Provides an area for descriptions, explanations, and notes for the defined machine.
- **Machine Type**: Defines the type of agent being defined.
- **Socket Number**: Defines the socket (port number) for communication with the agent. The socket number must match the one configured on the machine where the agent was installed.
- **Max Concurrent Jobs (Server)**: Shows the maximum number of jobs allowed by the OpCon server.
  - If this value is smaller than the Max Concurrent Jobs (Agent), the SAM uses this value to determine the maximum.
  - A value of zero (0) indicates that Max Concurrent Jobs is controlled by the agent.
- **Advanced Settings**: Determines specific communication, logging, Available Properties, and SMA File Transfer settings. For complete information, refer to [Advanced Machine Configuration](#advanced-machine-configuration).
- **Communication Status**: Determines if SMANetCom communicates with the defined machine. If communication is started, SMANetCom attempts to contact the agent.
- **Job Starts**: Determines if the SAM sends job start information to the agent. While the primary purpose of an agent is to run jobs, agents can also send external OpCon events. If new job starts should not be initiated on the agent but external OpCon events should still process, disable Job Starts.
- **Machine Group Assignment**: Defines the machine groups for the machine. The machine group must be defined before assigning it to the machine. For additional information, refer to [Machine Groups](./machine-groups.md).

## Machine Name Resolution

For SMANetCom to communicate with an agent to run jobs, the machine name in the database must resolve to a TCP/IP address. The machine name must match either a host name recognized by the DNS server, or a TCP/IP address must be manually configured.

The following methods associate a TCP/IP address with an OpCon machine name:

- The DNS server. (For information on configuring a DNS server, contact your network administrator.)
- Assign the TCP/IP address to the machine through the advanced configuration options in OpCon. For additional information, refer to [Communication Settings](#communication-settings).
- The hosts file on the OpCon application server. For additional information, refer to [Configure the Hosts File on the OpCon Application Server](#configure-the-hosts-file-on-the-opcon-application-server).

:::note
To confirm name resolution for DNS or hosts file configuration, ping the machine by name from the OpCon application server.
:::

### Configure the Hosts File on the OpCon Application Server

To configure the hosts file on the OpCon application server, complete the following steps:

1. Right-click **Start** on the Windows task bar and select **Explore**.
2. Go to the `<Windows Directory>\System32\Drivers\etc\` directory.
3. Right-click the **hosts** file and select **Open With**.
4. Select an ASCII text editor (for example, Notepad) in the **Choose the program you want to use** list.
5. Insert a new line below the last line containing a TCP/IP address.
6. Type the TCP/IP address for the agent machine.
7. Press **Tab**.
8. Type the hostname alias as it is entered in Enterprise Manager.
9. Select **File > Save**.
10. Open a command prompt and ping the machine by name to confirm the connection (for example, `ping Servername`).

**Result:** The hosts file entry is saved and the machine name resolves to the configured TCP/IP address, allowing SMANetCom to communicate with the agent.

## Advanced Machine Configuration

Advanced Machine Configuration contains machine parameters, parameter values, and whether each value is from the system (default) or is user-defined. The default value for each setting is functional for most agents; however, consult the platform-specific agent documentation for detailed information. An asterisk (\*) in front of a value indicates it is not the default. When an asterisk appears, the default value is shown in parentheses after the current value. Refer to [Configuring Advanced Machine Parameters and Properties](../Files/UI/Enterprise-Manager/Configuring-Advanced-Machine-Properties.md) in the Enterprise Manager online help.

The administrative options are organized in the following categories:

- [Administrative Machine Information](#administrative-machine-information)
- [Communication Settings](#communication-settings)
- [Logging](#logging)
- [Time Settings](#time-settings)
- [Buffer Settings](#buffer-settings)
- [File Transfer Settings](#file-transfer-settings)
- [SAP BW Details](#sap-bw-details)
- [SAP R/3 and CRM Details](#sap-r3-and-crm-details)

### Administrative Machine Information

- **Allow "Kill Job"**: Determines if the kill function is allowed on the machine. The default value of `False` disables the feature. Set the value to `True` to enable the feature.
  - This parameter applies only to the MCP, SAP BW, SAP R/3 and CRM, SQL, UNIX, Windows (MSLSAM only), and z/OS platforms.
- **Available Property** (Optional): Each Available Property defines a user-defined property for the machine. There is no limit to the number of properties that can be associated with a machine. To use machine properties, use tokens with the jobs to reference the machine properties (for example, `[[MI.PropertyName]]`). For more information, refer to [Using Properties for Automation](./using-properties.md) and [Machine Instance Property Name Syntax](./using-properties.md#machine).
  - Define a property with the following syntax: `Property Name=Property Value`. For information on defining properties, refer to [Defining Properties](./defining-properties.md).
- **System Information Sent from the Agent**: The following fields appear with values from the agent if the agent is communicating with the server and supports sending the information.
  - **Time Sent**: The time the message was sent, in long time format `CCYY-MM-DD HH:MM:SS` (24-hour clock). Example: `Monday 2011-08-08 14:28:59`
  - **Time Zone Name**: The local time zone name on the agent system. This value appears only if the agent supports sending the information. Example: `CST`
  - **Time Offset from UTC (hours)**: The local time zone offset from UTC in hours, formatted as `HH.MM` in decimal format to provide half (`.5`) and quarter-hour (`.25`) offsets. Example: `06.00`
  - **Agent Version**: The currently running version of the agent on the system. Example: `15.03.12`
  - **OS Type**: The operating system name according to the vendor for the agent system. Example: `HP-UX`
  - **OS Version**: The version of the operating system on the agent system, including any service packs, patches, or updates. Example: `10.2`
  - **Hostname**: The network name of the machine where the agent is running. Example: `Jupiter3`
  - **Agent Name**: The OpCon machine name assigned to this agent as recorded on the agent system. Example: `ProductionUnixServer`
  - **Agent Socket**: The agent connected socket established with SMANetCom, formatted as `IPAddress:Port#`. The IP address is in IPv4 or IPv6 format. Example: `126.40.90.36:05263`
  - **JORS Socket**: The JORS listening socket, formatted as `IPAddress:Port#`. Example: `126.40.90.36:05264`
  - **SMAFTServerPort**: The listening port for the SMAFT server on the agent system. Example: `05265`
  - **SMAFTAgentPort**: The fixed port for the SMAFT agent on the agent system. Example: `05266`
  - **Max Concurrent Jobs (Agent)**: The maximum concurrent jobs allowed by the agent. This value appears only if the agent supports sending the information. Example: `500`
  - **SMA Communications Protocol**: The SMA Communications Protocol by which the agent expects to communicate with SMANetCom. Example: `Contemporary,XML`
  - **Check CRC**: Indicates if the agent performs a CRC check on all messages. Example: `True`
  - **Close Socket**: Indicates if the agent closes the socket after every communication. `False` indicates the agent keeps the socket open. Example: `False`
  - **Accept Messages From IP**: The IP addresses from which the agent accepts connections. `All` indicates any IP address can connect; otherwise, the value is a comma-separated list of IP addresses. Example: `All`
  - **SMANetCom Socket**: The peer name from the SMANetCom connection, formatted as `IPAddress:Port#`. Example: `126.40.90.59:05189`
  - **CPU ID**: The unique identifier of the CPU on the agent system, if the platform supports it. Example: `za120fnpeil2-01`
  - **CPU Type**: The processor type on the agent system (for example, `x86`, `x64`, `s390`). Example: `x64`
  - **CPU Model**: The model number of the processor on the agent system, used to determine processor capacity. Example: `P8600`
  - **CPU Count**: The number of CPUs in the agent system. Example: `4`
  - **File Transfer**: Defines if file transfer is enabled for the agent and in what capacity. Values: `Outgoing`, `Incoming`, or `Both`. Only agents supporting this feature send back a value. Example: `Both`
  - **JORS Feature**: Defines if the agent has the JORS feature enabled. The value is `True` if enabled. Only agents supporting this feature send back a value.
  - **Resource Monitor Feature**: Defines if the agent has the Resource Monitor feature enabled. The value is `True` if enabled. Only agents supporting this feature send back a value.
  - **Agent Special Features**: A comma-separated list of special features enabled for the agent. Example: `RSJ (1.30.0012), Displays Handler, Message Handler`
  - **Max Jobs**: The maximum concurrent jobs allowed by the agent. Example: `500`

### Communication Settings

- **Fully Qualified Domain Name** (Optional): Defines the Fully Qualified Domain Name of the machine to configure communication using this name instead of the machine name.
  - SMANetCom and the LSAMDataRetriever first use the Fully Qualified Domain Name for communication if specified. If not specified, they look for a TCP/IP address. If that is not specified, they use the machine name.
  - There is no validation on the text, and up to 4000 characters are allowed.
- **TCP/IP Address** (Optional): Defines the TCP/IP address of the agent machine. This setting stops the conversion of a machine name to a TCP/IP address by the hosts file or by DNS.
  - If specified, this field requires a valid IPv4 or IPv6 address.
- **SMA NetCom Identifier** (Optional): Defines a unique SMANetCom name for the agent. To increase bandwidth for very large installations, an OpCon administrator may configure multiple instances of SMANetCom.
- **SMA Communications Protocol**: Defines the method by which SMANetCom communicates with the agent. This is a read-only parameter for informational purposes only. Only the platform-specific data migration script can change this value. Values include:
  - `Legacy, Non-XML`
  - `Contemporary, Non-XML`
  - `Contemporary, XML`
- **Use TLS for Scheduling Communications**: The default for this parameter is `FALSE`. Set to `TRUE` when this machine should use TLS security.
- **TLS Certificate Distinguished Name**: If specified, this name must match the server name on the certificate installed on the machine where the agent resides. If this field is left blank, the name on the certificate is assumed to be either the Fully Qualified Domain Name (FQDN) of the agent machine (if specified in the machine settings) or the OpCon machine name for the agent (if the FQDN is not specified). For more information, refer to [Validation of the Digital Certificate Distinguished Name](../server-programs/network-communications.md#validati) in the Server Programs online help.
- **TLS Certificate Serial Number**: An identifier for the agent certificate, required only when the agent uses a self-signed certificate to identify itself to OpCon. This number can be found in the certificate store of the operating system where the agent software is installed. When the TLS Certificate Serial Number is used, the self-signed certificate must be installed into the Microsoft Windows certificate store of the OpCon server because OpCon cannot use a locally stored Certificate Authority certificate to validate the self-signed certificate. The serial number provides the key that OpCon uses to read the local copy of the self-signed certificate.

  This field is optional if any of the following is true:
  1. The server name on the certificate matches the FQDN registered in the machine record.
  2. The server name on the certificate matches the machine name defined in OpCon.
  3. The server name on the certificate matches the **TLS Certificate Distinguished Name** registered in the machine record.

- **Check Certificate Revocation List**: The default for this parameter is `FALSE`. If `TRUE`, the connection to the agent fails if its certificate has been revoked. See Microsoft Windows documentation for procedures required to maintain a certification revocation list on the OpCon server machine.
- **Gateway** (Optional): Defines a machine to relay messages between SMANetCom and other agent machines.
  - Only machines with the same SMA Communications Protocol can be assigned to this parameter.
  - This parameter applies only to the z/OS, OS 2200, and BIS platforms.

  :::caution
  Unless requested by Continuous, do not change this value.
  :::

- **JORS Port Number** (Optional): Defines the port that the Job Output Retrieval System (JORS) service monitors for job output. This port number must match the JORS port number configured on the agent. For additional information, refer to the agent online help for the desired platform. For more on the JORS Port Number and viewing job output, refer to [Viewing a Job Output File](../operations/job-output.md#Viewing).
  - This parameter applies to the following platforms:
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
  - Valid values range from 1024 to 32767.
  - Default value: `0` (a value of zero disables the feature).

- **Requires XML Escape Sequences**: Determines if the SAM converts reserved characters (for example, `<`, `>`, `&`) before sending messages to an agent.
  - If `True`, the reserved characters are converted.
  - If `False` (default), the reserved characters are not converted.

- **Check CRC**: Determines if all agent-SMANetCom messages are checked for the Continuous proprietary digital signature. With the default value of `True`, messages are checked. Set the value to `False` to disable the feature.
- **Close Socket During Synchronization**: Determines if SMANetCom closes the socket after its initial message with the agent. The default value of `False` keeps the connection open after initial communication.

### Logging

- **TraceAllMessages**: Determines if all agent-SMANetCom messages are traced. With the default value of `False`, messages are not traced. Set the value to `True` to enable tracing. When enabled, tracing suppresses both the outbound poll messages (TX9s) and the "No messages waiting" (-) messages.

### Time Settings

- **Time Zone Name**: Defines the local time zone name on the agent system where the machine physically exists. This value appears only if the agent supports sending the information. Example: `CST`
- **Time Offset from UTC (hours)**: Defines the local time zone offset from UTC in hours, formatted as `HH.MM` in decimal format to provide half (`.5`) and quarter-hour (`.25`) offsets. Example: `06.00`
- **Connection Attempt Timeout (ms)**: Defines in milliseconds how long SMANetCom attempts to connect to an agent. If an agent does not respond during this time, SMANetCom stops connection attempts and the graphical interfaces report the machine as down.
  - Valid values range from 1000 (default) to 60000 milliseconds.
- **Time Offset from SAM (hours)**: A read-only setting that shows the calculated difference between the machine's time and SAM's time. This field appears only if the machine has **Time Zone Name** and **Time Offset from UTC (hours)** configured, and the SAM has stored its time zone name and offset from UTC in the database.
- **Poll Interval (ms)**: Defines in milliseconds how frequently SMANetCom requests messages (TX9 messages) from the agent.
  - Valid values range from 500 to 60000 milliseconds.
  - Default value: `1000`
- **Check Machine Status (sec)**: Defines in seconds how frequently SMANetCom requests machine status (TX4 messages) from the agent.
  - Valid values range from 60 to 300 seconds.
  - Default value: `120`
- **Response Timeout (sec)**: Defines in seconds how long SMANetCom waits for a response after polling the agent (TX9 message). SMANetCom drops the connection if the agent does not respond within this time period; however, SMANetCom attempts reconnection.
  - Valid values range from 30 (default) to 600 seconds.
- **Consecutive Send Sleep Time (ms)**: Defines in milliseconds the wait time between blocks of outbound messages.
  - Valid values range from 100 (default) to 60000 milliseconds.

### Buffer Settings

- **MaxConsecutiveSend Messages**: Defines the maximum number of outbound messages (a block) to a single agent that SMANetCom sends before waiting. The maximum and wait time (refer to **Consecutive Send Sleep Time (ms)**) allow the operating system to efficiently manage the outbound TCP/IP stack.
  - Valid values range from 0 to 500 messages.
  - Default value: `300`
- **Send BufferCount**: Defines the number of outbound TCP/IP buffers to allocate for the agent connection. The size of one TCP/IP buffer is 8192 bytes.
  - Valid values range from 10 to 100 buffers.
  - Default value: `25`
- **Receive BufferCount**: Defines the number of inbound TCP/IP buffers to allocate for the agent connection. The size of one TCP/IP buffer is 8192 bytes.
  - Valid values range from 10 to 100 buffers.
  - Default value: `25`

### File Transfer Settings

The Advanced Machine Properties File Transfer Settings category is available only for IBM i, MCP, OS 2200, UNIX, Windows, and z/OS machines. For information on configuration for File Transfer jobs, refer to [File Transfer Job Details](../job-types/file-transfer.md).

:::note
The **File Transport Port Number (TLS)**, **Support TLS for SMAFT Server Communications**, and **Support TLS for SMAFT Agent Communications** settings are available only if the agent currently supports TLS security for SMA File Transfer jobs.
:::

- **File Transfer Role**: Determines if the machine is allowed to process SMA File Transfer jobs. If allowed, the machine must be configured to send and/or receive. Valid values:
  - `None`
  - `Source`
  - `Destination`
  - `Both`
- **File Transfer Port Number (Non-TLS)**: Defines the port for unsecured file transfer communications.
  - The port number must match the one configured on the machine where the File Transfer Server was installed. For additional information, refer to the agent online help for the desired platform.
  - Valid values range from 1024 to 32767. Default value: `0`
- **File Transfer Port Number (TLS)**: Defines the port for secured file transfer communications.
  - A blank value or `0` indicates the agent does not support TLS security for SMAFT.
  - The port number must match the one configured on the machine where the File Transfer Server was installed.
  - Valid values range from 1024 to 32767. Default value: `0`
- **Support non-TLS for SMAFT Server Communications**: Determines if the SMAFT Server allows SMAFT connections using an unsecured data link with the remote SMAFT agent. Valid values: `True` or `False`.
- **Support non-TLS for SMAFT Agent Communications**: Determines if the SMAFT agent allows SMAFT jobs to be requested using an unsecured data link with the remote SMAFT Server. Valid values: `True` or `False`.
- **Support TLS for SMAFT Agent Communications**: Determines if the SMAFT agent supports SMAFT jobs requested using a TLS-secured data link with the remote SMAFT Server. Valid values: `True` or `False`.
- **Support TLS for SMAFT Server Communications**: Determines if the SMAFT Server supports SMAFT connections using a TLS-secured data link with the remote SMAFT agent. Valid values: `True` or `False`.

### SAP BW Details

If you are configuring Advanced Machine Parameters for an SAP BW machine, the SAP BW Details category appears to define connection information for the agent to connect to the SAP BW system.

- **Customer ID**: Defines the SAP BW Customer ID for the SAPQueryProcessor to connect to the SAP system.
  - Valid values are three-digit numbers ranging from 000 to 999.
  - A valid number must be in this field to create SAP jobs in OpCon.
  - Default value: `850`

- **Gateway**: Defines the full connection string for the SAPQueryProcessor to connect to the SAP system.
  - If connecting to an SAP machine within the network, enter the TCP/IP address.
  - If connecting to an SAP machine through a router, define the complete router connection string.

  :::tip Example
  The following example is a router connection string:

  ```shell
  /H/127.0.0.1/H/cpce801
  ```

  - `cpce801` is the SAP machine name.
  - `127.0.0.1` is the TCP/IP address of the SAP machine.
  - A valid connection string must be in this field to create SAP jobs in OpCon.
  :::

- **System Number**: Defines the system number for the SAPQueryProcessor to connect to the SAP system.
  - Valid values are two-digit numbers ranging from `00` (default) to `99`.
  - A valid number must be in this field to create SAP jobs in OpCon.

- **RFC Trace**: Determines if the SAP RFC trace for the SAPQueryProcessor message requests should be turned on. Refer to [SAPQUERYPROCESSOR](../server-programs/request-router.md#SAPQUERY) in the Server Programs online help.

- **R3Name**: Defines the SAP R/3 instance name when an MSHOST is defined for the Gateway setting.

- **Group**: Defines the name of the SAP server group for a load balancing connection when an MSHOST is defined for the Gateway setting.

- **Query Listener Port**: Defines the port on which the SAP BW agent listens for proxy requests.

### SAP R/3 and CRM Details

If you are configuring Advanced Machine Parameters for an SAP R/3 and CRM machine, the SAP R/3 and CRM Details category appears to define connection information for the agent to connect to the SAP R/3 or SAP CRM system.

- **Customer ID**: Defines the SAP R/3 and CRM Customer ID for the SAPQueryProcessor to connect to the SAP system.
  - Valid values are three-digit numbers ranging from 000 to 999.
  - A valid number must be in this field to create SAP jobs in OpCon.
  - Default value: `850`

- **Gateway**: Defines the full connection string for the SAPQueryProcessor to connect to the SAP system.
  - If connecting to an SAP machine within the network, enter the TCP/IP address.
  - If connecting to an SAP machine through a router, define the complete router connection string.

  :::tip Example
  The following example is a router connection string:

  ```shell
  /H/127.0.0.1/H/cpce801
  ```

  - `cpce801` is the SAP machine name.
  - `127.0.0.1` is the TCP/IP address of the SAP machine.
  - A valid connection string must be in this field to create SAP jobs in OpCon.
  :::

- **System Number**: The system number for the SAPQueryProcessor to connect to the SAP system.
  - Valid values are two-digit numbers ranging from `00` (default) to `99`.
  - A valid number must be in this field to create SAP jobs in OpCon.

- **RFC Trace**: Determines if the SAP RFC trace for the SAPQueryProcessor message requests should be turned on. Refer to [SAPQUERYPROCESSOR](../server-programs/request-router.md#SAPQUERY) in the Server Programs online help.
  - Valid values are `Off` and `On`.

- **R3Name**: Defines the SAP R/3 instance name when an MSHOST is defined for the Gateway setting.

- **Group**: Defines the name of the SAP server group for a load balancing connection when an MSHOST is defined for the Gateway setting.

- **Query Listener Port**: Defines the port on which the SAP R/3 and CRM agent listens for proxy requests.

## Troubleshooting

**Machine name cannot be resolved to a TCP/IP address** — If the machine name in the OpCon database does not resolve to a TCP/IP address (whether via DNS, a manual IP assignment in advanced settings, or the hosts file), SMANetCom cannot communicate with the agent and jobs cannot run. Configure name resolution using one of the three supported methods: DNS, the TCP/IP address field in advanced machine settings, or the hosts file on the OpCon application server. Ping the machine by name from the OpCon server to confirm resolution.

**Self-signed TLS certificate causes connection failure** — When an agent uses a self-signed certificate, OpCon cannot validate it using locally stored Certificate Authority certificates. Install the self-signed certificate into the Microsoft Windows certificate store on the OpCon server and enter the certificate's serial number in the **TLS Certificate Serial Number** field of the machine record.

**Connection to the agent fails when Check Certificate Revocation List is TRUE** — Setting **Check Certificate Revocation List** to `TRUE` causes SMANetCom to reject the agent connection if the agent's certificate appears on the revocation list. Maintain an up-to-date certification revocation list on the OpCon server machine (refer to Microsoft Windows documentation) or set **Check Certificate Revocation List** to `FALSE` if revocation checking is not required.
