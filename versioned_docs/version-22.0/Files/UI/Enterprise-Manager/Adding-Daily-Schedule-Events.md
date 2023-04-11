# Adding Daily Schedule Events

To perform this procedure:

Double-click on **Daily Maintenance** under the **Operation** topic. The
**Daily Maintenance** screen displays.

Click on the ![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png)
**arrow** to expand the specific **date** for the schedule.

Click on the **schedule**.

Click on the **Edit Daily** button in the **Maintenance** frame at the
bottom-right side of the screen. The **Schedule Daily** screen displays.

Click on the **Events** tab.

Click the **Add** button in the **Events** frame. The **Event Definition
Wizard** displays.

Select an **OpCon event template** from the **Event Template** drop-down list. For more
information, refer to the [OpCon Events](../../../events/introduction.md) online help.

:::tip Example
$JOB:ADD,<schedule date\>,<schedule name\>,<job name\>,<frequency name\>.
:::

Place your mouse cursor at the beginning of a **<syntax placeholder\>** displayed in the **Event Parameters** text
box then drag the cursor to the right to select the entire syntax
placeholder, excluding any surrounding commas. For example: ,[<schedule name\>], .

Replace the selected syntax placeholder with valid
OpCon event information.

If you wish to replace the syntax placeholder with a token, then do the
following:

Follow Step 8 to select the syntax placeholder.

Click the ![Insert Token buton](../../../Resources/Images/EM/EMinserttoken.png "Insert Token button")
**Insert token** button or press **Ctrl/t** on the keyboard to list
available global properties.

Locate the global property in the selector by:

i.  Scrolling to it.
ii. Using the search field and filter criteria to find it. You can use
    Windows wildcard characters in the search field to expand the search
    and filter the search by property name, property value, or both
    (default).

Double-click on the **global property** (e.g., $SCHEDULE DATE).

:::note
Double brackets will automatically be placed around the placeholder for the token that is defined.
:::

:::tip Example
$JOB:ADD,\[\[$SCHEDULE DATE\]\],Payroll,Emp1,15thofMonth.
:::

Click the **Reset** button to reset the parameters to their original states.

Click **Finish** to save the Schedule Completion event or click **Cancel** to discard the changes made in the wizard.

Click **Close ☒** (to the right of the **Schedule Daily** tab) to close the **Schedule Daily** screen.

Click **Close ☒** (to the right of the **Daily Maintenance** tab) to close the **Daily Maintenance** screen.
