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

File Transfer job details define how OpCon moves files between machines using the SMA File Transfer service, including source and destination settings, data type, and overwrite behavior. You configure these details in the **Task Details** panel of a File Transfer master job in Solution Manager.

A File Transfer job moves a file from a source machine to a destination machine. Supported machine platforms are IBM i, MCP, OS2200, Unix, Windows, and z/OS. The available data type and option values depend on the platforms of the machines you select.

To view, add, or edit a File Transfer job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing File Transfer Job Details

To view File Transfer job details, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select a File Transfer job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel.

**Result:** The source, destination, and option settings for the selected File Transfer job appear in the **Task Details** panel.

---

## Adding File Transfer Job Details

To add File Transfer job details, complete the following steps:

1. Create the job and general information as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** section.
1. Complete the fields described in [File Transfer Job Details Fields](#file-transfer-job-details-fields).

**Result:** The File Transfer job details are saved with the job.

---

## Editing File Transfer Job Details

To edit File Transfer job details, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select a File Transfer job.
1. Select **Edit**.
1. Select the lock button to switch from **Read-only** mode to **Admin** mode. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button')) in **Read-only** mode and green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button')) in **Admin** mode.
1. Expand the **Task Details** panel.
1. Update the fields described in [File Transfer Job Details Fields](#file-transfer-job-details-fields).

**Result:** The updated File Transfer job details are saved with the job.

---

## File Transfer Job Details Fields

:::note
All required fields are designated by a red asterisk.
:::

### Source

In the **Source** frame, define the file to transfer:

1. In **Machine**, select the machine that holds the source file.
1. In **User**, select the user with access to the file on the source machine.
1. In **File**, enter the full path and file name of the file to transfer.
1. In **Data Type**, select the data type of the file on the source machine. The available values depend on the source platform and can include **Text**, **ASCII**, **Binary**, and **EBCDIC**.

:::note
If you select any data type other than **Binary** as the source data type, file integrity is maintained, but the file structure is likely to be altered to present the file in a user-friendly structure for the target platform.
:::

The data type values are:

- **Text**: Uses the default text data type for the platform.
- **ASCII**: Indicates the file is a simple text file in ASCII format.
- **Binary**: Leaves the file structure intact during transfer.
- **EBCDIC**: Indicates the file uses the EBCDIC character set.

### Destination

In the **Destination** frame, define where the file is written:

1. In **Machine**, select the machine that receives the file.
1. In **User**, select the user with access to the destination location on the destination machine.
1. In **File**, enter the full path and file name for the destination file.
1. In **Data Type**, select the data type for the transferred file. The available values depend on the destination platform. If you select **Binary** as the source data type, the destination data type is set to **Binary**.

### Options

In the **Options** frame, set the transfer behavior:

**If File Exists** determines how the SMA File Transfer service behaves when a file already exists at the destination:

- **Do Not Overwrite**: Checks for the file at the destination before starting the transfer.
- **Overwrite**: Transfers the file, overwriting any existing file at the destination.
- **Backup Then Overwrite**: Backs up the existing destination file, then overwrites it.
- **Append**: Appends the source file to the destination file.
- **Backup Then Append**: Backs up the existing destination file, then appends to it.

**Delete Source File** determines whether the source file is deleted after a successful transfer. This option is enabled only when both the source and destination machines are Windows.

- **No**: The source file is not deleted after a successful transfer.
- **Required**: The job fails if the source file is not deleted after a successful transfer.
- **Preferred**: Deletion of the source file is attempted after a successful transfer.

**Start Transfer On** determines which machine starts the job:

- **Source**: Starts the job on the source machine.
- **Destination**: Starts the job on the destination machine.

**Maximum Transfer Rate (kbits/s)** limits the transfer rate. Valid values are `64`, `128`, `256`, `512`, `1024`, `2048`, and `>2048` kbits/s.

**Compression** determines whether the transfer uses compression:

- **None**: The transfer does not use compression.
- **Required**: The job fails if compression does not occur.
- **Preferred**: Compression is attempted during the transfer.

:::caution
Both the agent and the server must support compression for compression to succeed.
:::

**Encryption** determines whether the transfer uses encryption:

- **None**: The transfer does not use encryption.
- **Required**: The job fails if encryption does not occur.
- **Preferred**: Encryption is attempted during the transfer.

:::caution
Both the agent and the server must support encryption for encryption to succeed.
:::

**TLS Security Override** determines whether the transfer uses TLS security between the SMA File Transfer agent and server:

- **None**: TLS security is not used when the agent connects to the server.
- **Required**: The agent must use TLS security; otherwise, the job fails.
- **Preferred** (Default): The OpCon job request assembly routine uses the SMA File Transfer server port numbers and the server and agent TLS capability flags to determine the TLS security mode.

### Failure Criteria

In the **Failure Criteria** frame, select **Fails if preferred settings not satisfied** to fail the job when the file transfer succeeds but does not comply with the **Preferred** settings for **Delete Source File**, **Compression**, and **Encryption**.

---

## More Information

For conceptual information, refer to [File Transfer Jobs](../../../../../../../job-types/file-transfer.md) in the **Concepts** online help.

## FAQs

**Q: What platforms are supported for File Transfer jobs?**

The supported machine platforms are IBM i, MCP, OS2200, Unix, Windows, and z/OS. The data type and option values available in the **Task Details** panel depend on the platforms of the machines you select.

**Q: What happens to a file structure when a data type other than Binary is used?**

If you select any data type other than **Binary** as the source data type, file integrity is maintained, but the file structure is likely to be altered during the transfer.

**Q: When is the Delete Source File option available?**

The **Delete Source File** option is enabled only when both the source and destination machines are Windows.

## Related Topics

- [Adding a Job](../../Adding-Master-Jobs.md)
- [Accessing Master Jobs](../../Accessing-Master-Jobs.md)
