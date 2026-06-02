---
title: Setting Preferences from Enterprise Manager
description: "Configure general display and behavior preferences in Enterprise Manager, including polling interval, idle timeout, and navigation style."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Setting Preferences from Enterprise Manager

Use the **Preferences** dialog in Enterprise Manager to configure general display and behavior settings, including how the application restores its state, how frequently it polls the database, and how the navigation panel appears.

To set Enterprise Manager preferences, complete the following steps:

1. Open Enterprise Manager.
2. Go to **EnterpriseManager** > **Preferences**. The **Preferences** dialog opens.
3. Select **Enterprise Manager** in the left panel if it is not already selected.
4. *(Optional)* Select or clear the **Restore state at startup** option to control whether Enterprise Manager restores its previous window state on startup. This option is selected by default.
5. *(Optional)* Select or clear the **Check for updates at startup** option to control whether Enterprise Manager checks for product updates each time it starts. This option is selected by default.
6. *(Optional)* Select the **Use a tree for navigation** option to display navigation topics in a tree. Clear this option to display navigation topics in sections. This option is selected by default.
7. *(Optional)* Select the **Open editors maximized** option to open editors at full Enterprise Manager size. This option is selected by default.
8. *(Optional)* In the **Database polling interval (seconds)** field, enter the number of seconds between database refresh cycles. The default is `10`. Valid values are `1`–`99`.
9. *(Optional)* In the **Idle time before logout (min)** field, enter the number of inactivity minutes before Enterprise Manager logs you out automatically. The default is `60`. Enter `0` to disable automatic logout. Valid values are `0`–`25200`.
10. *(Optional)* In the **Days to maintain in daily** field, enter the number of days to retain schedules and jobs in the daily tables. The default is `14`. Enter `0` to disable automatic purging. Valid values are `0`–`9999`.
11. *(Optional)* Select the **Show Job Containers** option to display Container jobs in the **Matrix** view and include them in the **Pie Chart** count. This option is selected by default.
12. *(Optional)* In the **Logging Level** list, select the desired log level.
13. Select **Apply** to save the changes without closing the dialog.
14. Select the arrow (![Expand](../../../Resources/Images/EM/EMarrowtoexpand.png)) next to **Enterprise Manager** in the Preferences tree to expand and access additional preference categories.
15. Select **OK** to save all changes and close the **Preferences** dialog.

**Result:** Enterprise Manager applies the updated preferences immediately. Changes to the navigation style take effect after Enterprise Manager refreshes the navigation panel.
