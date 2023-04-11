# Events

The **Events** associated with a job are OpCon events the SAM processes based on different triggers including job status, a string match on LSAM feedback, an Exit Description evaluation, and Evaluation Expression. Refer to the [OpCon Events](../events/introduction.md) online help. Because the events are attached to a job, all [System Properties](../objects/properties.md#system) can be referenced with tokens in the events. After events are defined for a job, OpCon stores the defined events in the database.

:::note
If the Server Option "Allow Wild Cards in Events" is enabled, \* (asterisk) and ? (question mark) are treated as wild cards in Schedule, Job, and Machine Names in Event strings
:::

The following information applies to defining events:

- **Schedule Name**: Defines the name of the schedule.
- **Job Name**: Defines the name of the job.
- **Frequency Name**: Defines the name of the frequency if the event is defined for a specific frequency.
  - Leave the frequency blank to associate the event at the job level and always include the event for the job.
  - Select a frequency name to associate the event only when the job runs with the associated frequency.
- **Event Details**: Defines the details pertaining to the OpCon event. When defining the trigger, define Job Status, an LSAM feedback with a string to match, an Exit Description evaluation, or an Evaluation Expression.
  - **Job Status**: Defines the status of the job that will cause the OpCon event to process. Valid statuses include:
    - **Exceeded Max Run Time**: This status occurs when the job runs for longer than the specified Max Run Time.
    - **Failed**: This status occurs when the job fails.
    - **Finished OK**: This status occurs when the job terminates successfully.
    - **Job Still Attempting Start**: This status occurs when the job is still in a Start Attempted status when the SAM checks on the job again after the minutes between checking running jobs.
    - **Late to Finish**: This status occurs when time is past the late to finish time for the job, and the job is still running.
    - **Late to Start**: This status occurs when time is past the late to start time for the job, and the job has not yet started.
    - **Missed Latest Start Time**: This status occurs when the job misses its latest start time.
    - **Skipped**: This status occurs when the job is skipped.
    - **Start Attempted**: This status occurs just before the job start information is sent to the LSAM. If for any reason the Event does not get processed, SAM will put the job On Hold.
  - **LSAM Feedback**: Define the evaluation string to process based on the value of a specific LSAM feedback. The fields involved in defining the evaluation string include:
    - **LSAM Feedback**: Lists the platform-specific values supported for LSAM Feedback. For example, SAP R/3 includes Child Process. The LSAM feedback values change based on the job type. The following job types support LSAM feedback for event triggers:
      - File Transfer
      - IBM i
      - MCP
      - SAP BW
      - SAP R/3 and CRM
      - UNIX
      - Windows
      - z/OS
    - **String to match**: Enter any string to match to the value of the LSAM Feedback. The SAM will use SQL pattern matching with this field to compare to the LSAM Feedback value.
      - Use percent (%) as opposed to asterisk (\*) as a wildcard.
      - Use underscore ( \_ ) as opposed to question mark (?) for a single character wildcard.
      - Single quotes (') are invalid in this field.
      - This field is a maximum of 4000 characters long.
  - **Exit Description**: Define the evaluation string for the exit description of the completed job (Finished OK or Failed) that will trigger the event.

    :::danger
    $JOB:GOOD/$JOB:BAD should not be associated with Exit Description-based events if the job is set to auto-Retry/Rerun.
    :::

    The fields involved with the Exit Description include:

    - **Comparison Operators**: Lists the Comparison Operators supported by OpCon for exit description comparison. The valid values include:
      - Equal To
      - Not Equal To
      - Less Than
      - Less Than or Equal
      - Greater Than
      - Greater Than or Equal
      - Range
      - Contains
    - **Value**: This is a text field allowing you to enter the exit description to use with the Comparison Operators. The invalid characters include:
      - Single quotes (')
      - Semicolons (;)
    - **End Value**: This is a text field allowing you to enter the end value when the Range Comparison Operator is in use. The invalid characters include:
      - Single quotes (')
      - Semicolons (;)

  - **Job Completion Complex Expression**: Enter a complete expression for SAM to evaluate upon completion of the job. The expression must result to "True" for the event to process. For more information, refer to [Property Expressions API Syntax](../reference/property-expressions-syntax.md).
- **Event**: Defines the details of the OpCon event that will execute when the defined status occurs. For information on OpCon event syntax, refer to [Event Types](../events/types.md) in the **OpCon Events** online help.
