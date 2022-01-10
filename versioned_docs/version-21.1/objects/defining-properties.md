# Defining Properties

The following basic information applies to defining properties:

- **Name**: Defines the property name.
  - For Global Properties (OpCon Instance (OI) properties), the
        property name must not exceed 64 characters and must be unique.
  - For Machine, Schedule, and Job Instance properties, the name has no restriction on length and should be unique for an instance.
    :::note
    If duplicate property names exist for Machine, Schedule, or Job Instance properties, OpCon will resolve tokens for that property name only to the value of the first property it finds.
    :::
  - Although not actually invalid, some characters will cause
        problems with OpCon event processing
        and token resolution. Avoid the following characters: ' (single
        quote), " (double quote), ( ) (open and closed parentheses), \\
        (backslash) , (comma), = (equals), ; (semi-colon), and \|
        (pipe).
    - Property names should not have a preceding dollar sign ($).
            This symbol is reserved for System Properties.
    - The @ symbol cannot be the first or last character of the
            property name, and it cannot appear consecutively more than
            once within the name.
  - If the database has a binary sort order, the property names are
        case-sensitive.
- **Documentation**: For Global Properties (OpCon Instance (OI)
    properties), provides an area for descriptions, explanations, and
    notes that can be updated for the defined property.
- **Encrypted**: Allows the Value to be encrypted. Once an encrypted
    value is saved, the value cannot be decrypted.
- **Value**: Defines the property value. If a token references the
    associated property when submitting a job for processing or
    processing OpCon events,
    OpCon resolve the token to this value.
- The final value of the property must be usable by the job or
    OpCon event at the time of processing.
- Property Expressions are allowed in the value of a property. For
    more information, refer to [Property Expressions API Syntax](../reference/property-expressions-syntax.md).
- If defining the final value, you should avoid using the following
    characters: , (comma), = (equals), ; (semi-colon), and \| (pipe).
    These characters can cause problems with
    OpCon event processing and token
    resolution.
- The value **should not** be enclosed in quotes. If quotes are
    entered, they will be used as part of the value.
- The value must not exceed 4000 characters.
- Leading and trailing spaces are removed from property values.

:::tip Example
In this use case, we have the need to dynamically supply different values as parameters to a job through an OpCon event. One of these values contains a character that would cause a problem with the event. The solution for this problem is to define multiple properties instead, and place the problem character in the job definition. For this example, the problem character in question is a comma (,).

On the Job Definition, the first parameter to the job must be a string of alpha characters (e.g., DAILY), and the second parameter must be a string of alpha characters with a comma in the middle (e.g., TEST,JOB).

The incorrect approach is:

    In the Job Details for the platform, we use the following tokens separated by commas:

    [[JI.PARAM1]],[[JI.PARAM2]
    In the OpCon event to add the job, we use this syntax:

    $JOB:ADD,$DATE,SCHEDULE,JOB,FREQCODE,PARAM1=DAILY;PARAM2=TEST,JOB

**Result**:

The job will fail because a comma is used by OpCon as a delimiter for events, and when the tokens resolve, the value becomes DAILY,TEST instead of DAILY,TEST,JOB.

The correct approach is:

    In the Job Details for the platform, we use the following tokens separated by commas:

    [[JI.PARAM1]],[[JI.PARAM2]],[[JI.PARAM3]].
    In the OpCon event to add the job, we use this syntax:

    $JOB:ADD,$DATE,SCHEDULE,JOB,FREQCODE,PARAM1=DAILY;PARAM2=TEST;PARAM3=JOB

**Result**:

When those tokens are resolved at job run time, they will become: DAILY,TEST,JOB
:::

## Methods for Defining Properties

:::note
Properties and values may not begin or end with a space.
:::

From some locations, multiple properties can be defined at one time by listing properties and their values in a string. The following syntax must be followed:

```shell
PropertyName1=value;PropertyName2=value...
```

### Enterprise Manager

- User-defined OpCon Instance (OI) properties and values are maintained in [Properties](./properties.md). For information on Adding, Editing, or Deleting Properties, refer to [Managing Global Properties](../Files/UI/Enterprise-Manager/Managing-Global-Properties.md) in the **Enterprise Manager** online help.
- Users can define Schedule Instance Properties from the [Schedule Instance Definition](../Files/UI/Enterprise-Manager/Schedule-Instance-Definition.md) frame in the **Enterprise Manager** online help.
- Users can define Job Instance Properties from the [Job Instance Definition](../Files/UI/Enterprise-Manager/Job-Instance-Definition.md) frame in the **Enterprise Manager** online help.
- From Schedule Build, users can define Schedule Instance properties
    when building a schedule. Properties will automatically be
    associated with the defined schedule when it builds. Refer to [Using Schedule Build](../Files/UI/Enterprise-Manager/Using-Schedule-Build.md)
    .
- From Daily Maintenance, users can define Job Instance properties
    when adding a job. Properties will automatically be associated with
    the defined job to add to the daily schedule. Refer to [Adding Jobs from Job Master to Daily Schedule](../Files/UI/Enterprise-Manager/Adding-Jobs-from-Job-Master-to-Daily-Schedule.md)
    .

### OpCon Events

- The [Property-Related Events](../events/types.md#property) ($PROPERTY:ADD, SET, and DELETE) support maintenance of user-defined properties for any object (e.g., OpCon Instance, Machine Instance, Schedule Instance, and Job Instance).
- $SCHEDULE:BUILD type events have an optional parameter for defining
    properties for the schedule being built. Properties will
    automatically be associated with the defined schedule to build. A
    job is created in the AdHoc schedule and causes the schedule to
    build in a released state so the schedule will start processing as
    soon as its start time arrives. For more information, refer to
    [$SCHEDULE:BUILD](../events/types.md#$SCHEDULE:BUILD,%3Cschedule_date%3E,_%3Cschedule_name%3E,%3Clog_file_name%3E,_%3Coverwrite_flag%3E,_%5BSchedule_Instance_Property_Definitions%5D)
    in the **OpCon Events** online help.
- $JOB:ADD type events have an optional parameter for defining
    properties for the job being added. Properties will automatically be
    associated with the defined job to add to the daily schedule. For
    more information, refer to
    [$JOB:ADD](../events/types.md#$JOB:ADD) in the
    **OpCon Events** online help.

### SMADDI

- The "new_token" message type supports adding a new
    OpCon Instance user property value to the
    Master tables. Refer to [new_token and update_token Element Structures](../utilities/SMA-Dynamic-Data-Input/Data-Input-Message-Elements.md#new_token_and_update_token_Element_Structures)
    .
- The "update_token" message type supports updating an
    OpCon Instance user property value in the
    Master tables. Refer to [new_token and update_token Element Structures](../utilities/SMA-Dynamic-Data-Input/Data-Input-Message-Elements.md#new_token_and_update_token_Element_Structures)
    .
