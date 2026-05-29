---
title: SMALogEvent
description: "SMALogEvent writes messages to the Windows event log from a command line."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-05-29
doc_type: procedural
---

# SMALogEvent

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

SMALogEvent writes messages to the Windows Event Log from a command line. It is installed with the SAM and Supporting Services (SAM-SS) component, and the required files (`SMALogEvent.exe` and `SMALogEventMSG.dll`) are placed in the `<Target Directory>\OpConxps\SAM\` directory.

Use SMALogEvent in OpCon program scripts that run on start, stop, or other trigger events, such as the SMAServMan (SMA Service Manager) trigger scripts. Writing entries to the Windows Event Log lets third-party monitoring tools identify and route alerts about OpCon server activity.

## Syntax

```shell
<OpConxps path>\SMALogEvent <Source>, <Severity>, <Message>
```

### Parameters

| Parameter | Description |
|---|---|
| `<OpConxps path>` | Path to the SMALogEvent program. By default, it is in the SAM installation directory (`<Target Directory>\OpConxps\SAM\`). Enclose the path in double quotation marks if it contains spaces. |
| `SMALogEvent` | The name of the program. |
| `<Source>` | The value written to the **Source** column in the Windows Event Log. |
| `<Severity>` | The value written to the **Type** column in the Windows Event Log. Must be **I** (Information), **W** (Warning), or **E** (Error). |
| `<Message>` | The message written to the Windows Event Log. Write detailed messages that describe the circumstances that triggered the notification so third-party tools can identify and route alerts. |

:::tip
Example messages for SMAServMan scripts:

- **SyncInitFailureScript**: "The Primary SMAServMan is unable to synchronize with the Secondary SMAServMan."
- **PrimaryAbnormalShutdownScript**: "The Secondary SMA Service Manager has begun processing in the OpCon database."
:::

## Renaming the Command File

Continuous distributes the WriteEvent command file as `Test_WriteEvent.cmd` to prevent it from being overwritten by upgrades. To use it, copy the file and remove the `Test_` prefix from the copy.

:::note
Copying `Test_WriteEvent.cmd` retains the original as a template and provides a separate customizable file for production. Create a separate WriteEvent command file for each SMAServMan trigger script, using a unique name for each file in the SAM directory.
:::

To rename the command file, complete the following steps:

1. Log on to the **SAM application server** as a Windows user with access to the OpCon installation directories.
2. Open **File Explorer**.
3. Go to the `<Configuration Directory>\OpConxps\SAM\` directory.
4. Right-click **Test_WriteEvent.cmd** and select **Copy**.
5. Right-click in the `<Configuration Directory>\OpConxps\SAM\` folder and select **Paste**.
6. Right-click **Copy of Test_WriteEvent.cmd** and select **Rename**.
7. Change the file name to `WriteEvent.cmd`.
8. Press **Enter**.
9. Close **File Explorer**.

**Result:** The SAM directory contains a customizable `WriteEvent.cmd` file alongside the original `Test_WriteEvent.cmd` template.

## Modifying the Command File

`WriteEvent.cmd` runs SMALogEvent to write a message to the Windows Event Log. After you copy and rename the file, edit it to set the source, severity, and message for the trigger event it fires on.

To modify the command file, complete the following steps:

1. Log on to the **SAM application server** as a Windows user with access to the OpCon installation directories.
2. Open **File Explorer**.
3. Go to the `<Target Directory>\OpConxps\SAM\` directory.
4. Right-click **WriteEvent.cmd** and select **Edit**. Notepad opens.
5. Replace `"C:\Program Files\OpConxps\SAM\SMALogEvent"` with the actual path to the SAM directory.
6. Replace the source value with the desired event source.
7. Replace the severity value with the desired severity (`I`, `W`, or `E`).
8. Replace the message with the desired event message.
9. Go to **File > Save**.
10. Close Notepad.

**Result:** `WriteEvent.cmd` runs SMALogEvent with your source, severity, and message when its trigger event fires.

:::tip Example
The following command file notifies the administrator that SMAServMan ran a script.

`C:\Program Files\OpConxps\SAM\WriteEvent.cmd` contains:

```shell
"C:\Program Files\OpConxps\SAM\SMALogEvent" SecondServMan, I, MSG201
```

:::

## FAQs

**Q: What does SMALogEvent write to, and what information does it record?**

SMALogEvent writes messages to the Windows Event Log from the command line. Each entry records a source name, a severity level (Information, Warning, or Error), and a message string you define.

**Q: What severity values does SMALogEvent accept?**

The Severity parameter accepts `I` for Information, `W` for Warning, or `E` for Error. These values are written to the **Type** column in the Windows Event Log.

**Q: Why does Continuous distribute the command file as `Test_WriteEvent.cmd`?**

The `Test_` prefix prevents the file from being overwritten during upgrades. Copy and rename the file to remove the prefix, keeping the original as a reusable template for future customization.

## Glossary

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job timing, and processes OpCon events.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
