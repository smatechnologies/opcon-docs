# Using Schedule Extract

The **Schedule Extract** is an Enterprise Manager plug-in that will extract information for a selected schedule and create
SMADDI XML format files. For more information, refer to [SMA Dynamic Data Input Introduction](../../../utilities/SMA-Dynamic-Data-Input/Introduction.md)
 in the **Utilities** online help. For information on automating
Schedule Extract, refer to [Schedule Extract Command-line Interface](../../../utilities/Command-line-Utilities/Schedule-Extract-Command-line-Interface.md)
 in the **Utilities** online help.

## Extracting Schedules

To extract a schedule:

1. Double-click on **Schedule Extract** under the **Management** topic.
    The **Schedule Extract** screen displays.
2. Select the **schedule** to extract from the **Schedule to Extract**
    drop-down list. Alternatively, you can use the **Browse** button to
    indicate the schedule to extract.
3. Enter, in the **Extract To** field, the target directory for the
    created SMADDI files. Alternatively, you can use the **Browse**
    button to indicate the target directory.
4. *(Optional)* Select the **Apply Global Change File**
    checkbox to apply global change files to extracted schedules.
5. (Optional) Select the **Extract Associated HC and Annual Plan
    Calendar Dates** checkbox to extract calendars and dates associated
    with the schedule.
6. *(Optional)* Select the **Extract Associated Global
    Properties** checkbox to extract the global properties referenced by
    events or command lines within the schedule.
7. *(Optional)* Select the **Extract Associated
    Threshold/Resource Variables** checkbox to extract threshold or
    resource definitions in use by jobs or events within the schedule.
8. Select the **Extract Schedule** button.
9. Select, in the **Extracted Schedules** list, a **schedule** to view
    the generated XML information.
10. Double-click the appropriate **schedule to extract** within the
    **Dependent Schedules Discovered** list.
