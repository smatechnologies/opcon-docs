---
title: Synch SAP
description: "Use the SMASynchSAP utility to re-synchronize SAP job numbers in OpCon after changes on the SAP Server cause job definitions to fall out of sync."
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

# Synch SAP

:::note
The information in this topic applies primarily to running SMASynchSAP as a Windows job. For Docker container usage, see [Running SMASynchSAP in Docker](#running-smasynchsap-in-docker).
:::

## Overview

The SMASynchSAP utility (`SMASynchSAP.exe`) reads the OpCon master jobs and requests the current SAP Job Number from the SAP Server. Use this utility to re-synchronize OpCon SAP job definitions when job numbers on the SAP Server no longer match what was originally captured in OpCon — for example, after a system migration or configuration change on the SAP Server.

The utility is located in the `Utilities` folder. It reads database connection information from `SMAODBCConfiguration.DAT` in the `SAM` folder. Log output is written to `SMASynchSAP.log` in the `SAM\Log` folder.

SAP login credentials are required for each SAP Server connection. If the SAP Server name is not found in a credentials file, the utility either prompts interactively (when run with `-ask`) or skips that server and logs a warning.

## Syntax

```
SMASynchSAP.exe [<credentials-file>] [-update] [-ask]
```

### Parameters

| Parameter | Required | Description |
|---|---|---|
| `<credentials-file>` | Recommended | Full path to a text file listing SAP Server credentials. Each line must follow the format `SERVERNAME,USERID,PWD`. If omitted, supply credentials inline or use `-ask`. |
| `-update` | No | Writes the new SAP Job Numbers back to the OpCon database. Without this switch, the utility reports differences but does not change any data. |
| `-ask` | No | Prompts for SAP Server credentials interactively at the console. Cannot be used when running the utility as an OpCon job. |

### Credentials file format

Each line in the credentials file represents one SAP Server:

```
SERVERNAME,USERID,PWD
```

You can also pass credentials inline as the first argument using the same comma-separated format:

```
SMASynchSAP.exe SERVERNAME,USERID,PWD -update
```

The credentials file can reside anywhere on the file system. Provide the full path on the command line.

## Running SMASynchSAP

### Detect-only run (no database changes)

To review SAP job number mismatches without updating the OpCon database, complete the following steps:

1. Open a command prompt on the OpCon server.
2. Run the utility with the path to your credentials file:

   ```
   "C:\Program Files\OpConxps\Utilities\SMASynchSAP.exe" "C:\Synch SAP Files\MyServerCreds.txt"
   ```

**Result:** The utility logs each job that would be updated to `SAM\Log\SMASynchSAP.log` and exits without modifying the database. Review the log to confirm the expected changes before proceeding.

### Detect and update run

To synchronize SAP job numbers and write the changes to the OpCon database, complete the following steps:

1. Open a command prompt on the OpCon server.
2. Run the utility with the `-update` switch:

   ```
   "C:\Program Files\OpConxps\Utilities\SMASynchSAP.exe" "C:\Synch SAP Files\MyServerCreds.txt" -update
   ```

**Result:** The utility updates each affected master job in the OpCon database with the new SAP Job Number. A summary of all changes is written to `SAM\Log\SMASynchSAP.log`.

## Running SMASynchSAP in Docker

When running the utility in a Docker container using the embedded Linux Agent, keep the following in mind:

1. Set up the Linux job with the same parameters you would use for a Windows job.
2. Set the start image for the Linux job to:

   ```
   dotnet /app/SMASynchSAP.dll <arguments>
   ```

3. Place the credentials file in `/app/config` or any directory on the host machine that is mapped into the container.
4. Use the default **OpConOnLinux** Agent machine to run the utility job.
5. Logs are written to `/app/log/Utilities` inside the container.

## Exit codes

| Code | Meaning |
|---|---|
| `0` | Completed successfully; no errors. |
| `-32001` | SAP Server credentials failed or missing. |
| `-32002` | One or more jobs could not be retrieved from the SAP Server. |
| `-32003` | Multiple matching job entries returned for a job; cannot determine the correct number. |
| `-101` | Unexpected internal error. |

## Troubleshooting

- **Credentials not found:** If the credentials file path is omitted and `-ask` is not specified, the utility logs `"SAP Server login file name must be provided."` and skips all servers for which credentials are absent.
- **Multiple matches:** If SAP returns more than one `JobCount` element for a job, the utility logs each match and skips the update for that job. Resolve the ambiguity on the SAP Server before re-running.
- **Malformed SAP response:** If the XML response from SAP is malformed, the utility logs `"Malformed XML response. Please consult SMA Support"`.
