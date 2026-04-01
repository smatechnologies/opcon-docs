---
title: Data Input Message Elements
description: "Data Input Message Elements define the XML structure used in SMADDI files, covering both data-storage elements and logical grouping elements."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

# Data Input Message Elements

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Data Input Message Elements define the XML structure used in SMA Dynamic Data Input (SMADDI) files. Each element either stores data directly in the OpCon database or groups logically related elements within the message hierarchy. Examples show the nested structure required for valid input files.

## General Message Elements

Required for all SMADDI input files. Structure:

<msg\>

&emsp;&emsp;<msgtype\></msgtype\>

&emsp;&emsp;&emsp;&emsp;\....all elements required for msgtype

</msg\>

#### <msg\></msg\>

Contains a complete transaction for the SMADDI stored procedures to commit to the OpCon database. SMADDI does not limit the number of <msg\> elements per input file.

- **Requirements**: Required for all messages
- **Valid Values**: Any valid DDI text

#### <msgtype\></msgtype\>

Describes the type of data expected for the <msg\>. The SMADDI service uses this to ensure the correct child elements are included. Only one <msgtype\> element is allowed per <msg\>.

- **Requirements**: Required for <msg\>
- **Valid Values**: A supported SMADDI Message Type. Refer to [SMADDI Message Types](SMADDI-Message-Types.md)

## add_caldate and del_caldate Element Structures

Use `add_caldate` to add dates to one or more OpCon calendars. If the calendar does not exist, it will be created unless the name indicates a schedule holiday calendar (HC:ScheduleName) — those may not be created with this message. Use `del_caldate` to delete dates from calendars. For information on creating data input files, refer to [Creating Data Input Files](Creating-Data-Input-Files.md).

**add_caldate structure:**

<msg\>

��<msgtype\>add_caldate</msgtype\>

��<calinfo\>

����<calname\> </calname\>

����<caldoc\> </caldoc\>

����<caldate\> </caldate\>

��</calinfo\>

</msg\>

**del_caldate structure:**

<msg\>

��<msgtype\>del_caldate</msgtype\>

��<calinfo\>

����<calname\> </calname\>

����<caldate\> </caldate\>

��</calinfo\>

</msg\>

### Element Definitions

#### <calinfo\></calinfo\>

Contains child elements to add/delete days on a single OpCon calendar.

- **Requirements**: Required for <msgtype\> add_caldate
- **Valid Values**: Any valid <calinfo\> child element

#### <calname\></calname\>

Defines the name of the calendar to which dates will be added/deleted.

- **Requirements**: Required for <calinfo\>
- **Valid Values**: Alphanumeric calendar name (existing or new). Maximum 50 characters. Invalid characters: `' ( ) , = ; |`. One per <calinfo\>

#### <caldoc\></caldoc\>

Defines the purpose of the calendar.

- **Requirements**: Optional for <calinfo\>
- **Valid Values**: Maximum 4000 characters. One per <calinfo\>

#### <caldate\></caldate\>

Defines a date to add/delete on the target calendar.

- **Requirements**: Required for <calinfo\>
- **Valid Values**: Short date in the format recognized by the database server's Regional Settings (e.g., 7/7/2008). Multiple <caldate\> elements allowed per <calinfo\>

## new_schedule Element Structure

Use `new_schedule` to add schedules to Master tables. For information on creating data input files, refer to [Creating Data Input Files](Creating-Data-Input-Files.md).

:::note
When using <documentation\> tags for new_schedules, the <docfrqname\> element CANNOT be used — DDI throws an error.
:::

<msg\>

��<msgtype\>new_schedule</msgtype\>

����<skdinfo\>

�������<skdname\></skdname\>

�������<skdstart\></skdstart\>

�������<skdwkdays\></skdwkdays\>

�������<calusemaster\></calusemaster\>

�������<concurrskdflg\></concurrskdflg\>

�������<multi_inst_skd\></multi_inst_skd\>

�������<subskd\></subskd\>

�������<autobldadv\></autobldadv\>

�������<autoblddays\></autoblddays\>

�������<buildovr\></buildovr\>

�������<buildhld\></buildhld\>

�������<skdautobuildtime\></skdautobuildtime\>

�������<autodeldays\></autodeldays\>

�������<addlholday\></addlholday\>

�������<workday_sun\></workday_sun\>

�������<workday_mon\></workday_mon\>

�������<workday_tue\></workday_tue\>

�������<workday_wed\></workday_wed\>

�������<workday_thu\></workday_thu\>

�������<workday_fri\></workday_fri\>

�������<workday_sat\></workday_sat\>

�������<frq\>

����������\....refer to [Data Input Message Elements](#%3Cfrq%3E)

�������</frq\>

�������<documentation\>

����������\....refer to [<documentation\> Documentation Element Structure](#documen)

�������</documentation\>

�������<ppevtdets\></ppevtdets\>

�������<skd_bld4machgrp\></skd_bld4machgrp\>

�������<skd_inst_def\>

����������<skd_predef_prop\></skd_predef_prop\>

�������</skd_inst_def\>

�������<skdinst\>

����������<skdinstancename\></skdinstancename\>

����������<named_skd_inst_def\>

������������<named_skd_predef_prop\></namded_skd_predef_prop\>

����������<named_skd_inst_def\>

����������<jobpat\>

������������<jobpatname\></jobpatname\>

������������<exception\></exception\>

����������</jobpat\>

�������</skdinst\>

����</skdinfo\>

</msg\>

### Element Definitions

#### <skdinfo\></skdinfo\>

Contains child elements to create a single OpCon schedule.

- **Requirements**: Required for <msgtype\> new_schedule
- **Valid Values**: Any valid <skdinfo\> child element

#### <skdname\></skdname\>

Defines the schedule name.

- **Requirements**: Required for <skdinfo\>
- **EM field label**: Name
- **Valid Values**: Alphanumeric schedule name not existing in OpCon. Invalid characters: `< > & ' " | , ; % ( ) { } [ ] = \ ! ~ \``. Maximum 40 characters. One per <skdinfo\>

#### <skdstart\></skdstart\>

Defines the schedule's start time.

- **Requirements**: Optional for <skdinfo\>; defaults to 00:00. One per <skdinfo\>
- **EM field label**: Start Time
- **Valid Values**: Numerical time in hh:mm format; range 00:00–23:59

#### <skdwkdays\></skdwkdays\>

Specifies the number of workdays per week.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Workdays per Week
- **Valid Values**: 5, 6, or 7. One per <skdinfo\>

#### <calusemaster\></calusemaster\>

Indicates whether the schedule's calendar uses the Master Holiday Calendar.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Use Master Holiday
- **Valid Values**: True or False; defaults to True. One per <skdinfo\>

#### <concurrskdflg\></concurrskdflg\>

Indicates conflict with other days.

- **Requirements**: Optional for <skdinfo\>. One per <skdinfo\>
- **EM field label**: Conflict with other days
- **Valid Values**: True or False

#### <multi_inst_skd\></multi_inst_skd\>

Indicates if the schedule is multi-instance capable.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Multi-Instance
- **Valid Values**: True or False

#### <subskd\></subskd\>

Indicates the schedule is allowed to be a SubSchedule.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: SubSchedule
- **Valid Values**: True or False

#### <autobldadv\></autobldadv\>

Number of days in advance to start building.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: days in advance for
- **Valid Values**: 1–99 days

#### <autoblddays\></autoblddays\>

Number of days to build consecutively.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: days
- **Valid Values**: 1–99 days

#### <buildovr\></buildovr\>

If True, overwrites the schedule in the daily tables when built again (only if schedule is complete or does not exist).

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Overwrite Existing
- **Valid Values**: True or False

#### <buildhld\></buildhld\>

If True, builds the schedule with status "On Hold." The SAM will not process it until released manually or via an OpCon event.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Build On Hold
- **Valid Values**: True or False

#### <skdautobuildtime\></skdautobuildtime\>

Clock time to build the schedule. The SAM uses this to calculate the start offset for the SMA_SKD_BUILD job.

- **Requirements**: Optional for <skdinfo\>; defaults to 00:00. One per <skdinfo\>
- **EM field label**: Auto Build Time
- **Valid Values**: hh:mm format; range 00:00–23:59

#### <autodeldays\></autodeldays\>

Days in the past from the current date after which to auto-delete the schedule if complete.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: days ago
- **Valid Values**: 1–99 days

#### <addlholday\></addlholday\>

Name of a calendar used to determine additional holidays beyond the master and schedule holiday calendars.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Additional Holidays
- **Valid Values**: A valid user-defined calendar in the database

#### <workday_sun\></workday_sun\>

Defines Sunday as a workday.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Sunday
- **Valid Values**: True or False

#### <workday_mon\></workday_mon\>

Defines Monday as a workday.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Monday
- **Valid Values**: True or False

#### <workday_tue\></workday_tue\>

Defines Tuesday as a workday.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Tuesday
- **Valid Values**: True or False

#### <workday_wed\></workday_wed\>

Defines Wednesday as a workday.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Wednesday
- **Valid Values**: True or False

#### <workday_thu\></workday_thu\>

Defines Thursday as a workday.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Thursday
- **Valid Values**: True or False

#### <workday_fri\></workday_fri\>

Defines Friday as a workday.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Friday
- **Valid Values**: True or False

#### <workday_sat\></workday_sat\>

Defines Saturday as a workday.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Saturday
- **Valid Values**: True or False

#### <ppevtdets\></ppevtdets\>

Defines the OpCon event to submit when the schedule completes. SMADDI does not fail the import for an invalid event. Any number of <ppevtdets\> elements can be defined.

- **Requirements**: Optional for <skdinfo\>
- **Valid Values**: Any valid OpCon event. Refer to [OpCon Events](../../events/introduction.md)

#### <skd_bld4machgrp\></skd_bld4machgrp\>

Defines the Machine Group Name for schedule instances. Valid only when Multi-Instance is True.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Build an instance for each machine in Machine Group
- **Valid Values**: Any valid Machine Group

#### <skd_inst_def\></skd_inst_def\>

Contains child elements to define property strings as schedule instances.

- **Requirements**: Optional for <skdinfo\>
- **Valid Values**: (child element) <skd_predef_prop\>

#### <skd_predef_prop\></skd_predef_prop\>

Defines a string of property definitions for a schedule instance.

- **Requirements**: Required for <skd_inst_def\>
- **EM field label**: Define Property Values
- **Valid Values**: Format: `PName1=PValue1;PName2=PValue2...`
  - PName must not contain: `' ( ) \ , = ; |`
  - PValue must not contain a semicolon (;)
  - If Multi-Instance is True and <skd_bld4machgrp\> is not specified, multiple <skd_predef_prop\> elements are allowed
  - If Multi-Instance is True and <skd_bld4machgrp\> is specified, <skd_predef_prop\> is not allowed
  - If Multi-Instance is False, only one <skd_predef_prop\> is allowed

#### <skdinst\></skdinst\>

Contains child elements to define each named schedule instance, associated properties, and exceptions. Valid only when Multi-Instance is True and neither <skd_inst_def\> nor <skd_bld4machgrp\> is specified.

- **Requirements**: Optional for <skdinfo\>
- **EM field label**: Named Instance

#### <skdinstancename\></skdinstancename\>

Defines the name of a schedule instance.

- **Requirements**: Required for <skdinst\>
- **EM field label**: Instances
- **Valid Values**: Alphanumeric instance name not existing in OpCon. Invalid characters: `~` and `` ` ``. Maximum 128 characters. Multiple per <skdinst\>

#### <named_skd_inst_def\></named_skd_inst_def\>

Contains child elements to define property strings for a named schedule instance.

- **Requirements**: Optional for <skdinst\>
- **Valid Values**: (child element) <named_skd_predef_prop\>

#### <named_skd_predef_prop\></named_skd_predef_prop\>

Defines a property string for a named schedule instance.

- **Requirements**: Required for <named_skd_inst_def\>
- **EM field label**: Properties
- **Valid Values**: Format: `PName1=PValue1`. PName must not contain `' ( ) \ , = ; |`; PValue must not contain a semicolon

#### <jobpat\></jobpat\>

Contains child elements to define exceptions for a named schedule instance. Can only be defined by users in the ocadm role.

- **Requirements**: Optional for <skdinst\>
- **EM field label**: Exceptions
- **Valid Values**: (child elements) <jobpatname\>; <exception\>

#### <jobpatname\></jobpatname\>

Defines the job pattern.

- **Requirements**: Required for <jobpat\>
- **EM field label**: Job Patterns
- **Valid Values**: Maximum 128 alphanumeric characters, including asterisk wildcard (`*`). Invalid characters: `~` and `` ` ``

#### <exception\></exception\>

Contains the XML definition for an exception rule for a job pattern.

- **Requirements**: Optional for <jobpatname\>

- **EM field label**: Exception Rules

- **Valid Values**: XML-escaped syntax:

    <exception\>&lt;Exception&gt;&lt;FieldCode&gt;**n**&lt;/FieldCode&gt;\
    &lt;NewValue&gt;**x**&lt;/NewValue&gt;&lt;NewValueIsExpression&gt;**false**&lt;/NewValueIsExpression&gt;&lt;ToReplace&gt;**m**&lt;/ToReplace&gt;&lt;/Exception&gt;</exception\>

  - Where *n* = Field code of the field to modify. Valid values (integer) include:

    ||||
    |--- |--- |--- |
    |122 - Tags|1005 - User (Destination)|5008 - Job Description Name|
    |904 - Department|1006 - Destination File|5009 - Job Description Library|
    |905 - Access Code|1016 - Destination Machine|5010 - Batch Queue Name|
    |907 - Primary Machine|3001 - User ID|5011 - Batch Queue Library|
    |908 - Alternate Machine1|3003 - Command Line|5012 - Output Queue Name|
    |909 - Alternate Machine2|3004 - Working Directory|5013 - Output Queue Library|
    |910 - Alternate Machine3|3006 - Prerun Command Line|5022 - Call|
    |911- Machine Group|3007 - Prerun Working Directory|6001 - Start Image|
    |913 - Start Offset|3018 - Prerun Exit Code Operator|6002 - Parameters|
    |914 - Start Offset Abs/Rel Indicator|3019 - Prerun Exit Code Value|6003 - Prerun|
    |915 - Latest Start|5002 - User ID|6004 - User ID|
    |916 - Latest Start Abs/Rel Indicator|5003 - JOBQ Priority|6005 - Group ID|
    |933 - Job Build Status|5004 - Job Date|6007 Exit Operator|
    |1001- Source Machine|5005 - Accounting Code|6008 - Exit Value|
    |1003 - User (Source)|5006 - mCurrent Library||
    |1004 - mSource File|5007 - mInit.Lib.List||

  - Where *m* = Substring in the current value to replace
    - If field code is Job Build Status (933), valid values: "On Hold", "Released", or "To Be Skipped"
    - For all other field codes, *m* cannot be a property expression. Valid values: empty string (""), fixed string ("abc"), or string with instance properties (`[[$this.Property]]`)
  - Where *x* = String value with which to replace *m*
    - If field code is Job Build Status (933), valid values: "On Hold", "Released", "Cancelled", "To Be Skipped", "Do Not Schedule", or "Disable Build"
    - For all other field codes, valid values: fixed string ("abc"), string with instance properties (`[[$this.Property]]`), or a property expression (`[[@current]] + ToOaTime("02:00")`)
  - Where NewValueIsExpression indicates whether *x* is a property expression: true or false

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

Use `new_token` to add a new global property to Master tables. Use `update_token` to update an existing global property. For information on creating data input files, refer to [Creating Data Input Files](Creating-Data-Input-Files.md).

**new_token structure:**

<msg\>

��<msgtype\>new_token</msgtype\>

��<tokeninfo\>

����<tokendesc\></tokendesc\>

����<tokendoc\></tokendoc\>

����<tokenval\></tokenval\>

��</tokeninfo\>

</msg\>

**update_token structure:**

<msg\>

��<msgtype\>update_token</msgtype\>

��<tokeninfo\>

����<tokendesc\></tokendesc\>

����<tokenval\></tokenval\>

����<tokendoc\></tokendoc\>

��</tokeninfo\>

</msg\>

### Element Definitions

#### <tokeninfo\></tokeninfo\>

Contains child elements to create a single Global Property.

- **Requirements**: Required for <msgtype\> new_token
- **Valid Values**: Any valid <tokeninfo\> child element

#### <tokendesc\></tokendesc\>

Specifies the name of the Global Property to create in OpCon.

- **Requirements**: Required for <tokeninfo\>
- **EM field label**: Name
- **Valid Values**: Alphanumeric property name not existing in OpCon. Maximum 20 characters. One per <tokeninfo\>

#### <tokendoc\></tokendoc\>

Specifies documentation for the property.

- **Requirements**: Optional for <tokeninfo\>
- **EM field label**: Documentation
- **Valid Values**: Maximum 4000 characters. One per <tokeninfo\>

#### <tokenval\></tokenval\>

Specifies the value assigned to the Global Property.

- **Requirements**: Required for <tokeninfo\>
- **EM field label**: Value
- **Valid Values**: Maximum 77 alphanumeric characters. One per <tokeninfo\>

## new_variable and update_variable Element Structures

Use `new_variable` to add a threshold or resource to Master tables. Use `update_variable` to update an existing one. For information on creating data input files, refer to [Creating Data Input Files](Creating-Data-Input-Files.md).

**new_variable structure:**

<msg\>

��<msgtype\>new_variable</msgtype\>

��<threshinfo\>

����<threshdesc\></threshdesc\>

����<threshdoc\></threshdoc\>

����<threshval\></threshval\>

����<threshused\></threshused\>

����<threshstyle\></threshstyle\>

��</threshinfo\>

</msg\>

**update_variable structure:**

<msg\>

��<msgtype\>update_variable</msgtype\>

��<threshinfo\>

����<threshdesc\></threshdesc\>

����<threshdoc\></threshdoc\>

����<threshval\></threshval\>

����<threshused\></threshused\>

����<threshstyle\></threshstyle\>

��</threshinfo\>

</msg\>

### Element Definitions

#### <threshinfo\></threshinfo\>

Contains child elements to create a single OpCon variable.

- **Requirements**: Required for <msgtype\> new_variable
- **Valid Values**: Any valid <threshinfo\> child element

#### <threshstyle\></threshstyle\>

Specifies whether the variable is treated as a threshold or a resource.

- **Requirements**: Optional for <threshinfo\>
- **Valid Values**: Threshold or Resource. One per <threshinfo\>

#### <threshdesc\></threshdesc\>

Specifies the name of the variable to create in OpCon.

- **Requirements**: Required for <threshinfo\>
- **EM field label**: Name (Thresholds) / Resource Name (Resources)
- **Valid Values**: Alphanumeric threshold or resource name not existing in OpCon. Maximum 20 characters. One per <threshinfo\>

#### <threshdoc\></threshdoc\>

Specifies documentation for the threshold or resource.

- **Requirements**: Optional for <threshinfo\>
- **EM field label**: Documentation
- **Valid Values**: Maximum 4000 characters. One per <threshinfo\>

#### <threshval\></threshval\>

- If <threshstyle\> is Threshold: specifies the threshold value
- If <threshstyle\> is Resource: specifies the maximum resources allowed
- **Requirements**: Required for <threshinfo\>
- **EM field label**: Threshold (Thresholds) / Max Resources (Resources)
- **Valid Values**: Integer 0–2147483647. One per <threshinfo\>

#### <threshused\></threshused\>

Specifies an initial value for resources in use when the variable is treated as a resource.

- **Requirements**: Optional for <threshinfo\>
- **EM field label**: Resources In Use
- **Valid Values**: Integer 0–2147483647. One per <threshinfo\>

## new_master Element Structure

<msg\>

�����<msgtype\>new_master</msgtype\>

�����<schedule\>

�����<skdname\></skdname\>

�������<job\>

���������<jname\></jname\>

���������<platform\></platform\>

���������<jobsubtype\></jobsubtype\>

���������<dname\></dname\>

���������<accd\></accd\>

���������<use_skdinstmach\></use_skdinstmach\>

���������<pmname\></pmname\>

���������<alt1\></alt1\>

���������<alt2\></alt2\>

���������<alt3\></alt3\>

���������<mgrp\></mgrp\>

���������<mgrpeach\></mgrpeach\>

���������<multi_inst_job\></multi_inst_job\>

���������<disable_bld\></disable_bld\>

���������<job_expr_dep\></job_expr_dep\>

���������<job_embed_script\></job_embed_script\>

���������<job_embed_script_type\></job_embed_script_type\>

���������<job_embed_script_ver\></job_embed_script_ver\>

���������<job_embed_script_runner\></job_embed_script_runner\>

���������<job_embed_script_args\></job_embed_script_args\>

���������<job_embed_script_hash\></job_embed_script_hash\>

���������<jobdata\>

���������\....refer to [<jobdata\> Platform-specific Elements](jobdata-Platform-specific-Elements.md)

���������</jobdata\>

���������<afc\>

���������\....refer to [<afc\> Advanced Failure Criteria Element Structure](#afc)

���������</afc\>

���������<frq\>

���������\....refer to [new_master Frequency Element Structure](#new_mast2)

���������</frq\>

���������<documentation\>

���������\....refer to [<documentation\> Documentation Element Structure](#documen)

���������</documentation\>

���������<predefined_property\>

���������\....refer to [<predefined_property\> Job Instance Property Element Structure](#predefi)

���������</predefined_property\>

���������<jobudt\>

���������\....refer to [<jobudt\> Job User Defined Tags](#jobudt)

���������</jobudt\>

���������<ppevt\>

���������\....refer to [Data Input Message Elements](#%3Cppevt%3E)

���������</ppevt\>

���������<ppvar\>

���������\.... refer to [Data Input Message Elements](#%3Cppvar%3E)

���������</ppvar\>

���������<jpre\>

���������\.... refer to [<jpre\> Job Dependencies Element Structure](#jpre)

���������</jpre\>

���������<vpre\>

���������\.... refer to [Data Input Message Elements](#%3Cvpre%3E)

���������</vpre\>

�������</job\>

�����</schedule\>

</msg\>

## new_daily Element Structure

<msg\>

�����<msgtype\>new_daily</msgtype\>

�����<schedule\>

�����������<skddate\></skddate\>

�����������<skdname\></skdname\>

�����������<job\>

����������������<jname\></jname\>

����������������<platform\></platform\>

����������������<jobsubtype\></jobsubtype\>

����������������<dname\> </dname\>

����������������<accd\></accd\>

����������������<use_skdinstmach\></use_skdinstmach\>

����������������<pmname\></pmname\>

����������������<alt1\></alt1\>

����������������<alt2\></alt2\>

����������������<alt3\></alt3\>

����������������<mgrp\></mgrp\>

����������������<mgrpeach\></mgrpeach\>

����������������<job_expr_dep\></job_expr_dep\>

����������������<job_embed_script\></job_embed_script\>

����������������<job_embed_script_type\></job_embed_script_type\>

����������������<job_embed_script_ver\></job_embed_script_ver\>

����������������<job_embed_script_runner\></job_embed_script_runner\>

����������������<job_embed_script_args\></job_embed_script_args\>

����������������<job_embed_script_hash\></job_embed_script_hash\>

����������������<jobdata\>

����������������\....refer to [<jobdata\> Platform-specific Elements](jobdata-Platform-specific-Elements.md)

����������������</jobdata\>

����������������<afc\>

����������������...refer to [<afc\> Advanced Failure Criteria Element Structure](#afc)

����������������</afc\>

����������������<frq\>

����������������\....refer to [new_daily Frequency Element Structure](#new_dail)

����������������</frq\>

����������������<documentation\>

����������������\....refer to [<documentation\> Documentation Element Structure](#documen)

����������������</documentation\>

����������������<predefined_property\>

����������������\....refer to [<predefined_property\> Job Instance Property Element Structure](#predefi)

����������������</predefined_property\>

����������������<jobudt\>

����������������\....refer to [<jobudt\> Job User Defined Tags](#jobudt)

����������������</jobudt\>

�����������<ppevt\>

����������������\....refer to [Data Input Message Elements](#%3Cppevt%3E)

����������������</ppevt\>

����������������<ppvar\>

����������������\....refer to [Data Input Message Elements](#%3Cppvar%3E)

����������������</ppvar\>

����������������<jpre\>

����������������\....refer to [<jpre\> Job Dependencies Element Structure](#jpre)

�����������������</jpre\>

����������������<vpre\>

����������������\....refer to [Data Input Message Elements](#%3Cvpre%3E)

����������������</vpre\>

�����������</job\>

�����</schedule\>

</msg\>

## add_dependency Element Structure

Use `add_dependency` to add a job, threshold, or resource dependency to a job. If <skddate\> is present, the system treats it as an addition to a daily schedule. For information on creating data input files, refer to [Creating Data Input Files](Creating-Data-Input-Files.md).

<msg\>

<msgtype\>add_dependency</msgtype\>

�����<schedule\>

�����<skddate\></skddate\> (for definition to Daily only)

�����<skdname\></skdname\>

���������<job\>

������������<jname\></jname\>

������������<vpre\>

������������\....refer to [Data Input Message Elements](#%3Cvpre%3E)

������������</vpre\>

������������<jpre\>

������������\....refer to [<jpre\> Job Dependencies Element Structure](#jpre)

������������</jpre\>

���������</job\>

�����</schedule\>

</msg\>

:::note
The add_dependency msgtype requires at least one <vpre\> or one <jpre\>.
:::

## add_documentation Element Structure

<msg\>

�����<msgtype\>add_documentation</msgtype\>

�����<schedule\>

�����<skddate\><skddate\> (for definition to Daily only)

�����<skdname\></skdname\>

���������<job\>

����������<jname\></jname\>

����������<documentation\>

����������������\....refer to [<documentation\> Documentation Element Structure](#documen)

����������</documentation\>

���������</job\>

�����</schedule\>

</msg\>

## Common Schedule and Job-Related Element Definitions

#### <schedule\></schedule\>

Contains child elements to define or reference jobs for a single schedule in the OpCon database.

- **Requirements**: Required for any <msgtype\> that identifies a job
- **Valid Values**: Any valid <schedule\> child element. Multiple <schedule\> elements allowed per <msg\>

:::note
Do not specify <skddate\> with <msgtype\> new_master — a schedule date is invalid in Master tables. With <msgtype\> add_dependency, <skddate\> is optional: when specified, it adds a dependency to a Daily Schedule job; when omitted, it adds a dependency to a Master job.
:::

#### <skddate\></skddate\>

Specifies the schedule date for child elements adding or modifying Daily records.

- **Requirements**: Optional for <schedule\>
- **Valid Values**: Date in ymd format. One per <schedule\>

#### <skdname\></skdname\>

Defines the Schedule Name.

- **Requirements**: Name
- **Valid Values**: Existing Schedule Name in Master or Daily tables. Invalid characters: `< > & ' " | , ~ \``. Maximum 255 characters. One per <schedule\>

#### <job\></job\>

Contains child elements for a single job in the OpCon database.

- **Requirements**: Required for <schedule\>
- **Valid Values**: Any valid <job\> child element. Multiple <job\> elements allowed per <schedule\>

#### <jname\></jname\>

Defines the name for the parent <job\>. For add_dependency, defines the existing job to which dependencies are added.

- **Requirements**: Required for <job\> and add_dependency
- **EM field label**: Name
- **Valid Values**: Unique job name in Master or Daily tables depending on <msgtype\>

#### <platform\></platform\>

Defines the platform for the parent <job\>.

- **Requirements**: Required for <job\> when <msgtype\> is new_daily or new_master. Invalid for add_dependency
- **EM field label**: Job Type
- **Valid Values**:

|||
|--- |--- |
|Container Job|SAP BW|
|File Transfer|SAP R/3 and CRM|
|IBM i|SQL|
|i5/OS (for backward compatibility only)|Tuxedo ART|
|Java|Unisys Exec (for backward compatibility)|
|MCP|UNIX|
|Null Job|Windows|
|OpenVMS|z/OS|
|OS 2200||

#### <jobsubtype\></jobsubtype\>

Defines the Job Sub-Type for the parent <job\>.

- **Requirements**: Optional
- **EM field label**: Job Sub-Type
- **Valid Values**: Depends on the <platform\> value

  If <platform\> is Windows:

  |||
  |--- |--- |
  |Command: File Copy|Corelation|
  |Command: File Delete|MS Orchestrator|
  |Command: File Move|Web Services (RESTful)|
  |Command: File Rename|WS_FTP Pro|

  If <platform\> is UNIX:

  |||
  |--- |--- |
  |Episys: Run JobFile|Episys: Find Report from Episys Reports|
  |Episys: Answer Prompts|Episys: Find Report from RSJ Output|
  |Episys: Compare ACH Totals|Episys: FTP all Reports in List|
  |Episys: Find Batch Output Sequence Number||

#### <dname\></dname\>

Defines the Department name for the parent <job\>.

- **Requirements**: Optional for new_daily or new_master. Invalid for add_dependency
- **EM field label**: Department
- **Valid Values**: An existing Department in OpCon

:::note
During new_daily or new_master import, SMADDI checks for the Department. If it exists, import continues normally. If not, SMADDI creates it automatically.
:::

#### <accd\></accd\>

Defines the Access Code for the parent <job\>.

- **Requirements**: Optional for new_daily or new_master. Invalid for add_dependency
- **EM field label**: Access Code
- **Valid Values**: An existing Access Code in OpCon

:::note
During new_daily or new_master import, SMADDI checks for the Access Code. If it exists, import continues normally. If not, SMADDI creates it automatically.
:::

#### <use_skdinstmach\></use_skdinstmach\>

Indicates if the job should use the schedule instance machine.

- **Requirements**: Optional
- **EM field label**: Use Schedule Instance Machine
- **Valid Values**: True or False; defaults to False
  - Valid only when the Schedule is configured to build an instance for all machines in a group and the Job Type matches the OS type for that Machine Group
  - Mutually exclusive with all other machine assignment elements (primary, alternates, and machine group)

#### <pmname\></pmname\>

Defines the Primary Machine for the parent <job\>.

- **Requirements**: Required if <mgrp\> is not defined and <msgtype\> is new_master or new_daily. Invalid for add_dependency
- **EM field label**: Primary Machine
- **Valid Values**: An existing Machine in OpCon, including the Null Machine

:::note
Either <pmname\> or <mgrp\> is required. These elements are mutually exclusive.
:::

#### <alt1\></alt1\>

Defines the first Alternate Machine for the parent <job\>.

- **Requirements**: Optional for new_daily or new_master. Invalid for add_dependency
- **EM field label**: Alternate Machine 1
- **Valid Values**: An existing Machine in OpCon

#### <alt2\></alt2\>

Defines the second Alternate Machine for the parent <job\>.

- **Requirements**: Optional for new_daily or new_master. Invalid for add_dependency
- **EM field label**: Alternate Machine 2

#### <alt3\></alt3\>

Defines the third Alternate Machine for the parent <job\>.

- **Requirements**: Optional for new_daily or new_master. Invalid for add_dependency
- **EM field label**: Alternate Machine 3
- **Valid Values**: An existing Machine in OpCon

#### <mgrp\></mgrp\>

Defines the Machine Group for the parent <job\>.

- **Requirements**: Required if <pmname\> is not defined and <msgtype\> is new_daily or new_master. Invalid for add_dependency
- **EM field label**: Machine Group Selection
- **Valid Values**: An existing Machine Group in OpCon

#### <mgrpeach\></mgrpeach\>

Defines if the job runs on each Machine in the Machine Group.

- **Requirements**: Optional
- **EM field label**: Run on Each Machine
- **Valid Values**: True or False

#### <multi_inst_job\></multi_inst_job\>

Defines if the job can have multiple instances.

- **Requirements**: Optional
- **EM field label**: Allow Multi-Instance
- **Valid Values**: True or False; defaults to False

#### <disable_bld\></disable_bld\>

Indicates if the job is disabled from build.

- **Requirements**: Optional for new_master only
- **EM field label**: Disable Build
- **Valid Values**: True or False; defaults to False

#### <job_expr_dep\></job_expr_dep\>

Defines a complex expression that must evaluate to "True" before the job can run with any frequency. One per job.

- **Requirements**: Optional for new_daily or new_master
- **EM field label**: Expression Dependency
- **Valid Values**: Any valid property expression

#### <job_embed_script\></job_embed_script\>

Defines the embedded script to associate with the job.

- **Requirements**: Optional
- **EM field label**: Script
- **Valid Values**: Any defined script for the job type

#### <job_embed_script_type\></job_embed_script_type\>

Defines the script type associated with the script.

- **Requirements**: Optional
- **EM field label**: Script Type
- **Valid Values**: Any valid script type for the specified script

#### <job_embed_script_ver\></job_embed_script_ver\>

Defines the version (revision) of the script to run.

- **Requirements**: Optional
- **EM field label**: Version
- **Valid Values**: Integer 0–2147483647. A value of 0 equals the "LATEST" version

#### <job_embed_script_runner\></job_embed_script_runner\>

Defines the interpreter for running the script.

- **Requirements**: Optional
- **EM field label**: Runner
- **Valid Values**: Any valid script runner for the specified script

#### <job_embed_script_args\></job_embed_script_args\>

Defines script parameters to pass at runtime. Tokens and global properties are acceptable.

- **Requirements**: Optional
- **EM field label**: Arguments
- **Valid Values**: Any valid parameters

#### <job_embed_script_hash\></job_embed_script_hash\>

Defines the MD5 hash of the script content.

- **Requirements**: Optional
- **EM field label**: N/A
- **Valid Values**: Valid MD5 cryptographic hash. Maximum 32 characters

#### <jobdata\></jobdata\>

Contains child elements to define platform-specific job information.

- **Requirements**: Required unless <platform\> is Null Job or <msgtype\> is add_dependency
- **Valid Values**: Any element from the desired platform elements. One per <job\>

## <afc\> Advanced Failure Criteria Element Structure

For Windows and UNIX jobs, SMADDI supports Advanced Failure Criteria. For more information, refer to [Advanced Failure Criteria](../../objects/jobs.md#Advanced).

<afc\>

���<afc_operator\></afc_operator\>

���<afc_value\></afc_value\>

���<afc_end_value\></afc_end_value\>

���<afc_result\></afc_result\>

���<afc_and_or\></afc_and_or\>

</afc\>

:::caution
When defined, Advanced Failure Criteria overrides the Basic Failure Criteria defined for the primary job.
:::

### Element Definitions

#### <afc\></afc\>

Contains child elements to define a single set of Advanced Failure Criteria. Maximum of 20 <adv_fail_criteria\> elements allowed; the job input fails if more than 20 are specified.

- **Requirements**: Optional
- **Valid Values**: All <afc\> elements

#### <afc_operator\></afc_operator\>

Defines the Comparison Operator for the parent <afc\>.

- **Requirements**: Required for <afc\>
- **EM field label**: Comparison Operator
- **Valid Values**: Range, Equal To, Not Equal To, Less Than, Greater Than, Less Than or Equal, Greater Than or Equal

#### <afc_value\></afc_value\>

Defines the Value for the parent <afc\>.

- **Requirements**: Required for <afc\>
- **EM field label**: Value
- **Valid Values**: -2147483648 through 2147483647

#### <afc_end_value\></afc_end_value\>

Defines the End Value when <afc_operator\> is **Range**. SMADDI ignores this element for any other operator value.

- **Requirements**: Optional
- **EM field label**: End Value
- **Valid Values**: -2147483648 through 2147483647

#### <afc_result\></afc_result\>

Defines the result for all <afc\> groups (value from the first group applies to all). SMADDI ignores this element when specified in later groups.

- **Requirements**: Required for <afc\>
- **EM field label**: Result
- **Valid Values**: **Finish OK**, **Fail**

#### <afc_and_or\></afc_and_or\>

Determines how OpCon treats the next <afc\> group in relation to the current group. Required for another <afc\> group to be defined.

- **Requirements**: Optional
- **EM field label**: And/Or
- **Valid Values**: **And**, **Or**

## <jpre\> Job Dependencies Element Structure

<jpre\>

������<dskdname\></dskdname\>

������<depjob_instno\></depjob_instno\>

������<djname\></djname\>

������<pjfrqname\></pjfrqname\>

������<dptype\></dptype\>

������<depjob_depinstno\></depjob_depinstno\>

������<dofset\></dofset\>

������<iexit\></iexit\>

������<onfailure\></onfailure\>

������<alldys\></alldys\>

������<jnlike\></jnlike\>

</jpre\>

### Element Definitions

#### <jpre\></jpre\>

Contains child elements to define a single prerequisite job (job dependency).

- **Requirements**: Required with add_dependency if <vpre\> is not specified
- **Valid Values**: Any valid <jpre\> child element

:::note
The add_dependency msgtype requires at least one <vpre\> or one <jpre\>.
:::

#### <dskdname\></dskdname\>

Defines the Schedule Name for the parent <jpre\>.

- **Requirements**: Required for <jpre\>
- **EM field label**: Name
- **Valid Values**: An existing Schedule Name in Master or Daily tables

#### <depjob_instno\></depjob_instno\>

Defines the schedule instance name for the Successor Job.

- **Requirements**: Optional for <jpre\>
- **EM field label**: Instance Name
- **Valid Values**: An existing instance name defined for the schedule in OpCon

#### <djname\></djname\>

Defines the Job Name for the parent <jpre\>.

- **Requirements**: Required for <jpre\>
- **EM field label**: Name
- **Valid Values**: For new_master, an existing Job Name in Master tables. For new_daily, the job does not need to exist in OpCon

#### <pjfrqname\></pjfrqname\>

Defines the frequency name for which the Job Dependency applies.

- **Requirements**: Optional for <jpre\>
- **EM field label**: Frequency Name
- **Valid Values**: An existing frequency name for the job in OpCon. If not specified, the dependency applies at the job level for a master job. Ignored for daily jobs

#### <dptype\></dptype\>

Defines the Dependency Type for the parent <jpre\>.

- **Requirements**: Optional for <jpre\>
- **EM field label**: Dependency Type
- **Valid Values**: After, Conflict, Excludes, or Requires. Defaults to After

#### <depjob_depinstno\></depjob_depinstno\>

Defines the schedule instance name for the Predecessor Job.

- **Requirements**: Optional for <jpre\>
- **EM field label**: Instance Name
- **Valid Values**: An existing instance name defined for the schedule in OpCon

#### <dofset\></dofset\>

Defines the number of days offset for a cross-day dependency.

- **Requirements**: Optional for <jpre\>
- **EM field label**: Offset
- **Valid Values**: Integer from -999 to +999

:::note
If <skdname\> contains a multi-instance schedule and <dskdname\> contains the same schedule, Day Offset is not valid. Multi-instance schedules can only have internal same-day dependencies or valid cross-schedule dependencies.
:::

#### <iexit\></iexit\>

Indicates if OpCon ignores the Exit Code of the parent <jpre\>.

- **Requirements**: Optional for <jpre\>
- **EM field label**: Ignore Exit Code
- **Valid Values**: Y (Yes) or N (No)

#### <onfailure\></onfailure\>

Indicates if OpCon honors the dependency when the predecessor job fails.

- **Requirements**: Optional for <jpre\>
- **EM field label**: On Failure
- **Valid Values**: Y (Yes) or N (No)

#### <alldys\></alldys\>

Indicates if OpCon checks all days for a Conflict dependency.

- **Requirements**: Optional for <jpre\>
- **EM field label**: Check All Days
- **Valid Values**: Y (Yes) or N (No)

#### <jnlike\></jnlike\>

Indicates if <djname\> is a partial name for a Conflict dependency.

- **Requirements**: Optional for <jpre\>
- **EM field label**: Job Name Like
- **Valid Values**: Y (Yes) or N (No)

## <documentation\> Documentation Element Structure

<documentation\>

�����<docfrqname\></docfrqname\>

�����<doc\></doc\>

</documentation\>

### Element Definitions

#### <documentation\></documentation\>

Contains child elements to define documentation for the schedule or job.

- **Requirements**: Optional
- **Valid Values**: Any valid <documentation\> child element

#### <docfrqname\></docfrqname\>

Defines the frequency name for which the Documentation applies. Ignored for daily jobs.

- **Requirements**: Optional
- **EM field label**: Frequency list > selected frequency
- **Valid Values**: An existing frequency name for the job in OpCon. If not specified, Documentation applies at the job level for a master job

#### <doc\></doc\>

Contains documentation for the job.

- **Requirements**: Required for <documentation\>
- **EM field labels**:
  - *Frequency Documentation* if specified for a job with <docfrqname\>
  - *Documentation* if specified for a job without <docfrqname\> or for a schedule
- **Valid Values**: Maximum 32000 characters

## <predefined_property\> Job Instance Property Element Structure

<predefined_property\>

������<job_predef_propty\></job_predef_propty\>

</predefined_property\>

### Element Definitions

#### <predefined_property\></predefined_property\>

Contains child elements to define a single pre-defined job instance property.

- **Requirements**: Optional for <job\>
- **Valid Values**: Any valid <predefined_property\> child element

#### <job_predef_propty\></job_predef_propty\>

Defines a string of property definitions for a job instance.

- **Requirements**: Required for <predefined_property\>
- **EM field labels**: Define Property Values > The defined Property Value
- **Valid Values**: Format: `PName1=PValue1;PName2=PValue2...`
  - PName must not contain: `' ( ) \ , = ; |`
  - PValue must not contain a semicolon (;)
  - For new_master with <multi_inst_job\> True: multiple <job_predef_propty\> elements are allowed
  - For new_master with <multi_inst_job\> False, or for new_daily: only one <job_predef_propty\> is allowed

## <jobudt\> Job User Defined Tags

<jobudt\>

������<job_userdef_tag\></job_userdef_tag\>

</jobudt\>

### Element Definitions

#### <jobudt\></jobudt\>

Contains child elements to define one or more user-defined Tags for a job.

- **Requirements**: Optional for <job\>
- **Valid Values**: Any valid <jobudt\> child element

#### <job_userdef_tag\></job_userdef_tag\>

Defines a single tag for the job. The tag can be new or existing. Unlimited tags allowed per <jobudt\>.

- **Requirements**: Required for <jobudt\>
- **EM field labels**: Tag
- **Valid Values**: Alphanumeric characters, dash (-), underscore (_), and spaces. Multiple elements allowed

## <ppevt\> Post Process Events Element Structure

<ppevt\>

������<ppefinst\></ppefinst\>

������<ppefeedbackfld\></ppefeedbackfld\>

������<ppefeedbackval\></ppefeedbackval\>

������<ppefrqname\></ppefrqname\>

������<ppedets\></ppedets\>

</ppevt\>

### Element Definitions

#### <ppevt\></ppevt\>

Contains child elements to define a single post-process OpCon event.

- **Requirements**: Optional for <job\>
- **Valid Values**: Any valid <ppevt\> child element

#### <ppefinst\></ppefinst\>

Defines the final Job Status evaluated before submitting the OpCon Event.

- **Requirements**: Optional for <ppevt\>; however, either <ppefeedbackfld\> or <ppefinst\> must be specified
- **EM field label**: Job Status
- **Valid Values**: Failed, Finished OK, Skipped, Missed Latest Start Time, Exceeded Max Run Time, Late to Start, Late to Finish, Job Still Attempting Start, or Start Attempted

#### <ppefeedbackfld\></ppefeedbackfld\>

Defines the agent Feedback field to use for string matching before submitting the OpCon Event.

- **Requirements**: Optional for <ppevt\>; however, either <ppefeedbackfld\> or <ppefinst\> must be specified
- **EM field label**: Exit Description / agent Feedback / Job Completion Complex Expression

- **Valid Values**:
  - For Exit Description, use the value **Exit Description**
  - For Job Completion Complex Expression, use **Job Completion Complex Expression**
  - For **Windows** jobs:

    |||
    |--- |--- |
    |I/O Data Bytes/Sec|Job End Time|
    |I/O Data Operations/Sec|Job Status Description|
    |I/O Other Bytes/Sec|Physical Memory Size|
    |I/O Other Operations/Sec|Processor Usage|
    |I/O Read Bytes/Sec|Total Processor Time|
    |I/O Read Operations/Sec|User Processor Time|
    |I/O Write Bytes/Sec|Virtual Memory Size|
    |I/O Write Operations/Sec||

  - For **UNIX** jobs:

    |||
    |--- |--- |
    |Block Input Operations|Max Resident Set Size Used|
    |Block Output Operations|Messages Received|
    |Characters Read/Written|Messages Sent|
    |CPU Usage (System Code)|Page Faults|
    |CPU Usage (User Code)|Page Reclaims|
    |Integral Shared Memory Size|Signals Received|
    |Integral Unshared Data|Swaps|
    |Integral Unshared Stack|Voluntary Context Switch|
    |Involuntary Context Switches|Wall-clock Run Time|
    |Job Status Description||

  - For **SAP R/3 and CRM**: Child Process, Job Status Description
  - For **SAP BW**: Job Status Description, Process, Process Chain Log
  - For **MCP**:

    |||
    |--- |--- |
    |Accum Elapsed Time|Process Name|
    |Accum Elapsed Wait Time|Task Elapsed Time|
    |Accum I/O Time|Task Elapsed Wait Time|
    |Accum Print Lines|Task I/O Time|
    |Accu Processor Time|Task Print Lines|
    |Accum Ready Q Time|Task Processor Time|
    |Job Status Description|Task Ready Q Time|
    |Mix Number||

  - For **File Transfer**:

    |||
    |--- |--- |
    |Bandwidth Used|File Size|
    |Compression Used|File Transfer Mode Used|
    |Encryption Used|Job Status Description|

  - For **IBM i**: Active Job in MSGW Status, User-defined text from LFEEDBACK command, Job Status Description
  - For **z/OS**: Job Status Description, Trigger Messages, Step Completion, User Message

#### <ppefeedbackval\></ppefeedbackval\>

Defines the Exit Description evaluation string or agent Feedback string to match.

- **Requirements**: Required if <ppefeedbackfld\> is defined
- **EM field labels**: Comparison Operator, Value, End Value / String to match / Job Completion Complex Expression

- **Valid Values**:

  For Exit Description, separate fields with semicolons: `Comparison Operator;Value[;End Value]`

  :::note
  Add `;EndValue` only if the Comparison Operator is RG (Range).
  :::

  Comparison Operator must be one of: EQ, NE, LT, LE, GT, GE, RG, IN

  :::tip Example
  Range with Value 6 and End Value 9: `<ppefeedbackval>RG;6;9</ppefeedbackval>`

  Equal To with Value 5: `<ppefeedbackval>EQ;5</ppefeedbackval>`
  :::

  For agent Feedback: any string to match.
  - Use `%` as a wildcard (not `*`)
  - Use `_` for single-character wildcard (not `?`)
  - Single quotes (') are invalid
  - Maximum 4000 characters

  For Job Completion Complex Expression: must comply with Property Expression API rules. Refer to [Property Expressions API Syntax](../../reference/property-expressions-syntax.md).

#### <ppefrqname\></ppefrqname\>

Defines the frequency name for which the OpCon Event applies.

- **Requirements**: Optional for <ppevt\>
- **Valid Values**: An existing frequency name for the job in OpCon

#### <ppedets\></ppedets\>

Defines the details of the OpCon Event to submit.

- **Requirements**: Required for <ppevt\>
- **EM field label**: Event Template
- **Valid Values**: An existing OpCon event. Maximum 738 characters. Tilde (~) is invalid

## <vpre\> Threshold/Resource Dependencies Element Structure

<vpre\>

������<pvname\></pvname\>

������<pvvalue\></pvvalue\>

������<pvuseall\></pvuseall\>

������<pvfrqname\></pvfrqname\>

������<voptr\></voptr\>

</vpre\>

### Element Definitions

#### <vpre\></vpre\>

Contains child elements to define a single Threshold/Resource Dependency.

- **Requirements**: Required with add_dependency if <jpre\> is not specified
- **Valid Values**: Any valid <vpre\> child element

#### <pvname\></pvname\>

Defines the Threshold/Resource name for the parent <vpre\>.

- **Requirements**: Required for <vpre\>
- **EM field label**: Threshold/Resource
- **Valid Values**: An existing Threshold/Resource name in OpCon

#### <pvvalue\></pvvalue\>

Defines the value compared to the parent <vpre\>'s current value.

- **Requirements**: Required for <vpre\>
- **EM field label**: Value
- **Valid Values**: Integer 0–2147483647

#### <pvuseall\></pvuseall\>

Indicates if the resource dependency should use "All" resources. Mutually exclusive with <ppvalue\>. Can only be True if <pvname\> contains a Resource.

- **Requirements**: Optional for <vpre\>
- **EM field label**: All (option)
- **Valid Values**: True or False; defaults to False

#### <pvfrqname\></pvfrqname\>

Defines the frequency name for which the Threshold/Resource Dependency applies. If specified for a daily job, the input will fail.

- **Requirements**: Optional
- **EM field label**: Frequency
- **Valid Values**: An existing frequency name for the job in OpCon. If not specified, the dependency applies at the job level for a master job

#### <voptr\></voptr\>

Defines the Operator to resolve the dependency.

- **Requirements**: Required for <vpre\>
- **EM field label**: Operator
- **Valid Values**: For Threshold Dependency: `=`, `<`, `>`, `<=`, `>=`, `<>`, EQ, LT, GT, LE, GE, NE. For Resource Dependency: `=`

## <ppvar\> Threshold/Resource Updates Element Structure

<ppvar\>

������<jobst\></jobst\>

������<ppvfrqname\></ppvfrqname\>

������<ppvname\></ppvname\>

������<ppvvalue\></ppvvalue\>

</ppvar\>

### Element Definitions

#### <ppvar\></ppvar\>

Contains child elements to define a single post-process variable setting (Threshold Update).

- **Requirements**: Optional for <job\>
- **Valid Values**: Any valid <ppvar\> child element

#### <jobst\></jobst\>

Defines the final Job Status evaluated before setting the threshold value.

- **Requirements**: Required for <ppvar\>
- **EM field label**: Job Status
- **Valid Values**: Failed, Finished OK, Skipped, Missed Latest Start Time, Exceeded Max Run Time, Late to Start, Late to Finish, or Still Attempting Start

#### <ppvfrqname\></ppvfrqname\>

Defines the frequency name for which the Threshold/Resource Update applies. If specified for a daily job, the input will fail.

- **Requirements**: Optional
- **EM field label**: Frequency list > selected frequency
- **Valid Values**: An existing frequency name for the job in OpCon. If not specified, the dependency applies at the job level for a master job

#### <ppvname\></ppvname\>

Defines the Threshold name for the post-process variable setting.

- **Requirements**: Required for <ppvar\>
- **EM field label**: Name
- **Valid Values**: An existing Threshold name in OpCon

#### <ppvvalue\></ppvvalue\>

Defines the threshold value for the update.

- **Requirements**: Required for <ppvar\>
- **EM field label**: Value
- **Valid Values**: Integer 0–2147483647

## add_frequency Element Structure

Use `add_frequency` to add a new frequency to a schedule or job.

To add a frequency to a schedule:

<msg\>

��<msgtype\>add_frequency</msgtype\>

��<schedule\>

�����<skdname\> </skdname\>

�����<job\>

��������<frq\>

��������\....refer to [Data Input Message Elements](#%3Cfrq%3E)

��������</frq\>

�����</job\>

��</schedule\>

</msg\>

To add a frequency to a job:

<msg\>

��<msgtype\>add_frequency</msgtype\>

��<schedule\>

�����<skdname\> </skdname\>

�����<job\>

��������<jname\></jname\>

��������<frq\>

�����������\....refer to [Data Input Message Elements](#%3Cfrq%3E)

��������</frq\>

�����</job\>

��</schedule\>

</msg\>

## <frq\> Frequency Element Structures

The <frq\> frequency elements are used under several message types in addition to add_frequency. Frequency elements vary by message type:

- [new_daily Frequency Element Structure](#new_dail)
- [new_master Frequency Element Structure](#new_mast2)
- [new_schedule Frequency Element Structure](#new_sche)

Element descriptions begin at [General Frequency Element Definitions](#General_Frequency_Element_Definitions).

### new_daily Frequency Element Structure

<job\>

���<jname\></jname\>

���<frqname\></frqname\>

���<stoff\></stoff\>

���<star\></star\>

���<ltst\></ltst\>

���<ltar\></ltar\>

���<jlts\></jlts\>

���<jltf\></jltf\>

���<bldst\></bldst\>

���<mxtm\></mxtm\>

���<frqert\></frqert\>

���<prty\></prty\>

���<autorestartintvl\></autorestartintvl\>

���<autorestartmax\></autorestartmax\>

���<recur_actn_onverlap\></recur_actn_onverlap\>

���<recur_start_time\></recur_start_time\>

���<recur_ss_intvl\></recur_ss_intvl\>

���<recur_es_intvl\></recur_es_intvl\>

���<recur_lrt\></recur_lrt\>

���<recur_nbrruns\></recur_nbrruns\>

���<frqudt\>

�����<frq_userdef_tag\></frq_userdef_tag\>

���</frqudt\>

</job\>

### new_master Frequency Element Structure

<job\>

���<estrt\></estrt\>

���<frq\>

������<frqname\></frqname\>

������<fpri\></fpri\>

������<stoff\></stoff\>

������<star\></star\>

������<ltst\></ltst\>

������<ltar\></ltar\>

������<jlts\></jlts\>

������<jltf\></jltf\>

������<bldst\></bldst\>

������<mxtm\></mxtm\>

������<frqert\></frqert\>

������<frq_stc_estmethod\></frq_stc_estmethod\>

������<frq_predicted_start\></frq_predicted_start\>

������<frq_expr_dep\></frq_expr_dep\>

������<prty\></prty\>

������<autorestartintvl\></autorestartintvl\>

������<autorestartmax\></autorestartmax\>

������<recur_actn_onverlap\></recur_actn_onverlap\>

������<recur_start_time\></recur_start_time\>

������<recur_ss_intvl\></recur_ss_intvl\>

������<recur_es_intvl\></recur_es_intvl\>

������<recur_lrt\></recur_lrt\>

������<recur_nbrruns\></recur_nbrruns\>

������<fgrp\></fgrp\>

������<dow\></dow\>

������<intvl\></intvl\>

������<rqdt\></rqdt\>

������<ofdays\></ofdays\>

������<intvl_offset\></intvl_offset\>

������<dtype\></dtype\>

������<occn\></occn\>

������<period\></period\>

������<cname\></cname\>

������<aobn\></aobn\>

������<begin\></begin\>

������<end\></end\>

������<include\></include\>

������<exclude\></exclude\>

������<excmo\></excmo\>

������<frqudt\>

��������<frq_userdef_tag\></frq_userdef_tag\>

������</frqudt\>

���</frq\>

</job\>

### new_schedule Frequency Element Structure

<frq\>

���<frqname\></frqname\>

���<fpri\></fpri\>

���<fgrp\></fgrp\>

���<dow\></dow\>

���<intvl\></intvl\>

���<rqdt\></rqdt\>

���<ofdays\></ofdays\>

���<intvl_offset\></intvl_offset\>

���<dtype\></dtype\>

���<occn\></occn\>

���<period\></period\>

���<cname\></cname\>

���<aobn\></aobn\>

</frq\>

#### General Frequency Element Definitions

##### <frq\></frq\>

Contains child elements to define a single Frequency for the schedule or job. If omitted, defaults apply to the parent schedule or job. For new_schedule and new_master, any number of <frq\> elements can reside within <job\> or <skdinfo\>.

- **Requirements**: Optional for <job\> and <skdinfo\>
- **Valid Values**: Any valid <frq\> child element

##### <frqname\></frqname\>

Defines the Frequency Name for the parent <frq\>.

- **Requirements**: Optional for <frq\>
- **EM field label**: Frequency Name
- **Valid Values**: Maximum 20 characters. Invalid characters: `' | \ " ; % & < > ( ) [ ] { } , = !` and space

:::note
When frqname matches an existing frequency in the database:
- If no other <frq\> elements are defined, SMADDI uses the existing frequency definition, Calendar, and AOBN
- If one or more <frq\> elements are defined, SMADDI appends a unique character to the supplied frqname when adding the specified details

If frqname is unique, SMADDI creates a new frequency with the specified details and defaults for undefined elements.
:::

##### <fpri\></fpri\>

Defines the Frequency Priority relative to other frequencies on the schedule or job.

- **Requirements**: Optional for new_schedule, new_master, and new_frequency
- **Valid Values**: A number. Highest priority is 0, then 1, and so on
  - Must not exceed the number of frequencies defined for the schedule or job
  - If it conflicts with an existing value, automatically set to the next lower priority
  - Defaults to 0 if no other frequencies exist; otherwise defaults to the next lower priority

##### <stoff\></stoff\>

Defines the Start Offset Time for the parent frequency/job.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Start Offset
- **Valid Values**: hh:mm format; hh from 00–99, mm from 00–59

##### <star\></star\>

Indicates if the Start Offset is Absolute or Relative.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field labels**: Absolute and Relative
- **Valid Values**: A (Absolute) or R (Relative)

##### <ltst\></ltst\>

Defines the Latest Start Time for the parent frequency/job.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Latest Start Offset
- **Valid Values**: hh:mm format; hh from 00–99, mm from 00–59

##### <ltar\></ltar\>

Indicates if the Latest Start Time is Absolute or Relative.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field labels**: Absolute and Relative
- **Valid Values**: A (Absolute) or R (Relative)

##### <jlts\></jlts\>

Defines when the job becomes late to start.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Late to Start Offset
- **Valid Values**: hh:mm format; hh from 00–99, mm from 00–59

##### <jltf\></jltf\>

Defines when the job becomes late to finish.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Late to Finish Offset
- **Valid Values**: hh:mm format; hh from 00–99, mm from 00–59

##### <bldst\></bldst\>

Defines the Build Status for the parent <frq\>.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Job Build Status
- **Valid Values**: On Hold, Release, Do Not Schedule, To Be Skipped, or Disable Frequency

##### <mxtm\></mxtm\>

Defines the Maximum Run Time in minutes.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Max Run time
- **Valid Values**: Integer 0–32767

##### <frqert\></frqert\>

Defines the estimated run time in minutes.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Estimated Run time
- **Valid Values**: Integer 0–32767. Defaults to 1 if omitted and no data from the obsolete <estrt\> element

##### <frq_stc_estmethod\></frq_stc_estmethod\>

Defines the method for the SMA Start Time Calculator to predict Estimated Start Time.

- **Requirements**: Optional for new_master and add_frequency
- **EM field label**: Estimation Source
- **Valid Values**: Calculated, History, or User Defined. Defaults to Calculated

##### <frq_predicted_start\></frq_predicted_start\>

Defines a specific Predicted Start Time as an offset from the schedule's start time.

- **Requirements**: Optional for new_master and add_frequency
- **EM field label**: Predicted Start Time
- **Valid Values**: hh:mm format; hh from 00–99, mm from 00–59

##### <frq_expr_dep\></frq_expr_dep\>

Defines a complex expression for the frequency that must evaluate to "True" before the job can run. One per frequency.

- **Requirements**: Optional for new_master and add_frequency
- **EM field label**: Expression Dependency
- **Valid Values**: Any valid property expression

##### <prty\></prty\>

Defines the job Priority calculated by the SAM at submission.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: SAM Priority
- **Valid Values**: Integer 0–32767

##### <estrt\></estrt\>

Obsolete. For backward compatibility, its value populates any missing <frqert\> tag in the input file.

##### <frqudt\></frqudt\>

Contains child elements to define frequency-related Tags for a job.

- **Requirements**: Optional for <frq\>
- **Valid Values**: Any valid <frqudt\> child element

##### <frq_userdef_tag\></frq_userdef_tag\>

Defines a single tag for the job as related to the frequency. Can be new or existing. Unlimited per <frq\>.

- **Requirements**: Required for <frqudt\>
- **EM field labels**: Tag
- **Valid Values**: Alphanumeric characters, dash (-), underscore (_), and spaces. Multiple elements allowed

#### Retry on Failure Element Definitions

##### <autorestartintvl\></autorestartintvl\>

Defines the number of minutes between retry attempts.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Minutes Between Attempts
- **Valid Values**: Integer 0–1440. Defaults to 0 if <autorestartmax\> exists

##### <autorestartmax\></autorestartmax\>

Defines the maximum retry attempts on failure.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Maximum Attempts
- **Valid Values**: Integer 1–999. Defaults to 1 if <autorestartintvl\> exists

#### Job Recurrence Element Definitions

##### <recur_actn_onoverlap\></recur_actn_onoverlap\>

Defines what happens when a previous job run overlaps the next scheduled start time. One instance allowed.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Action on Overlap of Job Recurrence
- **Valid Values**: Start on Completion or Skip. Defaults to Start on Completion

##### <recur_start_time\></recur_start_time\>

Defines restart times in days, hours, and minutes. Multiple instances allowed.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Recurring Instance Time(s)
- **Valid Values**: hh:mm format; hh from 00–99, mm from 00–59

##### <recur_ss_intvl\></recur_ss_intvl\>

Defines the interval in minutes from start to start between occurrences. Either this element or <recur_es_intvl\> is required if <recur_lrt\> or <recur_nbrruns\> exist.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Minutes from Start to Start
- **Valid Values**: Integer 0–1440

##### <recur_es_intvl\></recur_es_intvl\>

Defines the interval in minutes from end to start between occurrences. Either this element or <recur_ss_intvl\> is required if <recur_lrt\> or <recur_nbrruns\> exist.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Minutes from End to Start
- **Valid Values**: Integer 0–1440

##### <recur_lrt\></recur_lrt\>

Defines the latest offset start time for restarting in the job recurrence pattern. Either this element or <recur_nbrruns\> is required if <recur_ss_intvl\> or <recur_es_intvl\> exists.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Latest Run Time
- **Valid Values**: Time from 00:00 to 99:59

##### <recur_nbrruns\></recur_nbrruns\>

Defines the total number of runs in a job recurrence pattern. Either this element or <recur_lrt\> is required if <recur_ss_intvl\> or <recur_es_intvl\> exists.

- **Requirements**: Optional for new_master and new_frequency. Optional for <job\> on new_daily
- **EM field label**: Number of Runs
- **Valid Values**: Integer 2–999

#### Frequency Details Element Definitions

##### <fgrp\></fgrp\>

Assigns a frequency group to the parent <frq\>.

- **Requirements**: Optional for <frq\>
- **EM field label**: When to Schedule
- **Valid Values**: On Occurrence, Odd Weeks, Even Weeks, All Weeks, On Request, On Day, Annual Plan, Beg of Period, Mid of Period, End of Period, or On Intervals. Defaults to On Request

##### <dow\></dow\>

Defines the Days of the Week for <fgrp\> values of On Occurrence, Odd Weeks, Even Weeks, All Weeks, or Mid of Period.

- **Requirements**: Optional for <frq\>
- **EM field label**: Day of the Week
- **Valid Values**: Seven-character string of Ys and Ns. First character = Sunday, last = Saturday

:::tip Example
Monday only: `<dow>NYNNNNN</dow>`
:::

##### <intvl\></intvl\>

Defines 5-day intervals for the On Intervals <fgrp\>. Not used if <rqdt\> and <intvl_offset\> are specified for On Intervals.

- **Requirements**: Optional for <frq\>
- **EM field label**: On Intervals
- **Valid Values**: Six-character string of Ys and Ns. Characters represent the 5th, 10th, 15th, 20th, 25th, and 30th. Defaults to NNNNNN

:::tip Example
5th, 15th, and 30th: `<intvl>YNYNNY</intvl>`
:::

##### <rqdt\></rqdt\>

Defines the date for On Request <fgrp\> or the Start Date for offset intervals with On Intervals <fgrp\>.

- **Requirements**: Optional for <frq\>
- **EM field labels**: Request Date (On Request) / On Intervals > Start (On Intervals)
- **Valid Values**: Date in the OpCon server's Regional Settings format. Use 1900 in the year position to enable Every Year

##### <ofdays\></ofdays\>

Defines the number of days to offset from an Annual Plan, Beg of Period, End of Period, or On Day.

- **Requirements**: Optional for <frq\>
- **EM field label**: Offset Days
- **Valid Values**: Depends on <fgrp\>; defaults to 0
  - On Day: 1–31
  - Annual Plan: -15 to +15
  - Beg/End of Period (Month, Quarter, or Year): -15 to +15
  - Beg/End of Period (Week, 5-day schedule): -4 to +4
  - Beg/End of Period (Week, 6-day schedule): -5 to +5
  - Beg/End of Period (Week, 7-day schedule): -6 to +6

##### <intvl_offset\></intvl_offset\>

Defines the number of days for the interval when <fgrp\> is On Intervals and <rqdt\> is also specified.

- **Requirements**: Required for On Intervals <fgrp\> with <rqdt\> specified
- **EM field labels**: Every (#Days) and Start (start date field)
- **Valid Values**: 1–32767

##### <dtype\></dtype\>

Indicates the Day Type for all <fgrp\> options except On Request and Annual Plan.

- **Requirements**: Optional for <frq\>
- **EM field label**: Day Type
- **Valid Values**: Working or Any

##### <occn\></occn\>

Defines the occurrence for the On Occurrence <fgrp\>.

- **Requirements**: Optional for <frq\>
- **EM field label**: On Occurrence
- **Valid Values**: 1st, 2nd, 3rd, 4th, 5th, or Last

##### <period\></period\>

Defines the period for End of Period, Mid of Period, Beg of Period, or On Occurrence <fgrp\>s.

- **Requirements**: Optional for <frq\>
- **EM field label**: Periods
- **Valid Values**: Week, Month, Quarter, or Year. Defaults to Month. "Week" is only valid with Beg of Period and End of Period

##### <cname\></cname\>

Defines the name of the Calendar applied to the parent <frq\>.

- **Requirements**: Optional for <frq\>
- **EM field label**: Calendar
- **Valid Values**: An existing user-defined calendar in OpCon

##### <aobn\></aobn\>

Defines when the job should be scheduled if the schedule date falls on a Non-Working Day.

- **Requirements**: Optional for <frq\>
- **EM field label**: A/O/B/N
- **Valid Values**: After Date, On Date, Before Date, or Not Schedule

#### Advanced Frequency Elements

##### <begin\></begin\>

Defines the date on which to begin scheduling the job.

- **Requirements**: Optional for new_master and new_frequency
- **EM field label**: Start Scheduling on
- **Valid Values**: Complete date (day, month, year) in any valid regional format for the OpCon SQL Server

##### <end\></end\>

Defines the date on which to end scheduling the job.

- **Requirements**: Optional for new_master and new_frequency
- **EM field label**: End Scheduling on
- **Valid Values**: Complete date (day, month, year) in any valid regional format for the OpCon SQL Server

##### <include\></include\>

Forces inclusion of a job on a specific date despite other frequency settings.

- **Requirements**: Optional for new_master and new_frequency
- **EM field label**: Include in Schedule on
- **Valid Values**: Complete date (day, month, year) in any valid regional format for the OpCon SQL Server

##### <exclude\></exclude\>

Forces exclusion of a job on a specific date despite other frequency settings.

- **Requirements**: Optional for new_master and new_frequency
- **EM field label**: Exclude from Schedule on
- **Valid Values**: Complete date (day, month, year) in any valid regional format for the OpCon SQL Server

##### <excmo\></excmo\>

Forces exclusion of a job during a specific month despite other frequency settings.

- **Requirements**: Optional for new_master and new_frequency
- **EM field label**: Exclude Month from Schedule
- **Valid Values**: Full English month name (e.g., January, February, etc.)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Requirements | Required for all messages | — | — |
| Valid Values | Any valid DDI text | — | — |
| EM field label | Name | 00:00 | Maximum 40 characters. One per <skdinfo\>.  #### <skdstart\> |
| EM field labels | Define Property Values > The defined Property Value | — | — |
## FAQs

**Q: What is the required structure for every SMADDI input file?**

Every SMADDI input file must contain at least one `<msg>` element with a `<msgtype>` child element identifying the transaction type. All other elements required for that message type must be nested within `<msg>`. SMADDI does not limit the number of `<msg>` elements per input file.

**Q: What is the purpose of the `<msgtype>` element?**

The `<msgtype>` element tells the SMADDI service which type of data is expected for the `<msg>` transaction, ensuring the correct child elements are included and the appropriate stored procedures are called. Only one `<msgtype>` is allowed per `<msg>`.

**Q: Can SMADDI create schedule holiday calendars using add_caldate?**

No. If the calendar name indicates a schedule holiday calendar (formatted as `HC:ScheduleName`), SMADDI cannot create it — it will not create that calendar type even if it does not exist. The `add_caldate` message can create other calendar types if they do not yet exist.

## Glossary

**SMADDI (SMA Dynamic Data Input)**: An optional OpCon component that dynamically updates the OpCon database using XML text files placed in monitored input directories. SMADDI uses a Windows service and stored procedures to validate and commit the data.

**SMA Start Time Calculator**: Periodically recalculates estimated start times for all jobs in the OpCon daily tables and updates the database to keep start time estimates current.

**SAM (Schedule Activity Monitor)**: The logical processor for OpCon workflow automation. SAM monitors schedule and job start times, dependencies, and user commands to determine job execution timing, and processes OpCon events.

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Container Job**: A job type that runs a subschedule. Container jobs enable hierarchical schedule structures and support properties and events just like standard jobs.

**Null Job**: A job type that performs no execution on any platform. Null jobs are used to hold dependencies, trigger OpCon events, and keep schedules open after all other jobs complete.

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Master Tables**: The OpCon database tables that hold the permanent definitions of schedules and jobs. Changes to master tables affect all future schedule builds.
