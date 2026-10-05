---
title: File Locations
description: "During installation, you chose where OpCon programs are installed and where they write output files."
product_area: OpCon
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Getting Started
last_updated: 2026-03-18
doc_type: conceptual
---

# File Locations

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

During installation, you chose where OpCon programs are installed and where they write output files.

Configuration file location depends on the installation drive:

- **System drive** (e.g., C:\\): Configuration files are in `<systemdrive>:\ProgramData\OpConxps`
- **Non-system drive** (e.g., D:\\): Configuration files are in the same folder as the programs

Output file location defaults are also drive-dependent, but can be set to any local hard drive location:

- **System drive**: Output files default to `<systemdrive>:\ProgramData\OpConxps`
- **Non-system drive**: Output files default to the same folder as the programs
- **Custom path**: The `RootPathForOutputFiles` key in the `[Output Settings]` section of `SMACommon.ini` gives the output file path

## Installed to System Drive using Default Path

:::info Example
**Programs**: C:\Program Files\OpConxps\\*program folder*

**Configuration files**: C:\ProgramData\OpConxps\\*program folder*

**Output files**: C:\ProgramData\OpConxps\\*program folder*
:::

:::note
The root OpConxps data folder is likely hidden. To access it, type `C:\ProgramData` in your File Explorer address bar.
:::

## Installed to System Drive using Custom Path

:::info Example
Programs installed to C:\My OpCon\OpConxps\ with default output path.

**Programs**: C:\My OpCon\\*program folder*

**Configuration files**: C:\ProgramData\OpConxps\My OpCon\\*program folder*

**Output files**: C:\ProgramData\OpConxps\My OpCon\\*program folder*
:::

## Installed to Non-System Drive using Custom Path

:::info Example
Programs installed to D:\My Programs\OpConxps\ with default output path.

**Programs**: D:\My Programs\OpConxps\\*program folder*

**Configuration files**: D:\My Programs\OpConxps\\*program folder*

**Output files**: D:\My Programs\OpConxps\\*program folder*
:::

## Installed Output Files using Custom Path

:::info Example
Programs at default path; output files at custom path E:\Logs\OpConxps\.

**Programs**: C:\Program Files\OpConxps\\*program folder*

**Configuration files**: C:\ProgramData\OpConxps\\*program folder*

**Note**: `SMACommon.ini` in this folder contains the output file path, as `RootPathForOutputFiles` in the `[Output Settings]` section.

**Output files**: E:\Logs\OpConxps\\*program folder*
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| System drive | Output files default to `:\ProgramData\OpConxps` | `<systemdrive>:\ProgramData\OpConxps` | — |
| Non-system drive | Output files default to the same folder as the programs | — | — |
| Custom path | The `RootPathForOutputFiles` key in the `[Output Settings]` section of `SMACommon.ini` gives the output file path | — | — |
## Linux and container deployments

The paths above apply to Windows installations. A container deployment uses fixed paths instead, and they are not configurable through `SMACommon.ini`:

| Location | Path |
|---|---|
| Configuration files | `/app/config` |
| Output and log files | `/app/log` |

## FAQs

**Q: Where are OpCon configuration files stored when installed on the system drive?**

Configuration files are stored in `<systemdrive>:\ProgramData\OpConxps`. The root `OpConxps` data folder may be hidden — type `C:\ProgramData` in File Explorer to access it.

**Q: Where are configuration files stored when OpCon is installed on a non-system drive?**

When installed on a non-system drive (e.g., D:\), configuration files are stored in the same folder as the programs.

**Q: How do you find the output file path when a custom path is configured?**

Check the `RootPathForOutputFiles` key in the `[Output Settings]` section of `SMACommon.ini`, in the configuration folder. This key holds the custom output file path when one is set during installation.

## Glossary

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
