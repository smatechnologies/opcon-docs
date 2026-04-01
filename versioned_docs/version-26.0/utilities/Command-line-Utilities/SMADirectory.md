---
title: SMADirectory
description: "SMADirectory (SMADirectory.exe) manages OpCon directories, keeping log and report directories from consuming excessive disk space."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: reference
---

# SMADirectory

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

SMADirectory (SMADirectory.exe) manages OpCon directories, keeping log and report directories from consuming excessive disk space.

Based on user criteria and filters, the utility can:

- Delete files
- Zip (compress) files
- Move files (for full recursive directories)
- Recover files (for full recursive directories)

## Configuration Options

## Backwards Compatibility

This utility is compatible with SMADeleteOldFiles and ClearDir. Customers who wish to convert should contact Continuous.

## Requirements

- Microsoft agent
- Microsoft .NET Framework 4.5

## Syntax

SMADirectory supports dash, forward slash, and comma-delimited arguments.

:::note

SMADirectory uses (US) English localization exclusively. It only accepts US settings or command-line values.

:::

### Dash Argument

The SMADirectory.exe program accepts arguments using dash.

:::note

Continuous recommends using the dash (-) argument for full utility capability.

:::

:::tip Example

`SMADirectory.exe -d "c:\Test" -r -e *.*`

:::

#### Parameters

| Parameter | Name | Default | Description |
| --- | --- | --- | --- |
| -b | Bin | Recover files | Recovers files to the default location: `<driveTarget>\ProgramData\OpConxps\MSLSAM\SMADirectory\<directoryTarget>`. Use -o to set a custom location. |
| -c | Time to Retain | 5D | Specifies how long files are retained. Format: `<Number><TimeSpan>` where TimeSpan is **D** (day), **H** (hour), **X** (month), **M** (minute), **S** (second), or **Y** (year). Example: `5D` |
| -d | Directory Name |  | **Required.** The folder to clean up or move. |
| -e | Extensions |  | **Required.** Accepts pipe-separated extensions and/or filters. |
| -F | TimeType | FM | Time type used for file processing: **FA** (last access), **FM** (last modification), or **FC** (creation date) |
| -h | No Hidden | Process hidden and system files | Excludes system and hidden files from processing. |
| -m | Move | Null | Path to move a folder. When -m and/or -z are entered, the program performs a move instead of a delete. If -z is also entered, the folder is zipped. This is the only scenario where -x (delete) may be used. |
| -o | RecoverPath | `%ProgramData%/OpConxps/SMADirectory` | Sets a custom recovery location when recovery is enabled. Only qualifying files are recovered. |
| -r | Recursive | Off | Processes subfolders and their files. |
| -u | Debug |  | Enables debug mode. |
| -v | Verbose | No | Prints names of non-deleted files. |
| -x | Delete | Off | Deletes files after move or zip when -m or -z is specified. Useful when only the zip file is needed as output. |
| -z | Zip | No compression | Compresses (zips) moved files. Requires a zip filename; if omitted, uses the format `zip.currentdate.zip` (e.g., `zip.03212016.zip`). Compression occurs after the move. -x may only be used when both -m and -z are included. |
### Forward Slash Argument

Forward slash is supported for backwards compatibility with cleardir.exe and works the same as dash switches.

:::tip Example

`SMADirectory.exe /d "c:\Test" /r /u /e *.*`

:::

### Comma Delimited Argument

Comma-delimited syntax is supported for backwards compatibility with SMADeleteOldFiles. It only supports file deletion (not move or compress) and requires exactly three parameters.

```shell
<Target Directory>\OpConxps\MSLSAM\SMADirectory.exe Directory,DaysToRetain,FileExtensions
```

#### Parameters

- **\<Target Directory\>**: Path to the OpCon installation folder (e.g., `C:\\Program Files\`)
- **Directory**: Path to the directory to examine
- **DaysToRetain**: Number of days to retain files
  - Must be entered in English (e.g., `5d`)
  - Must be greater than zero and less than 32,757
- **FileExtensions**: File extensions for the retention period (e.g., `log`)
  - Specify multiple extensions separated by commas
  - Use wildcard (\*) to apply to all files

#### Example

:::tip Example

Deletes any `log` files older than 5 days:

```shell
"C:\Program Files\OpConxps\MSLSAM\SMADirectory"
```

```shell
"C:\ProgramData\OpConxps\SAM\Log,5,log"
```

Note: No period precedes the extension.

:::

## Exit Codes

| Exit Code | Sample Command | Message | Status Description |
| --- | --- | --- | --- |
| 202 | -e |  | Less parameters |
| 203 | -d C:\Source -c 20W | [GetTimeCounter] Invalid Counter. Cannot be equal or less than zero...[GetTimeOptions] Error while loading settings. | Wrong Counter Letter |
| 203 | -d C:\Source -c -5D | [GetTimeCounter] Invalid Counter. Cannot be equal or less than zero...[GetTimeOptions] Error while loading settings. | Negative Counter |
| 204 | -d C:\Source -c 0D | [GetTimeCounter] Invalid Counter | Zero Counter |
| 205 | -d C:\Source -c 5d -e *.* | The Directory does not exits | Directory specified is invalid. |
| 206 | -d C:\Source -c5D -e *.log -2 |  | Invalid Option. Zip File Name is Required. |
| 206 | -d C:\Source -c5D |  | Invalid Options. The -e is Required. |

| Exit Code | Sample Command | Message | Status Description |
| --- | --- | --- | --- |
| 202 | C:\Source | [Main] Invalid number of arguments | Less parameters |
| 203 | C:\Source,5W,log | [ParseComaDelimited][SetCounter] Invalid Counter. Cannot be equal or less than zero... | Invalid Counter Letter |
| 203 | C:\Source,W,log | [ParseComaDelimited][SetCounter] Invalid Counter. Counter is not numeric | Counter is a letter |
| 204 | C:\Source,0,log | [ParseComaDelimited][SetCounter] Invalid Counter. Cannot be equal or less than zero... | Zero Counter |
| 204 | C:\Source,-5,log | [ParseComaDelimited][SetCounter] Invalid Counter. Cannot be equal or less than zero... | Negative Counter |
| 205 | C:\InvalidFolder,0,log | The Directory does not exits | Directory specified is invalid. |
| 206 | -d C:\Source,5,log | Exit Status 206 | Invalid Options |

## FAQs

**Q: What file management operations does SMADirectory support?**

SMADirectory can delete files, compress (zip) files, move files for full recursive directories, and recover files for full recursive directories.

**Q: What are the requirements for running SMADirectory?**

SMADirectory requires the Microsoft agent and Microsoft .NET Framework 4.5. It uses US English localization exclusively and only accepts US settings or command-line values.

**Q: Is SMADirectory backwards compatible with older utilities?**

Yes. SMADirectory is compatible with SMADeleteOldFiles and ClearDir. Customers who want to convert from those utilities should contact Continuous.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
