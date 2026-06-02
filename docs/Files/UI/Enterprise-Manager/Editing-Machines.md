---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Machines
description: "How to edit machine definitions in Enterprise Manager, including stopping and restarting agent communication."
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

# Editing Machines

Use Enterprise Manager to edit a machine (agent) definition. Because the Machines editor is read-only while an agent is communicating with SAM, you must stop communication before saving changes and restart it afterward.

**Required privilege:** Maintain Machines

## Edit a machine

To edit a machine definition, complete the following steps:

1. In the navigation pane, select **Machines** under the **Administration** topic. The **Machines** screen opens.
2. In the **Select Machine** list, select the machine you want to edit.
3. In the **Communication Status** frame, right-click the status graphic and select **Stop Communication**. Communication with the agent stops.
4. In the **General Settings** section, update the fields you want to change. You can edit **Machine Name**, **Socket Number**, **NetCom Name**, **IP Address**, **Fully Qualified Domain Name**, and **Max Concurrent Jobs (Server)**, as well as any fields in the **Advanced Settings** section.
5. Select **Save** on the **Machines** toolbar to save your changes.
6. In the **Communication Status** frame, right-click the status graphic and select **Start Communication**. OpCon resumes communication with the agent.
7. Select **Close** (the X on the **Machines** tab) to close the **Machines** screen.

**Result:** The updated machine definition is saved. OpCon routes future jobs to the machine using the new settings.

## Notes

- The **Machines** editor is read-only while the agent is communicating with SAM. If the machine is currently enabled or in limited status, **Stop Communication** is available; **Start Communication** becomes available after communication is stopped.
- A socket number must be between 1024 and 32767.
- A NetCom Name is required and cannot exceed 128 characters.
- Setting **Max Concurrent Jobs (Server)** to `0` lets the agent control the maximum number of concurrent jobs.
