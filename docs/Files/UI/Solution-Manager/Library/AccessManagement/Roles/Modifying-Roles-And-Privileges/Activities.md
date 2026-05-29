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

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The **Activities** tab (_Library > Access Management > Roles_) lists the function privileges assigned to the selected role. Each activity is a function privilege that applies across all departments. Select an activity to grant the role that privilege, clear it to remove the privilege, and then select **Save** to apply your changes.

Activities are grouped into expandable categories. Select a category heading to expand it and view the activities it contains.

![Roles Activities](../../../../../../../Resources/Images/SM/Library/AccessManagement/roles-activities-tab.png 'Roles Activities')

## Activities

The following activities are available, grouped by category.

### Cloud Event

| Activity | Description |
|---|---|
| **Maintain Cloud Events Associations** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **View Cloud Events Associations** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |

### Elevated Rights

| Activity | Description |
|---|---|
| **All Function Privileges** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **All Administrative Functions** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **All Notification Manager Functions** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Chatbot Privileges** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |

### Embedded Script

| Activity | Description |
|---|---|
| **Maintain Embedded Scripts** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **View Embedded Script Contents** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |

### License

| Activity | Description |
|---|---|
| **View License Information** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |

### Logs

| Activity | Description |
|---|---|
| **View Schedule Build Log** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **View Application Logs** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |

### Machine

| Activity | Description |
|---|---|
| **Maintain Machines** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Maintain Machine Groups** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |

### Report

| Activity | Description |
|---|---|
| **Maintain Reports** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Maintain Audit History** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Maintain Job History** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |

### Schedule

| Activity | Description |
|---|---|
| **Maintain Schedules** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Import And Export Schedules** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Build Daily Schedules** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Delete Daily Schedules** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Release Schedules** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Hold Schedules** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Force Start Schedules** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |

### Server Options

| Activity | Description |
|---|---|
| **Maintain Server Options** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **View Server Options** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |

### Service Requests

| Activity | Description |
|---|---|
| **Maintain Service Requests** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **View Service Requests** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |

### Vision

| Activity | Description |
|---|---|
| **Maintain Vision Workspaces** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **View Vision Workspaces** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Maintain Vision Actions** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Maintain Vision Frequencies** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |

### Workflow

| Activity | Description |
|---|---|
| **Maintain Access Codes** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Maintain Departments** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Maintain Calendars** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Maintain Thresholds Resources** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Maintain Global Properties** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |
| **Maintain Tags** | <!-- GAP: per-activity description not defined in source; needs SME/source --> |

## FAQs

**Q: Where can you find Role Activities in OpCon?**

Open Solution Manager and go to _Library > Access Management > Roles_. Select a role, and then select the **Activities** tab.

**Q: Why can't you change the activities for some roles?**

For the predefined OpCon administrator role (`ocadm`), all activities are selected and cannot be changed. The options on the **Activities** tab are disabled for that role.

## Related Topics

- [Managing Roles](../Managing-Roles-And-Privileges.md)
- [Privileges](../../../../../../../administration/privileges.md)
- [Roles](../../../../../../../administration/roles.md)
- [Users](../../../../../../../administration/user-accounts.md)

## Glossary

**Enterprise Manager (EM)**: OpCon's Windows graphical user interface, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Role**: A named security profile in OpCon that groups privileges together. Roles are assigned to user accounts to control which features, schedules, jobs, machines, and administrative functions a user can access.

**Privilege**: A specific permission granted through an OpCon role that controls access to a feature, function, or object type. Privileges are organized into categories such as function privileges, machine privileges, and schedule privileges.

**Activity**: A function privilege that a role grants across all departments. Activities are assigned on the **Activities** tab of a role.
