---
title: Viewing, Adding, and Editing Windows Job Details
description: "Windows job details define how OpCon executes a job on a Windows agent, including command line, working directory, and failure criteria."
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

Windows job details define how OpCon executes a job on a Windows agent, including the command line, working directory, run in command shell setting, and failure criteria. These details are configured in the Task Details panel of a Windows master job in Solution Manager.

To view, add, or edit a Windows job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## When Would You Use It?

- To view, add, or edit a Windows job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges)

## Why Would You Use It?

- **Viewing, Adding,**: To view, add, or edit a Windows job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges)

## Viewing Windows Job Details

1. Go to **Library** > **Master Jobs**
1. Select a Windows job in the list
1. Select **Edit**
1. Expand the **Task Details** panel

---

## Adding Windows Job Details

To add Windows Job Details, complete the following steps:

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md)
1. Expand the **Task Details** section
1. Select a **User Id** for Windows security authentication
1. From the **Machines or Machine Group** list, select the **machine** where the agent is installed. To use a machine group instead, toggle the **Machines** switch to _Machine Group_ and select the group. The switch appears green when toggled
1. Select a **Job Action**:
   - [Run Program](#Run-Program)
   - [File Arrival](#File-Arrival)
   - [Embedded Script](#Embedded-Script)

---

## Editing Windows Job Details

To edit Windows Job Details, complete the following steps:

1. Go to **Library** > **Master Jobs**
1. Select a Windows job and select **Edit**
1. Select the lock icon to switch modes. The button appears gray and locked (![Master Job Definition Read-only Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png 'Master Job Definition Read-only Button')) in **Read-only** mode and green and unlocked (![Job Definition Admin Button](../../../../../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png 'Job Definition Admin Button')) in **Admin** mode
1. Expand the **Task Details** panel
1. From the **Machines or Machine Group** list, select the **machine** where the agent is installed. To use a machine group, toggle the **Machines** switch to _Machine Group_ and select the group. The switch appears green when toggled ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch')
1. Select a **User Id** for Windows security authentication
1. Select a **Job Action**:
   - [Run Program](#Run-Program)
   - [File Arrival](#File-Arrival)
   - [Embedded Script](#Embedded-Script)

---

## Run Program

**In the Prerun frame:**

To run Program, complete the following steps:

1. Optional: Enable the **Prerun** switch ![Green Enabled Switch](../../../../../../../Resources/Images/SM/Enabled-Switch.png 'Green Enabled Switch')
   1. Enter the _command line detail_ for the prerun process (up to 4000 characters)
   1. Enter the _working directory_ for the prerun job (up to 255 characters)
1. Specify failure criteria by selecting an **operator** and entering an **exit code integer**
1. Enter the _command line detail_ with the full path to the executable on the agent machine (up to 4000 characters)
1. Enter the _working directory_ for the job (up to 255 characters)
1. Enter the _full path to the Exit Code Override File (E.C.O.F)_ (up to 255 characters)
1. Set the Windows process _priority_: Idle, Normal, High, or Real Time
1. Specify failure criteria for the job by selecting an **operator** and entering an **exit code integer**
1. Specify whether the criteria determine if the job **Failed** or **Finished OK**
1. Select the green **Add** button (**+**) to define parsing criteria:
   1. Select the **Search Operation**
   1. Enter the **String to Search** (Windows wildcards supported; up to 255 characters)
   1. Select or enter the **Exit Code**
1. Select the green **Add** button (**+**) to define environment variables:
   1. Enter a _name_ in the **Name** field
   1. Enter a _value_ in the **Value** field. To remove a variable, select **Delete** at the end of the row
   1. Select **OK** to add the name/value pair
1. Select **Save**

---

## File Arrival

1. Enter the _file path and name_ in the **File Name** field (Windows wildcards supported, e.g., C:\\Folder\\Filename?ABC\*.txt; up to 4000 characters)
1. Specify the _Start Time_ and _End Time_ within which the file must arrive
1. Specify the _Duration_ in seconds that the file size must remain stable
1. Specify failure criteria by selecting an **operator** and entering an **exit code integer**
1. Specify whether the criteria determine if the job **Failed** or **Finished OK**
1. Select **Save**

---

## Embedded Script

For conceptual information, refer to [Embedded Scripts](../../../../../../../automation-concepts/embedded-scripts.md) in the **Concepts** online help.

:::note
If you do not have the Script Privilege for the script, you will not be able to see the task details or edit the daily job definition (the Lock button will be disabled).
:::

1. Select the **script** to associate with the job. The **Type** field populates automatically
1. Select the **version (or revision) of the script** to run. The **Comments** field populates with any notes about the script
1. Select the **runner** (interpreter). The **Run Command Template** field populates with the runner syntax
1. Enter any _arguments_ to pass to the script at runtime (up to 4000 characters)
1. Enter the _working directory_ for script execution (up to 255 characters)
1. Select an **operator** and enter or select the **exit code integer**
1. Specify whether the criteria determine if the job **Failed** or **Finished OK**
1. Select the green **Add** button (**+**) to define environment variables:
   1. Enter a _name_ in the **Name** field
   1. Enter a _value_ in the **Value** field. To remove a variable, select **Delete** at the end of the row
   1. Select **OK** to add the name/value pair
1. Select **Save**

---

### More Information

For conceptual information, refer to [Windows Jobs](../../../../../../../job-types/windows.md) in the **Concepts** online help.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Viewing, Adding, and Editing Windows Job Details procedure involve?**

The Viewing, Adding, and Editing Windows Job Details procedure involves 42 steps. Complete all steps in order and save your changes.

**Q: What does Viewing, Adding, and Editing Windows Job Details cover?**

This page covers Viewing Windows Job Details, Adding Windows Job Details, Editing Windows Job Details.

**Q: What are the three job actions available for a Windows job in Solution Manager?**

Windows jobs in Solution Manager support three job actions: Run Program (executes a command or application), File Arrival (monitors for an incoming file within a specified time window), and Embedded Script (runs a script stored in the OpCon Script Repository).

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Embedded Script**: A script stored and versioned directly within the OpCon database. Embedded scripts can be assigned to Windows jobs and run at runtime without requiring the script file to exist on the target machine.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
