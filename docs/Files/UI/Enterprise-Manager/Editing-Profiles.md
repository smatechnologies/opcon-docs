---
title: Editing Profiles
description: "Use this procedure to modify an existing database connection profile in Enterprise Manager."
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

# Editing Profiles

A Connection Profile stores the database server name, credentials, and connection settings that Enterprise Manager uses to connect to the OpCon database. You can edit an existing profile to update any of these settings without creating a new profile.

## Edit a connection profile

To edit a connection profile, complete the following steps:

1. Open Enterprise Manager.
2. Go to **EnterpriseManager > Preferences**. The **Preferences** dialog opens.
3. Select the expand arrow next to **Enterprise Manager** in the Preferences tree to expand the list.
4. Select **Connection Profiles**. The **Connection Profiles** settings appear on the right.
5. Select the profile you want to modify from the list, then select **Edit**. The profile wizard opens to the **Profile Definition** page.
6. Update the fields as needed:

   | Field | Description |
   |---|---|
   | **Profile Name** | The display name for this connection profile. |
   | **Use Windows Authentication** | When selected, Enterprise Manager uses the current Windows credentials instead of a SQL Server username and password. Available on Windows only. |
   | **User Name** | The SQL Server login username. Disabled when **Use Windows Authentication** is selected. |
   | **Password** | The SQL Server login password. Disabled when **Use Windows Authentication** is selected. |
   | **SQL Server** | The hostname or IP address of the SQL Server instance. |
   | **Database** | The OpCon database name. Select the refresh button to list available databases on the specified server. |
   | **Timeout** | The connection timeout value in seconds. |
   | **Profile Color** | A color used to visually distinguish this profile in the profile list. |

7. Select **Next**. Enterprise Manager tests the connection to the database.
8. Select **Finish** after the connection test succeeds.
9. Select **Apply** to save the changes, then select **OK** to close the **Preferences** dialog.

**Result:** The profile is updated and saved. The updated settings take effect the next time you connect using this profile.
