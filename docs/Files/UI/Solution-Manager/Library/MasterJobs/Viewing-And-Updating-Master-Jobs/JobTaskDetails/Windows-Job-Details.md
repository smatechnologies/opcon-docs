---
title: Viewing, Adding, and Editing Windows Job Details
description: "Windows job details define how OpCon runs a job on a Windows agent, including command line, working directory, and failure criteria."
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

# Viewing, Adding, and Editing Windows Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Windows job details define how OpCon runs a job on a Windows agent, including the command line, working directory, run in command shell setting, and failure criteria. These details are configured in the Task Details panel of a Windows master job in Solution Manager.

To view, add, or edit a Windows job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing Windows Job Details

To view Windows job details, complete the following steps:

1. Go to **Library** &gt; **Master Jobs**.
2. Select a Windows job in the list.
3. Select **Edit**.
4. Expand the **Task Details** panel.

---

## Adding Windows Job Details

To add Windows job details, complete the following steps:

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).
2. Expand the **Task Details** section.
3. Select a **User Id** for Windows security authentication.
4. From the **Machines or Machine Group** list, select the **machine** where the agent is installed. To use a machine group instead, toggle the **Machines** switch to *Machine Group* and select the group. The switch appears green when toggled.
5. Select a **Job Action**:
   - [Run Program](#Run-Program)
   - [File Arrival](#File-Arrival)
   - [Embedded Script](#Embedded-Script)

---

## Editing Windows Job Details

To edit Windows job details, complete the following steps:

1. Go to **Library** &gt; **Master Jobs**.
2. Select a Windows job and select **Edit**.
3. Select the lock icon to switch modes. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button')) in **Read-only** mode and green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button')) in **Admin** mode.
4. Expand the **Task Details** panel.
5. From the **Machines or Machine Group** list, select the **machine** where the agent is installed. To use a machine group, toggle the **Machines** switch to *Machine Group* and select the group. The switch appears green when toggled ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch').
6. Select a **User Id** for Windows security authentication.
7. Select a **Job Action**:
   - [Run Program](#Run-Program)
   - [File Arrival](#File-Arrival)
   - [Embedded Script](#Embedded-Script)

---

## Run Program

**In the Prerun frame:**

To configure Run Program, complete the following steps:

1. Optional: Enable the **Prerun** switch ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch').
   1. Enter the *command line detail* for the prerun process (up to 4000 characters).
   1. Enter the *working directory* for the prerun job (up to 255 characters).
1. Specify failure criteria by selecting an **operator** and entering an **exit code integer**.
1. Enter the *command line detail* with the full path to the executable on the agent machine (up to 4000 characters).
1. Enter the *working directory* for the job (up to 255 characters).
1. Enter the *full path to the Exit Code Override File (E.C.O.F)* (up to 255 characters).
1. Set the Windows process *priority*: Idle, Normal, High, or Real Time.
1. Specify failure criteria for the job by selecting an **operator** and entering an **exit code integer**.
1. Specify whether the criteria determine if the job **Failed** or **Finished OK**.
1. Select the green **Add** button (**+**) to define parsing criteria:
   1. Select the **Search Operation**.
   1. Enter the **String to Search** (Windows wildcards supported; up to 255 characters).
   1. Select or enter the **Exit Code**.
1. Select the green **Add** button (**+**) to define environment variables:
   1. Enter a *name* in the **Name** field.
   1. Enter a *value* in the **Value** field. To remove a variable, select **Delete** at the end of the row.
   1. Select **OK** to add the name/value pair.
1. Select **Save**.

---

## File Arrival

To configure File Arrival, complete the following steps:

1. Enter the *file path and name* in the **File Name** field (Windows wildcards supported, e.g., C:\\Folder\\Filename?ABC\*.txt; up to 4000 characters).
1. Specify the *Start Time* and *End Time* within which the file must arrive.
1. Specify the *Duration* in seconds that the file size must remain stable.
1. Specify failure criteria by selecting an **operator** and entering an **exit code integer**.
1. Specify whether the criteria determine if the job **Failed** or **Finished OK**.
1. Select **Save**.

---

## Embedded Script

For conceptual information, refer to [Embedded Scripts](../../../../../../../automation-concepts/embedded-scripts.md) in the **Concepts** online help.

:::note
If you do not have the Script Privilege for the script, you will not be able to see the task details or edit the daily job definition (the Lock button will be disabled).
:::

To configure an Embedded Script, complete the following steps:

1. Select the **script** to associate with the job. The **Type** field populates automatically.
1. Select the **version (or revision) of the script** to run. The **Comments** field populates with any notes about the script.
1. Select the **runner** (interpreter). The **Run Command Template** field populates with the runner syntax.
1. Enter any *arguments* to pass to the script at runtime (up to 4000 characters).
1. Enter the *working directory* for script running (up to 255 characters).
1. Select an **operator** and enter or select the **exit code integer**.
1. Specify whether the criteria determine if the job **Failed** or **Finished OK**.
1. Select the green **Add** button (**+**) to define environment variables:
   1. Enter a *name* in the **Name** field.
   1. Enter a *value* in the **Value** field. To remove a variable, select **Delete** at the end of the row.
   1. Select **OK** to add the name/value pair.
1. Select **Save**.

---

### More Information

For conceptual information, refer to [Windows Jobs](../../../../../../../job-types/windows.md) in the **Concepts** online help.

## FAQs

**Q: What does Viewing, Adding, and Editing Windows Job Details cover?**

This page covers viewing Windows job details, adding Windows job details, and editing Windows job details.

**Q: What are the three job actions available for a Windows job in Solution Manager?**

Windows jobs in Solution Manager support three job actions: Run Program (runs a command or application), File Arrival (monitors for an incoming file within a specified time window), and Embedded Script (runs a script stored in the OpCon Script Repository).

## Glossary

**Agent**: An application installed on a target platform that runs jobs in the native language of that platform and reports results back to OpCon. Agents are defined as Machines in OpCon.

**Embedded Script**: A script stored and versioned directly within the OpCon database. Embedded scripts can be assigned to Windows jobs and run at runtime without requiring the script file to exist on the target machine.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
