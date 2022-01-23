---
lang: en-us
title: Deleting Batch Users
viewport: width=device-width, initial-scale=1.0
---

# Deleting Batch Users

If the need arises to delete a batch user, there are several required
procedures.

To delete a batch user:

Revoke Privileges

1. Double-click on **Batch User Privileges** under the **Security**
    topic. The **Batch User Privileges** screen displays.
2. Select a **role** in the **Select Role** drop-down list.
    Alternatively, you can use the **Find** ((Ctrl+F) magnifying glass)
    button to find the role.
3. Select an **operating system** in the **Target Operating System**
    drop-down list.
4. Click on the **batch user(s)** in the **Granted** privileges list
    box.
5. Click the **left arrow** to move the batch user(s) to the
    **Revoked** list box.
6. Repeat Steps 2 - 5 for all user accounts having privileges
    to the batch user.
7. Click **Close ☒** (to the right of the **Batch User Privileges**
    tab) to close the **Batch User Privileges** screen.

Remove the Batch User from the Daily Tables

9. Double-click on **Daily Maintenance** under the **Operation** topic.
    The **Daily Maintenance** screen displays.
10. Click on the ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)
    **arrow** to expand the specific **date**.
11. Click on the
    ![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)**arrow** to
    expand the specific **schedule**.
12. Click on the **job**.
13. Click on the **Edit Daily** button. The **Job Daily** screen
    displays.
14. Go to the **Job Details** frame.
15. Select a different **batch user** in the **User ID** (**Group
    ID/User ID** for UNIX, **User Code** for MCP) drop-down list.
16. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Daily** toolbar.
17. Follow Steps 9 - 16 for all jobs using the batch user to be
    deleted.
18. Click **Close ☒** (to the right of the **Job Daily** tab) to close
    the **Job Daily** screen.

Remove the Batch User from the Master Tables

19. Click on the **Edit Master** button. The **Job Master screen**
    displays.
20. Select a **schedule** in the **Schedule** drop-down list.
21. Select a **job** in the **Job** drop-down list.
22. Select a different **batch user** in the **User ID** (**Group
    ID/User ID** for UNIX, **User Code** for MCP) drop-down list.
23. Click ![Save     icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save**
    on the **Job Master** toolbar.
24. Follow Steps 21 - 23 for all jobs using the batch user to be
    deleted.
25. Click **Close** (to the right of the **Job Master** tab) to close
    the **Job Master** screen.
26. Click on the **X** to the right of the **Daily Maintenance** tab to
    close the **Daily Maintenance** screen.

Delete the Batch User

27. Double-click on **Batch Users** under the **Security** topic. The
    **Batch User** screen displays.
28. Select an **operating system** in the **Target Operating System**
    drop-down list.
29. Click on the **batch user** in the **Batch Users** list box.
30. Click ![Remove     icon](../../../Resources/Images/EM/EMdelete.png "Remove icon")
    **Remove** on the **Batch Users** toolbar.
31. Click the **Yes** button to confirm the deletion or click the **No**
    button to cancel the deletion.
32. Click **Close ☒** (to the right of the **Batch Users** tab) to close
    the **Batch Users** screen.
:::
