---
title: Viewing, Adding, and Editing File Transfer Job Details
description: "File Transfer job details define how OpCon moves files between machines using the SMA File Transfer service, including source, destination, and overwrite settings."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Viewing, Adding, and Editing File Transfer Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

File Transfer job details define how OpCon moves files between machines using the SMA File Transfer service, including source and destination settings, transfer mode, and overwrite behavior. These details are configured in the Task Details panel of a File Transfer master job in Solution Manager.

To view, add, or edit a File Transfer job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing File Transfer Job Details

1. Go to **Library** > **Master Jobs**
1. Select a File Transfer job in the list
1. Select **Edit**
1. Expand the **Task Details** panel

---

## Adding File Transfer Job Details

To add File Transfer Job Details, complete the following steps:

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md)
1. Expand the **Task Details** section. See [File Transfer Job Details](#File-Transfer-Job-Details) for details

---

## Editing File Transfer Job Details

To edit File Transfer Job Details, complete the following steps:

1. Go to **Library** > **Master Jobs**
1. Select a File Transfer job
1. Select **Edit**
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button')) when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button')) when in **Admin** mode
1. Expand the **Task Details** panel. See [File Transfer Job Details](#File-Transfer-Job-Details) for details

---

## File Transfer Job Details

:::note
All required fields are designated by a red asterisk.
:::

**In the Source frame:**

Select the **machine** with the source file to transfer.

:::note
The source machine must be Windows or UNIX.
:::

Select the **user** with access to the file on the Source machine.

Enter the _full path and file name_ for the **file** to transfer.

Select the **data type** of the file on the source machine:

:::note
If anything other than Binary is defined as the Source Data Type, the file integrity is maintained but the file structure will likely be altered to present the file in a user-friendly structure for the given platform.
:::

- **Text**: Uses the default text data type for the platform
- **ASCII**: Indicates the file is a simple text file in ASCII format
- **Binary**: Leaves the file's structure intact during transfer

**In the Destination frame:**

Select the **machine** that will receive the file.

:::note
The destination machine must be Windows or UNIX.
:::

Select the **user** with access to the destination location on the Destination machine.

Enter the _full path and file name_ for the destination **file**.

Select the final **data type** for the transferred file:

- **Text**: Uses the default text data type for the platform
- **ASCII**: Writes the file to the Destination Machine as a simple text file in ASCII format
- **Binary**: Leaves the file's structure intact during transfer

**In the Options frame:**

Select the **If File Exists** option to determine how the SMAFT Agent behaves when a target file exists:

- **Do Not Overwrite**: Checks for the file's existence on the destination before starting the transfer
- **Overwrite**: Transfers the file, overwriting any existing file on the destination
- **Backup Then Overwrite**: Checks for the file's existence on the destination, then overwrites
- **Append**: Appends the source file to the destination file
- **Backup Then Append**: Checks for the file's existence on the destination, then appends

Select the **Delete Source File** option (Windows agent only; other platforms will follow):

- **No**: Source File is not deleted after successful transfer
- **Required**: SMAFT job fails if the Source File is not deleted after successful transfer
- **Preferred**: Deletion of the Source File is attempted after successful transfer

Select the **Start Transfer On** option:

- **Source**: Starts the job on the Source machine
- **Destination**: Starts the job on the Destination machine

Select the **Maximum Transfer Rate (kbits/s)** option. Valid values: 64, 128, 256, 512, 1024, 2048, and \>2048 kbits/second.

Select the **Compression** option. Supported types: tar, gzip, and zip.

- **None**: Transfer does not use compression
- **Required**: Transfer job fails if compression does not occur
- **Preferred**: Compression is attempted during the transfer

:::caution
Both the agent and the server must support the same compression type for compression to succeed.
:::

Select the **Encryption** option. Supported types: 3DES, AES, and DES.

- **None**: Transfer does not use encryption
- **Required**: Job fails if encryption does not occur
- **Preferred**: Encryption is attempted during the transfer

:::caution
Both the agent and the server must support the same encryption type for encryption to succeed.
:::

Select the **TLS Security Override** option:

- **None**: TLS Security is not used by the SMAFT Agent when connecting to the SMAFT Server
- **Required**: The SMAFT Agent must use TLS Security; otherwise, the job fails
- **Preferred** (Default): The OpCon job request assembly routine uses the SMAFT Server Port numbers and the SMAFT Server/Agent TLS Capability flags to determine the TLS Security Mode value

**In the Failure Criteria frame:**

Select the **Fails if preferred settings not satisfied** option to fail the job when the file transfer succeeds but did not comply with the preferred settings for Delete Source File, Compression, and Encryption.

---

## More Information

For conceptual information, refer to [File Transfer Jobs](../../../../../../../job-types/file-transfer.md) in the **Concepts** online help.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Text | Uses the default text data type for the platform | — | — |
| ASCII | Indicates the file is a simple text file in ASCII format | — | must be Windows or UNIX. |
| Binary | Leaves the file's structure intact during transfer | — | must be Windows or UNIX. ::: |
| Do Not Overwrite | Checks for the file's existence on the destination before starting the transfer | — | — |
| Overwrite | Transfers the file, overwriting any existing file on the destination | — | — |
| Backup Then Overwrite | Checks for the file's existence on the destination, then overwrites | — | — |
| Append | Appends the source file to the destination file | — | — |
| Backup Then Append | Checks for the file's existence on the destination, then appends | — | — |
| Required | SMAFT job fails if the Source File is not deleted after successful transfer | — | Valid values: 64, 128, 256, 512, 1024, 2048, and \>2048 kbits/second. |
| Preferred | Deletion of the Source File is attempted after successful transfer | — | Valid values: 64, 128, 256, 512, 1024, 2048, and \>2048 kbits/second. |
| Source | Starts the job on the Source machine | — | Valid values: 64, 128, 256, 512, 1024, 2048, and \>2048 kbits/second.  Select the **Compression** option. Supporte |
| Destination | Starts the job on the Destination machine | — | Valid values: 64, 128, 256, 512, 1024, 2048, and \>2048 kbits/second.  Select the **Compression** option. Supporte |
| None | Transfer does not use compression | — | — |
## FAQs

**Q: How many steps does the Viewing, Adding, and Editing File Transfer Job Details procedure involve?**

The Viewing, Adding, and Editing File Transfer Job Details procedure involves 11 steps. Complete all steps in order and save your changes.

**Q: What does Viewing, Adding, and Editing File Transfer Job Details cover?**

This page covers Viewing File Transfer Job Details, Adding File Transfer Job Details, Editing File Transfer Job Details.

**Q: What happens to a file's structure when a data type other than Binary is used in a file transfer?**

If anything other than Binary is defined as the Source Data Type, file integrity is maintained but the file's structure will likely be altered during the transfer.

## Glossary

**TLS (Transport Layer Security)**: An encryption protocol used to secure TCP/IP communications between SMANetCom and agents, ensuring that job start and status data is transmitted safely.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
