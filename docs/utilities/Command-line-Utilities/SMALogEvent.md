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
last_updated: 2026-03-18
doc_type: procedural
---

# SMALogEvent

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

SMALogEvent writes messages to the Windows event log from a command line. It is installed with the SAM-SS and the required files are in the `<Target Directory>\OpConxps\SAM\` directory. Use SMALogEvent in OpCon program scripts (e.g., SMAServMan, MSLSAM) that run on start, stop, or other trigger events.

## When Would You Use It?

- SMALogEvent writes messages to the Windows event log from a command line

## Why Would You Use It?

- **SMALogEvent**: SMALogEvent writes messages to the Windows event log from a command line

## Syntax

```shell
<Opconxps path\>SMALogEvent <Source\>, <Severity\>, <Message\>
```

### Parameters

**<OpConxps path\>**: Path to the SMALogEvent program. By default, it is in the SAM installation directory. Enclose in double quotation marks if the path contains spaces.

**SMALogEvent**: The name of the program.

**<Source\>**: The value written to the Source column in the Windows Event Log.

**<Severity\>**: The value written to the Type column in the Windows Event Log. Must be **I** (Information), **W** (Warning), or **E** (Error).

**<Message\>**: The message written to the Windows Event Log. Write detailed messages that describe the circumstances that triggered notification so third-party tools can identify and route alerts.

:::tip
Example messages for SMAServMan scripts:

- **SyncInitFailureScript**: "The Primary SMAServMan is unable to synchronize with the Secondary SMAServMan."
- **PrimaryAbnormalShutdown**: "The Secondary SMA Service Manager has begun processing in the OpCon database."
:::

## Renaming the Command File

Continuous distributes WriteEvent.cmd as Test_WriteEvent.cmd to prevent it from being overwritten by upgrades. Copy and rename the file to remove the "Test\_" prefix.

:::note
Copying Test_WriteEvent.cmd retains a template and provides a separate customizable file for production.
:::

:::note
Create a separate WriteEvent command file for each SMAServMan trigger script, using unique names for each file in the SAM directory.
:::

To rename the command file, complete the following steps:

1. Log on to the **SAM application server** as a Windows user with access to the OpCon installation directories
2. Right-click **Start** and select **Explore**
3. Browse to the `<Configuration Directory>\OpConxps\SAM\` directory in Explorer's **Folders** frame
4. Right-click **Test_WriteEvent.cmd** and select **Copy**
5. Right-click in the `<Configuration Directory>\OpConxps\SAM\` folder and select **Paste**
6. Right-click **Copy of Test_WriteEvent.cmd** and select **Rename**
7. Delete **Copy of Test\_** from the file name. The resulting name should be **WriteEvent.cmd**
8. Press **Enter**
9. Close the **Explorer** window

## Modifying the Command File

WriteEvent.cmd runs SMALogEvent to write a message to the Windows Event Log.

To modify the command file, complete the following steps:

1. Log on to the **SAM application server** as a Windows user with access to the OpCon installation directories
2. Right-click **Start** and select **Explore**
3. Browse to the `<Target Directory>\OpConxps\SAM\` directory in Explorer's **Folders** frame
4. Right-click **WriteEvent.cmd** and select **Edit**. Notepad opens
5. Replace **"C:\\Program Files\\OpConxps\\SAM\\SMALogEvent"** with the actual path to the SAM directory
6. Replace **SMAServMan** with the desired event source
7. Replace **W** with the desired severity
8. Replace the default message with the desired event message
9. Go to **File > Save**
10. Close Notepad

:::tip Example
The following command file notifies the administrator that SMAServMan run a script:

`C:\Program Files\OpConxps\SAM\WriteEvent.cmd` contains:

```shell
"C:\Program Files\OpConxps\SAM\SMALogEvent" SecondServMan, I, MSG201
```

:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| <OpConxps path\> | Path to the SMALogEvent program. | — | Must be **I** (Information), **W** (Warning), or **E** (Error).  **<Message\>**: The mes |
| SMALogEvent | The name of the program | — | Must be **I** (Information), **W** (Warning), or **E** (Error).  **<Message\>**: The mes |
| <Source\> | The value written to the Source column in the Windows Event Log | — | Must be **I** (Information), **W** (Warning), or **E** (Error).  **<Message\>**: The mes |
| <Severity\> | The value written to the Type column in the Windows Event Log. | — | Must be **I** (Information), **W** (Warning), or **E** (Error).  **<Message\>**: The mes |
| <Message\> | The message written to the Windows Event Log. | — | — |
| SyncInitFailureScript | "The Primary SMAServMan is unable to synchronize with the Secondary SMAServMan." | — | — |
| PrimaryAbnormalShutdown | "The Secondary SMA Service Manager has begun processing in the OpCon database." | — | — |
## Operations

### Common Tasks
- Copy `Test_WriteEvent.cmd` to `WriteEvent.cmd` in the `<Target Directory>\OpConxps\SAM\` directory before use; the `Test_` prefix prevents the file from being overwritten by upgrades.
- Create a separate WriteEvent command file for each SMAServMan trigger script (e.g., SyncInitFailureScript, PrimaryAbnormalShutdown), using unique file names in the SAM directory.
- Update the source, severity (`I`, `W`, or `E`), and message in each WriteEvent.cmd to match the trigger event it will fire on.

### Alerts and Log Files
- SMALogEvent writes entries to the Windows Event Log; each entry includes the Source name, severity (Information, Warning, or Error), and the message text.
- SMALogEvent is installed in the `<Target Directory>\OpConxps\SAM\` directory and is invoked by SMAServMan trigger scripts on start, stop, or other configured trigger events.

## FAQs

**Q: What does SMALogEvent write to and what information does it record?**

SMALogEvent writes messages to the Windows Event Log from the command line. Each entry records a source name, a severity level (Information, Warning, or Error), and a message string you define.

**Q: What severity values does SMALogEvent accept?**

The Severity parameter accepts `I` for Information, `W` for Warning, or `E` for Error. These values are written to the Type column in the Windows Event Log.

**Q: Why does Continuous distribute WriteEvent.cmd as Test_WriteEvent.cmd?**

The `Test_` prefix prevents the file from being overwritten during upgrades. Copy and rename the file to remove the prefix, keeping the original as a reusable template for future customization.

## Glossary

**SMAServMan (SMA Service Manager)**: Manages the starting, stopping, and restarting of all OpCon server programs. Monitors configured applications and restarts them automatically if they fail unexpectedly.

**SAM-SS (SAM and Supporting Services)**: The collective term for the OpCon server-side processing programs: SAM, SMANetCom, SMA Notify Handler, SMA Request Router, and SMA Start Time Calculator.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Notification**: A message sent by the SMA Notify Handler when a Machine, Schedule, or Job changes to a specific status. Notifications can be delivered as emails, text messages, Windows Event Log entries, SNMP traps, or other formats.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
