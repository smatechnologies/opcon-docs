# Deleting Machines

If the need arises to delete a machine, there are two required
procedures.

:::note
If the SAM is starting jobs while a machine is being deleted, the Enterprise Manager (EM) may lock up and fail to delete the machine. SMA Technologies recommends deleting a machine when the SAM is processing few or no jobs.
:::

To delete a machine:

Remove the Machine from the Daily Table

1. Double-click on **Daily Maintenance** under the **Administration**
    topic. The **Daily Maintenance** screen displays.
2. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the **date** for the schedule.
3. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the **schedule**.
4. Click on the **job**.
5. Click on the **Edit Daily** button in the **Maintenance** frame at
    the bottom-right side of the screen. The **Job Daily** screen
    displays.
6. Select a **different machine** for any affected **Primary** or
    **Alternate** machine.
7. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Daily** toolbar.
8. Repeat Steps 4 - 7 for all jobs assigned to the machine to
    be deleted.
9. Click **Close ☒** (to the right of the **Job Daily** tab) to close
    the **Job Daily** screen.

Remove the Machine from the Master Table

1. Double-click on **Daily Maintenance** under the**Administration**
    topic.
2. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the **date** for the schedule.
3. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the **schedule**.
4. Click on the **job**.
5. Click on the **Edit Master** button in the **Maintenance** frame at
    the bottom-right side of the screen. The **Job Master** screen
    displays.
6. Select a **different machine** for any affected **Primary** or
    **Alternate** machine.
7. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.
8. Repeat Steps 4 - 7 for all jobs assigned to the machine to
    be deleted.
9. Click **Close ☒** (to the right of the **Job Master** tab) to close
    the **Job Master** screen.
10. Click **Close ☒** (to the right of the **Daily Maintenance** tab) to
    close the **Daily Maintenance** screen.

Delete the Machine

1. Double-click on **Machines** under the **Administration** topic. The
    **Machines** screen displays.
2. Select the **machine** in the **Select Machine** drop-down list.
3. Right-click over the graphic to enable the menu in the
    **Communication Status** frame.
4. Click on **Stop Communication** in order to stop the communication
    with the LSAM.
5. Click ![Remove     icon](../../../Resources/Images/EM/EMdelete.png "Remove icon")
    **Remove** on the **Machines** toolbar.
6. Click the **Yes** button to confirm the deletion for the machine.
7. Click **Close ☒** (to the right of the **Machines** tab) to close
    the **Machines** screen.
