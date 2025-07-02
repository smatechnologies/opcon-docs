# Tuxedo ART Job Details

The information in this section applies to defining a Tuxedo ART Job.
For additional information about this platform, refer to [Executing Tuxedo ART
Jobs](https://help.smatechnologies.com/opcon/agents/tuxedo/latest/Files/Agents/Tuxedo-ART/Executing-Tuxedo-ART-Jobs.md)
 in the **Tuxedo ART Agent** online help.

- **Script**: This defines the name of the script to run. It is passed
    to the artjesadmin utility during the job start request.

- **Owner**: Currently the jobs are executed under the user that is
    used to run the agent and the Tuxedo ART environment. This has been
    defined for future use. The default value is \* (asterisk).

- **JESRoot Environment**: This is the full path to the JES Root
    environment so that the agent can retrieve the Tuxedo Job log.

- **Tuxedo Environment**: This is the name of the environment script
    that is called to setup the environment variables correctly when the
    connection is made to the Tuxedo environment. The name must include
    the .sh extension.

## Variables Tab

Variables tab field definitions are passed as name=value pairs to the
Tuxedo ART environment.

- **Name**: The name of a variable in the job script that must be
    replaced with the value defined in the Value field. The name must
    start with an & (i.e. &TEST).
- **Value**: The value field defines the variable value. OpCon
    properties can be used in this field as these will be resolved when
    the job is started (e.g., \[\[$SCHEDULE DATE_j\]\],     \[\[SI.C102\]\], \[\[$SCHEDULE DATE (-1d)\]\], \[\[$SCHEDULE DATE
    (-1M)\]\], SubStr(\[\[$SCHEDULE DATE-BVH\]\],0,2), etc.). The     Control-T keyins can be used to select properties. The definitions
    include a special function called SubStr which will extract the
    characters starting at the first character for the number of
    characters defined by the second character. In the above example
    SubStr(\[\[$SCHEDULE DATE-BVH\]\],0,2), if the date is defined as     MMDDYYYY, the MM field will be extracted and passed as the variable.

## Step Control Tab

The Tuxedo ART agent supports a maximum of 5 Step Control definitions per job.

- **Step Name**: The name of the step defined in the script.
- **Min CC**: The minimum step completion code.
- **Max CC**: The maximum step completion code.
- **Step Action**: Only the 'Send Trigger Message TO SAM' is
    supported (e.g., JEVENT=SS1TEST10).
- **Trigger Message**: The trigger message that is sent to SAM for
    Agent Feedback. This must match an LSAM Feedback User Message match
    event definition. For example, if trigger message is
    JEVENT=SS1TEST10, then LSAM Feedback User message must include the
    definition User Message match 'JEVENT=SS1TEST10'.

## Failure Criteria Tab

The job definition supports advanced failure criteria.

- **Comparison Operator**: Defines the comparison operator for the
    "if statement" when comparing the actual value of the job's exit
    code to the failure criteria rules.
  - Valid Values: Range, Equal To, Not Equal To, Less Than, Less or
        Equal, Greater Than, Greater and Equal
- **Value**: Defines the value used for comparison to the job's
    actual exit code with the comparison operator.
  - Valid Values range from -2147483648 to 2147483647
- **End Value**: Defines the end value for comparison when the
    comparison operator is "Range".
  - Valid Values range from -2147483648 to 2147483647
- **Result**: Defines the desired resulting job status when the
    criteria for the line is equal to true. You may only specify the
    Result on the first group of criteria, and this will set the result
    for all the remaining groups of criteria.
  - Valid Values: Finish OK, Fail
- **And/Or**: When defining multiple failure criteria, this field
    defines the way the strings are evaluated together.
  - Valid Values: And, Or
- **Anything Else**: This field contains the other possible result if
    the Exit code falls outside the advanced criteria comparisons.
  - If the Result field is set to "Finish OK", Anything Else
        contains "Fail".
  - If the Result field is set to "Fail", Anything Else contains
        "Finish OK".
