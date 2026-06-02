---
title: Viewing, Adding, and Editing Unix Job Details
description: "Unix job details define how OpCon runs a job on a Unix agent, including start image, parameters, environment variables, and failure criteria."
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

# Viewing, Adding, and Editing Unix Job Details

Unix job details define how OpCon runs a job on a Unix agent, including the start image, parameters, environment variables, and failure criteria. These details are configured in the **Task Details** panel of a Unix master job in Solution Manager.

To view, add, or edit a Unix job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing Unix Job Details

To view Unix job details, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select a Unix job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel.

---

## Adding Unix Job Details

To add Unix job details, complete the following steps:

1. Create the job and general information as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** section.
1. In the **Machine Selection** frame, select the machine where the agent is installed from the **Machines or Machine Group** list. To use a machine group instead, toggle the **Machines** switch to _Machine Group_ and select the group. When toggled, the switch appears green ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch').
1. In the **General** frame, select a **User Id** to use when running the job.
1. Select a **Job Action**.

Available job actions:

- [Run Program](#run-program)
- [File Arrival](#file-arrival)
- [Embedded Script](#embedded-script)

---

## Editing Unix Job Details

To edit Unix job details, complete the following steps:

1. Go to **Library** > **Master Jobs**.
1. Select a Unix job.
1. Select **Edit**.
1. Select the lock button. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button')) in **Read-only** mode and green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button')) in **Admin** mode.
1. Expand the **Task Details** panel.
1. In the **Machine Selection** frame, select the machine where the agent is installed from the **Machines or Machine Group** list. To use a machine group instead, toggle the **Machines** switch to _Machine Group_ and select the group. When toggled, the switch appears green ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch').
1. In the **General** frame, select a **User Id** to use when running the job.
1. Select a **Job Action**.

Available job actions:

- [Run Program](#run-program)
- [File Arrival](#file-arrival)
- [Embedded Script](#embedded-script)

---

## Run Program

### Prerun Frame

To configure a prerun command, complete the following steps:

1. Enable the **Prerun** switch ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch').
1. Enter the full command in the **Command Line** field. This field permits up to 4000 characters.

### Run Frame

1. Enter the full path and file name of the program in the **Start Image** field. This field permits up to 4000 characters.
1. Enter any required command-line parameters in the **Parameters** field. This field permits up to 4000 characters.

:::note
OpCon concatenates the **Start Image** and **Parameters** values, inserting a space between them, before sending the job to the Unix agent.
:::

3. Enter a **NICE Value** to adjust job priority. Valid values range from -20 to 20, defaulting to 0. Lower (more negative) values give the job higher priority; higher (more positive) values give it lower priority.

### Job Output Parsing Frame

To add a job output parsing rule, complete the following steps:

1. Select the **Add** button (**+**).
1. Select the **Search Operation** from the list.
1. Enter the **String to Search**. Wildcard characters are supported. This field permits up to 255 characters.
1. Select or enter the **Exit Code**.

:::note
To remove a parsing rule, select the **Delete** button at the end of the row.
:::

5. Enter the **Custom Application Log Path**. Wildcard characters are supported for specifying multiple logs.

### Failure Criteria Frame

To define failure criteria, complete the following steps:

1. Select an operator, then enter or select the exit code integer.
1. Specify whether the criteria determines if the job **Failed** or **Finished OK**.

To define multiple failure criteria:

1. Use the **and/or** field to chain criteria. All **And** comparisons must appear before **Or** comparisons. If the comparison operator on the previous group is **Equal To**, the **and/or** value must be set to **Or**.
1. Use the **Fail on Core Dump** switch to configure how the agent reports job status based on core file creation:
   - Enabled and a core dump is produced: the job returns a failed exit code.
   - Enabled and no core dump is produced: the job succeeds, assuming other exit code criteria pass.

:::note
Core dump detection is a final status determination and does not affect exit code processing.
:::

You can define up to five signal failure criteria. If any criterion is TRUE when a job finishes, OpCon reports the job as Failed.

### Environment Variables Frame

To add environment variables, complete the following steps:

1. Select the **Add** button (**+**).
1. Enter a name in the **Name** field.
1. Enter a value in the **Value** field.

:::note
To remove a variable, select the **Delete** button at the end of the row.
:::

4. Select **OK**.

:::note
Select **Undo** to discard your changes.
:::

5. Select **Save**.

---

## File Arrival

To configure a File Arrival job, complete the following steps:

1. Enter the file path and name in the **File Name** field. UNIX wildcard characters are supported (for example, `/usr/local/abc*.txt`). This field permits up to 4000 characters.
1. Enable the **Sub-directory Search** option to search subdirectories under the specified path. When enabled, the switch appears green.
1. Specify the **Start Time** and **End Time** within which the file must arrive. Enter the values manually or use the input field selectors.
1. Specify the **Duration** in seconds that the file size must remain stable. Enter the value manually or use the input field selector.
1. Select an operator, then enter or select the exit code integer.
1. Specify whether the criteria determines if the job **Failed** or **Finished OK**.
1. Select **Save**.

---

## Embedded Script

For conceptual information, refer to [Embedded Scripts](../../../../../../../automation-concepts/embedded-scripts.md).

:::note
If you do not have the Script Privilege for the script, you cannot see the task details or edit the daily job definition (the lock button will be disabled).
:::

### Embedded Script Frame

To configure the embedded script, complete the following steps:

1. Select the **Script** to associate with the job. The **Type** field populates automatically with the script type.
1. Select the version of the script to run. The **Comments** field populates with any notes about the selected version.

:::note
Selecting **Latest** uses the most recent version of the script at the time the job runs.
:::

To view script details, select the **Preview** button (![Daily Job Definition Preview Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-View-Script.png 'Daily Job Definition Preview Button')). The **Script Viewer** dialog displays the script name, description, type, version, version comment, author, created date, updated date, and script contents.

:::note
The **Preview** button is enabled only for users in a role with All Administrative Functions, All Function Privileges, or the View Embedded Script Contents privilege, or for the `ocadm` role. Without the View Embedded Script Contents privilege, script contents are not visible in **Preview** mode.
:::

### Runner Frame

1. Select the **Runner** (interpreter) to use. The **Run Command Template** field populates with the runner syntax.
1. Enter any arguments to pass to the script at runtime in the **Arguments** field. This field permits up to 255 characters.

:::note
The equal sign (`=`) is a restricted character when defining arguments.
:::

### Failure Criteria Frame

To define failure criteria, complete the following steps:

1. Select an operator, then enter or select the exit code integer.
1. Specify whether the criteria determines if the job **Failed** or **Finished OK**.

To define multiple failure criteria:

1. Use the **and/or** field to chain criteria. All **And** comparisons must appear before **Or** comparisons. If the comparison operator on the previous group is **Equal To**, the **and/or** value must be set to **Or**.
1. Use the **Fail on Core Dump** switch to configure how the agent reports job status based on core file creation:
   - Enabled and a core dump is produced: the job returns a failed exit code.
   - Enabled and no core dump is produced: the job succeeds, assuming other exit code criteria pass.

:::note
Core dump detection is a final status determination and does not affect exit code processing.
:::

You can define up to five signal failure criteria. If any criterion is TRUE when a job finishes, OpCon reports the job as Failed.

### Environment Variables Frame

To add environment variables, complete the following steps:

1. Select the **Add** button (**+**).
1. Enter a name in the **Name** field.
1. Enter a value in the **Value** field.

:::note
To remove a variable, select the **Delete** button at the end of the row.
:::

4. Select **OK**.

:::note
Select **Undo** to discard your changes.
:::

5. Select **Save**.

---

## More Information

For conceptual information, refer to [Unix Jobs](../../../../../../../job-types/unix.md).
