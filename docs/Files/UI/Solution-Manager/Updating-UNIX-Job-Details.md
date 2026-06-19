---
title: Updating UNIX Job Details
description: "In Admin mode, UNIX job type properties can be updated or defined."
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

# Updating UNIX Job Details

In **Admin** mode, you can update or define UNIX job type properties.
For a UNIX job, you can:

- [Update Job Action: Run Program Job Details](#updating-job-action-run-program-job-details)
- [Update Job Action: File Arrival Job Details](#updating-job-action-file-arrival-job-details)
- [Update Job Action: Embedded Script Job Details](#updating-job-action-embedded-script-job-details)

For conceptual information, refer to [UNIX Job Details](../../../job-types/unix.md) in the **Concepts** online help.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required) in the **Accessing Daily Job Definition** topic.
:::

:::note
If you do not have the Machine Privilege, you will not be able to edit the daily job definition.
:::

:::note
Changes made to the job properties in the **Daily Job Definition** take place immediately. If the job has already run, the changes take effect the next time the job runs.
:::

## Updating Job Action: Run Program Job Details

To update the Run Program job details, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page.

   The **Processes** page displays.

2. Ensure that both the **Date** and **Schedule** toggle switches are enabled so that you can make your date and schedule selection, respectively. Each switch appears green when enabled.

<!--
![Schedule Status Updates Date & Schedule Toggle Switches Enabled](../../../Resources/Images/SM/Schedule-Status-Update_Date&ScheduleToggles.png "Schedule Status Updates Date & Schedule Toggle Switches Enabled")
-->

3. Select the desired **date(s)** to display the associated schedule(s).

4. Select one or more **schedule(s)** in the list.

5. Select one **job** in the list. A record of your selection displays in the [status bar](SM-UI-Layout.md#Status) at the bottom of the page in the form of a breadcrumb trail.

<!--
![Job Processes](../../../Resources/Images/SM/Job-ProcessesUNIX.png "Job Processes")
-->

6. Select the job record (e.g., 1 job(s)) in the status bar to display the **Selection** panel.

:::note
As an alternative, you can right-click the job selected in the list to display the **Selection** panel.
:::

<!--
![Job Summary Tab in Operations](../../../Resources/Images/SM/Job-Summary-Tab-(UNIX).png "Job Summary Tab in Operations")
-->

7. Select the **Daily Job Definition** button at the top-left corner of the panel to access the **Daily Job Definition** page.

   By default, this page is in **Read-only** mode.

8. Select the **Lock** button at the top-right corner to place the page in **Admin** mode.

   The button switches to unlocked when enabled.

:::note
The **Lock** button is not visible to users who do not have the appropriate permissions.
:::

9. Expand the **Task Details** panel to expose its content.

:::note
All required fields are designated by a red asterisk.
:::

10. Select a **User Id** to use when running the job. Either use the default value of `0/0` or assign it to an available batch user. User information must be defined as a Batch User ID in OpCon Administration.

11. Select from the **Machines or Machine Group** list the **machine** where the agent is installed. To specify a machine group instead, toggle the **Machines** switch to **Machine Group**, then select the **machine group** from the list.

**In the Prerun frame:**

The **Prerun** frame defines a prerequisite process that runs immediately before the primary job.

12. Enable the **Prerun** switch.

13. Enter the command line detail for the prerun process in the **Prerun** field. Enter the full path to the executable file on the agent machine to run immediately before the job specified in the **Start Image**. This field permits up to 2000 characters.

**In the Run frame:**

The **Run** frame defines the information for running the primary job.

14. Enter the full path and file name of the program to run in the **Start Image** field. This field permits up to 2000 characters.

15. Enter any required command-line parameters in the **Parameters** field. This field permits up to 2000 characters.

    :::note
    OpCon concatenates the **Start Image** and **Parameters** values and inserts a space between them before sending the job to the UNIX Agent.
    :::

16. Enter the **NICE Value** to increase or decrease the priority of the job and prerun (if present). Valid values range from `-20` to `20` with a default of `0`.

    :::note
    A lower NICE Value signifies a higher priority. A negative number raises the priority; a positive number lowers it.
    :::

**In the Job Output Parsing frame:**

The **Job Output Parsing** frame defines search criteria for analyzing job output. Matches against the defined string result in the defined exit code.

17. Select the **Add** button (**+**) to define the parsing criteria.

18. Select the **Search Operation** from the list.

19. Enter the **String to Search**. Wildcard characters are supported. This field permits up to 255 characters.

20. Select or enter the **Exit Code**.

    :::note
    To remove a defined parsing criterion, select the **Delete** button at the end of the row.
    :::

21. Enter the **Custom Application Log Path**. Wildcard characters are supported for specifying multiple logs.

**In the Failure Criteria frame:**

The **Failure Criteria** frame defines the criteria OpCon uses to determine the final status of the primary job.

22. Select an **operator**, then enter or select the **exit code integer**.

23. Specify whether the defined criteria should be used to determine if the job **Failed** or **Finished OK**.

    To define multiple failure criteria, use the **and/or** field to specify how the strings are evaluated together.

    :::note
    You must define all "And" comparisons before "Or" comparisons. If the Comparison Operator on the previous group is "Equal To", the **and/or** value must be set to "Or".
    :::

24. Use the **Fail on Core Dump** switch to configure how the agent reports job status when the job does or does not create a core file.

    - If the **Fail on Core Dump** switch is enabled and a core dump is produced, the job status returns a failed exit code.
    - If the **Fail on Core Dump** switch is enabled and a core dump is not produced, the job succeeds (assuming all other exit code processing is acceptable).

    :::note
    Final exit code processing is independent of whether a core dump is produced. It is a final determination of whether the program produced an acceptable job status.
    :::

25. Define up to five signal failure criteria. If any signal failure criterion is TRUE when a job finishes, OpCon reports the job as Failed.

**In the Environment Variables frame:**

The **Environment Variables** frame defines the environment variables for the job to use.

26. Select the **Add** button (**+**) to define an environment variable.

27. Enter a name in the **Name** field.

28. Enter a value in the **Value** field.

29. Select the **OK** button to add the name/value pair.

    :::note
    To remove a defined environment variable, select the **Delete** button at the end of the row.
    :::

    :::note
    Select the **Undo** button to revert any unsaved changes.
    :::

30. Select the **Save** button.

**Result:** The job definition is saved and the changes take effect immediately, or on the next run if the job has already run.

## Updating Job Action: File Arrival Job Details

### Go to the Daily Job Definition

To go to the daily job definition for the File Arrival job, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page. The **Processes** page displays.
2. Ensure that both the **Date** and **Schedule** toggle switches are enabled so that you can make your date and schedule selection, respectively. Each switch appears green when enabled.
3. Select the desired **date(s)** to display the associated schedule(s).
4. Select one or more **schedule(s)** in the list.
5. Select one **job** in the list. A record of your selection displays in the [status bar](SM-UI-Layout.md#Status) at the bottom of the page in the form of a breadcrumb trail.
6. Select the job record (e.g., 1 job(s)) in the status bar to display the **Selection** panel.
7. Select the **Daily Job Definition** button at the top-left corner of the panel to access the **Daily Job Definition** page. By default, this page is in **Read-only** mode.
8. Select the **Lock** button at the top-right corner to place the page in **Admin** mode.
9. Expand the **Task Details** panel to expose its content.

### Configure File Arrival Job Settings

To configure the file arrival detection criteria and failure handling, complete the following steps:

1. Select a **User Id** to use when running the job. Either use the default value of `0/0` or assign it to an available batch user. User information must be defined as a Batch User ID in OpCon Administration.
2. Select from the **Machines or Machine Group** list the **machine** where the agent is installed. To specify a machine group instead, toggle the **Machines** switch to **Machine Group**, then select the **machine group** from the list. When toggled to Machine Group, the switch appears green.
3. Enter the file path and name of the file to detect in the **File Name** field. UNIX wildcard characters are supported (for example, `/usr/local/abc*.txt`). This field permits up to 4000 characters.
4. Specify whether to search sub-directories under the specified path using the **Sub-directory Search** toggle switch. When enabled, the switch appears green.
5. Specify the time frame (**Start Time** and **End Time**) within which the file must arrive in the directory. Either manually enter the time frame or use the input field selectors.
6. Specify the amount of time in seconds (**Duration**) that the file size must remain stable. Either manually enter the number of seconds or use the input field selector(s).
7. Select an **operator**, then enter or select the **exit code integer**.
8. Specify whether the defined criteria should be used to determine if the job **Failed** or **Finished OK**.
9. Select the **Save** button.

**Result:** The file arrival job definition is saved and the changes take effect immediately, or on the next run if the job has already run.

## Updating Job Action: Embedded Script Job Details

For conceptual information, refer to [Embedded Scripts](../../../automation-concepts/embedded-scripts.md) in the **Concepts** online help.

:::note
If you do not have the Script Privilege for the script, you will not be able to see the task details or edit the daily job definition. The **Lock** button will be disabled.
:::

To update the Embedded Script job details, complete the following steps:

1. Select the **Processes** button at the top-right of the **Operations Summary** page.

   The **Processes** page displays.

2. Ensure that both the **Date** and **Schedule** toggle switches are enabled so that you can make your date and schedule selection, respectively. Each switch appears green when enabled.

<!--
![Schedule Status Updates Date & Schedule Toggle Switches Enabled](../../../Resources/Images/SM/Schedule-Status-Update_Date&ScheduleToggles.png "Schedule Status Updates Date & Schedule Toggle Switches Enabled")
-->

3. Select the desired **date(s)** to display the associated schedule(s).

4. Select one or more **schedule(s)** in the list.

5. Select one **job** in the list. A record of your selection displays in the [status bar](SM-UI-Layout.md#Status) at the bottom of the page in the form of a breadcrumb trail.

<!--
![Job Processes](../../../Resources/Images/SM/Job-ProcessesUNIX.png "Job Processes")
-->

6. Select the job record (e.g., 1 job(s)) in the status bar to display the **Selection** panel.

:::note
As an alternative, you can right-click the job selected in the list to display the **Selection** panel.
:::

<!--
![Job Summary Tab in Operations](../../../Resources/Images/SM/Job-Summary-Tab-(UNIX).png "Job Summary Tab in Operations")
-->

7. Select the **Daily Job Definition** button at the top-left corner of the panel to access the **Daily Job Definition** page.

   By default, this page is in **Read-only** mode.

8. Select the **Lock** button  at the top-right corner to place the page in **Admin** mode.

:::note
The **Lock** button is not visible to users who do not have the appropriate permissions.
:::

9. Expand the **Task Details** panel to expose its content.

:::note
All required fields are designated by a red asterisk.
:::

10. Select a **User Id** to use when running the job. Either use the default value of `0/0` or assign it to an available batch user. User information must be defined as a Batch User ID in OpCon Administration.

11. Select from the **Machines or Machine Group** list the **machine** where the agent is installed. To specify a machine group instead, toggle the **Machines** switch to **Machine Group**, then select the **machine group** from the list. When toggled to Machine Group, the switch appears green.

**In the Embedded Script frame:**

The **Embedded Script** frame associates an embedded script to run with the job.

12. Select the **script** to associate with the job. The **Type** field populates to show the type of script selected.

13. Select the specific **version (or revision) of the script** to run for this job. The **Comments** field populates with any notes provided about the script.

:::note
Selecting the "Latest" version means the latest version of the script is used just before the job runs.
:::

    To view the details about a script, select the **Preview** button. The **Script Viewer** pop-up window displays information (for example, name, description, type, version, version comment, author, created, updated) about and the contents of the selected script.

:::note
The **Preview** button is only enabled for scripts where the user is a member of a role with privileges to view the contents. A user must have All Administrative Functions, All Function Privileges, View Embedded Script Contents privilege, or must be in the ocadm role to view the contents.
:::

:::note
If you do not have the View Embedded Script Contents privilege, the script contents are not visible in **Preview** mode.
:::

**In the Runner frame:**

The **Runner** frame configures the run definition used to run the script.

14. Select the **runner** (interpreter) to run the script. The **Run Command Template** field populates to show the syntax for the runner.

15. Enter any arguments to pass to the script at runtime in the **Arguments** field. This field permits up to 255 characters.

:::note
When defining the argument, the equal sign (`=`) is a restricted character.
:::

**In the Failure Criteria frame:**

The **Failure Criteria** frame defines the criteria OpCon uses to determine the final status of the job.

16. Select an **operator**, then enter or select the **exit code integer**.

17. Specify whether the defined criteria should be used to determine if the job **Failed** or **Finished OK**.

    To define multiple failure criteria, use the **and/or** field to specify how the strings are evaluated together.

:::note
You must define all "And" comparisons before "Or" comparisons. If the Comparison Operator on the previous group is "Equal To", the **and/or** value must be set to "Or".
:::

18. Use the **Fail on Core Dump** switch to configure how the agent reports job status when the job does or does not create a core file.

    - If the **Fail on Core Dump** switch is enabled and a core dump is produced, the job status returns a failed exit code.
    - If the **Fail on Core Dump** switch is enabled and a core dump is not produced, the job succeeds (assuming all other exit code processing is acceptable).

:::note
Final exit code processing is independent of whether a core dump is produced. It is a final determination of whether the program produced an acceptable job status.
:::

19. Define up to five signal failure criteria. If any signal failure criterion is TRUE when a job finishes, OpCon reports the job as Failed.

**In the Environment Variables frame:**

The **Environment Variables** frame defines the environment variables for the job to use.

20. Select the **Add** button (**+**) to define an environment variable.

21. Enter a name in the **Name** field.

22. Enter a value in the **Value** field.

23. Select the **OK** button to add the name/value pair.

    :::note
    To remove a defined environment variable, select the **Delete** button at the end of the row.
    :::

    :::note
    Select the **Undo** button to revert any unsaved changes.
    :::

24. Select the **Save** button.

**Result:** The embedded script job definition is saved and the changes take effect immediately, or on the next run if the job has already run.
