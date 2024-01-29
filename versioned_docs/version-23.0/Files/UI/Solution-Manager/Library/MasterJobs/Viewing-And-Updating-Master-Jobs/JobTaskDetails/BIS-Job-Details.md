# Viewing, Adding, and Editing BIS Job Details

To view an BIS job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing BIS Job Details

1. To view an BIS job, go to **Library** > **Master Jobs**.
1. Select an BIS job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel to expose its content.

## Adding BIS Job Details

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** section.
1. Select from the **Machines or Machine Group** drop-down list the
   **machine** where the LSAM is installed. If you wish instead to specify a machine group, then toggle the **Machines**
   switch to _Machine Group_ then select the **machine group** from the
   drop-down list. When toggled to Machine Group, the switch will
   appear green.

## Editing BIS Job Details

1. To edit BIS job details, go to **Library** > **Master Jobs**.
1. Select a BIS job.
1. Select **Edit**.
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Master Job Definition Read-only Button"))
   when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Job Definition Admin Button"))
   when in **Admin** mode.
1. Expand the **Task Details** panel.

### Job Information
- **Run ID**: Define the name where the BIS run is registered under.
- **Department**: Define the BIS department number where the BIS run is registered under.
- **MAM ID**:  Defines the single alphanumerical character that identifies the MAM that starts the job. MAM ID's are assinged to specific MAM's at installation time. The MAM ID of the job must match the ID of a MAM capable of executing the BIS run. MAM ID's of T and U are not allowed.
- **Input String** (Optional): Defines any parameters to be passed to BIS run. Commas (,) must separate multiple parameters. The format should conform to the CHG INPUT$ statement in BIS run.

### Data Dependencies
- **Cabinet, Drawer, and Folder**: Defines the Cabinet, Drawer, and Folder for each report.
### File Dependencies
All file dependencies must be met before the BIS job is started.
- **Qualifier**: Defines the qualifier for the file dependency. Placing # before or after the qualifier directs the LSAM to search the SHARED File Directory for the file; without the # indicates the STD File Directory is to be searched.
- **File Name**: Defines the file name the job is dependenct on.
- **Type**: Defines the type of dependency the job has on the file. The types of dependencies are:
    - **Exists**: The file must exist.
    - **Created**: The file must exist and was cataloged today.
    - **Deleted**: The file must not exist.
    - **Size**: The file exceeds the value entered for the file size.
      :::note
        When Size is set as the Type, enter the size in thousands of tracks (e.g., Enter a 5 to test for a file great than 5000 tracks).
      :::
    - **Referenced**: The file has been referenced today.
    - **Assigned**: The file is currently assigned.
    - **Backed Up**: The file has a current backup (Backed up and not yet modified).
    - **Unloaded**: The file is currently unloaded.
