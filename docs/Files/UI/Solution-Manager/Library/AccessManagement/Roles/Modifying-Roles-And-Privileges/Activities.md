---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Role Activities
description: "The Activities tab (Library > Access Management > Roles) lists the function privileges assigned to the selected role, grouped by category."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: reference
---

# Role Activities

The **Activities** tab (_Library > Access Management > Roles_) lists the function privileges assigned to the selected role. Each activity is a function privilege that applies across all departments. Select an activity to grant the role that privilege, clear it to remove the privilege, and then select **Save** to apply your changes.

Activities are grouped into expandable categories. Select a category heading to expand it and view the activities it contains.

![Roles Activities](../../../../../../../Resources/Images/SM/Library/AccessManagement/roles-activities-tab.png 'Roles Activities')

## Activities

The following activities are available, grouped by category.

### Cloud Event

| Activity | Description |
|---|---|
| **Maintain Cloud Events Associations** ||
| **View Cloud Events Associations** ||

### Elevated Rights

| Activity | Description |
|---|---|
| **All Function Privileges** | Grants the role every non-departmental function privilege in OpCon. |
| **All Administrative Functions** | Grants the role all administrative function privileges. |
| **All Notification Manager Functions** | Grants the role all Notification Manager function privileges. |
| **Chatbot Privileges** ||

### Embedded Script

| Activity | Description |
|---|---|
| **Maintain Embedded Script** | Allows the role to add, modify, and delete embedded scripts. |
| **View Embedded Script Content** | Allows the role to view the contents of embedded scripts. |

### License

| Activity | Description |
|---|---|
| **View License Information** | Allows the role to view the OpCon license details. |

### Logs

| Activity | Description |
|---|---|
| **View Schedule Build Log** | Allows the role to view the Schedule Build log. |
| **View Application Logs** ||

### Machine

| Activity | Description |
|---|---|
| **Maintain Machines** | Allows the role to add, modify, and delete Agents. |
| **Maintain Machine Groups** | Allows the role to add, modify, and delete Agent groups. |

### Report

| Activity | Description |
|---|---|
| **Maintain Reports** | Allows the role to add, modify, and delete reports. |
| **Maintain Audit History** | Allows the role to view and purge audit history records. |
| **Maintain Job History** | Allows the role to view and purge job history records. |

### Schedule

| Activity | Description |
|---|---|
| **Maintain Schedules** | Allows the role to add, modify, and delete master Schedules. |
| **Import And Export Schedules** | Allows the role to import and export Schedules. |
| **Build Daily Schedules** | Allows the role to build daily Schedules. |
| **Delete Daily Schedules** | Allows the role to delete daily Schedules. |
| **Release Schedules** | Allows the role to release held Schedules. |
| **Hold Schedules** | Allows the role to place Schedules on hold. |
| **Force-Start Schedules** | Allows the role to force-start Schedules. |

### Server Options

| Activity | Description |
|---|---|
| **Maintain Server Options** ||
| **View Server Options** ||

### Service Requests

| Activity | Description |
|---|---|
| **Maintain Service Request** | Allows the role to add, modify, and delete Service Requests. |
| **View Service Request** | Allows the role to view Service Requests. |

### Vision

| Activity | Description |
|---|---|
| **Maintain Vision Workspaces** | Allows the role to add, modify, and delete Vision workspaces. |
| **View Vision Workspaces** | Allows the role to view Vision workspaces. |
| **Maintain Vision Actions** | Allows the role to add, modify, and delete Vision actions. |
| **Maintain Vision Frequencies** | Allows the role to add, modify, and delete Vision frequencies. |

### Workflow

| Activity | Description |
|---|---|
| **Maintain Access Codes** | Allows the role to add, modify, and delete access codes. |
| **Maintain Departments** | Allows the role to add, modify, and delete departments. |
| **Maintain Calendars** | Allows the role to add, modify, and delete calendars. |
| **Maintain Thresholds/Resources** | Allows the role to add, modify, and delete thresholds and resources. |
| **Maintain Global Properties** | Allows the role to add, modify, and delete global properties. |
| **Maintain Tags** ||

## Frequently Asked Questions

**Where do you find Role Activities in Solution Manager?**

Go to _Library > Access Management > Roles_. Select a role, and then select the **Activities** tab.

**Why can't you change the activities for some roles?**

For the predefined OpCon administrator role (`ocadm`), all activities are selected and cannot be changed. The options on the **Activities** tab are disabled for that role.

## Related Topics

- [Managing Roles](../Managing-Roles-And-Privileges.md)
- [Privileges](../../../../../../../administration/privileges.md)
- [Roles](../../../../../../../administration/roles.md)
- [Users](../../../../../../../administration/user-accounts.md)
