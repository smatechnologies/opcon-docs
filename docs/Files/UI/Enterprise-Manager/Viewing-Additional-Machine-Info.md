---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Additional Machine Information
description: "Use this procedure to view cross-references, audit records, and detailed runtime information for a machine in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Viewing Additional Machine Information

Enterprise Manager provides three ways to view additional information about a machine: a cross-reference list of jobs that use the machine, an audit history of changes to the machine record, and a summary dialog showing current runtime details.

## View jobs that use a machine

To view the jobs that reference a machine, complete the following steps:

1. Under the **Administration** topic, select **Machines**. The **Machines** screen displays.
2. In the **Select Machine** list, select the machine you want to inspect.
3. On the toolbar, select the **Cross Reference** button. A dialog opens listing the Master Jobs and Daily Jobs that reference the selected machine.
4. Select **OK** to close the dialog.

**Result:** You can see which jobs use the machine as a primary or alternate machine assignment.

## View audit records for a machine

To view the audit history for a machine, complete the following steps:

1. Under the **Administration** topic, select **Machines**. The **Machines** screen displays.
2. In the **Select Machine** list, select the machine you want to inspect.
3. On the toolbar, select the **View Audit** button. The audit dialog opens showing all recorded changes to the machine.
4. Select **Close** to dismiss the dialog.

**Result:** Each audit record shows the timestamp, the user or application that made the change, and the original and updated values.

## View runtime details for a machine

To view the runtime summary for a machine, complete the following steps:

1. In any view that displays machines, right-click the machine.
2. Select **Machine Information**. The **Machine Information** dialog opens.

The dialog displays the following details:

| Field | Description |
|---|---|
| **Name** | The machine name as defined in OpCon. |
| **Protocol** | The communication protocol used between OpCon and the Agent. |
| **Status** | The current status of the machine. |
| **Last Update** | The date and time the machine record was last modified. |
| **Type** | The Agent type for the machine. |
| **Running Jobs** | The number of jobs currently running on the machine. |
| **Domain Name** | The fully qualified domain name (FQDN) of the machine. |
| **Max Concurrent Jobs (Agent)** | The maximum number of concurrent jobs allowed as configured on the Agent. |
| **NetCom Name** | The SMANetCom instance managing communication with the machine. |
| **Max Concurrent Jobs (Server)** | The maximum number of concurrent jobs allowed as configured on the OpCon server. |
| **Socket Number** | The socket number used for scheduling communication. |
| **IP Address** | The IP address of the machine. |
| **Supports Kill Jobs** | Whether the Agent supports stopping running jobs on demand. |
| **Gateway** | The gateway machine, if applicable. |
| **Supports File Transfer** | Whether the Agent supports file transfer jobs. |
| **JORS Socket Number** | The socket number used for JORS communication. |
| **Time Zone** | The time zone configured on the Agent, with UTC offset. |
| **Time Offset from SAM** | The difference between the Agent time zone and the OpCon server time zone. |
| **TLS** | Whether TLS is enabled for scheduling communication. |
| **TLS Certificate S/N** | The serial number of the TLS certificate, if TLS is enabled. |

The dialog also includes three tabs:

- **Machine Groups** — Lists all machine groups to which the machine belongs.
- **Machine Properties** — Lists the available properties defined for the machine.
- **Documentation** — Displays the documentation text stored on the machine record.

3. Select **OK** to close the dialog.
