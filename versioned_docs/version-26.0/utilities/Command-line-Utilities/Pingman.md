---
title: Pingman
description: "Pingman is a utility that constantly pings a machine to determine network stability."
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

# Pingman

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Pingman is a utility that constantly pings a machine to determine network stability. It resides in the `<Target Directory>\OpConxps\Utilities\` directory.

## When Would You Use It?

- You need to determine network stability using Pingman is a utility that constantly pings a machine to

## Why Would You Use It?

- **Pingman**: Pingman is a utility that constantly pings a machine to determine network stability

## Configuration Options

## Configuration

To configure Pingman, modify `pingman.ini` in the `<Target Directory>\OpConxps\Utilities\` directory.

|Setting|Default|Description|
|--- |--- |--- |
|Cycle Time|30 Seconds|Seconds Pingman waits before pinging.|
|SendTo|1 second|Seconds to wait before a ping is considered "lost" on the way to the host.|
|RecvFrom|1 second|Seconds to wait before a ping is considered "lost" on the way back from the host.|
|Show Every Error|TRUE|TRUE: logs each error to pingman.log. FALSE: logs only changes in response from a machine.|
|Show Every Ping|TRUE|TRUE: logs each ping to pingman.log. FALSE: no ping information is logged.|
|Machine_1,Machine_2,Machine_3....|<None\>|Host name of the machine to monitor. Add up to 250 machine lines.|
:::tip Example
```ini
Machine_1=Host1
Machine_2=Host2
Machine_3=Host3
```
:::

## Running Pingman

To run Pingman, complete the following steps:

1. Browse to the **Pingman.exe** file
2. Select **pingman.exe**
3. Select **Close ☒** to stop Pingman

## Capturing Output from Pingman

1. Open a **DOS prompt**
2. Enter: `cd C:\Program Files\OpConxps\Utilities`
3. Press **Enter**

4. Enter: `Pingman.exe > PingmanOutput.txt`
5. Press **Enter**
6. Enter **Exit**

## Operations

### Monitoring
- Pingman continuously pings up to 250 machines defined as `Machine_1` through `Machine_250` in `pingman.ini`, using the configured Cycle Time (default: 30 seconds) between pings.
- Set `Show Every Error=TRUE` to log each failed ping to `pingman.log`; set `Show Every Error=FALSE` to log only status changes (up/down transitions).

### Common Tasks
- To run Pingman, browse to `Pingman.exe` in `<Target Directory>\OpConxps\Utilities\` and select it; close the window (`☒`) to stop it.
- To capture output to a file, open a command prompt, change to the Utilities directory, and run `Pingman.exe > PingmanOutput.txt`.

### Alerts and Log Files
- Ping results are logged to `pingman.log` in the `<Target Directory>\OpConxps\Utilities\` directory.
- Set `SendTo` (default: 1 second) and `RecvFrom` (default: 1 second) in `pingman.ini` to control the timeout thresholds before a ping is considered lost.

## FAQs

**Q: What does Pingman monitor and how does it report issues?**

Pingman continuously pings configured machines to assess network stability. It logs results to `pingman.log` — either every ping or only status changes, depending on the `Show Every Ping` and `Show Every Error` settings in `pingman.ini`.

**Q: How many machines can Pingman monitor at once?**

Pingman supports up to 250 machine entries in `pingman.ini`, defined as `Machine_1`, `Machine_2`, and so on up to `Machine_250`.

**Q: How do you capture Pingman output to a file?**

Open a command prompt, Go to the Utilities directory, and run `Pingman.exe > PingmanOutput.txt`. This redirects all output to the specified file.

## Glossary

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
