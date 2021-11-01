# Data Input Message Elements

This section presents the supported data input elements and their
descriptions. The examples indicate the nested structure of elements for
input files. Not all elements define data items for storage in the
database. Some elements merely group a set of logically-related elements
together.

## General Message Elements

The general message elements are required for all SMADDI input files.
Use the following structure:

<msg\>

     <msgtype\></msgtype\>

         \....all elements required for msgtype

</msg\>

#### <msg\></msg\>

The parent element <msg\> contains a complete transaction for the
SMADDI stored procedures to commit to the
OpCon database. SMADDI does not limit the
number of <msg\> elements for an input file. The data for this element
contains all child elements needed for the transaction.

- **Requirements**: Required for all messages.
- **Valid Values**: Any valid DDI text.

#### <msgtype\></msgtype\>

The value for <msgtype\> describes the type of data expected for the
<msg\>. The SMADDI service uses this information to ensure that the
correct child elements are included within the <msg\>. The data for
this element must be a Supported SMADDI Message Type. Refer to [SMADDI Message Types](SMADDI-Message-Types.md). Only one
<msgtype\> element is allowed per <msg\> element.

- **Requirements**: Required for <msg\>.
- **Valid Values**: The data for this element must be a Supported
    SMADDI Message Type. Refer to [SMADDI Message     Types](SMADDI-Message-Types.md).

## add_caldate and del_caldate Element Structures

The add_caldate message type and its elements can be used to add new
dates to one or more OpCon calendars. If the
calendar does not exist, it will be created with the specified dates
included unless the calendar name indicates that it is a schedule
holiday calendar (HC:ScheduleName). Schedule holiday calendars may not
be created using the add_caldate message. For information on creating
data input files, refer to [Creating Data Input Files](Creating-Data-Input-Files.md).

The following sample code contains the structure for defining every
possible element for the add_caldate message type:

<msg\>

  <msgtype\>add_caldate</msgtype\>

  <calinfo\>

    <calname\> </calname\>

    <caldoc\> </caldoc\>

    <caldate\> </caldate\>

  </calinfo\>

</msg\>

The del_caldate message type and its elements can be used to delete the
entered dates from one or more OpCon
calendars.

The following sample code contains the structure for defining every
possible element for the del_caldate message type:

<msg\>

  <msgtype\>del_caldate</msgtype\>

  <calinfo\>

    <calname\> </calname\>

    <caldate\> </caldate\>

  </calinfo\>

</msg\>

### Element Definitions

#### <calinfo\></calinfo\>

The parent element <calinfo\> contains the child elements needed to add
/delete days on a single OpCon calendar.

- **Requirements**: Required for <msgtype\> add_caldate.
- **Valid Values**: Any valid <calinfo\> child element.

#### <calname\></calname\>

The value for <calname\> defines the name of the Calendar to which
dates will be added/deleted.

- **Requirements**: Required for <calinfo\>.
- **Valid Values**: Valid data for this element is an alphanumeric
    calendar name that exists in the OpCon
    database or a new Calendar to be created. Calendar names are a
    maximum of 50 characters in length and cannot include the following
    characters: ' (single quote), ( (left parenthesis), ) (right
    parenthesis),\
    , (comma), = (equal symbol), ;(semicolon), \| (vertical bar). SMADDI
    allows only one <calname\> element per <calinfo\> element.

#### <caldoc\></caldoc\>

The value for <caldoc\> defines the purpose of the Calendar to which
dates will be added/deleted.

- **Requirements**: Optional for <calinfo\>.
- **Valid Values**: Valid data for this element must not exceed 4000
    characters. SMADDI allows only one <caldoc\> element per
    <calinfo\> element.

#### <caldate\></caldate\>

The value for <caldate\> defines a date to add/delete on the target
calendar.

- **Requirements**: Required for <calinfo\>.
- **Valid Values**: Valid data for this element is a short date in the
    format recognized by the database server's Regional Settings (e.g.,
    7/7/2008). SMADDI allows multiple <caldate\> elements per
    <calinfo\> element. The value for <caldate\> defines a date in the
    target calendar.

## new_schedule Element Structure

The new_schedule message type and its elements can be used to add new
schedules to Master tables of the OpCon
database. For information on creating data input files, refer to
[Creating Data Input Files](Creating-Data-Input-Files.md)
.

:::note
When the <documentation\> tags are used here for new_schedules, the element tag <docfrqname\> CANNOT be used or DDI throws an error message.
:::

The following sample code contains the structure for defining every
possible element for the new_schedule message type:

<msg\>

  <msgtype\>new_schedule</msgtype\>

    <skdinfo\>

       <skdname\></skdname\>

       <skdstart\></skdstart\>

       <skdwkdays\></skdwkdays\>

       <calusemaster\></calusemaster\>

       <concurrskdflg\></concurrskdflg\>

       <multi_inst_skd\></multi_inst_skd\>

       <subskd\></subskd\>

       <autobldadv\></autobldadv\>

       <autoblddays\></autoblddays\>

       <buildovr\></buildovr\>

       <buildhld\></buildhld\>

       <skdautobuildtime\></skdautobuildtime\>

       <autodeldays\></autodeldays\>

       <addlholday\></addlholday\>

       <workday_sun\></workday_sun\>

       <workday_mon\></workday_mon\>

       <workday_tue\></workday_tue\>

       <workday_wed\></workday_wed\>

       <workday_thu\></workday_thu\>

       <workday_fri\></workday_fri\>

       <workday_sat\></workday_sat\>

       <frq\>

          \....refer to [Data Input Message Elements](#%3Cfrq%3E)

       </frq\>

       <documentation\>

          \....refer to [<documentation\> Documentation Element Structure](#documen)

       </documentation\>

       <ppevtdets\></ppevtdets\>

       <skd_bld4machgrp\></skd_bld4machgrp\>

       <skd_inst_def\>

          <skd_predef_prop\></skd_predef_prop\>

       </skd_inst_def\>

       <skdinst\>

          <skdinstancename\></skdinstancename\>

          <named_skd_inst_def\>

            <named_skd_predef_prop\></namded_skd_predef_prop\>

          <named_skd_inst_def\>

          <jobpat\>

            <jobpatname\></jobpatname\>

            <exception\></exception\>

          </jobpat\>

       </skdinst\>

    </skdinfo\>

</msg\>

### Element Definitions

#### <skdinfo\></skdinfo\>

The parent element <skdinfo\> contains the child elements needed to
create a single OpCon schedule.

- **Requirements**: Required for <msgtype\> new_schedule.
- **Valid Values**: Any valid <skdinfo\> child element.

#### <skdname\></skdname\>

The <skdname\> element defines the schedule name.

- **Requirements**: Required for <skdinfo\>.
- **EM field label**: Name
- **Valid Values**: Valid data for this element is an alphanumeric
    schedule name that does not exist in the
    OpCon database.
  - Invalid values include the following: < (less than), \>
        (greater than), & (ampersand), ' (single quote), "(double
        quote), \| (pipe), , (comma), ; (semicolon), % (percent), ( )
        (open and closed parentheses), { } (open and closed braces), \[         \] (open and closed brackets), = (equals sign), \\ (backslash),
        ! (exclamation point), \~ (tilde), \`(accent grave)
  - Maximum Characters: 40
  - SMADDI allows only one <skdname\> element per <skdinfo\>
        element.

#### <skdstart\></skdstart\>

The <skdstart\> element is a schedule's start time, also included
during a schedule's definition.

- **Requirements**: Optional for <skdinfo\> which defaults to 00:00.
    SMADDI allows only one <skdstart\> element per <skdinfo\> element.
- **EM field label**: Start Time
- **Valid Values**: Valid data for this element is a numerical time in
    the format hh:mm. If defined, it must be within the range of
    00:00-23:59.

#### <skdwkdays\></skdwkdays\>

The value for <skdwkdays\> specifies the number of workdays per week
for the schedule.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Workdays per Week
- **Valid Values**: The valid values for this element are 5, 6, and 7.
    SMADDI allows only one <skdwkdays\> element per <skdinfo\>
    element.

#### <calusemaster\></calusemaster\>

The <calusemaster\> element indicates if the schedule's calendar
should use the Master Holiday Calendar.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Use Master Holiday
- **Valid Values**: The valid values are True and False. If omitted,
    the value defaults to True. SMADDI allows only one <calusemaster\>
    element per <skdinfo\> element.

#### <concurrskdflg\></concurrskdflg\>

The <concurrskdflg\> element an optional element in DDI whose valid
values are True and False.

- **Requirements**: Optional for <skdinfo\>. SMADDI allows only one
    <concurrskdflg\> element per <skdinfo\> element.
- **EM field label**: Conflict with other days
- **Valid Values**: The valid values are True and False.

#### <multi_inst_skd\></multi_inst_skd\>

The <multi_inst_skd\> element indicates if a schedule is multi-instance
capable.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Multi-Instance
- **Valid Values**: The valid values are True and False.

#### <subskd\></subskd\>

The <subskd\> element indicates that the schedule is allowed to be a
SubSchedule.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: SubSchedule
- **Valid Values**: The valid values are True and False.

#### <autobldadv\></autobldadv\>

The value for <autobldadv\> contains the number of days in advance to
start building.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: days in advance for
- **Valid Values**: The valid values for this element range from 1 to
    99 days.

#### <autoblddays\></autoblddays\>

The value for <autoblddays\> contains the number of days to build
consecutively.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: days
- **Valid Values**: The valid values for this element range from 1 to
    99 days.

#### <buildovr\></buildovr\>

If 'True', the <buildovr\> element indicates that if the schedule
exists in the daily tables, it should be overwritten when built again.
This will only happen if the schedule is complete or does not exist.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Overwrite Existing
- **Valid Values**: The valid values are True and False.

#### <buildhld\></buildhld\>

If 'True', the <buildhld\> element indicates that the schedule should
be built with a status of "On Hold". The SAM will not process the
schedule until it is released manually or through an
OpCon event.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Build On Hold
- **Valid Values**: The valid values are True and False.

#### <skdautobuildtime\></skdautobuildtime\>

The <skdautobuildtime\> element is the clock time to build the
schedule. The SAM uses this time to calculate the start offset for the
SMA_SKD_BUILD job when creating the build jobs.

- **Requirements**: Optional for <skdinfo\> which defaults to 00:00.
    SMADDI allows only one <skdautobuildtime\> element per <skdinfo\>
    element.
- **EM field label**: Auto Build Time
- **Valid Values**: Valid data for this element is a numerical time in
    the format hh:mm. If defined, it must be within the range of
    00:00-23:59.

#### <autodeldays\></autodeldays\>

The value for <autodeldays\> indicates how may days in the past from
the current date to auto delete this schedule (if it is complete).

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: days ago
- **Valid Values**: The valid values for this element range from 1 to
    99 days.

#### <addlholday\></addlholday\>

The <addlholday\> element defines the name of a calendar to be used for
determining holidays in addition to the master holiday and schedule
holiday calendars.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Additional Holidays
- **Valid Values**: A valid user-defined calendar in the database.

#### <workday_sun\></workday_sun\>

The <workday_sun\> element defines Sunday as a workday.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Sunday
- **Valid Values**: The valid values are True and False.

#### <workday_mon\></workday_mon\>

The <workday_mon\> element defines Monday as a workday.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Monday
- **Valid Values**: The valid values are True and False.

#### <workday_tue\></workday_tue\>

The <workday_tue\> element defines Tuesday as a workday.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Tuesday
- **Valid Values**: The valid values are True and False.

#### <workday_wed\></workday_wed\>

The <workday_wed\> element defines Wednesday as a workday.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Wednesday
- **Valid Values**: The valid values are True and False.

#### <workday_thu\></workday_thu\>

The <workday_thu\> element defines Thursday as a workday.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Thursday
- **Valid Values**: The valid values are True and False.

#### <workday_fri\></workday_fri\>

The <workday_fri\> element defines Friday as a workday.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Friday
- **Valid Values**: The valid values are True and False.

#### <workday_sat\></workday_sat\>

The <workday_sat\> element defines Saturday as a workday.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Saturday
- **Valid Values**: The valid values are True and False.

#### <ppevtdets\></ppevtdets\>

The <ppevtdets\> element defines the details of the
OpCon event to be submitted when the schedule
completes. Valid data for this element should be one of the existing
OpCon events. SMADDI does not fail the data
import if you define an invalid event. Any number of <ppevtdets\>
elements can be defined for the new schedule.

- **Requirements**: Optional for <skdinfo\>.
- **Valid Values**: For a complete list of valid events, refer to the
    [OpCon Events](../../events/introduction.md) online help.

#### <skd_bld4machgrp\></skd_bld4machgrp\>

Defines the Machine Group Name for the schedule's instances. This
element is only valid when the Multi-Instance element is True.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Build an instance for each machine in Machine
    Group
- **Valid Values**: Any valid Machine Group.

#### <skd_inst_def\></skd_inst_def\>

The parent element <skd_inst_def\> contains the child elements needed
to define strings of properties as instances for the schedule.

- **Requirements**: Optional for <skdinfo\>.
- **Valid Values**: (child element) <skd_predef_prop\>
    </skd_predef_prop\>

#### <skd_predef_prop\></skd_predef_prop\>

Defines a string of property definitions for a schedule instance.

- **Requirements**: Required for <skd_inst_def\>.
- **EM field label**: Define Property Values
- **Valid Values**: The property string must be in the format
    PName1=PValue1;PName2=PValue2...
  - Values for the "PName" should not contain the following
        characters: ' ( ) \\ , = ; \|
  - Values for the "PValue" should not contain a semicolon (;)
  - If the Multi-Instance element is True, and the
        <skd_bld4machgrp\> element is not specified, any number of
        <skd_predef_prop\> elements can be defined to specify multiple
        instances.
  - If the Multi-Instance element is True, and the
        <skd_bld4machgrp\> element is specified, the         <skd_predef_prop\> element is not allowed.
  - If the Multi-Instance element is False, only one
        <skd_predef_prop\> element is allowed.

#### <skdinst\></skdinst\>

The parent element <skdinst\> contains the child elements needed to
define each named schedule instance and any associated predefined
properties and exceptions. This element is only valid when the
Multi-Instance element is True and neither the <skd_inst_def\> nor the
<skd_bld4machgrp\> element is specified.

- **Requirements**: Optional for <skdinfo\>.
- **EM field label**: Named Instance

#### <skdinstancename\></skdinstancename\>

The <skdinstancename\> element defines the name of a schedule instance.

- **Requirements**: Required for <skdinst\>.
- **EM field label**: Instances
- **Valid Values**: Valid data for this element is an alphanumeric
    instance name that does not exist in the OpCon database.
  - Invalid values include the following: \~ (tilde) and \`(accent
        grave)
  - Maximum Characters: 128
  - SMADDI allows any number of <skdinstancename\> elements per
        <skdinst\> element.

#### <named_skd_inst_def\></named_skd_inst_def\>

The parent element <named_skd_inst_def\> contains the child elements
needed to define each property string associated with a named instance
of the schedule.

- **Requirements**: Optional for <skdinst\>.
- **Valid Values**: (child element) <named_skd_predef_prop\>
    </named_skd_predef_prop\>

#### <named_skd_predef_prop\></named_skd_predef_prop\>

Defines a property definition for a named instance of the schedule.

- **Requirements**: Required for <named_skd_inst_def\>.
- **EM field label**: Properties
- **Valid Values**: The property string must be in the format
    PName1=PValue1.
  - Values for the "PName" should not contain the following
        characters: ' ( ) \\ , = ; \|
  - Values for the "PValue" should not contain a semicolon (;)

#### <jobpat\></jobpat\>

The parent element <jobpat\> contains the child elements needed to
define each exception associated with a named instance of the schedule.
This element can only be defined by those in the ocadm role.

- **Requirements**: Optional for <skdinst\>.
- **EM field label**: Exceptions
- **Valid Values**: (child element) <jobpatname\> </jobpatname\>;
    <exception\></exception\>

#### <jobpatname\></jobpatname\>

The element <jobpatname\> defines the job pattern.

- **Requirements**: Required for <jobpat\>.
- **EM field label**: Job Patterns
- **Valid Values**: Valid data for this element is a maximum of 128
    alphanumeric characters, including the asterisk wildcard character
    (\*).
  - Invalid values include the following: \~ (tilde) and \`(accent
        grave)

#### <exception\></exception\>

The element <exception\> contains the XML definition for the exception
rule associated with a defined job pattern.

- **Requirements**: Optional for <jobpatname\>.

- **EM field label**: Exception Rules

- **Valid Values**: The valid (XML-escaped) syntax is:

    <exception\>&lt;Exception&gt;&lt;FieldCode&gt;**n**&lt;/FieldCode&gt;\
    &lt;NewValue&gt;**x**&lt;/NewValue&gt;&lt;NewValueIsExpression&gt;**false**&lt;/NewValueIsExpression&gt;&lt;ToReplace&gt;**m**&lt;/ToReplace&gt;&lt;/Exception&gt;</exception\>

  - Where *n* = Field code of the field to modify. Valid values
        (integer) include:
        +----------------------+----------------------+----------------------+
        | -   904 - Department | -   1006 -           | -   5009 - Job       |
        |                      |     Destination File |     Description      |
        |                      |                      |     Library          |
        +----------------------+----------------------+----------------------+
        | -   905 - Access     | -   1016 -           | -   5010 - Batch     |
        |     Code             |     Destination      |     Queue Name       |
        |                      |     Machine          |                      |
        +----------------------+----------------------+----------------------+
        | -   907 - Primary    | -   3001 - User ID   | -   5011 - Batch     |
        |     Machine          |                      |     Queue Library    |
        +----------------------+----------------------+----------------------+
        | -   908 - Alternate  | -   3003 - Command   | -   5012 - Output    |
        |     Machine1         |     Line             |     Queue Name       |
        +----------------------+----------------------+----------------------+
        | -   909 - Alternate  | -   3004 - Working   | -   5013 - Output    |
        |     Machine2         |     Directory        |     Queue Library    |
        +----------------------+----------------------+----------------------+
        | -   910 - Alternate  | -   3006 - Prerun    | -   5022 - Call      |
        |     Machine3         |     Command Line     |                      |
        +----------------------+----------------------+----------------------+
        | -   911- Machine     | -   3007 - Prerun    | -   6001 - Start     |
        |     Group            |     Working          |     Image            |
        |                      |     Directory        |                      |
        +----------------------+----------------------+----------------------+
        | -   913 - Start      | -   3018 - Prerun    | -   6002 -           |
        |     Offset           |     Exit Code        |     Parameters       |
        |                      |     Operator         |                      |
        +----------------------+----------------------+----------------------+
        | -   914 - Start      | -   3019 - Prerun    | -   6003 - Prerun    |
        |     Offset Abs/Rel   |     Exit Code Value  |                      |
        |     Indicator        |                      |                      |
        +----------------------+----------------------+----------------------+
        | -   915 - Latest     | -   5002 - User ID   | -   6004 - User ID   |
        |     Start            |                      |                      |
        +----------------------+----------------------+----------------------+
        | -   916 - Latest     | -   5003 - JOBQ      | -   6005 - Group ID  |
        |     Start Abs/Rel    |     Priority         |                      |
        |     Indicator        |                      |                      |
        +----------------------+----------------------+----------------------+
        | -   933 - Job Build  | -   5004 - Job Date  | -   6007 Exit        |
        |     Status           |                      |     Operator         |
        +----------------------+----------------------+----------------------+
        | -   1001- Source     | -   5005 -           | -   6008 - Exit      |
        |     Machine          |     Accounting Code  |     Value            |
        +----------------------+----------------------+----------------------+
        | -   1003 - User      | -   5006 - mCurrent  | -   122 - Tags       |
        |     (Source)         |     Library          |                      |
        +----------------------+----------------------+----------------------+
        | -   1004 - mSource   | -   5007 -           |                      |
        |     File             |     mInit.Lib.List   |                      |
        +----------------------+----------------------+----------------------+
        | -   1005 - User      | -   5008 - Job       |                      |
        |     (Destination)    |     Description Name |                      |
        +----------------------+----------------------+----------------------+
  - Where *m* = Substring in the current value to replace.
    - If the field code is for Job Build Status (933), valid
            values are: "On Hold", "Released", or "To Be Skipped".
    - For all other field codes, *m* cannot be a property
            expression. Valid values are: an empty string (""), a
            fixed string ("abc"), or a string with instance properties
            (\[\[$this.Property\]\]).     -   Where *x* = String value with which to replace *m*.
    - If the field code is for Job Build Status (933), valid
            values are: "On Hold", "Released", "Cancelled", "To
            Be Skipped", "Do Not Schedule, or "Disable Build".
    - For all other field codes, valid values are: a fixed string
            ("abc"), a string with instance properties
            (\[\[$this.Property\]\]), or a property expression             (\[\[\@current\]\] + ToOaTime("02:00")).
  - Where the value for NewValueIsExpression indicates whether or
        not *x* is a property expression. Valid values are: true or
        false.

:::tip Example
The following is an example XML definition for the <exception\> element:

```xml
<exception>&lt;Exception&gt;&lt;FieldCode&gt;3002&lt;/FieldCode&gt;
&lt;NewValue&gt;$this.MyUser&lt;/NewValue&gt;
&lt;NewValueIsExpression&gt;false&lt;/NewValueIsExpression&gt;
&lt;ToReplace&gt;&lt;/ToReplace&gt;&lt;/Exception&gt;</exception>
```

:::

## new_token and update_token Element Structures

The new_token message type and its elements can be used to add a new
global property to Master tables of the OpCon
database. For information on creating data input files, refer to
[Creating Data Input Files](Creating-Data-Input-Files.md)
.

The following sample code contains the structure for defining every
possible element for the new_token message type:

<msg\>

  <msgtype\>new_token</msgtype\>

  <tokeninfo\>

    <tokendesc\></tokendesc\>

    <tokendoc\></tokendoc\>

    <tokenval\></tokenval\>

  </tokeninfo\>

</msg\>

The update_token message type and its elements can be used to update a
global property to Master tables of the OpCon
database. For information on creating data input files, refer to
[Creating Data Input Files](Creating-Data-Input-Files.md)
.

The following sample code contains the structure for defining every
possible element for the update_token message type:

<msg\>

  <msgtype\>update_token</msgtype\>

  <tokeninfo\>

    <tokendesc\></tokendesc\>

    <tokenval\></tokenval\>

    <tokendoc\></tokendoc\>

  </tokeninfo\>

</msg\>

### Element Definitions

#### <tokeninfo\></tokeninfo\>

The parent element <tokeninfo\> contains the child elements needed to
create a single Global Property.

- **Requirements**: Required for <msgtype\> new_token.
- **Valid Values**: Any valid <tokeninfo\> child element.

#### <tokendesc\></tokendesc\>

The <tokendesc\> element specifies the name of the Global Property to
be created in OpCon.

- **Requirements**: Required for <tokeninfo\>.
- **EM field label**: Name
- **Valid Values**: Valid data for this element is an alphanumeric
    property name that does not exist in the
    OpCon database. The element allows a
    maximum of 20 characters. SMADDI allows only one <tokendesc\>
    element per <tokeninfo\> element.

#### <tokendoc\></tokendoc\>

The value for <tokenval\> specifies documentation for the property.

- **Requirements**: Optional for <tokeninfo\>.
- **EM field label**: Documentation
- **Valid Values**: Valid data for this element must not exceed 4000
    characters. SMADDI allows only one <tokendoc\> element per
    <tokeninfo\> element.

#### <tokenval\></tokenval\>

The value for <tokenval\> specifies the value to be assigned to the
Global Property.

- **Requirements**: Required for <tokeninfo\>.
- **EM field label**: Value
- **Valid Values**: Valid data for this element is a maximum of 77
    alphanumeric characters. SMADDI allows only one <tokenval\> element
    per <tokeninfo\> element.

## new_variable and update_variable Element Structures

The new_variable message type and its elements can be used to add a new
threshold or resource to Master tables of the
OpCon database. For information on creating
data input files, refer to [Creating Data Input Files](Creating-Data-Input-Files.md).

The following sample code contains the structure for defining every
possible element for the new_variable message type:

<msg\>

  <msgtype\>new_variable</msgtype\>

  <threshinfo\>

    <threshdesc\></threshdesc\>

    <threshdoc\></threshdoc\>

    <threshval\></threshval\>

    <threshused\></threshused\>

    <threshstyle\></threshstyle\>

  </threshinfo\>

</msg\>

The update_variable message type and its elements can be used to update
a threshold or resource to Master tables of the
OpCon database. For information on creating
data input files, refer to [Creating Data Input Files](Creating-Data-Input-Files.md).

The following sample code contains the structure for defining every
possible element for the update_variable message type:

<msg\>

  <msgtype\>update_variable</msgtype\>

  <threshinfo\>

    <threshdesc\></threshdesc\>

    <threshdoc\></threshdoc\>

    <threshval\></threshval\>

    <threshused\></threshused\>

    <threshstyle\></threshstyle\>

  </threshinfo\>

</msg\>

### Element Definitions

#### <threshinfo\></threshinfo\>

The parent element <threshinfo\> contains the child elements needed to
create a single OpCon variable.

- **Requirements**: Required for <msgtype\> new_variable.
- **Valid Values**: Any valid <threshinfo\> child element.

#### <threshstyle\></threshstyle\>

The value for <threshstyle\> specifies whether the variable is treated
as a threshold or a resource.

- **Requirements**: Optional for <threshinfo\>.
- **Valid Values**: Valid data for this element is either Threshold or
    Resource. SMADDI allows only one <threshstyle\> element per
    <threshinfo\> element.

#### <threshdesc\></threshdesc\>

The value for <threshdesc\> specifies the name of the variable to be
created in OpCon.

- **Requirements**: Required for <threshinfo\>.
- **EM field label**: Name (for Thresholds)
- **EM field label**: Resource Name (for Resources)
- **Valid Values**: Valid data for this element is an alphanumeric
    threshold or resource name that does not exist in the
    OpCon database. The element allows a
    maximum of 20 characters. SMADDI allows only one <threshdesc\>
    element per <threshinfo\> element.

#### <threshdoc\></threshdoc\>

The value for <threshdoc\> specifies documentation for the threshold or
resource.

- **Requirements**: Optional for <threshinfo\>.
- **EM field label**: Documentation
- **Valid Values**: Valid data for this element must not exceed 4000
    characters. SMADDI allows only one <threshdoc\> element per
    <threshinfo\> element.

#### <threshval\></threshval\>

- If the value of <threshstyle\> is Threshold, <threshval\>
    specifies the value to be assigned to the threshold.
- If the value of <threshstyle\> is Resource, <threshval\> specifies
    the value to be assigned to the maximum resources allowed.
- **Requirements**: Required for <threshinfo\>.
- **EM field label**: Threshold (for Thresholds)
- **EM field label**: Max Resources (for Resources)
- **Valid Values**: Valid data for this element is an integer value
    between zero and 2147483647. SMADDI allows only one <threshval\>
    element per <threshinfo\> element.

#### <threshused\></threshused\>

The value for <threshused\> specifies an initial value to be assigned
to the number of resources in use when the variable is treated as a
resource.

- **Requirements**: Optional for <threshinfo\>.
- **EM field label**: Resources In Use
- **Valid Values**: Valid data for this element is an integer value
    between zero and 2147483647. SMADDI allows only one <threshused\>
    element per <threshinfo\> element.

## new_master Element Structure

The following sample code contains the structure for defining every
possible element for the new_master message type:

<msg\>

     <msgtype\>new_master</msgtype\>

     <schedule\>

     <skdname\></skdname\>

       <job\>

         <jname\></jname\>

         <platform\></platform\>

         <jobsubtype\></jobsubtype\>

         <dname\></dname\>

         <accd\></accd\>

         <use_skdinstmach\></use_skdinstmach\>

         <pmname\></pmname\>

         <alt1\></alt1\>

         <alt2\></alt2\>

         <alt3\></alt3\>

         <mgrp\></mgrp\>

         <mgrpeach\></mgrpeach\>

         <multi_inst_job\></multi_inst_job\>

         <disable_bld\></disable_bld\>

         <job_expr_dep\></job_expr_dep\>

         <job_embed_script\></job_embed_script\>

         <job_embed_script_type\></job_embed_script_type\>

         <job_embed_script_ver\></job_embed_script_ver\>

         <job_embed_script_runner\></job_embed_script_runner\>

         <job_embed_script_args\></job_embed_script_args\>

         <job_embed_script_hash\></job_embed_script_hash\>

         <jobdata\>

         \....refer to [<jobdata\> Platform-specific Elements](jobdata-Platform-specific-Elements.md)

         </jobdata\>

         <afc\>

         \....refer to [<afc\> Advanced Failure Criteria Element Structure](#afc)

         </afc\>

         <frq\>

         \....refer to [new_master Frequency Element Structure](#new_mast2)

         </frq\>

         <documentation\>

         \....refer to [<documentation\> Documentation Element Structure](#documen)

         </documentation\>

         <predefined_property\>

         \....refer to [<predefined_property\> Job Instance Property Element Structure](#predefi)

         </predefined_property\>

         <jobudt\>

         \....refer to [<jobudt\> Job User Defined Tags](#jobudt)

         </jobudt\>

         <ppevt\>

         \....refer to [Data Input Message Elements](#%3Cppevt%3E)

         </ppevt\>

         <ppvar\>

         \.... refer to [Data Input Message Elements](#%3Cppvar%3E)

         </ppvar\>

         <jpre\>

         \.... refer to [<jpre\> Job Dependencies Element Structure](#jpre)

         </jpre\>

         <vpre\>

         \.... refer to [Data Input Message Elements](#%3Cvpre%3E)

         </vpre\>

       </job\>

     </schedule\>

</msg\>

## new_daily Element Structure

The following sample code contains the structure for defining every
possible element for the new_daily message type:

<msg\>

     <msgtype\>new_daily</msgtype\>

     <schedule\>

           <skddate\></skddate\>

           <skdname\></skdname\>

           <job\>

                <jname\></jname\>

                <platform\></platform\>

                <jobsubtype\></jobsubtype\>

                <dname\> </dname\>

                <accd\></accd\>

                <use_skdinstmach\></use_skdinstmach\>

                <pmname\></pmname\>

                <alt1\></alt1\>

                <alt2\></alt2\>

                <alt3\></alt3\>

                <mgrp\></mgrp\>

                <mgrpeach\></mgrpeach\>

                <job_expr_dep\></job_expr_dep\>

                <job_embed_script\></job_embed_script\>

                <job_embed_script_type\></job_embed_script_type\>

                <job_embed_script_ver\></job_embed_script_ver\>

                <job_embed_script_runner\></job_embed_script_runner\>

                <job_embed_script_args\></job_embed_script_args\>

                <job_embed_script_hash\></job_embed_script_hash\>

                <jobdata\>

                \....refer to [<jobdata\> Platform-specific Elements](jobdata-Platform-specific-Elements.md)

                </jobdata\>

                <afc\>

                ...refer to [<afc\> Advanced Failure Criteria Element Structure](#afc)

                </afc\>

                <frq\>

                \....refer to [new_daily Frequency Element Structure](#new_dail)

                </frq\>

                <documentation\>

                \....refer to [<documentation\> Documentation Element Structure](#documen)

                </documentation\>

                <predefined_property\>

                \....refer to [<predefined_property\> Job Instance Property Element Structure](#predefi)

                </predefined_property\>

                <jobudt\>

                \....refer to [<jobudt\> Job User Defined Tags](#jobudt)

                </jobudt\>

           <ppevt\>

                \....refer to [Data Input Message Elements](#%3Cppevt%3E)

                </ppevt\>

                <ppvar\>

                \....refer to [Data Input Message Elements](#%3Cppvar%3E)

                </ppvar\>

                <jpre\>

                \....refer to [<jpre\> Job Dependencies Element Structure](#jpre)

                 </jpre\>

                <vpre\>

                \....refer to [Data Input Message Elements](#%3Cvpre%3E)

                </vpre\>

           </job\>

     </schedule\>

</msg\>

## add_dependency Element Structure

The add_dependency message type and its elements can be used to add a
new job, threshold, or resource dependency to a job. For information on
creating data input files, refer to [Creating Data Input Files](Creating-Data-Input-Files.md).

If "<skddate\>" appears, the system considers it an addition to a
daily schedule. The following sample code contains the structure for
defining every possible element for the add_dependency message type:

<msg\>

<msgtype\>add_dependency</msgtype\>

     <schedule\>

     <skddate\></skddate\> (for definition to Daily only)

     <skdname\></skdname\>

         <job\>

            <jname\></jname\>

            <vpre\>

            \....refer to [Data Input Message Elements](#%3Cvpre%3E)

            </vpre\>

            <jpre\>

            \....refer to [<jpre\> Job Dependencies Element Structure](#jpre)

            </jpre\>

         </job\>

     </schedule\>

</msg\>

:::note
The add_dependency msgtype requires at least one <vpre\> or one <jpre\>.
:::

## add_documentation Element Structure

The following sample code contains the structure for defining every
possible element for the add_documentation message type:

<msg\>

     <msgtype\>add_documentation</msgtype\>

     <schedule\>

     <skddate\><skddate\> (for definition to Daily only)

     <skdname\></skdname\>

         <job\>

          <jname\></jname\>

          <documentation\>

                \....refer to [<documentation\> Documentation Element Structure](#documen)

          </documentation\>

         </job\>

     </schedule\>

</msg\>

## Common Schedule and Job-Related Element Definitions

#### <schedule\></schedule\>

The parent element <schedule\> contains the child elements needed to
define or reference jobs for a single schedule in the
OpCon database.

- **Requirements**: Required for any <msgtype\> for which a job must
    be identified.
- **Valid Values**: Any valid <schedule\> child element. SMADDI does
    not limit the number of <schedule\> elements for each <msg\>
    element.

:::note
Do not specify the <skddate\> element with a <msgtype\> new_master. A schedule date is invalid in the Master tables. This tag is optional with a <msgtype\> add_dependency. When specified, it will add a dependency to a Daily Schedule job. When not specified, it will add a dependency to a Master job.
:::

#### <skddate\></skddate\>

The <skddate\> element specifies the schedule date for the child
elements of the parent <schedule\> adding or modifying records in the
Daily.

- **Requirements**: Optional for <schedule\>.
- **Valid Values**: Valid data for this element is a date in the ymd
    date format. SMADDI allows only one <skddate\> element per
    <schedule\> element.

#### <skdname\></skdname\>

The <skdname\> element defines the Schedule Name.

- **Requirements**: Name
- **Valid Values**: Depending on the parent <msgtype\> element, valid
    data for this element is an existing Schedule Name in the Master or
    Daily tables. SMADDI allows only one <skdname\> element per
    <schedule\> element.
  - Invalid Characters: < (less than) \> (greater than) &
        (ampersand) ' (single quote) " (double quote) \| (pipe),
        (comma), \~ (tilde), \`(accent grave)
  - Maximum Characters: 255

#### <job\></job\>

The parent element <job\> contains the child elements needed for
describing a single job in the OpCon
database.

- **Requirements**: Required for <schedule\>.
- **Valid Values**: Any valid <job\> child element. SMADDI does not
    limit the number of <job\> elements for each <schedule\> element.

#### <jname\></jname\>

The <jname\> element defines the name for the parent <job\>.

- **Requirements**: Required for <job\> and for add_dependency which
    defines the name of the existing job of which one or more variables
    and/or job dependencies are to be added when <msgtype\> is
    add_dependency.
- **EM field label**: Name
- **Valid Values**: Depending on the parent <msgtype\> element, valid
    data for this element is a unique job name in the Master or Daily
    tables.

#### <platform\></platform\>

The <platform\> element defines the platform for the parent <job\>.

**Requirements**: Required for <job\> when <msgtype\> equals new_daily
or new_master. This element is invalid when <msgtype\> equals
add_dependency.

**EM field label**: Job Type

**Valid Values**: The valid data for this element include:

+----------------------------------+----------------------------------+
| -   Container Job                | -   SAP BW                       |
+----------------------------------+----------------------------------+
| -   File Transfer                | -   SAP R/3 and CRM              |
+----------------------------------+----------------------------------+
| -   IBM i                        | -   SQL                          |
+----------------------------------+----------------------------------+
| -   i5/OS (for backward          | -   Tuxedo ART                   |
|     compatibility only)          |                                  |
+----------------------------------+----------------------------------+
| -   Java                         | -   Unisys Exec (for backward    |
|                                  |     compatibility)               |
+----------------------------------+----------------------------------+
| -   MCP                          | -   UNIX                         |
+----------------------------------+----------------------------------+
| -   Null Job                     | -   Windows                      |
+----------------------------------+----------------------------------+
| -   OpenVMS                      | -   z/OS                         |
+----------------------------------+----------------------------------+
| -   OS 2200                      |                                  |
+----------------------------------+----------------------------------+

#### <jobsubtype\></jobsubtype\>

The <jobsubtype\> element defines the Job Sub-Type for the parent
<job\>.

**Requirements**: Optional

**EM field label**: Job Sub-Type

**Valid Values**: The valid data for this element depends on the value
in the <platform\> element.

If <platform\> is Windows, the valid values include:

+--------------------------+----------------------------+
| -   Command: File Copy   | -   Corelation             |
+--------------------------+----------------------------+
| -   Command: File Delete | -   MS Orchestrator        |
+--------------------------+----------------------------+
| -   Command: File Move   | -   Web Services (RESTful) |
+--------------------------+----------------------------+
| -   Command: File Rename | -   WS_FTP Pro             |
+--------------------------+----------------------------+

If <platform\> is UNIX, the valid values include:

+----------------------------------+----------------------------------+
| -   Episys: Run JobFile          | -   Episys: Find Report from     |
|                                  |     Episys Reports               |
+----------------------------------+----------------------------------+
| -   Episys: Answer Prompts       | -   Episys: Find Report from RSJ |
|                                  |     Output                       |
+----------------------------------+----------------------------------+
| -   Episys: Compare ACH Totals   | -   Episys: FTP all Reports in   |
|                                  |     List                         |
+----------------------------------+----------------------------------+
| -   Episys: Find Batch Output    |                                  |
|     Sequence Number              |                                  |
+----------------------------------+----------------------------------+

#### <dname\></dname\>

The <dname\> element defines the Department name for the parent
<job\>.

- **Requirements**: Optional for <job\> when <msgtype\> equals
    new_daily or new_master. This element is invalid when <msgtype\>
    equals add_dependency.
- **EM field label**: Department
- **Valid Values**: Valid data for this element is an existing
    Department in the OpCon database.

:::note
During a new_daily or new_master import, SMADDI will check for the existence of the Department defined in this element. If the item exists, SMADDI continues the import as normal. If the item does not exist, SMADDI creates the item automatically.
:::

#### <accd\></accd\>

The <accd\> element defines the Access Code for the parent <job\>.

- **Requirements**: Optional for <job\> when <msgtype\> equals
    new_daily or new_master. This element is invalid when <msgtype\>
    equals add_dependency.
- **EM field label**: Access Code
- **Valid Values**: Valid data for this element is an existing Access
    Code in the OpCon database.

:::note
During a new_daily or new_master import, SMADDI will check for the existence of the Access Code defined in this element. If the item exists, SMADDI continues the import as normal. If the item does not exist, SMADDI creates the item automatically.
:::

#### <use_skdinstmach\></use_skdinstmach\>

The <use_skdinstmach\> element indicates if the job should use the
schedule instance machine for the job.

- **Requirements**: Optional
- **EM field label**: Use Schedule Instance Machine
- **Valid Values**: Valid values for this element are True and False.
    If omitted, the default is False.
  - This element is only valid when the Schedule is configured to
        build an instance for all machines in a group and when the Job
        Type set for the job matches the OS type for the Machine Group
        configured for the Schedule.
  - This element is mutually exclusive with all other machine
        assignment elements for a job (primary, alternates, and machine
        group).

#### <pmname\></pmname\>

The <pmname\> element defines the Primary Machine on which the parent
<job\> runs.

- **Requirements**: Required if <mgrp\> is not defined and
    <msgtype\> is new_master or new_daily. This element is invalid when
    <msgtype\> equals add_dependency.
- **EM field label**: Primary Machine
- **Valid Values**: Valid data for this element is an existing Machine
    in the OpCon database, and the Null
    Machine.

:::note
Either the <pmname\> (above) or <mgrp\> element (below) is required. These elements are mutually exclusive.
:::

#### <alt1\></alt1\>

The <alt1\> element defines the first Alternate Machine on which the
parent <job\> can run.

- **Requirements**: Optional for <job\> when <msgtype\> equals
    new_daily or new_master. This element is invalid when <msgtype\>
    equals add_dependency.
- **EM field label**: Alternate Machine 1
- **Valid Values**: Valid data for this element is an existing Machine
    in the OpCon database.

#### <alt2\></alt2\>

The <alt2\> element defines the second Alternate Machine on which the
parent <job\> can run.

- **Requirements**: Optional for <job\> when <msgtype\> equals
    new_daily or new_master. This element is invalid when <msgtype\>
    equals add_dependency.
- **EM field label**: Alternate Machine 2

#### <alt3\></alt3\>

The <alt3\> element defines the third Alternate Machine on which the
parent <job\> can run.

- **Requirements**: Optional for <job\> when <msgtype\> equals
    new_daily or new_master. This element is invalid when <msgtype\>
    equals add_dependency.
- **EM field label**: Alternate Machine 3
- **Valid Values**: Valid data for this element is an existing Machine
    in the OpCon database.

#### <mgrp\></mgrp\>

The <mgrp\> element defines the Machine Group on which the parent
<job\> can run.

- **Requirements**: Required if <pmname\> is not defined and when
    <msgtype\> equals new_daily or new_master. This element is invalid
    when <msgtype\> equals add_dependency.
- **EM field label**: Machine Group Selection
- **Valid Values**: Valid data for this element is an existing Machine
    Group in the OpCon database.

#### <mgrpeach\></mgrpeach\>

The <mgrpeach\> element defines if the job runs on each Machine in the
Machine Group.

- **Requirements**: Optional
- **EM field label**: Run on Each Machine
- **Valid Values**: The valid values are True and False.

#### <multi_inst_job\></multi_inst_job\>

The <multi_inst_job\> element defines if the job can have multiple
instances.

- **Requirements**: Optional
- **EM field label**: Allow Multi-Instance
- **Valid Values**: Valid data for this element is True or False. If
    omitted, False is assumed.

#### <disable_bld\></disable_bld\>

The element <disable_bld\> indicates if the job should be disabled from
build or not.

- **Requirements**: Optional only for <msgtype\> new_master.
- **EM field label**: Disable Build
- **Valid Values**: Valid data for this element is True or False. If
    omitted, False is assumed.

#### <job_expr_dep\></job_expr_dep\>

The < job\_ expr_dep\> element defines a complex expression, for the
job, that must evaluate to "True" before the job can run when
scheduled with any frequency.

- **Requirements**: Optional for <job\> on the new_daily or
    new_master message type. There may only be one <job_expr_dep\> tag
    per job.
- **EM field label**: Expression Dependency
- **Valid Values**: Valid data for this element is any valid property
    expression.

#### <job_embed_script\></job_embed_script\>

The <job_embed_script\> element defines the embedded script to
associate with the job.

- **Requirements**: This is an Optional field.
- **EM field label**: Script
- **Valid Values**: Valid data for this element is any defined script
    for the job type.

#### <job_embed_script_type\></job_embed_script_type\>

The <job_embed_script_type\> element defines the script type associated
with the script.

- **Requirements**: This is an Optional field.
- **EM field label**: Script Type
- **Valid Values**: Valid data for this element is any valid script
    type for the specified script.

#### <job_embed_script_ver\></job_embed_script_ver\>

The <job_embed_script_ver\> element defines the version (or revision)
of the script to run.

- **Requirements:** This is an Optional field.
- **EM field label:** Version
- **Valid Values:** Valid data for this element is an integer ranging
    from 0 to 2147483647.
  - An integer value of 0 is equivalent to the "LATEST" version.

#### <job_embed_script_runner\></job_embed_script_runner\>

The <job_embed_script_runner\> element defines the "interpreter" for
relaying how to execute the script.

- **Requirements**: This is an Optional field.
- **EM field label**: Runner
- **Valid Values**: Valid data for this element is any valid script
    runner for the specified script.

#### <job_embed_script_args\></job_embed_script_args\>

The <job_embed_script_args\> element defines any script parameters to
pass to the script at runtime.

- **Requirements**: This is an Optional field.
- **EM field label**: Arguments
- **Valid Values**: Valid data for this element are any valid
    parameters.
  - Use of tokens or global properties are acceptable.

####  <job_embed_script_hash\></job_embed_script_hash\>

The <job_embed_script_hash\> element defines the MD5 hash of the script
content.

- **Requirements:** This is an Optional field.
- **EM field label:** N/A
- **Valid Values:** Valid data for this element is a valid MD5
    cryptographic hash.
  - Maximum characters: 32.

#### <jobdata\></jobdata\>

The parent element <jobdata\> contains the child elements needed to
define platform-specific job information.

- **Requirements**: Required unless <platform\> is Null Job or
    <msgtype\> is add_dependency. This element is invalid when
    <msgtype\> equals add_dependency.
- **Valid Values**: Valid data for this is any element from the
    desired platform elements. Only one <jobdata\> element is allowed
    per <job\> element.

## <afc\> Advanced Failure Criteria Element Structure

For Windows, and UNIX jobs, SMADDI also allows the Advanced Failure
Criteria to be defined. For more information, refer to [Advanced Failure Criteria](../../objects/jobs.md#Advanced).

<afc\>

   <afc_operator\></afc_operator\>

   <afc_value\></afc_value\>

   <afc_end_value\></afc_end_value\>

   <afc_result\></afc_result\>

   <afc_and_or\></afc_and_or\>

</afc\>

:::caution
When defined, Advanced Failure Criteria overrides the Basic Failure Criteria defined for the primary job.
:::

### Element Definitions

#### <afc\></afc\>

The parent element <afc\> contains the child elements needed to define
a single set of Advanced Failure Criteria. SMADDI requires this element
for Advanced Failure Criteria definition. A maximum of 20
<adv_fail_criteria\> elements are allowed. If more than 20 elements are
specified, the job input will fail.

- **Requirements**: Optional
- **Valid Values**: All <afc\> elements

#### <afc_operator\></afc_operator\>

The <afc_operator\> element defines the Comparison Operator for the
parent <afc\>.

- **Requirements**: Required for <afc\>.
- **EM field label**: Comparison Operator
- **Valid Values**: Range, Equal To, Not Equal To, Less Than, Greater
    Than, Less Than or Equal, Greater Than or Equal

#### <afc_value\></afc_value\>

The <afc_value\> element defines the Value for the parent <afc\>.

- **Requirements**: Required for <afc\>.
- **EM field label**: Value
- **Valid Values**: **-2147483648** through **2147483647**

#### <afc_end_value\></afc_end_value\>

The <afc_end_value\> element defines the End Value for the parent
<afc\> when the <afc_operator\> value is **Range**.

- **Requirements**: Optional
- **EM field label**: End Value
- **Valid Values**: **-2147483648** through **2147483647**

**Cross-field dependency**: The <afc_end_value\> element is only valid
if the <afc_operator\> element for the parent <afc\> has a value of
"Range". If the <afc_operator\> element is any other value, SMADDI
will ignore the <afc_end_value\> element.

#### <afc_result\></afc_result\>

The <afc_result\> element found in the first <afc\> group defines the
result for all <afc\> groups.

- **Requirements**: Required for <afc\>.
- **EM field label**: Result
- **Valid Values**: **Finish OK**, **Fail**
  - **Additional Information**: When the value is defined for the
        first <afc_result\>, SMADDI will automatically insert the same
        value for the Result on all additional groups of <afc\>. If
        specified with later groups, SMADDI will ignore the
        <afc_result\> element.

#### <afc_and_or\></afc_and_or\>

The <afc_and_or\> element defines the option for combining multiple
<afc\> groups together. The value for the <afc_and_or\> element
determines how OpCon will treat the next group of <afc\> together with
the current group.

- **Requirements**: Optional
- **EM field label**: And/Or
- **Valid Values**: **And**, **Or**
  - **Additional Information**: The afc_and_or\> element must exist
        for another <afc\> group to be defined.

## <jpre\> Job Dependencies Element Structure

<jpre\>

      <dskdname\></dskdname\>

      <depjob_instno\></depjob_instno\>

      <djname\></djname\>

      <pjfrqname\></pjfrquname\>

      <dptype\></dptype\>

      <depjob_depinstno\></depjob_depinstno\>

      <dofset\></dofset\>

      <iexit\></iexit\>

      <onfailure\></onfailure\>

      <alldys\></alldys\>

      <jnlike\></jnlike\>

</jpre\>

### Element Definitions

#### <jpre\></jpre\>

The parent element <jpre\> contains the child elements needed to define
a single prerequisite job (i.e., job dependency). SMADDI requires this
element for a prerequisite job definition.

- **Requirements**: Required with <msgtype\> add_dependency if
    <vpre\> is not specified.
- **Valid Values**: Any valid <jpre\> child element.

:::note
The add_dependency msgtype requires at least one <vpre\> or one <jpre\>.
:::

#### <dskdname\></dskdname\>

The <dskdname\> element defines the Schedule Name for the parent
<jpre\>.

- **Requirements**: Required for <jpre\>.
- **EM field label**: Name
- **Valid Values**: Depending on the parent <msgtype\> element, valid
    data for this element is an existing Schedule Name in the Master or
    Daily tables.

#### <depjob_instno\></depjob_instno\>

The <depjob_instno\> element defines the schedule instance name for the
Successor Job.

- **Requirements**: Optional for <jpre\>.
- **EM field label**: Instance Name
- **Valid Values**: Valid data for this element is an existing
    instance name defined for the schedule in the
    OpCon database.

#### <djname\></djname\>

The <djname\> element defines the Job Name for the parent <jpre\>.

- **Requirements**: Required for <jpre\>.
- **EM field label**: Name
- **Valid Values**: For a valid data for this element is an existing
    Job Name in the Master tables. For a new_daily <msgtype\>, the data
    for this element does NOT have to exist in the
    OpCon database.

#### <pjfrqname\></pjfrqname\>

The <pjfrqname\> element defines the frequency name for which the Job
Dependency applies.

- **Requirements**: Optional for <jpre\>.
- **EM field label**: Frequency Name
- **Valid Values**: Valid data for this element is an existing
    frequency name defined for the job in the
    OpCon database. If not specified, the
    dependency is applied at the job level for a master job. This
    element is ignored for a daily job.

#### <dptype\></dptype\>

The <dptype\> element defines the Dependency Type for the parent
<jpre\>.

- **Requirements**: Optional for <jpre\>.
- **EM field label**: Dependency Type
- **Valid Values**: Valid data options for this element are After,
    Conflict, Excludes, and Requires. If omitted, the data defaults to
    After.

#### <depjob_depinstno\></depjob_depinstno\>

The <depjob_instno\> element defines the schedule instance name for the
Predecessor Job.

- **Requirements**: Optional for <jpre\>.
- **EM field label**: Instance Name
- **Valid Values**: Valid data for this element is an existing
    instance name defined for the schedule in the
    OpCon database.

#### <dofset\></dofset\>

The <dofset\> element defines the number of days offset for a cross-day
dependency.

- **Requirements**: Optional for <jpre\>.
- **EM field label**: Offset
- **Valid Values**: Valid data for this element is an integer ranging
    from --999 to +999.

:::note
If the <skdname\> element contains a multi-instance schedule and the <dskdname\> element contains the same schedule, the Day Offset is not valid. Multi-instance schedules can only have internal same day dependencies or valid cross-schedule dependencies.
:::

#### <iexit\></iexit\>

The <iexit\> element indicates if OpCon
ignores the Exit Code of the parent <jpre\>.

- **Requirements**: Optional for <jpre\>.
- **EM field label**: Ignore Exit Code
- **Valid Values**: Valid data options for this element are Y (Yes)
    and N (No).

#### <onfailure\></onfailure\>

The <onfailure\> element indicates if OpCon
honors the dependency if the predecessor job fails.

- **Requirements**: Optional for <jpre\>.
- **EM field label**: On Failure
- **Valid Values**: Valid data options for this element are Y (Yes)
    and N (No).

#### <alldys\></alldys\>

The <alldys\> element indicates if OpCon
checks all days for a Conflict dependency.

- **Requirements**: Optional for <jpre\>.
- **EM field label**: Check All Days
- **Valid Values**: Valid data options for this element are Y (Yes)
    and N (No).

#### <jnlike\></jnlike\>

The <jnlike\> element indicates if the <djname\> is a partial name for
a Conflict dependency.

- **Requirements**: Optional for <jpre\>.
- **EM field label**: Job Name Like
- **Valid Values**: Valid data options for this element are Y (Yes)
    and N (No).

## <documentation\> Documentation Element Structure

<documentation\>

     <docfrqname\></docfrqname\>

     <doc\></doc\>

</documentation\>

### Element Definitions

#### <documentation\></documentation\>

The parent element <documentation\> contains the child elements needed
to define documentation for the schedule or job.

- **Requirements**: Optional
- **Valid Values**: Any valid <documentation\> child element.

#### <docfrqname\></docfrqname\>

The <docfrqname\> element defines the frequency name for which the
Documentation applies. If this element is defined for a daily job, the
element is ignored.

- **Requirements**: Optional
- **EM field label**: Frequency list \> selected frequency
- **Valid Values**: An existing frequency name defined for the job in
    the OpCon database. If not specified, the
    Documentation is applied at the job level for a master job. This
    element is ignored for a daily job.

#### <doc\></doc\>

The <doc\> element contains the documentation for the job.

- **Requirements**: Required for <documentation\>.
- **EM field labels**:
  - *Frequency Documentation* if specified for a job with
        <docfrqname\>.
  - *Documentation* if specified for a job without <docfrqname\>.
  - *Documentation* if specified for a schedule.
- **Valid Values**: Maximum Characters: 32000

## <predefined_property\> Job Instance Property Element Structure

<predefined_property\>

      <job_predef_propty\></job_predef_propty\>

</predefined_property\>

### Element Definitions

#### <predefined_property\></predefined_property\>

The parent element <predefined_property\> contains the child elements
needed to define a single pre-defined job instance property to a job.

- **Requirements**: Optional for <job\>.
- **Valid Values**: Any valid <predefined_property\> child element.

#### <job_predef_propty\></job_predef_propty\>

Defines a string of property definitions for a job instance.

- **Requirements**: Required for <predefined_property\>.
- **EM field labels**: Define Property Values \> The defined Property
    Value
- **Valid Values**: The property string must be in the format
    PName1=PValue1;PName2=PValue2...
  - Values for the "PName" should not contain the following
        characters: ' ( ) \\ , = ; \|
  - Values for the "PValue" should not contain a semicolon (;)
  - If defined within a new_master <msgtype\> and the
        <multi_inst_job\> element is True, any number of
        <job_predef_propty\> elements can be defined to specify
        multiple instances.
  - If defined within a new_master <msgtype\> and the
        <multi_inst_job\> element is False -or- if defined within a
        new_daily <msgtype\>, only one <job_predef_propty\> element is
        allowed.

## <jobudt\> Job User Defined Tags

<jobudt\>

      <job_userdef_tag\></job_userdef_tag\>

</jobudt\>

### Element Definitions

#### <jobudt\></jobudt\>

The parent element <jobudt\> contains the child elements needed to
define a one or more user defined Tags to a job.

- **Requirements**: Optional for <job\>.
- **Valid Values**: Any valid <jobudt\> child element.

#### <job_userdef_tag\></job_userdef_tag\>

Defines a single tag for the job. The tag name can be new or an existing
tag. An unlimited number of <job_userdef_tag\> elements are allowed
within the <jobudt\> parent element.

- **Requirements**: Required for <jobudt\>.
- **EM field labels**: Tag
- **Valid Values**: Alpha and numeric characters, - (dash) and \--\_
    (underscore) characters, and spaces.
  - Any number of <job_userdef_tag\> elements can be defined to
        specify multiple tags.

## <ppevt\> Post Process Events Element Structure

<ppevt\>

      <ppefinst\></ppefinst\>

      <ppefeedbackfld\></ppefeedbackfld\>

      <ppefeedbackval\></ppefeedbackval\>

      <ppefrqname\></ppefrqname\>

      <ppedets\></ppedets\>

</ppevt\>

### Element Definitions

#### <ppevt\></ppevt\>

The parent element <ppevt\> contains the child elements needed to
define a single post-process OpCon event.
SMADDI requires this element for a post-process
OpCon event definition.

- **Requirements**: Optional for <job\>.
- **Valid Values**: Any valid <ppevt\> child element.

#### <ppefinst\></ppefinst\>

The <ppefinst\> element defines the final Job Status evaluated before
submitting the OpCon Event.

- **Requirements**: Optional for <ppevt\>; however, you must specify
    either <ppefeedbackfld\> or <ppefinst\>.
- **EM field label**: Job Status
- **Valid Values**: Valid data options for this element are Failed,
    Finished OK, Skipped, Missed Latest Start Time, Exceeded Max Run
    Time, Late to Start, Late to Finish, Job Still Attempting Start, and
    Start Attempted.

#### <ppefeedbackfld\></ppefeedbackfld\>

The <ppefeedbackfld\> element defines the LSAM Feedback field to use
for string matching before submitting the
OpCon Event.

**Requirements**: Optional for <ppevt\>; however, you must specify
either <ppefeedbackfld\> or <ppefinst\>.

**EM field label**: Exit Description

**EM field label**: LSAM Feedback

**EM field label**: Job Completion Complex Expression

**Valid Values**: Valid data options for this element are based on the
names of the LSAM Feedback fields defined for each platform.

For Exit Description, the value must be **Exit Description**.

For Job Completion Complex Expression, the value must be **Job
Completion Complex Expression**.

For **Windows** jobs, the valid values are:

+------------------------------+----------------------------+
| -   I/O Data Bytes/Sec       | -   Job End Time           |
+------------------------------+----------------------------+
| -   I/O Data Operations/Sec  | -   Job Status Description |
+------------------------------+----------------------------+
| -   I/O Other Bytes/Sec      | -   Physical Memory Size   |
+------------------------------+----------------------------+
| -   I/O Other Operations/Sec | -   Processor Usage        |
+------------------------------+----------------------------+
| -   I/O Read Bytes/Sec       | -   Total Processor Time   |
+------------------------------+----------------------------+
| -   I/O Read Operations/Sec  | -   User Processor Time    |
+------------------------------+----------------------------+
| -   I/O Write Bytes/Sec      | -   Virtual Memory Size    |
+------------------------------+----------------------------+
| -   I/O Write Operations/Sec |                            |
+------------------------------+----------------------------+

For **UNIX** jobs, the valid values are:

+----------------------------------+--------------------------------+
| -   Block Input Operations       | -   Max Resident Set Size Used |
+----------------------------------+--------------------------------+
| -   Block Output Operations      | -   Messages Received          |
+----------------------------------+--------------------------------+
| -   Characters Read/Written      | -   Messages Sent              |
+----------------------------------+--------------------------------+
| -   CPU Usage (System Code)      | -   Page Faults                |
+----------------------------------+--------------------------------+
| -   CPU Usage (User Code)        | -   Page Reclaims              |
+----------------------------------+--------------------------------+
| -   Integral Shared Memory Size  | -   Signals Received           |
+----------------------------------+--------------------------------+
| -   Integral Unshared Data       | -   Swaps                      |
+----------------------------------+--------------------------------+
| -   Integral Unshared Stack      | -   Voluntary Context Switch   |
+----------------------------------+--------------------------------+
| -   Involuntary Context Switches | -   Wall-clock Run Time        |
+----------------------------------+--------------------------------+
| -   Job Status Description       |                                |
+----------------------------------+--------------------------------+

For **SAP R/3 and CRM**, the valid values are:

+----------------------------+
| -   Child Process          |
+----------------------------+
| -   Job Status Description |
+----------------------------+

For **SAP BW**, the valid values are:

+----------------------------+
| -   Job Status Description |
+----------------------------+
| -   Process                |
+----------------------------+
| -   Process Chain Log      |
+----------------------------+

For **MCP**, the valid values are:

+-----------------------------+----------------------------+
| -   Accum Elapsed Time      | -   Process Name           |
+-----------------------------+----------------------------+
| -   Accum Elapsed Wait Time | -   Task Elapsed Time      |
+-----------------------------+----------------------------+
| -   Accum I/O Time          | -   Task Elapsed Wait Time |
+-----------------------------+----------------------------+
| -   Accum Print Lines       | -   Task I/O Time          |
+-----------------------------+----------------------------+
| -   Accu Processor Time     | -   Task Print Lines       |
+-----------------------------+----------------------------+
| -   Accum Ready Q Time      | -   Task Processor Time    |
+-----------------------------+----------------------------+
| -   Job Status Description  | -   Task Ready Q Time      |
+-----------------------------+----------------------------+
| -   Mix Number              |                            |
+-----------------------------+----------------------------+

For **File Transfer**, the valid values are:

+----------------------+-----------------------------+
| -   Bandwidth Used   | -   File Size               |
+----------------------+-----------------------------+
| -   Compression Used | -   File Transfer Mode Used |
+----------------------+-----------------------------+
| -   Encryption Used  | -   Job Status Description  |
+----------------------+-----------------------------+

For **IBM i**, the valid values are:

+-------------------------------+-------------------------------------+
| -   Active Job in MSGW Status | -   User-defined text from          |
|                               |     LFEEDBACK command               |
+-------------------------------+-------------------------------------+
| -   Job Status Description    |                                     |
+-------------------------------+-------------------------------------+

For **z/OS**, the valid values are:

+----------------------------+----------------------+
| -   Job Status Description | -   Trigger Messages |
+----------------------------+----------------------+
| -   Step Completion        | -   User Message     |
+----------------------------+----------------------+

#### <ppefeedbackval\></ppefeedbackval\>

The <ppefeedbackval\> element defines the Exit Description evaluation
string or the LSAM Feedback string to match based on the
<ppefeedbackfld\> element.

**Requirements**: Required if <ppefeedbackfld\> is defined.

**EM field labels**: Comparison Operator, Value, and End Value

**EM field label**: String to match

**EM field label**: Job Completion Complex Expression

**Valid Values**:

For Exit Description, separate the evaluation string fields with
semicolons (;). The syntax is:

Comparison Operator;Value\[;End Value\]

:::note
Only add the ;EndValue to the syntax if the Comparison Operator is RG (Range).
:::

The Comparison Operator must be one of the following:

- EQ (Equal To)
- NE (Not Equal To)
- LT (Less Than)
- LE (Less Than or Equal)
- GT (Greater Than)
- GE (Greater Than or Equal)
- RG (Range)
- IN (Contains)

:::tip Example
If the Comparison Operator is Range, Value is 6 and End Value is 9, then the value for <ppefeedbackval\> would be:

```xml
<ppefeedbackval>RG;6;9</ppefeedbackval>
```

If the Comparison Operator is Equal To, and the Value is 5, then the value for <ppefeedbackval\> would be:

```xml
<ppefeedbackval>EQ;5 </ppefeedbackval>
```

:::

For LSAM Feedback: Valid data for this element is any string to match.

- Use percent (%) as opposed to asterisk (\*) as a wildcard.
- Use underscore ( \_ ) as opposed to question mark (?) for a single
    character wildcard.
- Single quotes (') are invalid in this field.
- This field is a maximum of 4000 characters long.

For Job Completion Complex Expression, the value must be an expression
that complies with the rules of the Property Expression API. For more
information, refer to [Property Expressions API Syntax](../../reference/property-expressions-syntax.md)
 in the **Concepts** online help.

#### <ppefrqname\></ppefrqname\>

The <ppefrqname\> element defines the frequency name for which the
OpCon Event applies.

- **Requirements**: Optional for <ppevt\>.
- **Valid Values**: Valid data for this element is an existing
    frequency name defined for the job in the
    OpCon database.

#### <ppedets\></ppedets\>

The <ppedets\> element defines the details of the
OpCon Event to be submitted.

- **Requirements**: Required for <ppevt\>.
- **EM field label**: Event Template
- **Valid Values**: Valid data for this element must be one of the
    existing OpCon events.
  - Maximum characters: 738.
  - The tilde (\~) is an invalid character in this field.

## <vpre\> Threshold/Resource Dependencies Element Structure

<vpre\>

      <pvname\></pvname\>

      <pvvalue\></pvvalue\>

      <pvuseall\></pvuseall\>

      <pvfrqname\></pvfrqname\>

      <voptr\></voptr\>

</vpre\>

### Element Definitions

#### <vpre\></vpre\>

The parent element <vpre\> contains the child elements needed to define
a single prerequisite variable (i.e., Threshold/Resource Dependency).
SMADDI requires this element for a Threshold/Resource Dependency
definition.

- **Requirements**: Required with <msgtype\> add_dependency if
    <jpre\> not specified.
- **Valid Values**: Any valid <vpre\> child element.

#### <pvname\></pvname\>

The <pvname\> element defines the Threshold/Resource name for the
parent <vpre\>.

- **Requirements**: Required for <vpre\>.
- **EM field label**: Threshold/Resource
- **Valid Values**: Valid data for this element is an existing
    Threshold/Resource name in the OpCon
    database.

#### <pvvalue\></pvvalue\>

The <pvvalue\> element defines the value compared to the parent
<vpre\>'s current value.

- **Requirements**: Required for <vpre\>.
- **EM field label**: Value
- **Valid Values**: Valid data for this element is an integer ranging
    from 0 to 2147483647.

#### <pvuseall\></pvuseall\>

The <pvuseall\> element indicates if the resource dependency should use
"All" of the resources.

- **Requirements**: Optional for <vpre\>.
  - Mutually exclusive with <ppvalue\>.
  - <pvuseall\> can only be set to "True" if the <pvname\>
        contains a Resource.
- **EM field label**: All (checkbox)
- **Valid Values**: Valid data for this element is **True** or
    **False**. If not specified, the value defaults to False.

#### <pvfrqname\></pvfrqname\>

The <pvfrqname\> element defines the frequency name for which the
Threshold/Resource Dependency applies. If this element is defined for a
daily job, the input will fail.

- **Requirements**: Optional
- **EM field label**: Frequency
- **Valid Values**: Valid data for this element is an existing
    frequency name defined for the job in the
    OpCon database. If not specified, the
    dependency is applied at the job level for a master job. This
    element is ignored for a daily job.

#### <voptr\></voptr\>

The <voptr\> element defines the Operator used to resolve the
dependency.

- **Requirements**: Required for <vpre\>.
- **EM field label**: Operator
- **Valid Values**: For a Threshold Dependency, valid data options for
    this element are =, <, \>, <=, \>=, <\>, EQ, LT, GT, LE, GE, and
    NE. For a Resource Dependency, valid data for this element is =.

## <ppvar\> Threshold/Resource Updates Element Structure

<ppvar\>

      <jobst\></jobst\>

      <ppvfrqname\></ppvfrqname\>

      <ppvname\></ppvname\>

      <ppvvalue\></ppvvalue\>

</ppvar\>

### Element Definitions

#### <ppvar\></ppvar\>

The parent element <ppvar\> contains the child elements needed to
define a single post-process variable setting (i.e., Threshold Update).
SMADDI requires this element for a Threshold Update definition.

- **Requirements**: Optional for <job\>.
- **Valid Values**: Any valid <ppvar\> child element.

#### <jobst\></jobst\>

The <jobst\> element defines the final Job Status evaluated before
setting the threshold value.

- **Requirements**: Required for <ppvar\>.
- **EM field label**: Job Status
- **Valid Values**: Valid data options for this element are Failed,
    Finished OK, Skipped, Missed Latest Start Time, Exceeded Max Run
    Time, Late to Start, Late to Finish, and Still Attempting Start.

#### <ppvfrqname\></ppvfrqname\>

The <ppvfrqname\> element defines the frequency name for which the
Threshold/Resource Update applies. If this element is defined for a
daily job, the input will fail.

- **Requirements**: Optional
- **EM field label**: Frequency list \> selected frequency
- **Valid Values**: Valid data for this element is an existing
    frequency name defined for the job in the
    OpCon database. If not specified, the
    dependency is applied at the job level for a master job. This
    element is ignored for a daily job.

#### <ppvname\></ppvname\>

The <ppvname\> element defines the Threshold name for the post- process
variable setting.

- **Requirements**: Required for <ppvar\>.
- **EM field label**: Name
- **Valid Values**: Valid data for this element is an existing
    Threshold name in the OpCon database.

#### <ppvvalue\></ppvvalue\>

The <ppvvalue\> element defines the threshold value for the update.

- **Requirements**: Required for <ppvar\>.
- **EM field label**: Value
- **Valid Values**: Valid data for this element is an integer within
    0 - 2147483647.

## add_frequency Element Structure

The add_frequency message type and its elements can be used to add a new
frequency to a schedule or to a job. The following sample code contains
the structure for defining all possible elements for the add_frequency
message type:

To add a frequency to a schedule, use the following element structure:

<msg\>

  <msgtype\>add_frequency</msgtype\>

  <schedule\>

     <skdname\> </skdname\>

     <job\>

        <frq\>

        \....refer to [Data Input Message Elements](#%3Cfrq%3E)


        </frq\>

     </job\>

  </schedule\>

</msg\>

To add a frequency to a job, use the following element structure:

<msg\>

  <msgtype\>add_frequency</msgtype\>

  <schedule\>

     <skdname\> </skdname\>

     <job\>

        <jname\></jname\>

        <frq\>

           \....refer to [Data Input Message Elements](#%3Cfrq%3E)

        </frq\>

     </job\>

  </schedule\>

</msg\>

## <frq\> Frequency Element Structures

The <frq\> frequency elements are used under several message types in
addition to the add_frequency message type. The following sections show
the possible frequency elements based on the message type:

- [new_daily Frequency Element Structure](#new_dail)
- [new_master Frequency Element Structure](#new_mast2)
- [new_schedule Frequency Element Structure](#new_sche)

The individual element descriptions begin at the [General Frequency Element Definitions](#General_Frequency_Element_Definitions)
 section.

### new_daily Frequency Element Structure

The following sample code contains the structure for defining all
possible elements related to frequencies in the <new_daily\> message
type:

<job\>

   <jname\></jname\>

   <frqname\></frqname\>

   <stoff\></stoff\>

   <star\></star\>

   <ltst\></ltst\>

   <ltar\></ltar\>

   <jlts\></jlts\>

   <jltf\></jltf\>

   <bldst\></bldst\>

   <mxtm\></mxtm\>

   <frqert\></frqert\>

   <prty\></prty\>

   <autorestartintvl\></autorestartintvl\>

   <autorestartmax\></autorestartmax\>

   <recur_actn_onverlap\></recur_actn_onverlap\>

   <recur_start_time\></recur_start_time\>

   <recur_ss_intvl\></recur_ss_intvl\>

   <recur_es_intvl\></recur_es_intvl\>

   <recur_lrt\></recur_lrt\>

   <recur_nbrruns\></recur_nbrruns\>

   <frqudt\>

     <frq_userdef_tag\></frq_userdef_tag\>

   </frqudt\>

</job\>

### new_master Frequency Element Structure

The following sample code contains the structure for defining all
possible elements related to frequencies in the <new_master\> message
type:

<job\>

   <estrt\></estrt\>

   <frq\>

      <frqname\></frqname\>

      <fpri\></fpri\>

      <stoff\></stoff\>

      <star\></star\>

      <ltst\></ltst\>

      <ltar\></ltar\>

      <jlts\></jlts\>

      <jltf\></jltf\>

      <bldst\></bldst\>

      <mxtm\></mxtm\>

      <frqert\></frqert\>

      <frq_stc_estmethod\></frq_stc_estmethod\>

      <frq_predicted_start\></frq_predicted_start\>

      <frq_expr_dep\></frq_expr_dep\>

      <prty\></prty\>

      <autorestartintvl\></autorestartintvl\>

      <autorestartmax\></autorestartmax\>

      <recur_actn_onverlap\></recur_actn_onverlap\>

      <recur_start_time\></recur_start_time\>

      <recur_ss_intvl\></recur_ss_intvl\>

      <recur_es_intvl\></recur_es_intvl\>

      <recur_lrt\></recur_lrt\>

      <recur_nbrruns\></recur_nbrruns\>

      <fgrp\></fgrp\>

      <dow\></dow\>

      <intvl\></intvl\>

      <rqdt\></rqdt\>

      <ofdays\></ofdays\>

      <intvl_offset\></intvl_offset\>

      <dtype\></dtype\>

      <occn\></occn\>

      <period\></period\>

      <cname\></cname\>

      <aobn\></aobn\>

      <begin\></begin\>

      <end\></end\>

      <include\></include\>

      <exclude\></exclude\>

      <excmo\></excmo\>

      <frqudt\>

        <frq_userdef_tag\></frq_userdef_tag\>

      </frqudt\>

   </frq\>

</job\>

### new_schedule Frequency Element Structure

The following sample code contains the structure for defining all
possible elements related to frequencies in the new_schedule message
type:

<frq\>

   <frqname\></frqname\>

   <fpri\></fpri\>

   <fgrp\></fgrp\>

   <dow\></dow\>

   <intvl\></intvl\>

   <rqdt\></rqdt\>

   <ofdays\></ofdays\>

   <intvl_offset\></intvl_offset\>

   <dtype\></dtype\>

   <occn\></occn\>

   <period\></period\>

   <cname\></cname\>

   <aobn\></aobn\>

</frq\>

#### General Frequency Element Definitions

##### <frq\></frq\>

The parent element <frq\> contains the child elements needed to define
a single Frequency for the schedule or job. If omitted, the defaults of
all nested elements will be applied to the parent schedule or job. For
new_schedule and new_master message types, any number of <frq\></frq\>
elements can reside within a <job\> or <skdinfo\> element.

- **Requirements**: Optional for <job\> and <skdinfo\>.
- **Valid Values**: Any valid <frq\> child element.

##### <frqname\></frqname\>

The <frqname\> element defines the Frequency Name for the parent
<frq\>.

- **Requirements**: Optional for <frq\>.
- **EM field label**: Frequency Name
- **Valid Values**: Valid data for this element is any name 20
    characters or less that does not contain the following characters:
    ' (single quote), \| (Pipe symbol), \\ (backslash), " (double
    quote), ; (semi-colon), % (percent), & (ampersand), < (less
    than) \> (greater than), ( ) (open and closed parentheses), \[ \]     (open and closed brackets), { } (open and closed braces), , (comma),
    = (equals), ! (exclamation point), and space.

:::note
When the frqname matches an existing frequency name in the database:

- If none of the above frq elements are defined, SMADDI will use the frequency definition, Calendar and AOBN from the existing frequency.
- If one or more of the above frq elements are defined, SMADDI goes through the duplicate frequency name resolution logic and appends a unique character to the end of the supplied frqname when adding the details specified with all the frq elements.

If the frqname is unique, SMADDI creates a new frequency with details specified with all the frq elements (while supplying default values for elements left undefined).
:::

##### <fpri\></fpri\>

The <fpri\> element defines the Frequency Priority for the parent
<frq\>. Frequency Priority is relative to other frequencies for the
schedule or job.

- **Requirements**: Optional for <frq\> on new_schedule, new_master,
    and new_frequency message types.
- **Valid Values**: The data for this element must be a number.
  - The highest priority number is zero (0). The next highest
        priority is one (1) and so forth.
  - The value must not exceed the number of frequencies defined for
        the schedule or job.
  - If the defined value conflicts with an existing value for
        another frequency, the new value is automatically set to the
        next lower Frequency Priority value as compared to the other
        frequencies on the job or schedule.
  - If the <fpri\> element is omitted and no other frequencies
        exist, SMADDI defaults to a value of zero (0).
  - If the <fpri\> element is omitted and other frequencies do
        exist, the value defaults to the next lower Frequency Priority
        value as compared to the other frequencies on the job or
        schedule.

##### <stoff\></stoff\>

The <stoff\> element defines the Start Offset Time for the parent
frequency/job.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Start Offset
- **Valid Values**: Valid data for this element is in the format of
    hh:mm where hh is an integer from 00 through 99 and where mm is an
    integer ranging from 00 to 59.

##### <star\></star\>

The <star\> element indicates if the Start Offset time is Absolute or
Relative.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field labels**: Absolute and Relative
- **Valid Values**: Valid data options for this element are A
    (Absolute) and R (Relative).

##### <ltst\></ltst\>

The <ltst\> element defines the Latest Start Time for the parent
frequency/job.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Latest Start Offset
- **Valid Values**: Valid data for this element is in the format of
    hh:mm where hh is an integer from 00 through 99 and where mm is an
    integer ranging from 00 to 59.

##### <ltar\></ltar\>

The <ltar\> element indicates if the Latest Start Time is Absolute or
Relative.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field labels**: Absolute and Relative
- **Valid Values**: Valid data options for this element are A
    (Absolute) and R (Relative).

##### <jlts\></jlts\>

The <jlts\> element indicates the time when the job will become late to
start.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Late to Start Offset
- **Valid Values**: Valid data for this element is in the format of
    hh:mm where hh is an integer from 00 through 99 and where mm is an
    integer ranging from 00 to 59.

##### <jltf\></jltf\>

The <jltf\> element indicates the time when the job will become late to
finish.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Late to Finish Offset
- **Valid Values**: Valid data for this element is in the format of
    hh:mm where hh is an integer from 00 through 99 and where mm is an
    integer ranging from 00 to 59.

##### <bldst\></bldst\>

The <bldst\> element defines the Build Status for the parent <frq\>.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Job Build Status
- **Valid Values**: Valid data options for this element are On Hold,
    Release, Do Not Schedule, To Be Skipped, and Disable Frequency.

##### <mxtm\></mxtm\>

The <mxtm\> element defines the Maximum Run Time in minutes for the
parent frequency/job.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Max Run time
- **Valid Values**: Valid data for this element is an integer ranging
    from 0 to 32767.

##### <frqert\></frqert\>

The <frqert\> element defines the estimated run time for the job in
minutes for the parent frequency/job.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Estimated Run time
- **Valid Values**: Valid data for this element is an integer ranging
    from 0 to 32767. If omitted and there was no data to apply from the
    obsolete <estrt\> element, the data defaults to 1.

##### <frq_stc_estmethod\></frq_stc_estmethod\>

The <frq_stc_estmethod\> element defines the method for the SMA Start
Time Calculator to use when predicting the job's Estimated Start Time.

- **Requirements**: Optional for <frq\> on new_master and
    add_frequency message types.
- **EM field label**: Estimation Source
- **Valid Values**: Valid data options for this element are
    Calculated, History, and User Defined. If omitted the data defaults
    to Calculated.

##### <frq_predicted_start\></frq_predicted_start\>

The <frq_predicted_start\> element defines a specific Predicted Start
Time in days, hours and minutes offset from the schedule's start time.

- **Requirements**: Optional for <frq\> on new_master and
    add_frequency message types.
- **EM field label**: Predicted Start Time
- **Valid Values**: Valid data for this element is in the format of
    hh:mm where hh is an integer from 00 through 99 and where mm is an
    integer ranging from 00 to 59.

##### <frq_expr_dep\></frq_expr_dep\>

The < frq\_ expr_dep\> element defines a complex expression, for the
frequency, that must evaluate to "True" before the job can run when
scheduled with this frequency.

- **Requirements**: Optional for <frq\> on new_master and
    add_frequency message types. There may only be one <frq_expr_dep\>
    tag per frequency.
- **EM field label**: Expression Dependency
- **Valid Values**: Valid data for this element is any valid property
    expression.

##### <prty\></prty\>

The <prty\> element defines the job Priority calculated by the SAM at
the time of job submission.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: SAM Priority
- **Valid Values**: Valid data for this element is an integer ranging
    from 0 to 32767.

##### <estrt\></estrt\>

The <estrt\> element is obsolete; however, for backward compatibility
if it is specified, the value will populate the data for any missing
<frqert\> tag for any <frq\> specified in the input file.

##### <frqudt\></frqudt\>

The parent element <frqudt\> contains the child elements needed to
define on or more frequency related Tags to a job.

- **Requirements**: Optional for <frq\>.
- **Valid Values**: Any valid <frqudt\> child element.

##### <frq_userdef_tag\></frq_userdef_tag\>

Defines a single tag for the job as related to the frequency. The tag
name can be new or an existing tag. An unlimited number of
<frq_userdef_tag\> elements are allowed within the <frq\> parent
element.

**Requirements**: Required for <frqudt\>

**EM field labels**: Tag

**Valid Values**: Alpha and numeric characters, - (dash) and \--\_
(underscore) characters, and spaces.

- Any number of <frq_userdef_tag\> elements can be defined to specify
    multiple tags.

#### Retry on Failure Element Definitions

##### <autorestartintvl\></autorestartintvl\>

The <autorestartintvl\> element defines the number of minutes between
attempts.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Minutes Between Attempts
- **Valid Values**: Valid data for this element is an integer ranging
    from 0 to 1440. If omitted and the autorestartmax element exists,
    the data defaults to 0.

##### <autorestartmax\></autorestartmax\>

The <autorestartmax\> element defines the maximum attempts for retrying
on failure.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Maximum Attempts
- **Valid Values**: Valid data for this element is an integer ranging
    from 1 to 999. If omitted and the <autorestartintvl\> element
    exists, the data defaults to 1.

#### Job Recurrence Element Definitions

##### <recur_actn_onoverlap\></recur_actn_onoverlap\>

The <recur_actn_onoverlap\> element defines what happens if a previous
job run time overlaps the next scheduled start time. Only one instance
is allowed.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Action on Overlap of Job Recurrence
- **Valid Values**: Valid data options for this element are Start on
    Completion and Skip. If omitted, the data defaults to Start on
    Completion.

##### <recur_start_time\></recur_start_time\>

The <recur_start_time\> element defines the restart times in days,
hours, and minutes. Multiple instances are allowed.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Recurring Instance Time(s)
- **Valid Values**: Valid data for this element is in the format of
    hh:mm where hh is an integer from 00 through 99 and where mm is an
    integer ranging from 00 to 59.

##### <recur_ss_intvl\></recur_ss_intvl\>

The <recur_ss_intvl\> element defines the interval of minutes from
start to start between occurrences. This element or <recur_es_intvl\> must be specified if <recur_lrt\> and/or
<recur_nbrruns\> exist.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Minutes from Start to Start
- **Valid Values**: Valid data for this element is an integer ranging
    from 0 to 1440.

##### <recur_es_intvl\></recur_es_intvl\>

The <recur_es_intvl\> element defines the interval of minutes from end
to start between occurrences. This element or <recur_ss_intvl\> must be specified if <recur_lrt\> and/or <recur_nbrruns\> exist.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Minutes from End to Start
- **Valid Values**: Valid data for this element is an integer ranging
    from 0 to 1440.

##### <recur_lrt\></recur_lrt\>

The <recur_lrt\> element defines the latest offset start time for
restarting in the job recurrence pattern. This element and/or
<recur_nbrruns\> must be specified if either <recur_ss_intvl\> or
<recur_es_intvl\> exists.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Latest Run Time
- **Valid Values**: Valid data for this element is a time ranging from
    00:00 to 99:59.

##### <recur_nbrruns\></recur_nbrruns\>

The <recur_nbrruns\> element defines the total number of runs for the
parent <job\> in a job recurrence pattern. This element and/or
<recur_lrt\> must be specified if either <recur_ss_intvl\> or
<recur_es_intvl\> exists.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types. Also optional for <job\> on the new
    daily message type.
- **EM field label**: Number of Runs
- **Valid Values**: Valid data for this element is an integer ranging
    from 2 to 999.

#### Frequency Details Element Definitions

##### <fgrp\></fgrp\>

The <fgrp\> element assigns a frequency group to the parent <frq\>.

- **Requirements**: Optional for <frq\>.
- **EM field label**: When to Schedule
- **Valid Values**: Valid data options for this element are On
    Occurrence, Odd Weeks, Even Weeks, All Weeks, On Request, On Day,
    Annual Plan, Beg of Period, Mid of Period, End of Period, and On
    Intervals. If omitted, the value defaults to On Request.

##### <dow\></dow\>

The <dow\> element defines the Days of the Week for the parent <frq\>
with the <fgrp\> of On Occurrence, Odd Weeks, Even Weeks, All Weeks, or
Mid of Period.

- **Requirements**: Optional for <frq\>.
- **EM field label**: Day of the Week
- **Valid Values**: Valid data for this element is a seven-character
    string of Ys and/or Ns indicating the days to include and to
    exclude. The first character represents Sunday and the last
    character represents Saturday.

:::tip Example
The <dow\> element would contain the following characters if Monday is the desired day: <dow\>NYNNNNN</dow\>.
:::

##### <intvl\></intvl\>

The <intvl\> element defines the 5 day intervals for the On Intervals
<fgrp\>.

- **Requirements**: Optional for <frq\>.
- **EM field label**: On Intervals
- **Valid Values**: Valid data for this element is a six-character
    string of Ys and/or Ns indicating the day intervals to include and
    to exclude. The first character represents the 5th, the second
    character represents the 10th, and so forth with the last character
    representing the 30th. If omitted, the data defaults to NNNNNN. If
    using <rqdt\> and <intvl_offset\> for the On Intervals <fgrp\>,
    do not specify the <intvl\> element.

:::tip Example
The <intvl\> element would contain the following characters if scheduling for the 5th, 15th, and 30th: <intvl\>YNYNNY</intvl\>.
:::

##### <rqdt\></rqdt\>

The <rqdt\> element defines the date for the On Request <fgrp\> or the
Start Date for the offset intervals with the On Intervals <fgrp\>.

- **Requirements**: Optional for <frq\>.
- **EM field labels**:
  - *Request Date* if 'When to Schedule' is specified as 'On
        Request'
  - On Intervals \>Start if 'When to Schedule' is specified as
        'On Intervals'
- **Valid Values**: Valid data for this element is a date in the
    format recognized by the OpCon server's Regional Settings. To
    enable the Every Year feature, use 1900 in the year position.

##### <ofdays\></ofdays\>

The <ofdays\> element defines the number of days to offset from an
Annual Plan, Beg of Period, End of Period, or On Day.

- **Requirements**: Optional for <frq\>.
- **EM field label**: Offset Days
- **Valid Values**: Valid data for this element depends on the
    <fgrp\> specified. If omitted, the data defaults to 0.
  - 1 to 31 is valid for a On Day.
  - --15 to +15 is valid for a <fgrp\> of Annual Plan.
  - --15 to +15 is valid for <fgrp\> of Beg of Period and End of
        Period if the Period is set to Month, Quarter or Year.
  - -4 to +4 is valid for <fgrp\> of Beg of Period and End of
        Period if the Period is set to Week and the Schedule has a 5 day
        week.
  - -5 to +5 is valid for <fgrp\> of Beg of Period and End of
        Period if the Period is set to Week and the Schedule has a 6 day
        week.
  - -6 to +6 is valid for <fgrp\> of Beg of Period and End of
        Period if the Period is set to Week and the Schedule has a 7 day
        week.

##### <intvl_offset\></intvl_offset\>

Defines the number of days for the interval when the <fgrp\> is On
Intervals and there is also a <rqdt\> element defined.

- **Requirements**: Required for <fgrp\> of On Intervals with the
    <rqdt\> element specified.
- **EM field labels**: Every (\#Days) and Start (field to indicate
    start date)
- **Valid Values**: Valid values range from 1 to 32767.

##### <dtype\></dtype\>

The <dtype\> element indicates the Day Type for all <fgrp\> options
except On Request, and Annual Plan.

- **Requirements**: Optional for <frq\>.
- **EM field label**: Day Type
- **Valid Values**: Valid data options for this element are Working
    and Any.

##### <occn\></occn\>

The <occn\> element defines the occurrence for the On Occurrence
<fgrp\>.

- **Requirements**: Optional for <frq\>.
- **EM field label**: On Occurrence
- **Valid Values**: Valid data options for this element are the
    ordinal numbers 1st, 2nd, 3rd, 4th, 5th, and Last.

##### <period\></period\>

The <period\> element defines the period for the End of Period, Mid of
Period, Beg of Period, or On Occurrence <fgrp\>s.

- **Requirements**: Optional for <frq\>.
- **EM field label**: Periods
- **Valid Values**: Valid data options for this element are Week,
    Month, Quarter, and Year. If omitted, the data defaults to Month.
    The "Week" option is only valid with the Beg of Period and End of
    Period values for <fgrp\>.

##### <cname\></cname\>

The <cname\> element defines the name of the Calendar applied to the
parent <frq\>.

- **Requirements**: Optional for <frq\>.
- **EM field label**: Calendar
- **Valid Values**: Valid data for this element is an existing
    user-defined calendar in the OpCon
    database.

##### <aobn\></aobn\>

The <aobn\> element defines when the job should be scheduled if the
schedule date falls on a Non-Working Day.

- **Requirements**: Optional for <frq\>.
- **EM field label**: A/O/B/N
- **Valid Values**: Valid data options for this element are After
    Date, On Date, Before Date, and Not Schedule.

#### Advanced Frequency Elements

##### <begin\></begin\>

The <begin\> element defines the date on which to begin scheduling the
job for the parent <frq\>.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types.
- **EM field label**: Start Scheduling on
- **Valid Values**: Valid data for this element is a complete date
    with day, month, and year in any valid regional format for the
    OpCon SQL Server.

##### <end\></end\>

The <end\> element defines the date on which to end scheduling the job
for the parent <frq\>.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types.
- **EM field label**: End Scheduling on
- **Valid Values**: Valid data for this element is a complete date
    with day, month, and year in any valid regional format for the
    OpCon SQL Server.

##### <include\></include\>

The <include\> element defines a date to force the inclusion of a job
despite all other frequency settings.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types.
- **EM field label**: Include in Schedule on
- **Valid Values**: Valid data for this element is a complete date
    with day, month, and year in any valid regional format for the
    OpCon SQL Server.

##### <exclude\></exclude\>

The <exclude\> element defines a date to force the exclusion of a job
despite all other frequency settings.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types.
- **EM field label**: Exclude from Schedule on
- **Valid Values**: Valid data for this element is a complete date
    with day, month, and year in any valid regional format for the
    OpCon SQL Server.

##### <excmo\></excmo\>

The <excmo\> element defines a month to force the exclusion of a job
despite all other frequency settings.

- **Requirements**: Optional for <frq\> on new_master and
    new_frequency message types.
- **EM field label**: Exclude Month from Schedule
- **Valid Values**: Valid data for this element is the full name of a
    month in English (e.g., January, February, etc.).
:::
