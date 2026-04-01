---
title: SMASetRMFileName
description: "SMASetRMFileName updates the file name monitored by a specified rule in the SMA Resource Monitor Rules file."
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

# SMASetRMFileName

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

SMASetRMFileName updates the file name monitored by a specified rule in the SMA Resource Monitor Rules file. Use it when you need to monitor files whose names include a dynamic date component that changes each run.

## Syntax

```shell
SMASetRMFileName.exe -r<RulesDirectory> -f<FileName>
```

### Arguments

- **-r**: Full path to the Rules file in the `SMAResourceMonitor\Rules` directory. The Rules file is named the same as the rule
- **-f**: Name of the file to watch for

### Examples

:::tip Example
Monitor a file with a base name of `C:\temp\dynxxxxxxxx.txt` where `xxxxxxxx` is `MMDDYYYY`.

1. Create the rule to monitor the file (SMASetRMFileName only updates existing rules)
2. Create a token `$DATEMMDDYYYY` with a value of `mmddyyyy`
3. Create a job that runs SMASetRMFileName with these arguments:
   - **-r** `"C:\ProgramData\OpConxps\SMAResourceMonitor\Rules\<Rule Name>.Rule"`
   - **-f** `"C:\temp\dym[[$DATEMMDDYYYY]].txt"`
4. Run this job daily to update the Rules file with the current date
:::

:::tip Example
Monitor a file with an unknown name transferred from a UNIX machine to `C:\temp`.

1. Create the rule to monitor the target file
2. Create a token `DYNFNAME` with a value of `x`
3. Create a job that runs SMASetRMFileName with these arguments:
   - **-r** `"C:\ProgramData\OpConxps\SMAResourceMonitor\Rules\<Rule Name>.Rule"`
   - **-f** `"[[DYNFNAME]]"`
4. Before running this job, send an event from the UNIX machine (or another MSGIN-supporting platform) to set the `DYNFNAME` token
:::

## Exit Values

|Value|Description|
|--- |--- |
|0|Successful execution.|
|NOT 0|An error occurred. See the output file for details.|

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| -r | Full path to the Rules file in the `SMAResourceMonitor\Rules` directory. | — | — |
| -f | Name of the file to watch for | — | — |
## FAQs

**Q: What problem does SMASetRMFileName solve?**

SMASetRMFileName updates the file name in an existing SMA Resource Monitor rule when the monitored file's name contains a dynamic component (such as a date) that changes each run, ensuring the rule always targets the correct current file.

**Q: Does SMASetRMFileName create new rules, or does it update existing ones?**

It only updates existing rules. The rule must already exist in the SMA Resource Monitor Rules file before SMASetRMFileName can modify it.

**Q: How do you use an OpCon token to pass a dynamic file name to SMASetRMFileName?**

Create an OpCon token (e.g., `DYNFNAME`) with a placeholder value, then use the token in the `-f` argument (e.g., `-f "[[DYNFNAME]]"`). Before running the job, update the token value using an OpCon event from the source platform.

## Glossary

**MSGIN**: A directory monitored by an agent for incoming OpCon event files. Placing a properly formatted event file in MSGIN causes the agent to forward it to SAM for processing.

**SMA Resource Monitor (SMARM)**: A Windows service that monitors files, counters, services, and processes on Windows machines. When a monitored condition is met, it sends OpCon events to trigger automation actions.

**OpCon Event**: A command sent to OpCon that triggers an automated action, such as adding a job to a schedule, updating a property value, sending a notification, or changing a job or schedule status.

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
