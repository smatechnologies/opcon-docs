# Viewing, Adding, and Editing File Transfer Job Details

To view, add, or edit a File Transfer job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing File Transfer Job Details

1. To view a Unix job, go to **Library** > **Master Jobs**.
1. Select a File Transfer job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel to expose its content.

---

## Adding File Transfer Job Details

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** section. See [File Transfer Job Details](#File-Transfer-Job-Details) for details.

---

## Editing File Transfer Job Details

1. To edit File Transfer job details, go to **Library** > **Master Jobs**.
1. Select a File Transfer job.
1. Select **Edit**.
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button'))
   when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button'))
   when in **Admin** mode.
1. Expand the **Task Details** panel. See [File Transfer Job Details](#File-Transfer-Job-Details) for details.

---

## File Transfer Job Details

:::note
All required fields are designated by a red asterisk.
:::

**In the Source frame:**

The **Source** frame is used to define the information for the source
file.

Select the **machine** with the source file to transfer.

:::note
The source machine must be Windows or UNIX.
:::

Select the **user** with access to the file on the Source machine.

Enter the _full path and file name_ for the **file** to transfer.

Select the **data type** of the file on the source machine:

:::note
If anything other than Binary is defined as the Source Data Type, the integrity of the file is maintained but the file structure will likely be altered. This is done in an effort to present the transferred file in a user-friendly structure for the given platform.
:::

- **Text**: Indicates that the SMA File Transfer Agent and Server
  should use the default text data type for the platform when working
  with the file.
- **ASCII**: Indicates the file is a simple text file in ASCII format.
- **Binary**: Indicates the file's structure should be left intact
  during the transfer process.

**In the Destination frame:**

The **Destination** frame is used to define the information for the
destination file.

Select the **machine** that will receive the file.

:::note
The destination machine must be Windows or UNIX.
:::

Select the **user** with access to the location on the Destination
machine that will receive the file.

Enter the _full path and file name_ for the destination **file**.

Select the final **data type** of the file that will be transferred to
the destination machine:

- **Text**: Indicates that the SMA File Transfer Agent and Server
  should use the default text data type for the platform when working
  with the file.
- **ASCII**: Indicates the file should be written to the Destination
  Machine as a simple text file in ASCII format.
- **Binary**: Indicates the file's structure should be left intact
  during the transfer process.

**In the Options frame:**

The **Options** frame is used to define the additional information for
the file transfer

Select the **If File Exists** option to determine how the SMA File
Transfer (SMAFT) Agent behaves when a target file exists:

- **Do Not Overwrite**: Indicates the SMAFT Agent checks for the
  existence of the file on the destination machine before starting the
  transfer.
- **Overwrite**: Indicates the SMAFT Agent transfers the file while
  overwriting any existing file on the destination machine.
- **Backup Then Overwrite**: Indicates the SMAFT Agent checks for the
  existence of the file on the destination machine before starting
  transfer.
- **Append**: Indicates the SMAFT Agent will append the source file to
  the destination file.
- **Backup Then Append**: Indicates the SMAFT Agent checks for
  existence of the file on the destination machine before starting
  transfer.

Select the **Delete Source File** option to determine if the deletion of
the Source File is disabled, required, or preferred (only the Windows
agent supports this feature at this time (other platforms will follow)):

- **No**: Indicates the Source File will not be deleted upon
  successful completion of the file transfer.
- **Required**: Indicates the SMAFT job will fail if the Source file
  is not deleted upon successful completion of the file transfer.
- **Preferred**: Indicates the deletion of the Source File is
  attempted upon successful completion of the file transfer.

Select the **Start Transfer On** option to determine where the job will
start.

- The valid options include:
  - **Source**: Choose this option to start the job on the Source
    machine.
  - **Destination**: Choose this option to start the job on the
    Destination machine.

Select the **Maximum Transfer Rate (kbits/s)** option to define the
transfer rate for the job. Valid values include 64, 128, 256, 512, 1024,
2048, and \>2048 kbits/second.

Select the **Compression** option to determine if compression is
disabled, required, or preferred. Supported compression types are tar,
gzip, and zip:

- **None**: Indicates the transfer does not use compression.
- **Required**: Indicates the transfer job fails if compression does
  not occur.
- **Preferred**: Indicates compression is attempted during the
  transfer.

:::caution
Both the agent and the server must both support the same compression type for compression to succeed.
:::

Select the **Encryption** option to determine if encryption is disabled,
required, or preferred. Supported encryption types are 3DES, AES, and
DES:

- **None**: Indicates the transfer does not use encryption.
- **Required**: Indicates the job fails if encryption does not occur.
- **Preferred**: Indicates encryption is attempted during the
  transfer.

:::caution
Both the agent and the server must both support the same encryption type for the encryption to succeed.
:::

Select the **TLS Security Override** option to determine if TLS Security
for file transfers is disabled, required, or preferred:

- **None**: Indicates that TLS Security should not be used by the SMAFT Agent when connecting to the SMAFT Server.
- **Required**: Indicates that the SMAFT Agent **must** use TLS Security; otherwise, the job will be failed.
- **Preferred** (Default): Indicates that the OpCon job request
  assembly routine uses the SMAFT Server Port numbers and the SMAFT
  Server/Agent TLS Capability flags to decide what value to send in
  the TLS Security Mode field.

**In the Failure Criteria frame:**

The **Failure Criteria** frame is used to define the criteria for
OpCon to determine the final status of the
primary job.

Select the **Fails if preferred settings not satisfied** checkbox to
determine if the job should fail when the file transfer itself succeeds,
but the transfer did not comply with the preferred settings for Delete
Source File, Compression, and Encryption.

---

## More Information

For conceptual information, refer to [File Transfer Jobs](../../../../../../../job-types/file-transfer.md) in
the **Concepts** online help.
