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
  - Enterprise Manager
last_updated: 2026-06-02
doc_type: procedural
---

# Configuring Advanced Machine Parameters and Properties

For conceptual information on all Advanced Machine Parameters, refer to [Advanced Machine Configuration](../../../objects/machines.md#advanced) in the **Concepts** online help.

:::note
If you assign the TCP/IP address to a machine through the advanced configuration parameters in OpCon, the TCP/IP address must be static. If the TCP/IP address changes, SMANetCom cannot communicate with the agent until you update the database.
:::

## Modify Advanced Machine Parameters

To modify advanced machine parameters, complete the following steps:

1. Select **Machines** under the **Administration** topic. The **Machines** screen displays.
2. Select the machine in the **Select Machine** list.
3. Right-click the graphic in the **Communication Status** frame to open the status menu.
4. Select **Stop Communication** to put the agent in a stopped state.
5. Under **Advanced Settings**, select **Open Advanced Settings Panel**. The **Advanced Machine Properties** dialog displays.
6. Select the appropriate **Machine Properties** tab.
7. Select the machine property to modify.
8. Enter or select the new value in the property field.
9. Select **Update** to save the change, or select **Defaults** to restore the parameter to its system default.
10. Repeat steps 7–9 to modify additional parameters.
11. Select **Save**.
12. Right-click the graphic in the **Communication Status** frame to open the status menu.
13. Select **Start Communication** to put the agent in a started state.

**Result:** The agent resumes communication with OpCon using the updated parameter values.

## Add Available Properties

To add available properties to the machine, complete the following steps:

1. Under **Advanced Settings**, select **Open Advanced Settings Panel**. The **Advanced Machine Properties** dialog displays.
2. Select the **Administrative Machine Information** tab.
3. Select **Available Property**, then select **Add**. The **Add** dialog displays.
4. Enter a name and a value for the property. For example: `ProgramPath="C:\Program Files\OpConxps\Utilities"`.
5. Select **OK**.
6. Select **Update** to save, or select **Defaults** to reset the **Available Property** parameter to its system default.
7. Repeat steps 2–6 until all available properties have been added.
8. Select **Save**.

## Edit Available Properties

To edit existing available properties, complete the following steps:

1. Under **Advanced Settings**, select **Open Advanced Settings Panel**. The **Advanced Machine Properties** dialog displays.
2. Select the **Administrative Machine Information** tab.
3. Select the **Available Property** to edit, then select **Edit**. The **Edit** dialog displays.
4. Edit the name and value as needed.
5. Select **OK**.
6. Select **Update** to save, or select **Defaults** to reset the **Available Property** parameter to its system default.
7. Repeat steps 2–6 for each additional property to edit.
8. Select **Save**.

## Remove Available Properties

To remove available properties from the machine, complete the following steps:

1. Under **Advanced Settings**, select **Open Advanced Settings Panel**. The **Advanced Machine Properties** dialog displays.
2. Select the **Administrative Machine Information** tab.
3. Select the property to remove, then select **Remove**.
4. Select **Update** to save, or select **Defaults** to reset the **Available Property** parameter to its system default.
5. Repeat steps 3–4 for each additional property to remove.
6. Select **Save**.

## Configure the JORS Port Number

To configure the JORS port number, complete the following steps:

1. Under **Advanced Settings**, select **Open Advanced Settings Panel**. The **Advanced Machine Properties** dialog displays.
2. Select **JORS Port Number**.
3. Enter the JORS port number in the text box.
4. Select **Update**, then select **Save**.

## Configure SAP BW Machine Properties

To configure advanced properties for an SAP BW machine, complete the following steps:

1. Select the SAP BW machine in the **Select Machine** list.
2. Under **Advanced Settings**, select **Open Advanced Settings Panel**. The **Advanced Machine Properties** dialog displays.
3. Select the **Communications Settings** tab.
4. Select the **TCP/IP Address** parameter and enter the IP address for the SAP BW machine.
5. Select **Update**.
6. Select the **SAP BW Details** tab.
7. Select **RFC Trace** and set the value to **On** if required. The default is **Off**. Select **Update**.
8. Select **System Number**, enter the two-digit SAP Business Warehouse system number, then select **Update**.
9. Select **Gateway**, enter the full connection string for the SAP Business Warehouse system, then select **Update**.
10. Select **Client ID**, enter the three-digit SAP BW Client ID, then select **Update**.
11. Select **Save**.

**Result:** The SAP BW machine is configured with the updated connection and authentication parameters.

## Configure SAP R/3 and CRM Machine Properties

To configure advanced properties for an SAP R/3 and CRM machine, complete the following steps:

1. Select the SAP R/3 and CRM machine in the **Select Machine** list.
2. Under **Advanced Settings**, select **Open Advanced Settings Panel**. The **Advanced Machine Properties** dialog displays.
3. Select the **Communications Settings** tab.
4. Select the **TCP/IP Address** parameter, enter the IP address for the SAP R/3 and CRM machine, then select **Update**.
5. Select the **SAP R/3 and CRM Details** tab.
6. Select **Client ID**, enter the three-digit SAP Client ID, then select **Update**.
7. Select **Gateway**, enter the full connection string for the SAP system, then select **Update**.
8. Select **RFC Trace** and set the value to **On** if required. The default is **Off**. Select **Update**.
9. Select **System Number**, enter the two-digit SAP system number, then select **Update**.
10. Select **Save**.

**Result:** The SAP R/3 and CRM machine is configured with the updated connection and authentication parameters.
