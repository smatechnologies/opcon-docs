# Viewing Os2200 Job Details

To view an Os2200 job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Editing Os2200 Job Details

1. To view an Os2200 job, go to **Library** > **Master Jobs**.
1. Select an Os2200 job in the list.
1. Select **Edit**.
1. Expand the **Task Details** panel to expose its content.

**In the Os2200 Definition frame:**

### Start Command

- **Qualifier**: Defines the qualifier of the ECL file.
- **File Name**: Defines the filename of the ECL file.
- **Element Name**: Defines the element name of the file containing
  the ECL, include Version when needed (e.g., ELT/VERSION).
- **Priority**: Define the priority to be placed on the start
  statement when submitting the job to the Exec.
- **Options**: Defines the valid options used for inclusion on the
  start statement.
- **Condition Word (octal)**: Defines an octal number placed in the
  middle third of the condition word for this job (sets T2 of run's
  condition word, the "set" parameter of the start statement).

### Run Card Control

- **Run ID**: Defines the run to the Exec and replaces the Run ID on
  the \@RUN card of the ECL.
- **Account**: Defines the account code used for billing purposes. It
  is also used on the start statement issued for the job.
- **User ID**: Defines the user of the account, used with the account
  code on the start statement. When user ID = "-SECURITY-", LSAM
  issues an ST <ELT\> to start the job. This allows starting security
  officer jobs from SYS$LIB$\*RUN$ when Auto Answer for Security is
  turned on.
- **Project**: Define the project for file access and accounting
  purposes. Used on the start statement issued for the job.
- **Max Pages and Max Cards**: Defines the maximum values for page and
  card generation for use on the start statement.

### LSAM Resolved Dependencies

LSAM Resolved Dependencies option indicates if the job should include a
Prerun job or a File dependency. Valid values include: **<None\>**,
**Pre Run**, **File**.

### Prerun Information

If Pre Run is set for the LSAM Resolved Dependencies, the Prerun
Information can be defined. The Prerun definition can contain all of the
same fields as the Start Command and Run Card Control in the Job
Information. Refer to the Job Information details above.

- The Prerun information allows the user to specify an ECL to be
  executed immediately before the initiation of the job specified for
  the _Job Information_.
- When the Prerun ECL terminates with an error, it is rescheduled at a
  user-defined interval.
- The Prerun ECL continues to execute at the user-defined interval
  until it succeeds, allowing the ECL on the _Job Information_ to
  process. The primary purpose of a Prerun is to test any required
  preconditions to job execution.

### File Dependencies

If File is set for the LSAM Resolved Dependencies, the File Dependencies
information can be defined. File Dependencies include the following
information:

- **Qualifier**: Defines the qualifier for the file dependency.
  Placing \# before or after the qualifier directs the
  LSAM to search the SHARED File Directory for the file; without the \# indicates the STD File Directory is to be
  searched.
- **File Name**: Defines the filename the ECL is dependent on.
- **Type**: Defines the type of dependency the ECL has on the file.
  The types of dependencies are:
  - **Exists**: The file must exist.
  - **Created**: The file must exist and was catalogued today.
  - **Deleted**: The file must not exist.
  - **Size**: The file exceeds the value already entered in the
    entered in the size.
  - **Referenced**: The file has been referenced today.
  - **Assigned**: The file is currently assigned.
  - **BackedUp**: The file has a current backup (Backed up and not
    yet modified).
  - **Unloaded**: The file is currently unloaded.

### Completion Status Based on Condition Word

Upon termination of an LSAM started job, the run condition word is evaluated for completion status of the job.
User-defined values can be used for range testing of any of the standard
divisions of the condition word.

- **And/Or**: Determines the association between multiple tests.
- **Word Part**: Defines the portion of the word to be analyzed. Valid
  values are S1 through S6, and T1 through T3.
- **Condition**: Defines the condition codes to specify how the word
  part is to be tested.
  - **L AND**: Logical And between the associated Value and the
    run's condition word.
  - **LT**: Less than
  - **EQ**: Equal
  - **GE**: Greater than or equal to
  - **NE**: Not equal
  - **LE**: Less than or equal to
  - **GT**: Greater than
  - **Range**: Range of values

---

## More Information

For conceptual information, refer to [SAP BW Jobs](../../../../../../../job-types/os-2200.md) in
the **Concepts** online help.
