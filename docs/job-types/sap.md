---
title: SAP R/3 and CRM Job Details
description: "Field reference for defining an SAP R/3 and CRM job in OpCon, including login settings, general data, job step types, and print specifications."
product_area: Job Types
audience: Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - Automation Engineer
  - Jobs
last_updated: 2026-03-18
doc_type: reference
---

# SAP R/3 and CRM Job Details

This page describes the fields available when defining an SAP R/3 or SAP CRM job in OpCon. For platform-specific features that extend OpCon automation capabilities on SAP, refer to [SAP Agent Configuration and Operation](https://help.smatechnologies.com/opcon/agents/sap/latest/Files/Agents/SAP/Configuration-and-Operation.md) in the **SAP Agent** online help.

## Login

- **Machine**: The SAP R/3 or CRM Agent machine name. For information on adding an Agent machine to OpCon, refer to [Adding Machines](../Files/UI/Enterprise-Manager/Adding-Machines.md) in the **Enterprise Manager** online help.
- **User ID**: A valid SAP login ID.
- **Password**: The SAP password for the specified User ID.
- **Language**: A two-character language abbreviation (for example, `EN` for English). The value is forced to uppercase.

## General Data

- **Job Name**: The name of the job as defined in the SAP R/3 or SAP CRM system.
- **Job Class**: The priority classification of the SAP background job.
  - **Class A**: Highest priority. SAP always processes Class A jobs before jobs of other classes.
  - **Class B**: Second-highest priority. These jobs normally run at regular intervals. SAP processes them after Class A jobs but before Class C jobs.
  - **Class C**: Lowest priority. Jobs in this class run at standard processing intervals after Classes A and B.
- **Job Number**: The SAP R/3 or SAP CRM Job number (Job ID) as defined in the SAP system.
- **Start SAP Job**: The SAP start criteria for the job.
  - **A.S.A.P.**: Starts the job as soon as a background process is available.
  - **Immediately**: Starts the job as soon as it qualifies to run in OpCon, without waiting for an available SAP background process. If all background processes are in use when the job starts, the job fails.
- **Exec. Target**: The name of the SAP Application Server on which the job runs.

## Job Steps

OpCon supports creating and modifying SAP job steps through its graphical interfaces. When a step definition is saved, OpCon sends the information to the SAP server for storage.

Each step defines a program name and an execution order. Each step corresponds to one of three program types:

- [ABAP Program](#abap-program-details)
- [External Command](#external-command-details)
- [External Program](#external-program-details)

### ABAP Program Details

The following fields apply to ABAP program steps.

- **ABAP Program**: The ABAP program name.
- **Variant**: The ABAP program variant.
- **Variant List**: The variant parameter names and values. Each row in the list contains the following fields:
  - **Parameter**: The technical name associated with a group of values for the variant.
  - **Low Value**: A variable value associated with the Parameter name.
    - When **Kind** is `P` (simple parameter), Low Value represents that parameter's value.
    - When **Kind** is `S` (selection), Low Value is used together with High Value and Option, modified by Sign.
  - **High Value**: A second variable value associated with the Parameter name.
    - When **Kind** is `P`, High Value does not apply and cannot be modified.
    - When **Kind** is `S`, High Value is used together with Low Value and Option, modified by Sign.
  - **Kind**: The parameter type.
    - `S` — Selection type
    - `P` — Simple Parameter type
  - **Option**: An operator applied to Low Value and High Value when **Kind** is `S`.
  - **Sign**: Determines whether to include or exclude the value resolved through Low Value, High Value, and Option.

The following table shows valid combinations of Low Value, High Value, Option, and Sign for `S`-kind parameters:

| Low Value | High Value | Option | Sign |
|---|---|---|---|
| X | | `EQ` (=) | `I` or `E` (Include or Exclude) |
| X | | `GT` (>) | `I` or `E` (Include or Exclude) |
| X | | `GE` (>=) | `I` or `E` (Include or Exclude) |
| X | | `LT` (<) | `I` or `E` (Include or Exclude) |
| X | | `LE` (<=) | `I` or `E` (Include or Exclude) |
| X | | `NE` (!=) | `I` or `E` (Include or Exclude) |
| X | X | `BT` (Between) | `I` or `E` (Include or Exclude) |

- **Language**: A two-character language abbreviation (for example, `EN` for English). This field populates automatically when a variant is defined.
- **Print Specifications**: Print parameters for the ABAP step. The following fields apply:
  - **General Attributes**:
    - **Output Device**: The name of the output device.
    - **Number of Copies**: The number of copies to print.
    - **Text Only**: Enables text-only printing.
    - **Time of Printing**: When to print a spool request. Options are:
      - `Send to SAP spooler for now`
      - `Print immediately`
    - **Print Format**: The page format for the spool request, defining the maximum number of lines and columns per printed page.
  - **Spool Request**: Name and title settings for spool requests.
    - **Name**: The name of the spool request. May contain letters, numerals, special characters, or spaces. The system-proposed default name uses the eight-character report name, an underscore separator, and the first three characters of the user name.
    - **Title**: A description of the spool request. May contain letters, digits, special characters, or spaces.
    - **Authorization**: The authorization required to display the spool request contents. Only users with this authorization can view the spool request.
  - **Cover Sheets**: Controls whether a cover page is sent with the spool request.
    - **SAP Cover Page**: Determines whether a cover page containing print request details (recipient, department, format) is sent with the spool request. Options are:
      - `System Administrator` (default)
      - `Do not print`
      - `Print`
    - **Selection cover sheet**: Determines whether the report output includes a cover page with report selections. Options are `Yes` and `No`.
    - **Recipient**: The name of the spool request recipient, displayed on the cover sheet. Defaults to the current user name.
    - **Department**: The name of the department sending the spool request, displayed on the cover sheet.
  - **Output Options**:
    - **Delete Immediately After Printing**: When enabled, deletes the spool request immediately after it is sent to the output device. When disabled, the spool request is deleted only after the spool retention period expires.
    - **Spool Retention Period**: The number of days a spool request remains in the spool system before deletion. The maximum value is eight days.
    - **New Spool Request**: Controls whether the current spool request is appended to an existing request with the same properties. To append, the Name, Output device, Number of copies, and Format fields must match, and the existing spool request must be unfinished. If no matching spool request is found, a new one is created.
    - **Do not Append Print Jobs**: Prevents appending print jobs to an existing spool request.
    - **Storage Mode**: The storage mode type for the job.

### External Command Details

The following fields apply to external command steps.

- **Command**: The external command name.
- **Parameters**: The parameter string passed to the external command when the step runs.
- **Operating System**: The operating system on which the background job runs (for example, `AS400`, `Windows`, `SunOS`).
- **Target Server**: The name of the SAP application server on which the background job runs.
- **Control Flags**: Additional execution options for the step.
  - **Log external output to the job log**: Writes standard job output to the SAP job log.
  - **Log external errors in job log**: Writes standard error output to the SAP job log.
  - **Job waiting for external termination**: Instructs SAP to wait for the external command to finish before returning an exit condition.
  - **Activate trace**: Turns on detailed flow trace for the job.

### External Program Details

The following fields apply to external program steps.

- **Program**: The external program name.
- **Parameters**: The parameter string passed to the external program when the step runs.
- **Target Server**: The host name of the SAP system on which the external program runs.
- **Control Flags**: Additional execution options for the step.
  - **Log external output to the job log**: Writes standard job output to the SAP job log.
  - **Log external errors in job log**: Writes standard error output to the SAP job log.
  - **Job waiting for external termination**: Instructs SAP to wait for the external command to finish before returning an exit condition.
  - **Activate trace**: Turns on detailed flow trace for the job.
