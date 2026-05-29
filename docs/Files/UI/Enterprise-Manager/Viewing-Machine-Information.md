---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Machine Information
description: "View detailed information about a machine from the Machines Status view in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-05-29
doc_type: procedural
---

# Viewing Machine Information

## What Is It?

The **Machines Status** view in Enterprise Manager lists the machines defined in your environment and lets you open the **Machine Information** dialog for any one of them. The dialog shows detailed configuration and status for a single machine, including its name, protocol, status, type, networking details, concurrent job limits, and time zone. It also provides tabs for the machine's groups, available properties, and documentation.

Use this procedure when you need to confirm how a machine is configured or to check its current operational state.

## Open the Machines Status view

To open the Machines Status view, complete the following steps:

1. Under the **Operation** topic, select **Machines Status**.

The view opens with two tabs: **Table** and **Map**.

## View machine information from the Table tab

To view machine information from the **Table** tab, complete the following steps:

1. Select the **Table** tab.
2. Double-click the machine name, or right-click the machine and select **Machine Information**.

   The **Machine Information** dialog opens.
3. Review the machine details. For a description of each field, see [Machine Information fields](#machine-information-fields).
4. Select **OK** to close the **Machine Information** dialog.

**Result:** The **Machine Information** dialog closes and you return to the **Table** tab.

## View machine information from the Map tab

To view machine information from the **Map** tab, complete the following steps:

1. Select the **Map** tab.
2. Right-click the machine and select **Machine Information**.

   The **Machine Information** dialog opens.
3. Review the machine details. For a description of each field, see [Machine Information fields](#machine-information-fields).
4. Select **OK** to close the **Machine Information** dialog.

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

## FAQs

**Q: How do I open the Machine Information dialog?**

From the **Table** tab, double-click the machine name or right-click the machine and select **Machine Information**. From the **Map** tab, right-click the machine and select **Machine Information**.

**Q: Does opening the Machine Information dialog change the machine configuration?**

No. The dialog is read-only and is used to view machine details and status.

## Related Topics

- [Machine Information](Machine-Information.md)

## Glossary

**Enterprise Manager (EM)**: OpCon's graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an Agent installed. OpCon routes job run requests to machines through SMANetCom, and machines report job completion status back to SAM.
