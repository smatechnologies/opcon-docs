---
title: Viewing, Adding, and Editing Unix Job Details
description: "Unix job details define how OpCon executes a job on a UNIX agent, including start image, parameters, environment variables, and failure criteria."
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

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Unix job details define how OpCon executes a job on a UNIX agent, including the start image, parameters, environment variables, and failure criteria. These details are configured in the Task Details panel of a Unix master job in Solution Manager.

To view, add, or edit a Unix job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## When Would You Use It?

- To view, add, or edit a Unix job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges)

## Why Would You Use It?

- **Viewing, Adding,**: To view, add, or edit a Unix job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges)

## Viewing Unix Job Details

1. Go to **Library** > **Master Jobs**
1. Select a Unix job in the list
1. Select **Edit**
1. Expand the **Task Details** panel

---

## Adding Unix Job Details

To add Unix Job Details, complete the following steps:

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md)
1. Expand the **Task Details** section
1. In the **Machine Selection** frame, select the **machine** where the agent is installed from the **Machines or Machine Group** list. To use a machine group instead, toggle the **Machines** switch to _Machine Group_ and select the group. When toggled, the switch appears green ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch')
1. In the **General** frame:
   1. Select a **User Id** to use when running the job
   1. Select a **Job Action**

Available job actions:

- [Run Program](#Run-Program)
- [File Arrival](#File-Arrival)
- [Embedded Script](#Embedded-Script)

---

## Editing Unix Job Details

To edit Unix Job Details, complete the following steps:

1. Go to **Library** > **Master Jobs**
1. Select a Unix job
1. Select **Edit**
1. Select the lock icon. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button')) in **Read-only** mode and green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button')) in **Admin** mode
1. Expand the **Task Details** panel
1. In the **Machine Selection** frame, select the **machine** where the agent is installed from the **Machines or Machine Group** list. To use a machine group instead, toggle the **Machines** switch to _Machine Group_ and select the group. When toggled, the switch appears green ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch')
1. In the **General** frame:
   1. Select a **User Id** to use when running the job
   1. Select a **Job Action**

Available job actions:

- [Run Program](#Run-Program)
- [File Arrival](#File-Arrival)
- [Embedded Script](#Embedded-Script)

---

## Run Program

**In the Prerun frame:**

To run Program, complete the following steps:

1. Enable the **Prerun** switch ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch')
1. Enter the full path to the executable file on the agent machine. This field permits up to 4000 characters

**In the Run frame:**

1. Enter the full path and file name of the program in the UNIX **Start Image**. This field permits up to 4000 characters
2. Enter any required command-line parameters. This field permits up to 4000 characters

:::note
OpCon concatenates the Start Image and Parameters and inserts a space between them before sending the job to the UNIX LSAM.
:::

3. Enter the _NICE Value_ to adjust job priority. Valid values range from -20 to 20, defaulting to 0. Lower values mean higher priority; negative numbers raise priority and positive numbers lower it

**In the Job Output Parsing frame:**

1. Select the green **Add** button (**+**)
2. Select the **Search Operation** from the list
3. Enter the **String to Search**. Wildcard characters are supported. This field permits up to 255 characters
4. Select or enter the **Exit Code**

:::note
Remove parsing criteria by selecting the **Delete** button at the end of the row.
:::


5. Enter the **Custom Application Log Path**. Wildcard characters are supported for specifying multiple logs

**In the Failure Criteria frame:**

1. Select an **operator** then enter or select the **exit code integer**

2. Specify whether the criteria determines if the job Failed or Finished OK

Defining Multiple Failure Criteria:

1. Use the **and/or** field to define multiple failure criteria. All "And" comparisons must be defined before "Or" comparisons. If the Comparison Operator on the previous group is "Equal To", the _and/or_ value must be set to "Or"
2. Use the **Fail on Core Dump** switch to configure how the agent reports job status based on core file creation:
   - Enabled + core dump produced: job returns a failed exit code
   - Enabled + no core dump produced: job succeeds (assuming other exit code processing passes)

:::note
Core dump detection is a final status determination and does not affect exit code processing.
:::

Define up to five signal failure criteria. If any criterion is TRUE when a job finishes, OpCon reports the job as Failed.

**In the Environment Variables frame:**

1. Select the green **Add** button (**+**)
2. Enter a _name_ in the **Name** field
3. Enter a _value_ in the **Value** field. Remove a variable by selecting the **Delete** button at the end of the row

4. Select the **OK** button

:::note
Select the **Undo** button to discard your changes.
:::

5. Select the **Save** button

## File Arrival

1. Enter the file path and name in the **File Name** field. UNIX wildcard characters are supported (e.g., /usr/local/abc\*.txt). This field permits up to 4000 characters
1. Enable the **Sub-directory Search** toggle to search subdirectories under the specified path. When enabled, the switch appears green
1. Specify the _Start Time_ and _End Time_ within which the file must arrive. Enter manually or use the input field selectors
1. Specify the _Duration_ in seconds that the file size must remain stable. Enter manually or use the input field selector(s)
1. Select an **operator** then enter or select the **exit code integer**
1. Specify whether the criteria determines if the job Failed or Finished OK
1. Select the **Save** button

## Embedded Script

For conceptual information, refer to [Embedded Scripts](../../../../../../../automation-concepts/embedded-scripts.md) in the **Concepts** online help.

:::note
If you do not have the Script Privilege for the script, you will not be able to see the task details or edit the daily job definition (the Lock button will be disabled).
:::

**In the Embedded Script frame:**

1. Select the **script** to associate with the job. The **Type** field populates with the script type
2. Select the **version (or revision) of the script** to run. The **Comments** field populates with any notes about the script

:::note
Selecting "Latest" uses the most recent version of the script at the time the job runs.
:::

Viewing Scripts:

To view script details, select the **Preview** button (![Daily Job Definition Preview Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-View-Script.png 'Daily Job Definition Preview Button')). The **Script Viewer** pop-up displays information (name, description, type, version, version comment, author, created, updated) and the script contents.

:::note
The **Preview** button is only enabled for users in a role with All Administrative Functions, All Function Privileges, View Embedded Script Contents privilege, or the ocadm role. Without the View Embedded Script Contents privilege, script contents are not visible in **Preview** mode.
:::

**In the Runner frame:**

1. Select the **runner** (interpreter) to use. The **Run Command Template** field populates with the runner syntax
2. Enter any _arguments_ to pass to the script at runtime. This field permits up to 255 characters

:::note
The equal sign (=) is a restricted character when defining arguments.
:::

**In the Failure Criteria frame:**

1. Select an **operator** then enter or select the **exit code integer**
2. Specify whether the criteria determines if the job Failed or Finished OK

Defining Multiple Failure Criteria:

1. Use the **and/or** field to define multiple failure criteria. All "And" comparisons must be defined before "Or" comparisons. If the Comparison Operator on the previous group is "Equal To", the _and/or_ value must be set to "Or"
2. Use the **Fail on Core Dump** switch to configure how the agent reports job status based on core file creation:
   - Enabled + core dump produced: job returns a failed exit code
   - Enabled + no core dump produced: job succeeds (assuming other exit code processing passes)

:::note
Core dump detection is a final status determination and does not affect exit code processing.
:::

Define up to five signal failure criteria. If any criterion is TRUE when a job finishes, OpCon reports the job as Failed.

**In the Environment Variables frame:**

1. Select the green **Add** button (**+**)
2. Enter a _name_ in the **Name** field
3. Enter a _value_ in the **Value** field. Remove a variable by selecting the **Delete** button at the end of the row

4. Select the **OK** button

:::note
Select the **Undo** button to discard your changes.
:::

5. Select the **Save** button

---

### More Information

For conceptual information, refer to [Unix Jobs](../../../../../../../job-types/unix.md) in the **Concepts** online help.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Viewing, Adding, and Editing Unix Job Details procedure involve?**

The Viewing, Adding, and Editing Unix Job Details procedure involves 54 steps. Complete all steps in order and save your changes.

**Q: What does Viewing, Adding, and Editing Unix Job Details cover?**

This page covers Viewing Unix Job Details, Adding Unix Job Details, Editing Unix Job Details.

**Q: What does the NICE Value field control for a Unix job, and what is the valid range?**

The NICE Value adjusts the job's execution priority on the UNIX system. Valid values range from -20 to 20, with 0 as the default. Lower (more negative) values give the job higher priority; higher (more positive) values give it lower priority.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Embedded Script**: A script stored and versioned directly within the OpCon database. Embedded scripts can be assigned to Windows jobs and run at runtime without requiring the script file to exist on the target machine.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
