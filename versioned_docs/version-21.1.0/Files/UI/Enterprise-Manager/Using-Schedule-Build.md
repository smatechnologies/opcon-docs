# Using Schedule Build

The **Schedule Build** dialog gives you the ability to generate schedule
builds manually for selected schedules for a specified day or series of
days. For conceptual information on building daily schedules, refer to
[Building Daily Schedules](../../../operations/building-schedules.md)
 in the **Concepts** online help.

:::note
For you to use the build functionality in the Schedule Build dialog, you must have all the appropriate privileges. For additional information, refer to [Departmental Function Privileges](../../../administration/privileges.md#departmental-function-privileges) in the **Concepts** online help.
:::

The **Schedule Build** dialog contains a list of schedules to build and
the build results information.

## Building Daily Schedules

To build a daily schedule:

Double-click on **Schedule Build** under the **Operation** topic. The
**Build Schedules** dialog displays.

Select the **schedule(s)** in the **Schedule Selection** list.
Alternatively, in the **Schedule Selection** text box, you can type *the
first few letters or numbers* for the schedule to find and then select
the **specific schedule**. You could also select the **Show schedules
with auto-build** option or **Show schedules without auto-build**
option.

In the Start text box in the Scheduling Dates frame:

Enter the *Start date* requested for the build of the schedule.
Alternatively, you can click the **calendar** button (to the right of
the text box) to select the **date** from the monthly calendar.

In the Stop text box:

Enter the *Stop date* requested for the build of the schedule or click
the **calendar** button (to the right of the text box) to select the
**date** from the monthly calendar.

*(Optional)* Select the **Overwrite existing schedules**
checkbox.

:::note
Existing schedules that are processing cannot be overwritten.
:::

*(Optional)* Select the **Define schedule instance**
checkbox.

Click the **Build** button. The **Build Properties** dialog displays.

Select the **Released** radio button to release the schedule to build or
select the **on Hold** radio button to control the start of the schedule
manually.

:::note
If a schedule is being built for a date prior to the current date, the user will be unable to select the **Released** schedule build status. The schedule will always be built on Hold.
:::

Click the **OK** button.

:::note
Schedules built on Hold will appear **blue**. Schedules built as **Released** will appear **green**. Hovering the mouse over a row in the **Build Results** table will display the details about the specific schedule build including the log file details.
:::

If the Define schedule instance checkbox was not selected:
Click **Close ☒** (top-right-hand side of screen) to close the **Build
Schedules** dialog.

If the Define schedule instance checkbox was selected and the schedule is not associated with any named instances:

Do the following in the **Define Schedule Instance** dialog:

a.  Enter a set of one or more *property definitions* using the
    following format: **PropertyName=PropertyValue**. Separate each
    definition with a semicolon (;).
b.  Skip to Step 13.

If the Define schedule instance checkbox was selected and the schedule is associated with any named instances:

Do the following in the **Define Schedule Instance** dialog:

a.  Select the named instance.
b.  Enter a set of one or more *property definitions* using the
    following format: **PropertyName=PropertyValue**. Separate each
    definition with a semicolon (;).
c.  Go to Step 13.

Click the **OK** button to save the property definitions or click the
**Cancel** button to cancel the definitions for that schedule instance.

:::note
If no properties are defined for the schedule, OpCon will still request the build for the schedule, but no properties will be defined.
:::
