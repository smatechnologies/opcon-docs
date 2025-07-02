# Viewing, Adding, and Editing Windows Job Details

To view, add, or edit a Windows job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing Windows Job Details

1. To view a Windows job, go to **Library** > **Master Jobs**.
1. Select a Windows job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel to expose its content.

---

## Adding Windows Job Details

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** section.
1. Select a **User Id** that is assigned to the job for Windows
   security authentication.
1. Select from the **Machines or Machine Group** drop-down list the
   **machine** where the LSAM is installed. If you wish instead to specify a machine group, then toggle the **Machines**
   switch to _Machine Group_ then select the **machine group** from the
   drop-down list. When toggled to Machine Group, the switch will
   appear green.
1. Select a **Job Action**.

For a Windows job, you can add the following job actions:

- [Run Program](#Run-Program)
- [File Arrival](#File-Arrival)
- [Embedded Script](#Embedded-Script)

---

## Editing Windows Job Details

1. To edit Windows job details, go to **Library** > **Master Jobs**.
1. Select a Windows job.
1. Select **Edit**.
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button'))
   when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button'))
   when in **Admin** mode.
1. Expand the **Task Details** panel.
1. Select from the **Machines or Machine Group** drop-down list the
   **machine** where the LSAM is installed. If you wish instead to specify a machine group, then toggle the **Machines**
   switch to _Machine Group_ then select the **machine group** from the
   drop-down list. When toggled to Machine Group, the button will
   appear green ![Green Enabled     Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch').
1. Select a **User Id** that is assigned to the job for Windows security authentication.
1. Select a **Job Action**.

For a Windows job, you can edit the following job actions:

- [Run Program](#Run-Program)
- [File Arrival](#File-Arrival)
- [Embedded Script](#Embedded-Script)

---

## Run Program

**In the Prerun frame:**

1. Optional: Enable the **Prerun** switch ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch').
   1. Enter the _command line detail_ for the prerun process. This field
      permits up to 4000 characters.
   1. Enter the _working directory_ for the prerun job. This field permits
      up to 255 characters.
1. Specify the failure criteria for the prerun job by selecting an
   **operator** then entering or selecting an **exit code integer**.
1. Enter the _command line detail_ by providing the full path to the
   executable file on the LSAM machine. This field permits up to 4000 characters.
1. Enter the _working directory_ for the job listed in the command
   line. This field permits up to 255 characters.
1. Enter the _full path to the Exit Code Override File (E.C.O.F)_. This
   field permits up to 255 characters.
1. Set the Windows process _priority_ for the job. Available options
   are Idle, Normal, High, or Real Time.
1. Specify the failure criteria for the job by selecting an **operator**
   then entering or selecting an **exit code integer**.
1. Specify whether the defined criteria should be used to determine if
   the job Failed or Finished OK.
1. Click the green **Add** button (**+**) to define the parsing
   criteria.
1. Select the **Search Operation** from the drop-down list.
1. Enter the **String to Search**. Windows wildcard characters are
   supported in the string. This field permits up to 255 characters.
1. Select or enter the **Exit Code**.
1. Click the green **Add** button (**+**) to define the environment
   variables.
   1. Enter a _name_ in the **Name** field.
   1. Enter a _value_ in the **Value** field. Remove any defined
      environment variable by clicking the **Delete** button at the end of
      the row.
   1. Click the **OK** button to add the name/value.
1. Select **Save**.

---

## File Arrival

1. Enter the _file path and name of the file to detect_ in the **File
   Name** field. Windows wildcard characters are supported in the file
   name (e.g., C:\\Folder\\Filename?ABC\*.txt). This field permits up
   to 4000 characters.
1. Specify the time frame (_Start Time_ and _End Time_) within which
   the file must arrive in the directory. Either manually input the
   time frame or utilize the input field selectors to make your
   selections.
1. Specify the amount of time in seconds (_Duration_) that the file
   size must remain stable. Either manually input the number of seconds
   or utilize the input field selector(s) to make your selection.
1. Specify the failure criteria for the job by selecting an **operator**
   then entering or selecting an **exit code integer**.
1. Specify whether the defined criteria should be used to determine if
   the job Failed or Finished OK.
1. Select **Save**.

---

## Embedded Script

For conceptual information, refer to [Embedded Scripts](../../../../../../../automation-concepts/embedded-scripts.md) in the
**Concepts** online help.

:::note
If you do not have the Script Privilege for the script, then you will not be able to see the task details or edit the daily job definition (the Lock button will be disabled).
:::

To perform this procedure:

1. Select the **script** that you wish to associate with the job. The
   **Type** field will populate to show the type of script selected.
1. Select the specific **version (or revision) of the script** to run
   for this job. The **Comments** field will populate with any notes
   provided about the script.
1. Select the **runner** (interpreter) that will be used to run the
   script. The **Run Command Template** field will populate to show the
   syntax for the runner.
1. Enter any _argument(s)_ that you wish to pass to the script at
   runtime. This field permits up to 4000 characters.
1. Enter the _working directory_ for the execution of the script. This
   field permits up to 255 characters.
1. Select an **operator** then enter or select the **exit code
   integer**.
1. Specify whether the defined criteria should be used to determine if
   the job Failed or Finished OK.
1. Click the green **Add** button (**+**) to define the environment
   variables.
   1. Enter a _name_ in the **Name** field.
   1. Enter a _value_ in the **Value** field. Remove any defined
      environment variable by clicking the **Delete** button at the end of
      the row.
   1. Click the **OK** button to add the name/value.
1. Select **Save**.

---

### More Information

For conceptual information, refer to [Windows Jobs](../../../../../../../job-types/windows.md) in
the **Concepts** online help.
