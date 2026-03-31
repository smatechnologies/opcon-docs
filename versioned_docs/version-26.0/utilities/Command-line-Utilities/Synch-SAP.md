---
title: Synch SAP
description: "Learn how to synch sap in OpCon."
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

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

:::note
The information presented in this topic pertains largely to running the SMASynchSAP utility as a Windows job. For instructions on running this utility in the OpCon Docker container, see [Running on OpCon in Docker](#Running).
:::

The SMASynchSAP utility (SMASynchSAP.exe) reads the
OpCon Master jobs and requests the SAP Job
Number from the SAP Server. This utility is found in the UTILITY folder
and uses the SMAODBCConfig.dat file found in the SAM folder. Output is
found in SAM\\Logs folder.

SAP Login User and Password are required for each SAP Server connection.
If the Server Name cannot be found in the Server Login File, then a
request is made to the user to supply the user name and password for SAP
R/3 and CRM jobs.

## Usage

This utility is used to re-synch the OpCon
SAP jobs with an SAP Server. This is usually only necessary when a
change has occurred on the SAP Server causing the job definitions to
have Job Numbers that no longer match with the data originally captured
in OpCon when the job was initially added. SAP Server credentials are
required to communicate with it to extract the job definition
information. The Server User and Password will be requested if not found
in a simple text file that matches the same database definition as the
SMA Import Export (ImpEx) program. Name the full path and file name on
the command line as the first input parameter.

:::tip Example
C:\\Program Files\\OpConxps\\Utilities\\SMASynchSAP.exe C:\\Synch SAP Files\\MyServerCreds.txt
:::

This will cause SMASynchSAP to look in the Utility folder for a file by
that name and will expect each line to represent an SAP Server and
credentials in the form: SERVERNAME,USER,PWD.

The server credentials file can be located anywhere, simply supply a
full path.

### Running on OpCon in Docker

To run the utility successfully in a Docker container, using
the Linux agent embedded in it, keep the following things in mind:

1. When running in Docker, the Linux job needs to be set up similar to
    a Windows job with the same parameters.
2. The start image for the Linux job should be: *dotnet
    /app/SMASynchSAP.dll <arguments\>*.
3. The SMASynchSAP server credentials file can use the same location as
    other OpCon configuration files
    (**/app/config**) or any location on the host machine with a mapping
    to a directory in the container.
4. Use the default **OpConOnLinux** agent machine (available in the
    container) to run the utility jobs.
5. Logs are found in **/app/log/Utilities** in the container

## Updating

This utility can be used to detect only or detect and update. The
command-line switch -update must be included to update the
OpCon database with the Job Numbers extracted
from the SAP Server(s).

:::tip Example
C:\\Program Files\\OpConxps\\Utilities\\SMASynchSAP.exe C:\\Synch SAP Files\\MyServerCreds.txt -update
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does the SMASynchSAP utility do?**

SMASynchSAP reads OpCon Master jobs and requests the current SAP Job Number from the SAP Server. It is used to re-synchronize OpCon SAP job definitions when job numbers on the SAP Server no longer match what was originally captured in OpCon.

**Q: When is SMASynchSAP typically needed?**

It is typically needed after a change on the SAP Server causes job definitions to have Job Numbers that no longer match the data in OpCon, such as after a system migration or configuration change.

**Q: How do you provide SAP Server credentials to SMASynchSAP?**

Pass a full path to a credentials file as the first command-line parameter. The file must list each SAP Server on its own line in the format `SERVERNAME,USER,PWD`. If no file is provided, the utility prompts for credentials interactively.

## Glossary

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**OpConxps**: The standard installation directory name for OpCon program files, configuration files, and output data on Windows machines.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
