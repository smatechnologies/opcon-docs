---
title: Using Report Management
description: "Report Management enables administrators to view, add, edit, and delete report definitions in the database."
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

# Using Report Management

Report Management enables users with appropriate privileges to view, add, edit, and delete BIRT report definitions stored in the OpCon database. You can create custom reports with the BIRT report writer tools and register them in OpCon using this utility. Reports are viewed from the **Reports** screen in Enterprise Manager.

:::note
Opening the **Report Management** dialog requires the **Maintain Reports** function privilege. Users without this privilege can view and run reports but cannot manage report definitions.
:::

## Report Management dialog

The **Report Management** dialog contains two sections: **General** and **Filter**.

### General section

| Field or option | Description |
|---|---|
| **Report Locked** | When selected, the report definition is locked. Only users in the *ocadm* role can manage, lock, or unlock a locked report. Users without the *ocadm* role can view locked reports but all fields are disabled. Only the *ocadm* role can select or clear this option. |
| **Report** | Lists all BIRT report definitions currently stored in the database. |
| **Title** | The unique title of the selected report. Maximum 64 characters. |
| **Template** | The BIRT report template filename. Do not include a path — all report files must be in the `reports\OpConXPS_Reports` directory under the Enterprise Manager installation folder. Use the **Open** button to browse for a file. Maximum 128 characters. |
| **Administrator** | Restricts report visibility to users in the *ocadm* role or users with the **All User Interface Functions** privilege. Available only when the current user has the **All User Interface Functions** privilege. |
| **All Users** | Makes the report visible in Enterprise Manager to all users with the **View Standard Reports** department function privilege. |

:::note
The **Administrator** and **All Users** authorization options are only available when your role includes the **All User Interface Functions** privilege. Otherwise, **All Users** is set automatically and cannot be changed.
:::

### Filter section

| Field or option | Description |
|---|---|
| **Schedule Dates** | When selected, the Schedule Dates filter applies to data shown when the report runs. This filter is an integral part of the report template — do not change it without a corresponding change in the report file. |
| **Schedules** | When selected, the Schedules filter applies to data shown when the report runs. This filter is an integral part of the report template — do not change it without a corresponding change in the report file. |
| **Departments** | When selected, the Departments filter applies to data shown when the report runs. This filter is an integral part of the report template — do not change it without a corresponding change in the report file. |
| **Special Filter** | Defines a custom filter for reports that require one. Most reports do not require a special filter. Maximum 1000 characters. See [Special filter syntax](#special-filter-syntax) below. |

### Special filter syntax

Use the following syntax for the **Special Filter** field:

```
Title:{Table.Column}:SQL Select statement
```

:::tip Example
The special filter for the Jobs Using a Calendar report is:

```
Calendars:{CALDESC.CALID}:SELECT CALNAME,CALID FROM CALDESC WHERE SKDID = 0 AND CALNAME <> 'Master Holiday' ORDER BY CALNAME
```

The selection list displayed after the **Reports** button is selected has the title **Calendars** and contains all user-defined calendars.
:::

## Open Report Management

To open the Report Management dialog, complete the following steps:

1. In Enterprise Manager, go to **Information** and select **Reports**. The **Reports** screen opens.
2. On the **Reports** toolbar, select **Manage Reports**. The **Report Management** dialog opens.

## Add a report

To add a report definition, complete the following steps:

1. In Enterprise Manager, go to **Information** and select **Reports**. The **Reports** screen opens.
2. On the **Reports** toolbar, select **Manage Reports**. The **Report Management** dialog opens.
3. Select **Add**.
4. In the **Title** field, enter a unique name for the report.
5. In the **Template** field, enter the BIRT report template filename, or select **Open** to browse for the file.
6. Select the **Administrator** or **All Users** authorization option.
7. In the **Filter** section, select any applicable standard filter options.
8. If required, enter a special filter expression in the **Special Filter** field.
9. Select **Save**.

**Result:** The new report definition is saved to the database and appears in the **Report** list.

## Edit a report

To edit an existing report definition, complete the following steps:

1. In Enterprise Manager, go to **Information** and select **Reports**. The **Reports** screen opens.
2. On the **Reports** toolbar, select **Manage Reports**. The **Report Management** dialog opens.
3. In the **Report** list, select the report to edit.
4. Update the fields as needed.
5. Select **Save**, or select **Cancel** to discard changes.

**Result:** The updated report definition is saved to the database.

## Delete a report

To delete a report definition, complete the following steps:

1. In Enterprise Manager, go to **Information** and select **Reports**. The **Reports** screen opens.
2. In the **Report** list, select the report to delete.
3. On the **Reports** toolbar, select **Manage Reports**. The **Report Management** dialog opens.
4. Select **Remove**.
5. Select **Yes** to confirm the deletion.

**Result:** The report definition is removed from the database and no longer appears in the **Reports** screen.
