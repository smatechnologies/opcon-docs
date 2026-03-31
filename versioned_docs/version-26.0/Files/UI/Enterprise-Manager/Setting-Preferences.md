---
title: Setting Preferences
description: "Use Preferences to customize the Enterprise Manager's look and feel."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Setting Preferences

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use Preferences to customize the Enterprise Manager's look and feel. The EM saves preferences to the `.enterpriseManager` folder in your home directory and applies changes immediately.

:::info
- Windows XP: `C:\Documents and Settings\username\.enterpriseManager`
- UNIX (OS/X): `/Users/username/.enterpriseManager`
:::

![White "person reading" icon on blue circular background](../../../Resources/Images/moreinfo-icon(48x48).png "More Info icon")

- [Setting Preferences from Enterprise Manager](Preferences-from-EM.md)
- [Setting Preferences for Charts](Preferences-for-Charts.md)
- [Setting Preferences for Status Colors](Preferences-for-Status-Colors.md)
- [Setting Preferences for Connection Profiles](Managing-Connection-Profiles.md)
- [Setting Preferences for Date Formats](Preferences-for-Date-Formats.md)
- [Setting Preferences for External Tools](Preferences-for-External-Tools.md)
- [Setting Preferences for Gantt](Preferences-for-Gantt.md)
- [Setting Preferences for Audit and History Management Records](Preferences-for-Audit-and-History.md)
- [Setting Preferences for Log Viewer](Preferences-for-Log-Viewer.md)
- [Setting Preferences for Update Sites](Preferences-for-Update-Sites.md)
- [Setting Preferences for Window To Host](Preferences-for-Windows-To-Host.md)
- [Setting Preferences for Workflow Designer and PERT](Preferences-for-Workflow-Designer.md)
- [Setting Preferences for Schedule Extract](Preferences-for-Schedule-Extract.md)

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does setting preferences configure?**

Setting preferences defines the preferences or options that control how this feature behaves in OpCon.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
