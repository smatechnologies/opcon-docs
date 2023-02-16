# Viewing, Adding, and Editing Unix Job Details

To view, add, or edit a Unix job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing Unix Job Details

1. To view a Unix job, go to **Library** > **Master Jobs**.
1. Select a Unix job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel to expose its content.

---

## Adding Unix Job Details

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** section.
1. In the **Machine Selection** frame, select from the **Machines or Machine Group** drop-down list the
   **machine** where the LSAM is installed. If you wish instead to specify a machine group, then toggle the **Machines**
   switch to _Machine Group_ then select the **machine group** from the
   drop-down list. When toggled to Machine Group, the button will
   appear green ![Green Enabled     Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch').
1. In the **General** frame,
   1. Select a **User Id** to use when running the job.
   1. Select a **Job Action**.

For a Unix job, you can add the following job actions:

- [Run Program](#Run-Program)
- [File Arrival](#File-Arrival)
- [Embedded Script](#Embedded-Script)

---

## Editing Unix Job Details

1. To edit Unix job details, go to **Library** > **Master Jobs**.
1. Select a Unix job.
1. Select **Edit**.
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button'))
   when in **Read-only** mode and appears green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button'))
   when in **Admin** mode.
1. Expand the **Task Details** panel.
1. In the **Machine Selection** frame, select from the **Machines or Machine Group** drop-down list the
   **machine** where the LSAM is installed. If you wish instead to specify a machine group, then toggle the **Machines**
   switch to _Machine Group_ then select the **machine group** from the
   drop-down list. When toggled to Machine Group, the button will
   appear green ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch').
1. In the **General** frame,
   1. Select a **User Id** to use when running the job.
   1. Select a **Job Action**.

For a Unix job, you can edit the following job actions:

- [Run Program](#Run-Program)
- [File Arrival](#File-Arrival)
- [Embedded Script](#Embedded-Script)

---

## Run Program

**In the Prerun frame:**

The **Prerun** frame is used to define the information for a
prerequisite process that runs immediately before the primary job.

1. Enable the **Prerun** switch ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch').
1. Enter the _command line detail_ for the prerun process. This should be
   the full path to the executable file on the LSAM machine to execute immediately before the job specified in the Start Image. This
   field permits up to 4000 characters.

**In the Run frame:**

The **Run** frame is used to define the information for running the
primary job.

1. Enter the _full path and file name of the program to execute_ in the UNIX
   **Start Image**. This field permits up to 4000 characters.
2. Enter any required _command-line parameters_. This field permits up to
   4000 characters.

:::note
OpCon concatenates the Start Image and Parameters and inserts a space between them before sending the job to the UNIX LSAM.
:::

3. Enter the _NICE Value_ to increase/decrease the priority of the job
   and prerun (if present). Valid values range from -20 to 20 with a default of zero (0).

:::note
A lower NICE Value signifies a higher priority; therefore, entering a negative number raises the priority and a positive number lowers the priority.
:::

**In the Job Output Parsing frame:**

The **Job Output Parsing** frame is used to define the search criteria
for analyzing job output that matches the defined characters (string)
and will result in the defined exit code.

1. Click the green **Add** button (**+**) to define the parsing criteria.

2. Select the **Search Operation** from the drop-down list.

3. Enter the **String to Search**. Wildcard characters are supported in the
   string. This field permits up to 255 characters.

4. Select or enter the **Exit Code**.

:::note
Remove any defined parsing criteria by clicking the **Delete** button at the end of the row.
:::

5. Enter the **Custom Application Log Path**. Wildcard characters are
   supported for specifying multiple logs.

**In the Failure Criteria frame:**

The **Failure Criteria** frame is used to define the criteria for
OpCon to determine the final status of the
primary job.

1. Select an **operator** then enter or select the **exit code integer**.

2. Specify whether the defined criteria should be used to determine if the
   job Failed or Finished OK.

Defining Multiple Failure Criteria:

1. Use the **and/or** field to define multiple failure criteria. This field
   defines the way the strings are evaluated together. You must define all "And" comparisons before the "Or" comparisons. Additionally, if the Comparison Operator on the previous group is "Equal To", then the _and/or_ value must be set to "Or".

2. Use the **Fail on Core Dump** switch to configure how the
   LSAM should report the status of the job when the job does or does not create a core file.

- If the **Fail on Core Dump** switch is enabled ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch')
  and a core dump is produced, then the job status will return a failed exit code.
- If the **Fail on Core Dump** switch is enabled ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch')
  and a core dump is not produced, then the job succeeds (assuming all other exit code processing is good).

:::note
The final exit code processing has nothing to do with whether a core dump is produced or not. It simply is a final determination of whether the program produced an acceptable job status.
:::

Define up to five different signal failure criteria. If any signal
failure criterion is TRUE when a job finishes,
OpCon reports the job as Failed.

**In the Environment Variables frame:**

The **Environment Variables** frame is used to define the environment
variables for the job to use.

1. Click the green **Add** button (**+**) to define the environment
   variables.

2. Enter a _name_ in the **Name** field.

3. Enter a _value_ in the **Value** field. Remove any defined environment
   variable by clicking the **Delete** button at the end of the row.

4. Click the **OK** button to add the name/value.

:::note
Click the **Undo** button if you wish to undo your changes for any reason.
:::

5. Click the **Save** button.

## File Arrival

1. Enter the _file path and name of the file to detect_ in the **File
   Name** field. UNIX wildcard characters are supported in the file
   name (e.g., /usr/local/abc\*.txt). This field permits up to 4000
   characters.
1. Specify whether or not to search the sub-directory under the
   specified path by utilizing the **Sub-directory Search** toggle
   switch. When enabled, the switch will appear green.
1. Specify the time frame (_Start Time_ and _End Time_) within which
   the file must arrive in the directory. Either manually input the
   time frame or utilize the input field selectors to make your
   selections.
1. Specify the amount of time in seconds (_Duration_) that the file
   size must remain stable. Either manually input the number of seconds
   or utilize the input field selector(s) to make your selection.
1. Select an **operator** then enter or select the **exit code
   integer**.
1. Specify whether the defined criteria should be used to determine if
   the job Failed or Finished OK.
1. Click the **Save** button.

## Embedded Script

For conceptual information, refer to [Embedded Scripts](../../../../../../../automation-concepts/embedded-scripts.md) in the
**Concepts** online help.

:::note
If you do not have the Script Privilege for the script, then you will not be able to see the task details or edit the daily job definition (the Lock button will be disabled).
:::

**In the Embedded Script frame:**

The **Embedded Script** frame is used to associate an embedded script to
run with the job.

1. Select the **script** that you wish to associate with the job. The
   **Type** field will populate to show the type of script selected.

2. Select the specific **version (or revision) of the script** to run for
   this job. The **Comments** field will populate with any notes provided
   about the script.

:::note
Selecting the "Latest" version means that just before the job runs, the latest version of the script will be used.
:::

Viewing Scripts:

To view the details about a script, click the **Preview** button
(![Daily Job Definition Preview Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-View-Script.png 'Daily Job Definition Preview Button')).
Once clicked, the **Script Viewer** pop-up window will display
information (e.g., name, description, type, version, version comment,
author, created, updated) about and the contents of the selected script.

:::note
The **Preview** button will only be enabled for embedded scripts for which the user is a member of a role with privileges to view the contents. A user must be a member of a role with All Administrative Functions, All Function Privileges, View Embedded Script Contents privilege, or must be in the ocadm role to view the contents.
:::

:::note
If you do not have the View Embedded Script Contents privilege, then you will not be able to see any of the script contents in **Preview** mode.
:::

**In the Runner frame:**

The **Runner** frame is used to configure the run definition that is
used to execute the script.

1. Select the **runner** (interpreter) that will be used to run the script.
   The **Run Command Template** field will populate to show the syntax for
   the runner.

2. Enter any _argument(s)_ that you wish to pass to the script at runtime.
   This field permits up to 255 characters.

:::note
When defining the argument, keep in mind the that the equal sign (=) is a restricted character.
:::

**In the Failure Criteria frame:**

The **Failure Criteria** frame is used to define the criteria for
OpCon to determine the final status of the
job.

1. Select an **operator** then enter or select the **exit code integer**.

2. Specify whether the defined criteria should be used to determine if the
   job Failed or Finished OK.

Defining Multiple Failure Criteria:

1. Use the **and/or** field to define multiple failure criteria. This field
   defines the way the strings are evaluated together. You must define all "And" comparisons before the "Or" comparisons. Additionally, if the Comparison Operator on the previous group is "Equal To", then the _and/or_ value must be set to "Or".

2. Use the **Fail on Core Dump** switch to configure how the
   LSAM should report the status of the job when the job does or does not create a core file.

- If the **Fail on Core Dump** switch is enabled ![Green Enabled     Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch')
  and a core dump is produced, then the job status will return a failed exit code.
- If the **Fail on Core Dump** switch is enabled ![Green Enabled     Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch')
  and a core dump is not produced, then the job succeeds (assuming all other exit code processing is good).

:::note
The final exit code processing has nothing to do with whether a core dump is produced or not. It simply is a final determination of whether the program produced an acceptable job status.
:::

Define up to five different signal failure criteria. If any signal
failure criterion is TRUE when a job finishes,
OpCon reports the job as Failed.

**In the Environment Variables frame:**

The **Environment Variables** frame is used to define the environment
variables for the job to use.

1. Click the green **Add** button (**+**) to define the environment
   variables.

2. Enter a _name_ in the **Name** field.

3. Enter a _value_ in the **Value** field. Remove any defined environment
   variable by clicking the **Delete** button at the end of the row.

4. Click the **OK** button to add the name/value.

:::note
Click the **Undo** button if you wish to undo your changes for any reason.
:::

5. Click the **Save** button.

---

### More Information

For conceptual information, refer to [Unix Jobs](../../../../../../../job-types/unix.md) in
the **Concepts** online help.
