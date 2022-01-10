# Setting Preferences for Date Formats

Configure the Date and Time formats to control the way the EM displays
dates and times throughout the program.

To set the preferences:

1. Launch the Enterprise Manager application.
2. Use menu path: **EnterpriseManager \> Preferences**. The
    **Preferences** dialog displays.
3. Click on the arrow (![Expand Arrow     ](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow "))
    next to **Enterprise Manager** in the Preferences tree to expand the
    drop-down list.
4. Click on **Date Formats**. The **Date Formats** settings display to
    the right.
5. *(Optional)* Click inside the **Full date format**
    text box to modify the layout to include the date and time. The
    default is **M/d/yy h:mm a**.
6. *(Optional)* Click inside the **Long date format**
    text box to modify the layout to include the date only. The default
    is **MMMM d, yyyy**.
7. *(Optional)* Click inside the **Short date format**
    text box to modify the layout to include a numeric short date only.
    The default is **M/d/yy**.
8. *(Optional)* Click inside the **Long time format**
    text box to modify the layout to include hours, minutes, and
    seconds. The default is **h:mm:ss a**.
9. *(Optional)* Click inside the **Short time format**
    text box to modify the layout to include hours and minutes. The
    default is **h:mm a**.
10. *(Optional)* Click on the **Restore Defaults**
    button to restore the original date formats.
11. Click **Apply** button to apply the changed date formats.
12. Click **OK** to save the changes and close the **Preferences**
    dialog.
13. **Close ☒** the **Enterprise Manager**.
14. Restart to load the new formats.

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
