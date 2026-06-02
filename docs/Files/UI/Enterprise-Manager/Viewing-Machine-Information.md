---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Machine Information
description: "View detailed configuration and status for a machine from the Machines Status view in Enterprise Manager."
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

# Viewing Machine Information

The **Machines Status** view in Enterprise Manager lists the machines defined in your environment. From this view, you can open the **Machine Information** dialog for any machine to review its configuration and current operational state. The dialog displays the machine's name, protocol, status, type, networking details, concurrent job limits, and time zone, along with tabs for machine groups, available properties, and documentation.

## View machine information from the Table tab

To view machine information from the **Table** tab, complete the following steps:

1. Under the **Operation** topic, select **Machines Status**.
2. Select the **Table** tab.
3. Double-click the machine name, or right-click the machine and select **Machine Information**.

   The **Machine Information** dialog opens.
4. Review the machine details. For a description of each field, see [Machine Information fields](#machine-information-fields).
5. Select **OK** to close the dialog.

**Result:** The **Machine Information** dialog closes and you return to the **Table** tab.

## View machine information from the Map tab

To view machine information from the **Map** tab, complete the following steps:

1. Under the **Operation** topic, select **Machines Status**.
2. Select the **Map** tab.
3. Right-click the machine and select **Machine Information**.

   The **Machine Information** dialog opens.
4. Review the machine details. For a description of each field, see [Machine Information fields](#machine-information-fields).
5. Select **OK** to close the dialog.

**Result:** The **Machine Information** dialog closes and you return to the **Map** tab.

## Machine Information fields

The **Machine Information** dialog displays the following fields:

| Field | Description |
|---|---|
| **Machine Name** | The name of the machine. |
| **Protocol** | The communication protocol used by the machine. |
| **Status** | The current communication status of the machine. |
| **Last Update** | The date and time the machine status was last updated. |
| **LSAM Type** | The Agent type defined for the machine. |
| **Running Jobs** | The number of jobs currently running on the machine. |
| **Domain Name** | The fully qualified domain name of the machine. |
| **Max Concurrent Jobs (Agent)** | The maximum number of concurrent jobs allowed by the Agent. |
| **Netcom Name** | The SMANetCom instance assigned to the machine. |
| **Max Concurrent Jobs (Server)** | The maximum number of concurrent jobs allowed by the server limit. |
| **LSAM Socket Number** | The socket number used for communication with the machine. |
| **IP Address** | The IP address of the machine. |
| **Supports Kill Job** | Indicates whether the machine supports the Kill Job function (**Yes** or **No**). |
| **Gateway** | The gateway defined for the machine. |
| **Supports File Transfer** | Indicates whether the machine supports file transfer (**Yes** or **No**). |
| **JORS Socket Number** | The JORS socket number used by the machine. |
| **Time Zone** | The time zone configured for the machine, with its offset from UTC. |
| **Time Offset from SAM** | The machine's time offset relative to SAM. |
| **TLS** | Indicates whether TLS is used for scheduling communication (**Yes** or **No**). |
| **TLS Certificate S/N** | The serial number of the machine's TLS certificate. |

The dialog also includes the following tabs:

| Tab | Description |
|---|---|
| **Machine Groups** | The machine groups the machine belongs to. |
| **Machine Properties** | The properties available on the machine. |
| **Documentation** | The documentation text stored for the machine. |

## Related Topics

- [Machine Information](Machine-Information.md)
