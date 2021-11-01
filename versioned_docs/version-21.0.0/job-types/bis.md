# BIS Job Details

The information in this section applies to defining a BIS job to OpCon. The text fields in the graphical interfaces support OpCon token replacement. [Tokens](../objects/using-properties.md#okens) are resolved as the SAM prepares to send the job to the LSAM. For additional information about this platform, refer to [OS 2200 LSAM and BIS LMAM Configuration](https://help.smatechnologies.com/opcon/agents/os2200/latest/Files/Agents/OS-2200/Configuration.md) in the **OS 2200 LSAM** online help.

## Job Information

- **Run ID**: Defines the name under which the BIS run is registered.
- **Department**: Defines the BIS department number under which the BIS run is registered.
- **MAM ID**: Defines the single alphanumeric character that identifies the MAM that starts the job. MAM IDs are assigned to specific MAMs at installation time. The MAM ID of the job must match the ID of a MAM capable of executing the BIS run. MAM IDs of T and U are not allowed.
- **Input String** (Optional): Defines any parameters to be passed to the BIS run. Commas (,) must separate multiple parameters. The format should conform to the CHG INPUT$ statement in the BIS run.

## Data Dependencies

- **Cabinet, Drawer, and Folder**: Defines the Cabinet, Drawer, and Folder for each report.

## File Dependencies

All file dependencies must be met before the BIS job is started.

**Qualifier**: Defines the qualifier for the file dependency. Placing \# before or after the qualifier directs the LSAM to search the SHARED File Directory for the file; without the \# indicates the STD File Directory is to be searched.

**Filename**: Defines the filename the job is dependent on.

**Type**: Defines the type of dependency the job has on the file. The types of dependencies are:

- **Exists**: The file must exist.
- **Created**: The file must exist and was cataloged today.
- **Deleted**: The file must not exist.
- **Size**: The file exceeds the value entered for the file size.
  :::note
  When Size is set as the Type, enter the size in thousands of tracks (e.g., Enter a 5 to test for a file greater than 5000 tracks).
  :::
- **Referenced**: The file has been referenced today.
- **Assigned**: The file is currently assigned.
- **BackedUp**: The file has a current backup (Backed up and not yet
    modified).
- **Unloaded**: The file is currently unloaded.
