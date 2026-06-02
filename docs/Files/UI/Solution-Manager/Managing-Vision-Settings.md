---
title: Managing Vision Settings
description: "Reference for Vision Settings card fields in Solution Manager, including Parent Card, Type, Name, Instance, Pattern, Job Offset, Roles, Thresholds, and Frequencies."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: reference
---

# Managing Vision Settings

Vision Settings is the configuration area in Solution Manager where you create, edit, and delete Vision cards and view the hierarchy of existing cards. Cards are organized as a tree of Group cards and Tag cards.

To access Vision Settings, you must have the **Maintain Vision Workspaces** function privilege assigned through your role.

The following topics describe each field available when creating or editing a card:

- [Creating Cards](Creating-Cards.md)
- [Editing Cards](Editing-Cards.md)
- [Deleting Cards](Deleting-Cards.md)

## Card fields

### Parent Card

Specifies the parent card for the card being created or edited. Group and Tag cards can be placed at the root (`/`) level or as children of an existing Group card.

### Type

Defines the card as a Group card or a Tag card. You can only set this field when creating a card; it cannot be changed on an existing card.

| Option | Description |
|---|---|
| **Group** | Creates a parent card at the root level or as the child of an existing Group card. A Group card must contain at least one child card before you can save the workspace. |
| **Tag** | Creates a card for a tag pattern defined in Enterprise Manager, at the root level or as the child of an existing Group card. |

### Name

Defines the display name for the card. The name must be unique within its parent level. For Group cards, you may enter a path using forward slashes to create nested groups in a single step (for example, `Finance/Payroll`).

### Instance

Selects the remote OpCon instance the Tag card monitors. Leave this field empty to monitor the current (local) instance. Refer to [Managing Vision Remote Instances](Managing-Vision-Remote-Instances.md) for more information.

This field is available on Tag cards only.

### Pattern

Selects the tag pattern defined in Enterprise Manager that the Tag card monitors. The list is populated from the tags available on the selected Instance.

This field is available on Tag cards only.

### Job Offset

Specifies an offset from the schedule date that Vision uses when looking for jobs. Options range from **-5 Frequency Days** through **+5 Frequency Days**, and include **Previous Frequency Day**, **Current Frequency Day**, and **Next Frequency Day**.

This field is available on Tag cards only and is required.

### Roles

Assigns roles to the card to control which users can see it.

| Sub-field | Description |
|---|---|
| **All Granted** | When selected, grants access to all roles. |
| **Revoked** | Lists roles that have their access explicitly revoked. |
| **Granted** | Lists roles that have been explicitly granted access. |

The ocadm role and the current user's role are always required and cannot be removed.

### Thresholds

Defines the numerical ranges (0–100) for Quality of Service (QoS) and Service Level Agreement (SLA) success rates. Set the **Critical** and **Tolerable** threshold values for each. A color bar previews the resulting ranges as you enter values.

| Sub-field | Description |
|---|---|
| **QoS** | Measures how often jobs complete successfully. Set **Critical** and **Tolerable** threshold values. |
| **SLA** | Measures how often jobs complete within their defined SLA windows. Set **Critical** and **Tolerable** threshold values. |

### Frequency(ies)

Selects one or more Vision frequencies to associate with the card. You can select an existing frequency or define a new one. At least one frequency is required for Tag cards. Refer to [Managing Vision Frequencies](Managing-Vision-Frequencies.md) for more information.

:::note
This field is optional for Group cards.
:::
