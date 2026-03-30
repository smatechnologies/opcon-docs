---
sidebar_label: 'New Install'
title: New Server Installation
description: "Step-by-step instructions for installing OpCon on a new server."
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

# New Server Installation

**Theme:** Configure  
**Who Is It For?** System Administrator

## What Is It?

:::caution
Before beginning the installation, complete [Getting Started](./system-requirements.md).
:::

:::note
If installing the SAM and supporting services (SAM-SS) on a machine with a Windows Regional locale setting other than English (US), contact Continuous before installation.
:::

Complete all procedures in this chapter from beginning to end to successfully install an OpCon Server for the first time.

- To install interactively, refer to the next section
- To install in silent mode, refer to [Silent Mode](./components.md#Silent)

## When Would You Use It?

- Complete all procedures in this chapter from beginning to end to successfully install an OpCon Server for the first time

## Why Would You Use It?

- **New Server**: Complete all procedures in this chapter from beginning to end to successfully install an OpCon Server for the first time

## Interactive OpCon Server Installation

### Install the OpCon Server

:::note
The SAM installation configures the SMA Service Manager as a stand-alone service. For manual or hot failover, refer to [Failover Scenarios](../Files/Database-Information/Failover-Scenarios.md) in the **Database Information** online help.
:::

:::note
When high numbers of agents are in the database, multiple SMANetCom instances can improve performance. To set up multiple SMANetComs, add another section for SMAServMan and give it a unique name. Refer to [TLS Security](../server-programs/network-communications.md#tls) in the **Server Programs** online help.
:::

On the OpCon Server:

1. Log in as a *Windows user with Local Administrative Rights*
2. Exit all running applications on the desktop

3. Download the OpCon Web Installer (OWI) zip file from [https://github.com/smatechnologies/opcon-web-installer](https://github.com/smatechnologies/opcon-web-installer).
4. Extract the files and run the OWI to download and open the installers for the desired components. The server must include at minimum:
   - SMA OpCon
   - SMA OpCon Enterprise Manager
   - SMA OpCon Agent for Microsoft
5. Complete the installer wizard for each selected component. For details, refer to [Component Installations](./components.md)

:::note
The SMA OpCon Database Scripts, SMA OpCon SAM, and SMA OpCon Solution Manager are consolidated into a single installer. **SMA OpCon Install.exe** installs and configures all three components.
:::

### Configure the Server

For server configuration, refer to [OpCon Server Configuration](./configuration.md).

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What should be completed before beginning a new OpCon server installation?**

Complete the Getting Started guide (system-requirements.md) before beginning installation to ensure all hardware, software, and database requirements are met.

**Q: How do you install OpCon interactively vs. in silent mode?**

For an interactive installation, follow the Interactive OpCon Server Installation procedure. For silent mode, refer to the Silent Mode section in Component Installations.

**Q: Where should user scripts and custom programs be stored to survive upgrades?**

Place user scripts in `<Configuration Directory>\Scripts\` and custom programs in `<Target Directory>\OpConxps\Binn\` to prevent them from being deleted during upgrades.

## Glossary

**TLS (Transport Layer Security)**: An encryption protocol used to secure TCP/IP communications between SMANetCom and agents, ensuring that job start and status data is transmitted safely.

**SMANetCom (SMA Network Communications Module)**: Handles TCP/IP communication of platform-specific automation information between SAM and all agents. Uses database tables to maintain reliable communication and data integrity.

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.
