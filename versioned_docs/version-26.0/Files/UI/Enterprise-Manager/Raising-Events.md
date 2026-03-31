---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Raising Events
description: "Use this procedure to raise Events in the Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Raising Events

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to raise Events in the Enterprise Manager.

To raise an event, complete the following steps:

1. Select on **Machines Status** under the **Operation** topic
2. Right-click on the preferred **SAP R/3 and CRM machine name**
3. Hover over **SAP Machine** in the right-click menu and select **Raise SAP Events**. The **Raise SAP Events** dialog displays
4. Enter the *event text* in the **SAP Event Id** text box
5. *(Optional)* Enter any *required parameters* in the **Parameters** text box
6. Select the **Send** button

## FAQs

**Q: How many steps does the Raising Events procedure involve?**

The Raising Events procedure involves 6 steps. Complete all steps in order and save your changes.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
