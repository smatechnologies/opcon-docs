---
title: Using Reports
description: "View and manage BIRT reports in Enterprise Manager using the Reports view."
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

# Using Reports

The **Reports** view in Enterprise Manager lets you select and view BIRT reports that query your OpCon database. Reports can also be run automatically from the command line using the BIRT Report Generator — refer to [BIRT Report Generator](../../../utilities/Command-line-Utilities/BIRT-Report-Generator.md) in the **Utilities** online help. For conceptual information about OpCon reporting, refer to [OpCon Reporting](../../../reports/overview.md).

:::note
In medium to large environments, reports may run out of memory due to data volume.
:::

## Required Privileges

To access the **Reports** view, your OpCon role must have at least one of the following privileges:

- **Maintain Reports** — required to open the **Report Management** dialog and add, edit, or remove report entries.
- **View Standard Reports** (department-level) — required to view and run standard user-level reports.

Users with the OCADM role or the **All User Interface Functions** privilege can view all reports, including administrator-only reports.

## Reports Toolbar

The **Reports** toolbar appears at the top-right corner of the **Reports** screen and contains the following buttons:

- **Manage Reports** — opens the **Report Management** dialog to add, edit, or remove reports. Requires the **Maintain Reports** function privilege.
- **Refresh** — reruns the currently displayed report.

![EM Reports toolbar](../../../Resources/Images/EM/EMreportstoolbar.png "EM Reports toolbar")

## BIRT Toolbar

The BIRT toolbar appears at the top-left corner of a rendered BIRT report.

![BIRT toolbar](../../../Resources/Images/EM/EMreportsfulltoolbar.png "BIRT toolbar")

Report issues with the BIRT engine at <https://bugs.eclipse.org/bugs/enter_bug.cgi?product=BIRT>.

## Reports Right-Click Menu

Right-clicking a generated report provides the following menu options:

- Select All
- Create Shortcut
- Add to Favorites
- View Source
- Encoding
- Print
- Print Preview
- Refresh
- Export to Microsoft Excel
- Send to OneNote
- Properties

## Run a Report

To run a report, complete the following steps:

1. In Enterprise Manager, go to **Reports** in the navigation panel.
2. In the report selection list at the top of the **Reports** view, select the report you want to run.

**Result:** The report runs and displays in the **Reports** view.

## Manage Reports

The **Report Management** dialog lets you add new report entries, edit existing ones, and remove reports. You must have the **Maintain Reports** function privilege to open this dialog.

### Add a Report

To add a report, complete the following steps:

1. In the **Reports** toolbar, select **Manage Reports**.
2. In the **Report Management** dialog, select **Add**.
3. In the **Title** field, enter a name for the report (maximum 64 characters).
4. In the **Template** field, enter the BIRT report filename, or select the browse button to locate the file (maximum 128 characters).
5. Under the report access options, select **Administrator** to restrict the report to administrator-level users, or select **All Users** to make the report available to all users with the View Standard Reports privilege.
6. In the **Filter** section, select any applicable filter options:
   - **Schedule Dates** — filters the report by schedule date.
   - **Schedules** — filters the report by schedule name.
   - **Departments** — filters the report by department.
7. If required, enter a special filter expression in the **Special Filter** field (maximum 1,000 characters).
8. Select **Save**.

**Result:** The new report entry appears in the report selection list.

### Edit a Report

To edit an existing report, complete the following steps:

1. In the **Reports** toolbar, select **Manage Reports**.
2. In the **Report Management** dialog, select the report you want to edit from the report list.
3. Modify the **Title**, **Template**, access option, filter options, or **Special Filter** as needed.
4. Select **Save**.

**Result:** The report entry is updated.

:::note
Locked reports can only be edited by users with the OCADM role. The **Report Locked** option is visible but disabled for non-OCADM users when a report is locked.
:::

### Remove a Report

To remove a report, complete the following steps:

1. In the **Reports** toolbar, select **Manage Reports**.
2. In the **Report Management** dialog, select the report you want to remove from the report list.
3. Select **Remove**.
4. Select **Yes** to confirm removal.

**Result:** The report entry is removed from the list.
