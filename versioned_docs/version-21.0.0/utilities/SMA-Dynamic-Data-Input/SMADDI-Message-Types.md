# SMADDI Message Types

Each input file must contain a <msgtype\> element describing the type
of SMADDI message. The SMADDI service and stored procedures support the
following message types:

  Message Type        Description
  ------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  add_caldate         Indicates that a new date(s) should be added to an OpCon calendar(s). For additional information, refer to [add_caldate and del_caldate Element Structures](Data-Input-Message-Elements.md#add_caldate_and_del_caldate_Element_Structures).
  del_caldate         Indicates that a new date(s) should be deleted from an OpCon calendar(s). For additional information, refer to [add_caldate and del_caldate Element Structures](Data-Input-Message-Elements.md#add_caldate_and_del_caldate_Element_Structures).
  new_schedule        Indicates that a new schedule should be added to the Master tables of the OpCon database. For additional information, refer to [new_schedule Element Structure](Data-Input-Message-Elements.md#new_sche2).
  new_token           Indicates that a new global property should be added to the Master tables of the OpCon database. For additional information, refer to [new_token and update_token Element Structures](Data-Input-Message-Elements.md#new_token_and_update_token_Element_Structures).
  new_variable        Indicates that a new threshold or resource should be added to the Master tables of the OpCon database. For additional information, refer to [new_variable and update_variable Element Structures](Data-Input-Message-Elements.md#new_variable_and_update_variable_Element_Structures).
  update_token        Indicates that a global property value should be updated in the Master tables of the OpCon database. For additional information, refer to [new_token and update_token Element Structures](Data-Input-Message-Elements.md#new_token_and_update_token_Element_Structures).
  update_variable     Indicates that a threshold/resource should be updated in the Master tables of the OpCon database. For additional information, refer to [new_variable and update_variable Element Structures](Data-Input-Message-Elements.md#new_variable_and_update_variable_Element_Structures).
  new_daily           Indicates that a new job should be added to the Daily Tables of the OpCon database. For additional information, refer to [new_daily Element Structure](Data-Input-Message-Elements.md#new_dail2).
  new_master          Indicates that a new job should be added to the Master tables of the OpCon database. For additional information, refer to [new_master Element Structure](Data-Input-Message-Elements.md#new_mast).
  add_frequency       Indicates that one or more frequencies should be added to a schedule or to a job. For additional information, refer to [add_frequency Element Structure](Data-Input-Message-Elements.md#add_freq).
  add_dependency      Indicates that a new job, threshold, or resource dependency should be added to a job. If a schedule date is specified, the dependency is for the daily tables. If a schedule date is not specified, the dependency is for the master and can be associated with a frequency. For additional information, refer to [add_dependency Element Structure](Data-Input-Message-Elements.md#add_depe).
  add_documentation   Indicates that new documentation should be added for a schedule or a job. For additional information, refer to [add_documentation Element Structure](Data-Input-Message-Elements.md#add_docu).

  : SMADDI Message Types
:::
