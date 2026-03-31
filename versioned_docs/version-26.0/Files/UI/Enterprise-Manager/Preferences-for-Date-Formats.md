---
title: Setting Preferences for Date Formats
description: "Configure the Date and Time formats to control how the EM displays dates and times."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Setting Preferences for Date Formats

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Configure the Date and Time formats to control how the EM displays dates and times.

To set the preferences, complete the following steps:

1. Open the Enterprise Manager application
2. Use menu path: **EnterpriseManager \> Preferences**. The **Preferences** dialog displays
3. Select on the arrow (![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow ")) next to **Enterprise Manager** in the Preferences tree to expand the list
4. Select on **Date Formats**. The **Date Formats** settings display to the right
5. *(Optional)* Modify any of the following format fields:
   - **Full date format** – date and time (default: **M/d/yy h:mm a**)
   - **Long date format** – date only (default: **MMMM d, yyyy**)
   - **Short date format** – numeric short date (default: **M/d/yy**)
   - **Long time format** – hours, minutes, and seconds (default: **h:mm:ss a**)
   - **Short time format** – hours and minutes (default: **h:mm a**)
6. *(Optional)* Select **Restore Defaults** to restore the original formats
7. Select **Apply** to apply the changes
8. Select **OK** to save and close the **Preferences** dialog
9. Close and restart the Enterprise Manager to load the new formats

The format letters and examples below refer to this Long Date example: `Monday, August 8, 2011`

The example date would be created in the EM with the following string for the Long Date Format: `EEEE, MMMM d, yyyy`

|Letter|Date or Time Component|Presentation|Results/Examples|
|--- |--- |--- |--- |
|yyyy|Year|Year|2011|
|M|Month|Month number|8 (does not include the leading zero)|
|MM|Month|Month number|08  (does include the leading zero)|
|MMM|Month|Month text|Aug (abbreviates the month name)|
|MMMM|Month|Month text|August (includes the full the month name)|
|d|Day in Month|Day Number|8 (does not include the leading zero)|
|dd|Day in Month|Day Number|08 (does include the leading zero)|
|E|Day in week|Day Text|Wed (abbreviates the day name)|
|EEEE|Day in week|Day Text|Wednesday (includes the full day name)|
|a|AM/PM marker|AM or PM text|AM/PM|
|H|Hour in Day (0-23)|24-hour clock number|16:00|
|h|Hour in Day (1-12)|Hour in AM/PM|4:00|
|mm|Minute in hour|Number|30|
|s|Second in minute|Number|55|

## FAQs

**Q: How many steps does the Setting Preferences for Date Formats procedure involve?**

The Setting Preferences for Date Formats procedure involves 9 steps. Complete all steps in order and save your changes.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
