# SAP R/3 and CRM Job Details

The information in this section applies to defining an SAP R/3 and CRM
job. For additional information about this platform, refer to [SAP LSAM Configuration and
Operation](https://help.smatechnologies.com/opcon/agents/sap/latest/Files/Agents/SAP/Configuration-and-Operation.md)
 in the **SAP LSAM** online help for special features to enhance
the automation capabilities of OpCon on this
platform.

## Login

- **Machine**: Defines the SAP R/3 and CRM Machine name. For
    information on adding an LSAM Machine to     OpCon, refer to [Adding
    Machines](../Files/UI/Enterprise-Manager/Adding-Machines.md)
     in the **Enterprise Manager** online help.
- **User ID**: Defines the valid SAP login ID.
- **Password**: Defines the correct SAP password for the User ID.
- **Language**: Defines the two-character language abbreviation (e.g.,
    enter EN for English), and forces the abbreviation to all capital
    letters.

## General Data

- **Job Name**: Defines the name of the job as defined in the SAP R/3
    and SAP CRM system.
- **Job Class**: Defines the classification of SAP R/3 and SAP CRM
    Background Jobs according to priority.
  - **Class A**: The highest class for SAP R/3 and CRM jobs. The SAP
        system always processes Class A jobs before jobs of other
        classes.
  - **Class B**: The second highest class for SAP R/3 and SAP CRM
        jobs. These jobs normally run at regular intervals. The SAP
        system processes Class B jobs before Class C jobs but after
        Class A jobs.
  - **Class C**: The lowest class for SAP R/3 and SAP CRM jobs. Jobs
        in the default Class normally run at standard processing
        intervals and after Classes A and B.
- **Job Number**: Defines the SAP R/3 and SAP CRM Job number (Job ID)
    as defined in the SAP system.
- **Start SAP Job**: Configures SAP start criteria for the job.
  - **A.S.A.P.**: Configures the job to start as soon as a
        background process is available.
  - **Immediately**: Configures the job to start as soon as it
        qualifies to run in OpCon. The job
        does not wait for an available SAP background process before
        running. If all background processes are in use, an immediately
        started job fails.
- **Exec. Target**: Defines the name of the SAP Application Server on
    which the job processes.

### Job Setup Details

The OpCon graphical interfaces support
creation and modification of SAP job steps. When the step definition is
saved, the information is sent back to the SAP server for storage.

Step definition in OpCon requires the
definition of the program name and the order for the step. Each step
represents a program which can be any one of three program types:

- [ABAP Program Details](#ABAP)
- [External Command Details](#External)
- [External Program Details](#External2)

#### ABAP Program Details

OpCon supports the definition and
modification of the following information for ABAP Programs:

- **ABAP Program**: Defines the ABAP program name.
- **Variant**: Defines the ABAP program Variant.
- **Variant List**: Defines the following variant parameter names and
    values:
  - **Parameter**: Defines the technical name associated with a
        group of values for the Variant.
  - **Low Value**: Defines a variable value associated with the
        Parameter name.
    - If the Kind is set to '**P**' (simple parameter), the Low
            Value is the variable used to represent that parameters'
            value.
    - If the Kind is set to '**S**' (selection), the Low Value,
            High Value, and Option are used with the Sign to qualify the
            parameter.
  - **High Value**: Defines a variable value associated with the
        Parameter name.
    - If Kind is set to '**P**', the High Value does not apply
            and cannot be modified.
    - If the Kind is set to '**S**', the Low Value, High Value,
            and Option are used with the Sign to qualify the parameter.
  - **Kind**: Defines the parameter type. Parameter types are:
    - **S** - Selection type: For modifying '**S**' type
            parameters, refer to the 'Modify' information below.
    - **P** - Simple Parameter type: For information on the Low
            Value, refer to the [Job Dependency             Types](#Job_Dependency_Types) table.
  - **Option**: Options are operators that apply to the Low Value
        and High Value when the Kind is set to '**S**'. Additionally,
        the *Sign* modifies the manner in which SAP applies the Option
        to qualify the parameter.
  - **Sign**: Determines whether to Include or Exclude the value
        resolved through the Low Value, High Value, and Option.

  Low Value   High Value   Option         Sign
  ----------- ------------ -------------- -----------------------------
  X                        EQ (=)         I or E (Include or Exclude)
  X                        GT (\>)        I or E (Include or Exclude)
  X                        GE (\>=)       I or E (Include or Exclude)
  X                        LT (<)        I or E (Include or Exclude)
  X                        LE (<=)       I or E (Include or Exclude)
  X                        NE (!=)        I or E (Include or Exclude)
  X           X            BT (Between)   I or E (Include or Exclude)

- **Language**: Defines the two-character language abbreviation (e.g.,
    EN for English). The language characters will automatically populate
    if a Variant was defined.
- **Print Specifications**: Defines the numerous print parameters and
    specifications. The following information applies to defining the
    Print Specifications:
  - **General Attributes**:
    - **Output Device**: Defines the name of the output device.
    - **Number of Copies**: Defines how many copies of the
            document to print.
    - **Text Only**: Defines the text-only printing option.
    - **Time of Printing**: Defines the time to print a spool
            request. Valid options include:
      - Send to SAP spooler for now
      - Print immediately
    - **Print Format**: Defines the format of the spool request to
            be sent. Essentially, it defines the page format (i.e., the
            maximum number of lines and columns per printed page).
  - **Spool Request**: Allows users to assign a name and title to
        the spool request reports that are spooled for later printing.
    - **Name**: Defines the name of the spool request. It may
            consist of letters, numerals, special characters, or blanks.
            The standard name proposed by the system for a spool request
            comprises the eight-character report name, the separator
            (\_), and the first three characters of the user name.
    - **Title**: Defines the description of the spool request. It
            may consist of letters, digits, special characters, or
            blanks.
    - **Authorization**: Defines the authorization for the spool
            request. Only users with this authorization can display the
            contents of the spool request.
  - **Cover Sheets**: Determines whether a cover page containing
        details about the print request such as recipient, department,
        and format is to be sent with the spool request.
    - **SAP Cover Page**: Determines whether a cover page
            containing details about the print request - such as
            recipient, department, and format - is to be sent with the
            spool request. There are three options:
      - System Administrator: Default setting
      - Do not print
      - Print
    - **Selection cover sheet**: Determines whether the report
            output should include a cover page with the report
            selections. Valid options are '*Yes*' and '*No*'.
    - **Recipient**: Defines the name of the spool request
            recipient. On the print out, this name appears on the cover
            sheet. The default value for the recipient name is the
            current user name.
    - **Department**: Defines the name of the department sending
            the spool request. On the printout, this name is displayed
            on the cover sheet.
  - **Output Options**:
    - **Delete Immediately After Printing**: Determines if the
            spool request will be deleted immediately after it has been
            sent to the output device. If this option is disabled, the
            spool request will be deleted only after the spool retention
            period has expired.
    - **Spool Retention Period**: Defines how many days a spool
            request stays in the spool system before it is deleted. The
            maximum number of days to keep is eight.
    - **New Spool Request**: Determines if the current spool
            request will be added to the existing request with the same
            properties.
      - To be able to append the current spool request to an
                existing one, their respective specifications for Name,
                Output device, Number of copies and Format must match.
      - Additionally, the existing spool request must be
                unfinished. This normally occurs when a spool request is
                released for output. If no spool request is found, a new
                one is generated.
    - **Do not Append Print Jobs**: Defines whether or not to
            append print jobs.
    - **Storage Mode**: Defines the type of storage mode to use
            for the job.

#### External Command Details

OpCon supports the definition and
modification of the following information for External Commands:

- **Command**: Defines the external command name.
- **Parameters**: Defines the parameter string to pass to the external
    command when the step executes.
- **Operating System**: Defines the Operating System on which the
    background job processes (e.g., AS400, Windows, SunOS).
- **Target Server**: Defines the name of the application server for
    running the background job.
- **Control Flags**: Defines the options to provide additional control
    for the job:
  - **Log external output to the job log**: Writes the standard job
        output to the job log on the SAP system.
  - **Log external errors in job log**: Writes the standard error
        job output to the job log on the SAP system.
  - **Job waiting for external termination**: Informs SAP to wait
        for the termination of the external command before returning any
        exit condition.
  - **Activate trace**: Turns on detailed flow trace for the job.

#### External Program Details

OpCon supports the definition and
modification of the following information for External Programs:

- **Program**: Defines the external program name.
- **Parameters**: Defines the parameter string to pass to the external
    command when the step executes.
- **Target Server**: Defines the host name of the SAP system for
    running the external program.
- **Control Flags**: Defines various options to provide additional
    control for the job:
  - **Log external output to the job log**: Writes the standard job
        output to the job log on the SAP system.
  - **Log external errors in job log**: Writes the standard error
        job output to the job log on the SAP system.
  - **Job waiting for external termination**: Informs SAP to wait
        for the termination of the external command before returning any
        exit condition.
  - **Activate trace**: Turns on detailed flow trace for the job.
