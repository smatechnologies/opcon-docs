---
title: SPO Event Report
description: "Reference for the SPO Event Report notification type in Solution Manager. Covers AL and CO report fields, severity levels, alarm identifiers, and their default behaviors."
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

# SPO Event Report

An SPO Event Report notification sends a message to an SPO (System Product Offering) system when a Machine, Schedule, or Job changes to a triggered status. You configure the notification in Solution Manager under **Library > Notification Triggers**. When you select SPO Event Report as the notification type, you choose between two report modes: **AL** (alarm report) or **CO** (command report).

## AL Report

The **AL** mode sends an alarm report to the SPO system.

<!--
![SPO AL dialog](../../../../../../Resources/Images/SM/Library/NotificationTriggers/spoal-dialog.png "SPO AL dialog")
-->

| Field | Required | Description |
|---|---|---|
| **AL** | — | Enables AL report mode and activates the AL fields. |
| **Text** | Optional | User-defined message up to 250 characters. If omitted, the default message `<lsam_mach_name> <schedule_date> <schedule_name> <job_name>` is sent. If specified, the SPO message contains only the user-defined text. |
| **Severity** | Required | Message severity level. Valid values: **Informational**, **Minor**, **Major**, **Warning**, **Critical**, **Indeterminate**, or **Unselect**. |
| **Alarm ID** | Optional | Any valid AL `alarmid` attribute, up to 250 characters. If omitted and no **SPO Default Alarm ID** is set under **Administration > Options**, the Agent machine name is sent as the Alarm ID. |
| **Alarm Qualification** | Optional | Any valid AL `alarmqual` attribute, up to 250 characters. If omitted, the Schedule name and Job name are used. |

## CO Report

The **CO** mode sends a command report to the SPO system.

<!--
![SPO CO dialog](../../../../../../Resources/Images/SM/Library/NotificationTriggers/spoco-dialog.png "SPO CO dialog")
-->

| Field | Required | Description |
|---|---|---|
| **CO** | — | Enables CO report mode and activates the CO fields. |
| **Instance** | Required | Any valid CO `instance` attribute. Case-sensitive. Maximum 250 characters. |
| **Command** | Optional | Any valid CO `command` attribute. Maximum 250 characters. |
