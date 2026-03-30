---
title: Configuring Advanced Machine Parameters and Properties
description: "For conceptual information on all Advanced Machine Parameters, refer to Advanced Machine Configuration in the Concepts online help."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Configuring Advanced Machine Parameters and Properties

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

For conceptual information on all Advanced Machine Parameters, refer to [Advanced Machine Configuration](../../../objects/machines.md#advanced) in the **Concepts** online help.

:::note
If the administrator assigns the TCP/IP address to the machine through the advanced configuration parameters in OpCon, the TCP/IP address must be static. If for any reason the TCP/IP address changes, SMANetCom will not be able to communicate with the agent until the administrator updates the database.
:::

To configure an advanced machine property:

### Modify Advanced Machine Parameters

To modify advanced machine parameters, complete the following steps:

1. Select on **Machines** under the **Administration** topic. The **Machines** screen displays
2. Select the **machine** in the **Select Machine** list
3. Right-click over the graphic to enable the menu in the **Communication Status** frame
4. Select on **Stop Communication** to put the agent in a stopped state while changes are made
5. Select on **Open Advanced Settings Panel** under **Advanced Settings**. The **Advanced Machine Properties** dialog displays
6. Select on the appropriate **Machine Properties** tab
7. Select on the **machine property**
8. Enter or select the *new value* in the **\<Property Name\>** list
9. Select the **Update** button to save the change, or select **Defaults** to restore the parameter to system defaults
10. Repeat Steps 7–9 to modify additional parameters
11. Select the **Save** button
12. Right-click over the graphic to enable the menu in the **Communication Status** frame
13. Select on **Start Communication** to put the agent in a started state

### Add Available Properties

To add available properties to the machine, complete the following steps:

1. Select on **Open Advanced Settings Panel** under **Advanced Settings**. The **Advanced Machine Properties** dialog displays
2. Select **Available Property** in the **Administrative Machine Information** tab
3. Select the **Add** button. The **Add** dialog displays
4. Enter a *name* and a *value* (e.g., ProgramPath="C:\\Program Files\\OpConxps\\Utilities")
5. Select the **OK** button
6. Select the **Update** button to save, or select **Defaults** to reset the **Available Property** parameter to the system default
7. Repeat Steps 2–6 until all available properties have been added
8. Select the **Save** button

### Edit Available Properties

To edit existing available properties, complete the following steps:

1. Select on **Open Advanced Settings Panel** under **Advanced Settings**. The **Advanced Machine Properties** dialog displays
2. Select on **Available Property** in the **Administrative Machine Information** tab
3. Select the **Edit** button. The **Edit** dialog displays
4. Edit the *name* and the *value*
5. Select the **OK** button
6. Select the **Update** button to save, or select **Defaults** to reset the **Available Property** parameter to the system default
7. Repeat Steps 2–6 until all Available Properties that require editing are changed
8. Select the **Save** button

### Configure the JORS Port Number

To configure the JORS port number, complete the following steps:

1. Select on **Open Advanced Settings Panel** under **Advanced Settings**. The **Advanced Machine Properties** dialog displays
2. Select on **JORS Port Number**
3. Enter the *JORS Port Number* in the text box
4. Select the **Update** button, then select the **Save** button

### Remove Available Properties

To remove available properties from the machine, complete the following steps:

1. Select on **Open Advanced Settings Panel** under **Advanced Settings**. The **Advanced Machine Properties** dialog displays
2. Select on the **Available Property** in the **Administrative Machine Information** tab
3. Select on the **property** to remove and select the **Remove** button
4. Select the **Update** button to save, or select **Defaults** to reset the **Available Property** parameter to the system default
5. Repeat Steps 3–4 until all available properties to be removed have been removed
6. Select the **Save** button

### Configure SAP BW Machine Properties

To configure advanced properties for an SAP BW machine, complete the following steps:

1. Select the **SAP BW machine** in the **Select Machine** list
2. Select on **Open Advanced Settings Panel** under **Advanced Settings**. The **Advanced Machine Properties** dialog displays
3. Select on the **Communications Settings** tab
4. Select on the **TCP/IP Address** parameter and enter the appropriate **IP Address** for the SAP BW machine
5. Select the **Update** button
6. Select on the **SAP BW Details** tab
7. Select on the **RFC Trace** parameter and set to **On** (default is **Off**) if required. Select the **Update** button
8. Select on **System Number**, enter the *two-digit SAP Business Warehouse system number*, then select the **Update** button
9. Select on the **Gateway**, enter the *full connection string* for the SAP Business Warehouse system, then select the **Update** button
10. Select on the **Customer ID**, enter the *three-digit SAP BW Customer ID*, then select the **Update** button
11. Select the **Save** button

### Configure SAP R/3 and CRM Machine Properties

To configure advanced properties for an SAP R/3 and CRM machine, complete the following steps:

1. Select the **SAP R/3 and CRM machine** in the **Select Machine** list
2. Select on **Open Advanced Settings Panel** under **Advanced Settings**. The **Advanced Machine Properties** dialog displays
3. Select on the **Communications Settings** tab
4. Select on the **TCP/IP Address** parameter and enter the appropriate **IP Address** for the SAP R/3 and CRM machine. Select the **Update** button
5. Select on the **SAP R/3 and CRM Details** tab
6. Select on the **Customer ID**, enter the *three-digit SAP BW Customer ID*, then select the **Update** button
7. Select on the **Gateway**, enter the *full connection string* for the SAP Business Warehouse system, then select the **Update** button
8. Select on the **RFC Trace** parameter and set to **On** (default is **Off**) if required. Select the **Update** button
9. Select on **System Number**, enter the *two-digit SAP system number*, then select the **Update** button
10. Select the **Save** button to save all changes to the Advanced Machine Properties

## When Would You Use It?

- You need to adjust settings for Advanced Machine Parameters and Properties in Enterprise Manager
- Default Advanced Machine Parameters and Properties settings no longer meet the operational requirements of your environment

## Why Would You Use It?

- **Centralize control**: Managing Advanced Machine Parameters and Properties settings through Enterprise Manager keeps all configuration changes in one place and makes them auditable
- Settings validated through Enterprise Manager are checked against business rules before saving, reducing the risk of misconfiguration

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: What does configuring advanced machine parameters and properties control?**

Configuring advanced machine parameters and properties defines the settings that determine how OpCon behaves for this feature. Review the available options and set values appropriate for your environment.

**Q: How many steps are required to configure advanced machine parameters and properties?**

The configuration procedure is organized into six phases: modifying parameters, adding available properties, editing available properties, configuring the JORS port, removing available properties, and configuring SAP-specific machine properties. Complete all relevant phases and select **Save** to apply the changes.

## Glossary

**JORS (Job Output Retrieval System)**: The system used to retrieve and display job output — logs and reports — from agent machines directly within the OpCon graphical interfaces.

**SMANetCom (SMA Network Communications Module)**: Handles TCP/IP communication of platform-specific automation information between SAM and all agents. Uses database tables to maintain reliable communication and data integrity.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**TCP/IP**: The network communication protocol used for all data exchange between SMANetCom on the OpCon server and agents on target machines.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
