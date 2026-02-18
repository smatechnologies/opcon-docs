# Sending OpCon Events

The **Event** tab provides the following fields for defining an
OpCon event launched for the selected trigger:

- **Event Command**: Defines the Event Command definition. For
    additional information, refer to the [OpCon Events](../../../events/introduction.md) online help.
- **Parameters**: Defines the event parameters associated with the
    Event Command.
- **Test**: Sends a test for the activated notification of the
    trigger.

:::tip Example Notification Message
03/11/08 09:41:23 Logged [NTLOG] EventID= 77777 | Schedule Date= Mar 11 2008 | Sched/Job Info= TestSched:Conversion:12345 | Machine Name= machine01 | Message= The conversion failed.
:::

## Adding Events

**To add an event:**

Double-click on **Notification Manager** under the **Management** topic.
The **Notification Manager** screen displays.

Click the **Machines**, **Schedules**, or **Jobs** tab in the
**Notification Triggers** frame.

Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
**arrow** to expand the **Machines**, **Schedules**, or **Jobs**
information.

Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
**arrow** to expand the **Notification Group** information.

Click on the appropriate **machine/schedule/job trigger**.

**In the General tab under Notification Definitions:**

Select the checkbox for **Send OpCon Events**.

Click on the **Event** tab and click the **Add** button. The **Event
Definition Wizard** displays.

Select the **event** in the **Event Template** drop-down list.

**In the Event Parameters frame:**

Place your mouse cursor at the beginning of a **<syntax placeholder\>**
displayed in the **Event Parameters** text box then drag the cursor to
the right to select the entire syntax placeholder, excluding any
surrounding commas. For example: ,<schedule name\>, .

Replace the selected syntax placeholder with valid
OpCon event information.

If you wish to replace the syntax placeholder with a token, then do the
following:

Follow Step 10 to select the syntax placeholder.

Click the ![Insert Token buton](../../../Resources/Images/EM/EMinserttoken.png "Insert Token button")**Insert
token** button or press **Ctrl/t** on the keyboard to list available
global properties.

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

```shell
$JOB:ADD,\[\[$SCHEDULE DATE\]\],Payroll,Emp1,15thofMonth
```

:::

Click the **Finish** button once the definition of all event parameters
for the template are complete.

Click the **Save** button or click the **Cancel** button to cancel the
event choice.

## Editing Events

**To edit an event:**

1. Double-click on **Notification Manager** under the **Management**
    topic. The **Notification Manager** screen displays.
2. Click the **Machines**, **Schedules**, or **Jobs** tab in the
    **Notification Triggers** frame.
3. Click on the
    ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)**arrow** to
    expand the **Machines**, **Schedules**, or **Jobs** information.
4. Click on the
    ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)**arrow** to
    expand the **Notification Group** information.
5. Click on the appropriate **machine/schedule/job trigger**.
6. Click on the **Event** tab.
7. Click on the **event** to edit.
8. CIick the **Edit** button. The **Event Definition Wizard** displays.
9. Apply the *changes*.
10. Click the **Finish** button.
11. Click the **Save** button to save the change or click the **Cancel**
    button to disregard the change.

## Copying Events

**To copy an event:**

1. Right-click on the **event** to copy in the **Events** table.
2. Select **Copy** from the menu.
3. Click the **Machines**, **Schedules**, or **Jobs** tab in the
    **Notification Triggers** frame.
4. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the **Machines**,**Schedules**,or **Jobs**
    information.
5. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the **Notification Group** information.
6. Click on the appropriate **machine/schedule/job trigger**.
7. **In the Notification Definitions frame:**
8. Click on the **Event** tab.
9. **In the Events frame:**
10. Right-click on the **Events** table.
11. Click **Paste** from the menu.

## Deleting Events

**To delete an event:**

1. Double-click on **Notification Manager** under the **Management**
    topic. The **Notification Manager** screen displays.
2. Click the **Machines**, **Schedules**, or **Jobs** tab in the
    **Notification Triggers** frame.
3. Click on the
    ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)**arrow** to
    expand the **Machines**, **Schedules**, or **Jobs** information.
4. Click on the
    ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)**arrow** to
    expand the **Notification Group** information.
5. Click on the appropriate **machine/schedule/job trigger**.
6. Click on the **Event** tab.
7. Click on the **event** to delete then click the **Remove** button.
    The **Remove** dialog displays.
8. Click the **Yes** button to confirm the deletion or click the **No**
    button to cancel the deletion.
