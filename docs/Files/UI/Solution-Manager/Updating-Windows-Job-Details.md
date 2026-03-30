---
title: Updating Windows Job Details
description: "In Admin mode, Windows job type properties can be updated or defined."
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

# Updating Windows Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

In **Admin** mode, Windows job type properties can be updated or defined. For a Windows job, you can:

- [Update Job Action: Run Program Job Details](#Updating)
- [Update Job Action: File Arrival Job Details](#Updating2)
- [Update Job Action: Embedded Script Job Details](#Updating3)

For conceptual information, refer to [Windows Job Details](../../../job-types/windows.md) in the **Concepts** online help.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required) in the **Accessing Daily Job Definition** topic.
:::

:::note
If you do not have the Machine Privilege, you will not be able to edit the daily job definition.
:::

:::note
Changes made to the job properties in the **Daily Job Definition** take place immediately. If the job has already run, the changes take effect the next time the job runs.
:::

## When Would You Use It?

- An existing Windows Job Details in Solution Manager requires changes
- A process change or system update makes the current Windows Job Details definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Windows Job Details in Solution Manager ensures changes apply to future builds without disrupting currently running schedules

## Updating Job Action: Run Program Job Details

### Navigate to the Daily Job Definition

To navigate to the daily job definition for the Run Program job, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page
2. Ensure both the **Date** and **Schedule** toggle switches are enabled. Each switch appears green when enabled
3. Select the desired **date(s)** to display the associated schedule(s)
4. Select one or more **schedule(s)** in the list
5. Select one **job** in the list. Your selection displays in the [status bar](SM-UI-Layout.md#Status) at the bottom of the page as a breadcrumb trail
6. Select the job record (e.g., 1 job(s)) in the status bar to display the **Selection** panel
7. Select the **Daily Job Definition** button ![Daily Job Definition Button](../../../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button") at the top-left corner of the panel. The page opens in **Read-only** mode by default
8. Select the **Lock** button ![Daily Job Definition Read-only Button](../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button") at the top-right corner to place the page in **Admin** mode. The button switches to a white lock unlocked on a green background ![Daily Job Definition Admin Switch](../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch") when enabled
9. Expand the **Task Details** panel

### Configure Run Program Job Settings

To configure the user, machine, prerun, and primary run settings, complete the following steps:

1. Select a **User Id** assigned to the job for Windows security authentication
2. Select the **machine** where the agent is installed from the **Machines or Machine Group** list. To specify a machine group instead, toggle the **Machines** switch to *Machine Group* and select the group. The switch appears green ![Green Enabled Switch](../../../Resources/Images/SM/Enabled-Switch.png "Green Enabled Switch") when enabled
3. Enable the **Prerun** switch ![Green Enabled Switch](../../../Resources/Images/SM/Enabled-Switch.png "Green Enabled Switch")
4. Enter the *command line detail* for the prerun process (up to 4000 characters)
5. Enter the *working directory* for the prerun job (up to 255 characters)
6. Specify the failure criteria for the prerun job by selecting an **operator** and entering or selecting an **exit code integer**
7. Enter the *command line detail* with the full path to the executable file on the agent machine (up to 4000 characters)
8. Enter the *working directory* for the job listed in the command line (up to 255 characters)
9. Enter the *full path to the Exit Code Override File (E.C.O.F)* (up to 255 characters)
10. Set the Windows process *priority*. Available options: Idle, Normal, High, or Real Time
11. Use the **Run In Command Shell** toggle switch to specify whether to run the Windows command line in a command shell. The switch appears green when enabled
12. Select an **operator** and enter or select the **exit code integer**
13. Specify whether the defined criteria determine if the job Failed or Finished OK

### Define Output Parsing Criteria and Environment Variables

To define job output parsing criteria and environment variables, complete the following steps:

1. Select the green **Add** button (**+**) to define the parsing criteria
2. Select the **Search Operation** from the list
3. Enter the **String to Search**. Windows wildcard characters are supported (up to 255 characters)
4. Select or enter the **Exit Code**
5. Enter the **Custom Application Log Path**. Windows wildcard characters are supported for specifying multiple logs
6. Select the green **Add** button (**+**) to define environment variables
7. Enter a *name* in the **Name** field
8. Enter a *value* in the **Value** field. To remove a variable, select the **Delete** button at the end of the row
9. Select the **OK** button to add the name/value
10. Select the **Save** button

## Updating Job Action: File Arrival Job Details

### Navigate to the Daily Job Definition

To navigate to the daily job definition for the File Arrival job, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page
2. Ensure both the **Date** and **Schedule** toggle switches are enabled. Each switch appears with a green checkmark when enabled
3. Select the desired **date(s)** to display the associated schedule(s)
4. Select one or more **schedule(s)** in the list
5. Select one **job** in the list. Your selection displays in the [status bar](SM-UI-Layout.md#Status) at the bottom of the page as a breadcrumb trail
6. Select the job record (e.g., 1 job(s)) in the status bar to display the **Selection** panel
7. Select the **Daily Job Definition** button ![Daily Job Definition Button](../../../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button") at the top-left corner of the panel. The page opens in **Read-only** mode by default
8. Select the **Lock** button ![Daily Job Definition Read-only Button](../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button") at the top-right corner to place the page in **Admin** mode. The button switches to a white lock unlocked on a green background ![Daily Job Definition Admin Switch](../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch") when enabled
9. Expand the **Task Details** panel

### Configure File Arrival Job Settings

To configure the file arrival detection criteria and failure handling, complete the following steps:

1. Select a **User Id** assigned to the job for Windows security authentication
2. Select the **machine** where the agent is installed from the **Machines or Machine Group** list. To specify a machine group instead, toggle the **Machines** switch to *Machine Group* and select the group. The switch appears green when enabled
3. Enter the *file path and name of the file to detect* in the **File Name** field. Windows wildcard characters are supported (e.g., C:\\Folder\\Filename?ABC\*.txt). This field permits up to 4000 characters
4. Use the **Sub-directory Search** toggle switch to specify whether to search sub-directories under the specified path. The switch appears green when enabled
5. Specify the *Start Time* and *End Time* within which the file must arrive. Enter manually or use the input field selectors
6. Specify the *Duration* in seconds that the file size must remain stable. Enter manually or use the input field selector(s)
7. Select an **operator** and enter or select the **exit code integer**
8. Specify whether the defined criteria determine if the job Failed or Finished OK
9. Select the **Save** button

## Updating Job Action: Embedded Script Job Details

For conceptual information, refer to [Embedded Scripts](../../../automation-concepts/embedded-scripts.md) in the **Concepts** online help.

:::note
If you do not have the Script Privilege for the script, you will not be able to see the task details or edit the daily job definition (the Lock button will be disabled).
:::

### Navigate to the Daily Job Definition

To navigate to the daily job definition for the Embedded Script job, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page
2. Ensure both the **Date** and **Schedule** toggle switches are enabled. Each switch appears with a green checkmark when enabled
3. Select the desired **date(s)** to display the associated schedule(s)
4. Select one or more **schedule(s)** in the list
5. Select one **job** in the list. Your selection displays in the [status bar](SM-UI-Layout.md#Status) at the bottom of the page as a breadcrumb trail
6. Select the job record (e.g., 1 job(s)) in the status bar to display the **Selection** panel
7. Select the **Daily Job Definition** button ![Daily Job Definition Button](../../../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button") at the top-left corner of the panel. The page opens in **Read-only** mode by default
8. Select the **Lock** button ![Daily Job Definition Read-only Button](../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button") at the top-right corner to place the page in **Admin** mode. The button switches to a white lock unlocked on a green background ![Daily Job Definition Admin Switch](../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch") when enabled
9. Expand the **Task Details** panel

### Configure Embedded Script Job Settings

To configure the script, runner, failure criteria, and environment variables, complete the following steps:

1. Select a **user id** assigned to the job for Windows security authentication
2. Select the **machine** where the agent is installed from the **Machines or Machine Group** list. To specify a machine group instead, toggle the **Machines** switch to *Machine Group* and select the group. The switch appears green when enabled
3. Select the **script** to associate with the job. The **Type** field populates to show the script type
4. Select the specific **version (or revision) of the script** to run. The **Comments** field populates with any notes provided about the script
5. Select the **runner** (interpreter) to use. The **Run Command Template** field populates to show the syntax for the runner
6. Enter any *argument(s)* to pass to the script at runtime (up to 4000 characters)
7. Enter the *working directory* for the script execution (up to 255 characters)
8. Select an **operator** and enter or select the **exit code integer**
9. Specify whether the defined criteria determine if the job Failed or Finished OK
10. Select the green **Add** button (**+**) to define environment variables
11. Enter a *name* in the **Name** field
12. Enter a *value* in the **Value** field. To remove a variable, select the **Delete** button at the end of the row
13. Select the **OK** button to add the name/value
14. Select the **Save** button

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How many steps does the Updating Windows Job Details procedure involve?**

The Updating Windows Job Details procedure involves 73 steps. Complete all steps in order and save your changes.

**Q: What does Updating Windows Job Details cover?**

This page covers Updating Job Action: Run Program Job Details, Updating Job Action: File Arrival Job Details, Updating Job Action: Embedded Script Job Details.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Embedded Script**: A script stored and versioned directly within the OpCon database. Embedded scripts can be assigned to Windows jobs and run at runtime without requiring the script file to exist on the target machine.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
