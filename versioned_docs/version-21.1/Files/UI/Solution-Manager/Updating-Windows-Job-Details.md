# Updating Windows Job Details

In **Admin** mode, Windows job type properties can be updated or
defined. For a Windows job, you can:

- [Update Job Action: Run Program Job Details](#Updating)
- [Update Job Action: File Arrival Job Details](#Updating2)
- [Update Job Action: Embedded Script Job Details](#Updating3)

For conceptual information, refer to [Windows Job Details](../../../job-types/windows.md) in
the **Concepts** online help.

:::note
Only those with the appropriate permissions will have access to the **Lock** button and can update job properties. For details about privileges, refer to [Required Privileges](Accessing-Daily-Job-Definition.md#Required) in the **Accessing Daily Job Definition** topic.
:::

:::note
If you do not have the Machine Privilege, then you will not be able to edit the daily job definition.
:::

:::note
Changes made to the job properties in the **Daily Job Definition** will take place immediately. If the job has already run, the changes will take effect the next time the job runs.
:::

## Updating Job Action: Run Program Job Details

To perform this procedure:

1. Click on the **Processes** button at the top-right of the
    **Operations Summary** page. The **Processes** page will display.
2. Ensure that both the **Date** and **Schedule** toggle switches are
    enabled so that you can make your date and schedule selection,
    respectively. Each switch will appear green when enabled.
3. Select the desired **date(s)** to display the associated
    schedule(s).
4. Select one or more **schedule(s)** in the list.
5. Select one **job** in the list. A record of your selection will
    display in the [status bar](SM-UI-Layout.md#Status) at the
    bottom of the page in the form of a breadcrumb trail.
6. Click on the job record (e.g., 1 job(s)) in the status bar to
    display the **Selection** panel.
7. Click the **Daily Job Definition** button ![Daily Job Definition     Button](../../../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button")
    at the top-left corner of the panel to access the **Daily Job
    Definition** page. By default, this page will be in **Read-only**
    mode.
8. Click the **Lock** button ![Daily Job Definition Read-only     Button](../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button")
    at the top-right corner to place the page in **Admin** mode. The
    button will switch to display a white lock unlocked on a green
    background ![Daily Job Definition Admin     Switch](../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch")
    when enabled.
9. Expand the **Task Details** panel to expose its content.
10. Select a **User Id** that is assigned to the job for Windows
    security authentication.
11. Select from the **Machines or Machine Group** drop-down list the
    **machine** where the LSAM is installed. If you wish     instead to specify a machine group, then toggle the **Machines**
    switch to *Machine Group* then select the **machine group** from the
    drop-down list. When toggled to Machine Group, the button will
    appear green ![Green Enabled     Switch](../../../Resources/Images/SM/Enabled-Switch.png "Green Enabled Switch").
12. Enable the **Prerun** switch ![Green Enabled     Switch](../../../Resources/Images/SM/Enabled-Switch.png "Green Enabled Switch").
13. Enter the *command line detail* for the prerun process. This field
    permits up to 4000 characters.
14. Enter the *working directory* for the prerun job. This field permits
    up to 255 characters.
15. Specify the failure criteria for the prerun job by selecting an
    **operator** then entering or selecting an **exit code integer**.
16. Enter the *command line detail* by providing the full path to the
    executable file on the LSAM machine. This field     permits up to 4000 characters.
17. Enter the *working directory* for the job listed in the command
    line. This field permits up to 255 characters.
18. Enter the *full path to the Exit Code Override File (E.C.O.F)*. This
    field permits up to 255 characters.
19. Set the Windows process *priority* for the job. Available options
    are Idle, Normal, High, or Real Time.
20. Specify whether or not to run the defined Windows command line in a
    command shell by utilizing the **Run In Command Shell** toggle
    switch. When enabled, the switch will appear green background.
21. Select an **operator** then enter or select the **exit code
    integer**.
22. Specify whether the defined criteria should be used to determine if
    the job Failed or Finished OK.
23. Click the green **Add** button (**+**) to define the parsing
    criteria.
24. Select the **Search Operation** from the drop-down list.
25. Enter the **String to Search**. Windows wildcard characters are
    supported in the string. This field permits up to 255 characters.
26. Select or enter the **Exit Code**.
27. Enter the **Custom Application Log Path**. Windows wildcard
    characters are supported for specifying multiple logs.
28. Click the green **Add** button (**+**) to define the environment
    variables.
29. Enter a *name* in the **Name** field.
30. Enter a *value* in the **Value** field. Remove any defined
    environment variable by clicking the **Delete** button at the end of
    the row.
31. Click the **OK** button to add the name/value.
32. Click the **Save** button.

## Updating Job Action: File Arrival Job Details

To perform this procedure:

1. Click on the **Processes** button at the top-right of the
    **Operations Summary** page. The **Processes** page will display.
2. Ensure that both the **Date** and **Schedule** toggle switches are
    enabled so that you can make your date and schedule selection,
    respectively. Each switch will appear with a green checkmark when
    enabled.
3. Select the desired **date(s)** to display the associated
    schedule(s).
4. Select one or more **schedule(s)** in the list.
5. Select one **job** in the list. A record of your selection will
    display in the [status bar](SM-UI-Layout.md#Status) at the
    bottom of the page in the form of a breadcrumb trail.
6. Click on the job record (e.g., 1 job(s)) in the status bar to
    display the **Selection** panel.
7. Click the **Daily Job Definition** button ![Daily Job Definition     Button](../../../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button")
    at the top-left corner of the panel to access the **Daily Job
    Definition** page. By default, this page will be in **Read-only**
    mode.
8. Click the **Lock** button ![Daily Job Definition Read-only     Button](../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button")
    at the top-right corner to place the page in **Admin** mode. The
    button will switch to display a white lock unlocked on a green
    background ![Daily Job Definition Admin     Switch](../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch")
    when enabled.
9. Expand the **Task Details** panel to expose its content.
10. Select a **User Id** that is assigned to the job for Windows
    security authentication.
11. Select from the **Machines or Machine Group** drop-down list the
    **machine** where the LSAM is installed. If you wish     instead to specify a machine group, then toggle the **Machines**
    switch to *Machine Group* then select the **machine group** from the
    drop-down list. When toggled to Machine Group, the switch will
    appear green.
12. Enter the *file path and name of the file to detect* in the **File
    Name** field. Windows wildcard characters are supported in the file
    name (e.g., C:\\Folder\\Filename?ABC\*.txt). This field permits up
    to 4000 characters.
13. Specify whether or not to search the sub-directory under the
    specified path by utilizing the **Sub-directory Search** toggle
    switch. When enabled, the switch will appear green.
14. Specify the time frame (*Start Time* and *End Time*) within which
    the file must arrive in the directory. Either manually input the
    time frame or utilize the input field selectors to make your
    selections.
15. Specify the amount of time in seconds (*Duration*) that the file
    size must remain stable. Either manually input the number of seconds
    or utilize the input field selector(s) to make your selection.
16. Select an **operator** then enter or select the **exit code
    integer**.
17. Specify whether the defined criteria should be used to determine if
    the job Failed or Finished OK.
18. Click the **Save** button.

## Updating Job Action: Embedded Script Job Details

For conceptual information, refer to [Embedded Scripts](../../../automation-concepts/embedded-scripts.md) in the
**Concepts** online help.

:::note
If you do not have the Script Privilege for the script, then you will not be able to see the task details or edit the daily job definition (the Lock button will be disabled).
:::

To perform this procedure:

1. Click on the **Processes** button at the top-right of the
    **Operations Summary** page. The **Processes** page will display.
2. Ensure that both the **Date** and **Schedule** toggle switches are
    enabled so that you can make your date and schedule selection,
    respectively. Each switch will appear with a green checkmark when
    enabled.
3. Select the desired **date(s)** to display the associated
    schedule(s).
4. Select one or more **schedule(s)** in the list.
5. Select one **job** in the list. A record of your selection will
    display in the [status bar](SM-UI-Layout.md#Status) at the
    bottom of the page in the form of a breadcrumb trail.
6. Click on the job record (e.g., 1 job(s)) in the status bar to
    display the **Selection** panel.
7. Click the **Daily Job Definition** button ![Daily Job Definition     Button](../../../Resources/Images/SM/Daily-Job-Definition-Button.png "Daily Job Definition Button")
    at the top-left corner of the panel to access the **Daily Job
    Definition** page. By default, this page will be in **Read-only**
    mode.
8. Click the **Lock** button ![Daily Job Definition Read-only     Button](../../../Resources/Images/SM/Daily-Job-Definition-Read-only-Button.png "Daily Job Definition Read-only Button")
    at the top-right corner to place the page in **Admin** mode. The
    button will switch to display a white lock unlocked on a green
    background ![Daily Job Definition Admin     Switch](../../../Resources/Images/SM/Daily-Job-Definition-Admin-Button.png "Daily Job Definition Admin Switch")
    when enabled.
9. Expand the **Task Details** panel to expose its content.
10. Select a **user id** that is assigned to the job for Windows
    security authentication.
11. Select from the **Machines or Machine Group** drop-down list the
    **machine** where the LSAM is installed. If you wish     instead to specify a machine group, then toggle the **Machines**
    switch to *Machine Group* then select the **machine group** from the
    drop-down list. When toggled to Machine Group, the switch will
    appear green.
12. Select the **script** that you wish to associate with the job. The
    **Type** field will populate to show the type of script selected.
13. Select the specific **version (or revision) of the script** to run
    for this job. The **Comments** field will populate with any notes
    provided about the script.
14. Select the **runner** (interpreter) that will be used to run the
    script. The **Run Command Template** field will populate to show the
    syntax for the runner.
15. Enter any *argument(s)* that you wish to pass to the script at
    runtime. This field permits up to 4000 characters.
16. Enter the *working directory* for the execution of the script. This
    field permits up to 255 characters.
17. Select an **operator** then enter or select the **exit code
    integer**.
18. Specify whether the defined criteria should be used to determine if
    the job Failed or Finished OK.
19. Click the green **Add** button (**+**) to define the environment
    variables.
20. Enter a *name* in the **Name** field.
21. Enter a *value* in the **Value** field. Remove any defined
    environment variable by clicking the **Delete** button at the end of
    the row.
22. Click the **OK** button to add the name/value.
23. Click the **Save** button.
