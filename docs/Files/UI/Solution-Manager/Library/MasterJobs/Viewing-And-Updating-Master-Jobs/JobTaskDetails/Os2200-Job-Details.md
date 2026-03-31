---
title: Viewing Os2200 Job Details
description: "Use this procedure to view Os2200 Job Details in Solution Manager."
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

# Viewing Os2200 Job Details

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view Os2200 Job Details in Solution Manager.

To view an Os2200 job, you must have the required privileges as defined in [Required Privileges](../Accessing-Master-Jobs.md#required-privileges).

## Editing Os2200 Job Details

To edit Os2200 Job Details, complete the following steps:

1. To view an Os2200 job, go to **Library** > **Master Jobs**
1. Select an Os2200 job in the list
1. Select **Edit**
1. Expand the **Task Details** panel to expose its content

**In the Os2200 Definition frame:**

### Start Command

- **Qualifier**: Defines the qualifier of the ECL file
- **File Name**: Defines the filename of the ECL file
- **Element Name**: Defines the element name of the file containing the ECL; include Version when needed (e.g., ELT/VERSION)
- **Priority**: Defines the priority placed on the start statement when submitting the job to the Exec
- **Options**: Defines valid options for inclusion on the start statement
- **Condition Word (octal)**: Defines an octal number placed in the middle third of the condition word for this job (sets T2 of the run's condition word, the "set" parameter of the start statement)

### Run Card Control

- **Run ID**: Defines the run to the Exec and replaces the Run ID on the \@RUN card of the ECL
- **Account**: Defines the account code used for billing and on the start statement
- **User ID**: Defines the user of the account, used with the account code on the start statement. When User ID = "-SECURITY-", agent issues an ST \<ELT\> to start the job, enabling security officer jobs from SYS$LIB$\*RUN$ when Auto Answer for Security is on
- **Project**: Defines the project for file access and accounting, used on the start statement
- **Max Pages and Max Cards**: Defines maximum values for page and card generation on the start statement

### agent Resolved Dependencies

Indicates whether the job should include a Prerun job or a File dependency. Valid values: **\<None\>**, **Pre Run**, **File**.

### Prerun Information

If **Pre Run** is set for agent Resolved Dependencies, the Prerun Information can be defined using the same fields as Start Command and Run Card Control.

- Specifies an ECL to run immediately before the job defined in Job Information
- If the Prerun ECL terminates with an error, it is rescheduled at a user-defined interval
- The Prerun ECL repeats at the user-defined interval until it succeeds, then the Job Information ECL processes. Its primary purpose is to test required preconditions for job execution

### File Dependencies

If **File** is set for agent Resolved Dependencies, define the following:

- **Qualifier**: Defines the qualifier for the file dependency. Placing \# before or after the qualifier directs the agent to search the SHARED File Directory; without \# indicates the STD File Directory
- **File Name**: Defines the filename the ECL depends on
- **Type**: Defines the type of dependency:
  - **Exists**: The file must exist
  - **Created**: The file must exist and was catalogued today
  - **Deleted**: The file must not exist
  - **Size**: The file exceeds the entered size value
  - **Referenced**: The file has been referenced today
  - **Assigned**: The file is currently assigned
  - **BackedUp**: The file has a current backup (backed up and not yet modified)
  - **Unloaded**: The file is currently unloaded

### Completion Status Based on Condition Word

Upon termination of an agent-started job, the run condition word is evaluated for completion status. User-defined values can be used for range testing of any standard condition word division.

- **And/Or**: Determines the association between multiple tests
- **Word Part**: Defines the portion of the word to analyze. Valid values: S1–S6, T1–T3
- **Condition**: Defines how the word part is tested:
  - **Streamlined workflow**: Logical And between the associated Value and the run's condition word
  - **LT**: Less than
  - **EQ**: Equal
  - **GE**: Greater than or equal to
  - **NE**: Not equal
  - **LE**: Less than or equal to
  - **GT**: Greater than
  - **Range**: Range of values

---

## More Information

For conceptual information, refer to [SAP BW Jobs](../../../../../../../job-types/os-2200.md) in the **Concepts** online help.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Qualifier | Defines the qualifier of the ECL file | — | — |
| File Name | Defines the filename of the ECL file | — | — |
| Element Name | Defines the element name of the file containing the ECL; include Version when needed (e.g., ELT/VERSION) | — | — |
| Priority | Defines the priority placed on the start statement when submitting the job to the Exec | — | — |
| Options | Defines valid options for inclusion on the start statement | — | — |
| Condition Word (octal) | Defines an octal number placed in the middle third of the condition word for this job (sets T2 of the run's condition word, the "set" parameter of the... | — | — |
| Run ID | Defines the run to the Exec and replaces the Run ID on the \@RUN card of the ECL | — | Valid values: **\<None\>**, **Pre Run**, **File**. |
| Account | Defines the account code used for billing and on the start statement | — | Valid values: **\<None\>**, **Pre Run**, **File**. |
| User ID | Defines the user of the account, used with the account code on the start statement. | — | Valid values: **\<None\>**, **Pre Run**, **File**.  ### Prerun Information |
| Project | Defines the project for file access and accounting, used on the start statement | — | Valid values: **\<None\>**, **Pre Run**, **File**.  ### Prerun Information |
| Max Pages and Max Cards | Defines maximum values for page and card generation on the start statement | — | Valid values: **\<None\>**, **Pre Run**, **File**.  ### Prerun Information  If **Pre Run** is set for agent Resolve |
| Type | Defines the type of dependency: | — | — |
| And/Or | Determines the association between multiple tests | — | Valid values: S1–S6, T1–T3. - **Condition**: Defines how the word part is tested:   - **Streamlined workflow**: Logical And betwe |
| Word Part | Defines the portion of the word to analyze. | — | Valid values: S1–S6, T1–T3. - **Condition**: Defines how the word part is tested:   - **Streamlined workflow**: Logical And betwe |
| Condition | Defines how the word part is tested: | — | — |

## FAQs

**Q: How many steps does the Viewing Os2200 Job Details procedure involve?**

The Viewing Os2200 Job Details procedure involves 4 steps. Complete all steps in order and save your changes.

**Q: What does Viewing Os2200 Job Details cover?**

This page covers Editing Os2200 Job Details, More Information.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as Function Privileges, Machine Privileges, Schedule Privileges, and Access Codes.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
