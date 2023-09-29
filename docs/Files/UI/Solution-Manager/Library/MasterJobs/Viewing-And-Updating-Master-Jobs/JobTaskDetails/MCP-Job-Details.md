# Viewing, Adding, and Editing MCP Job Details

To view an MCP job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Viewing MCP Job Details

1. To view an MCP job, go to **Library** > **Master Jobs**.
1. Select an MCP job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel to expose its content.

## Adding MCP Job Details

1. Create the job and general info as described in [Adding a Job](../../Adding-Master-Jobs.md).
1. Expand the **Task Details** section.
1. Select from the **Machines or Machine Group** drop-down list the
   **machine** where the LSAM is installed. If you wish instead to specify a machine group, then toggle the **Machines**
   switch to _Machine Group_ then select the **machine group** from the
   drop-down list. When toggled to Machine Group, the switch will
   appear green.
1. Select a **User Code** for the job to execute under.
   - The maximum number of characters for User Code is 17.
   - The User Code can only be numbers and uppercase letters.
   - The user Code must already be defined to the MCP
1. Enter a **Access Code** (Optional)
   - The maximum number of characters for Access Code is 17.
   - The Access Code can only be numbers and uppercase letters.
   - A job and its prerun job always have the same access code.
1. Select a **Job Type**.

For a MCP job, you can select the following job types:

- [RUN](#Run)
- [START](#START)
- [EAE/AB SUITE](#EAE/AB-SUITE)
- [COPY](#COPY)
- [CHANGE](#CHANGE)
- [REMOVE](#REMOVE)

---

## Editing MCP Job Details

1. To edit MCP job details, go to **Library** > **Master Jobs**.
1. Select a MCP job.
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

For a MCP job, you can select the following job types:

- [RUN](#Run)
- [START](#START)
- [EAE/AB SUITE](#EAE/AB-SUITE)
- [COPY](#COPY)
- [CHANGE](#CHANGE)
- [REMOVE](#REMOVE)

## START and RUN
- **File Title:** Enter the WFL or the program to execute
    - The maximum number of characters for File Title is 96.
    - Do not begin the WFL or program text with START or RUN. This causes the job to fail.
    - The File Title can not container lowercase characters.
- **Arguments** Enter the parameters and/or task attribute(s) to be passed to the task.
    - The maximum number of characters for Arguments is 200.
    - Valid arguments include string, numbers, and booleans.
    - Parenthesis are allowed to be around all the arguments.
    - Separate arguments with a (,).
- **Template Display File** Enter the file used in lieu of a job-specific displays file.
    - Allows customers to use a single set of definitions for multiple OPCON jobs.
- **EOT Notice Message** Enable to treat each end-of-task notification for this job as a display message.
    - Enabling this setting allows the user to setan Automated Response to trigger action on task completion without having to wait for job to fully complete.
- **Task Attributes** Enter Task attribute used to modify, override, or elaborate existing task attibutes that apply to the MCP program or WFL.
    - The maximum number of characters for each Task Attribute is 300.
    - Any single given task attribute must fit within a single line and can not be continued from one line to the next.
    - There can be up to 10 task attributes. If a user needs to define more than 10 task attributes, the additional ones may be appeneded to any existing task attribute by preceding the next task attribute with a semicolon. For example: SW1=TRUE;SW2=TRUE.
- **File Attributes** Enter a subset of Task Attributes used to define, enhance, or override default attributse for files used by the MCP program.
    - The maximum number of characters for each Task Attribute is 300.
    - Any single given task attribute must fit within a single line and can not be continued from one line to the next.
    - There can be up to 10 task attributes. If a user needs to define more than 10 task attributes, the additional ones may be appeneded to any existing task attribute by preceding the next task attribute with a semicolon. For example: SW1=TRUE;SW2=TRUE.
## Pre-Run Information
The primary purpose of a Prerun is to test any required preconditions for job execution. If the Prerun job terminates with an error, it is rescheduled at a user-defined interval. The Prerun job continues to execute at the user-defined interval until it succeeds. After the Prerun job completes successfully, the job defined in the Job Description is allowed to process.
## Failure Criteria
- **Fail Codes** Enter words to compare to the MCP console display. if the words match the display, the LSAM follows the failure logic established in the configuration.
    - The entry must begin with the first word of the MCP console display, follow ed by any additional words included in the search of the display.
    - Finish the entry with an asterisk (*) as a wildcard for the remainder of the words in the display.
    - Use of Fail Codes is an alternative solution to programming a WFL to ABORT if a program ISNT COMPLETEDOK. Use of Fail Codes is restricted to WFL jobs only, it cannot be used for programs.
- **Fail Reset** Enter words to compare to the MCP console display. If the words match the display. the LSAM follows the failure logic established in the configuration.