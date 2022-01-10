# Adding Job Frequencies

:::note
Job frequencies cannot be added if the job uses a schedule-defined frequency.
:::

## Adding New Job Frequencies

To add a new frequency:

Double-click on **Job Master** under the **Administration** topic. The
**Job Master** screen displays.

Select the **schedule** in the **Schedule** drop-down list.

Select the **job** in the **Job** drop-down list.

Click on the **Frequency** tab in the **Job Properties**frame.

Click the **Add** button. The **Frequency Definition Wizard** displays.

Select the **Create new frequency** radio button.

Enter, in the **Frequency Name** text box, a unique name describing the
new frequency.

Click the **Next** button.

Select the preferred radio button in the **When to Schedule** frame.

:::note
Depending on the **When to Schedule** selection, some of the other frames may become grayed out (e.g., if **Annual Plan** is selected, all other frames become grayed out, except for the **Calendar** drop-down list).
:::

Make any other selections in the remaining frames, if required.

Click the **Forecast** button to verify the frequency selections.

Click **OK** to close the **Forecast** window.

Click **Finish** to save new frequency in the **Frequency list** and
close the wizard.

*(Optional)* Select the preferred **Job Build Status**
radio button.

**In the Start Time Estimation frame:**

*(Optional)* Choose an **option** from the **Estimation
Source** drop-down list.

*(Optional)* Set the **Estimated Run Time**.

**If you selected User Defined for the Estimation Source:**

Set the **day(s)** and **time** for the offset. You can set these values
below the **Predicted Start Time Offset** information.

*(Optional)* Click the **Apply to All** link if you want
the **Estimation Source** settings to apply to all frequencies.

**In the Job Execution frame:**

*(Optional)* Set the **SAM Priority**.

*(Optional)* Set the **Max Run time**.

**In the Start Offset frame:**

*(Optional)* Enter the *Start Offset time*.

Select the **Absolute** or **Relative** radio button.

**In the Estimated Job Start Time frame:**

Review the following Job Start times:

- **Local**: Displays the estimated start time of the job based on the
    time on the local machine where the user is running the EM.
- **Server**: Displays the estimated start time of the job based on
    the time of the OpCon server.
- **Agent**: Displays the estimated start time of the job based on the
    LSAM machine where the job will most     likely execute.

**In the Latest Start Offset frame:**

*(Optional)* Set the **Latest Start Offset time**.

Select the **Absolute** or **Relative** radio button.

**In the Absolute Late to Start Offset frame:**

*(Optional)* Enter the *amount of time* before flagging
the job as late.

**In the Absolute Late to Finish Offset frame:**

*(Optional)* Enter the *amount of time* before flagging
the job as late.

**In the When Job Fails frame:**

*(Optional)* Select the **Retry** checkbox to enable the
*Retry on Failure* feature.

Enter the *number for Minutes Between Attempts*.

Enter the *number for Maximum Attempts*.

**In the When Job Finished Ok frame:**

*(Optional)* Select the desired option in the **Run
Again** drop-down list to enable the *Job Recurrence* feature.

If **None** is selected, no further action is required. Proceed to Step
32.

If **Recurring Instances** is selected, do the following:

i.  Enter the *Recurring Instance* details.
ii. Choose what happens if a previous job run time overlaps the next
    start time.

If **Restart Offset** is selected, do the following:

i.  Enter the *Run Interval* details.
ii. Enter the *Run Limits* details.

*(Optional)* Click
![Save icon](../../../Resources/Images/EM/EMsave.png) **Save** on the **Job
Master** toolbar to save the job frequency details if any of the
changes, beginning with Step 14, were made .

Click **Close ☒** (to the right of the **Job Master** tab) to close the
**Job Master** screen.

## Adding Existing Job Frequencies

To add an existing frequency:

1. Double-click on **Job Master** under the **Administration** topic.
    The **Job Master** screen displays.
2. Select the **schedule** in the **Schedule** drop-down list.
3. Select the **job** in the **Job** drop-down list.
4. Click on the **Frequency** tab in the **Job Properties**frame.
5. Click the **Add** button. The **Frequency Definition Wizard**
    displays.
6. Select the **Using existing frequency** radio button.
7. Select an **existing frequency** from the **Frequency** drop-down
    list or use the **Find** button to locate the frequency.
8. Click the **Next** button.
9. Click the **Forecast** button to confirm the frequency selection.
10. Click **OK** to close the **Forecast** window.
11. Click the **Back** button and select another existing or [create a new frequency](#Adding_New_Job_Frequency).
12. Click **Finish** to save the frequency in the **Frequency list**and
    close the wizard.
13. Click **Close ☒** (to the right of the **Job Master** tab) to close
    the **Job Master** screen.
