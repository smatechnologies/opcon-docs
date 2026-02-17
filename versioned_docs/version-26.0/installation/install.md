---
sidebar_label: 'New Install'
---

# New Server Installation

:::caution
Before beginning the installation, complete [Getting Started](./system-requirements.md).
:::

:::note
If installing the SAM and supporting services (SAM-SS) on a machine with a Windows Regional locale setting other than English (US), please contact SMA Technologies before installation.
:::

To install the OpCon Server on a server for the first time, use the
procedures in this chapter. To successfully complete a new installation
of an OpCon Server, it is important to complete all of the procedures in
this chapter from beginning to end.

- To install the OpCon Server interactively, refer to the next section.
- To install the OpCon Server in silent mode, refer to [Silent Mode](./components.md#Silent).

## Interactive OpCon Server Installation

### Install the OpCon Server

:::note
The SAM installation configures the SMA Service Manager as a stand-alone service. If manual or hot failover is desired, refer to [Failover Scenarios](../Files/Database-Information/Failover-Scenarios.md) in the **Database Information** online help.
:::

:::note
When high numbers of LSAMs are in the database, multiple SMANetCom instances can improve performance. To set up multiple SMANetComs, add another section for SMAServMan and give it a unique name. For more information, refer to [TLS Security](../server-programs/network-communications.md#tls) in the **Server Programs** online help.
:::

On the OpCon Server:

1. Log in as a *Windows user with Local Administrative Rights*.
2. Exit all running applications on the desktop.
3. Download the OpCon Web Installer (OWI) zip file from [https://github.com/smatechnologies/opcon-web-installer](https://github.com/smatechnologies/opcon-web-installer).
4. Extract the files and run the OWI to download and launch the installers
for the desired components.  The server should include the following components at a minimum:
   - SMA OpCon
   - SMA OpCon Enterprise Manager
   - SMA OpCon Agent for Microsoft
5. Complete the installer wizard for each component you selected. For details about the specific installers, refer to [Component Installations](./components.md).

:::note
Installation of the SMA OpCon Database Scripts, SMA OpCon SAM, and SMA OpCon Solution Manager components have been consolidated into a single installer. The **SMA OpCon Install.exe** file installs and configures all three components.
:::

### Configure the Server

For information on configuring the server, refer to [OpCon Server Configuration](./configuration.md).
