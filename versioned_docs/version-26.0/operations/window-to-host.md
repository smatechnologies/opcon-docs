---
title: Open Window to Host
description: "The Open Window to Host feature opens an emulator for a remote connection to a machine defined in OpCon."
product_area: Operations
audience: Operations Staff, System Administrator
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Operations Staff
  - System Administrator
  - Schedules
last_updated: 2026-03-18
doc_type: conceptual
---

# Open Window to Host

**Theme:** Configure  
**Who Is It For?** Operations Staff, System Administrator

## What Is It?

The Open Window to Host feature opens an emulator for a remote connection to a machine defined in OpCon. Configure preferences in the Enterprise Manager to set the commands for each platform when running the **Window to Host** shortcut from the Operation views. For more information, refer to [Setting Preferences for Window To Host](../Files/UI/Enterprise-Manager/Preferences-for-Windows-To-Host.md) in the **Enterprise Manager** online help.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does the Open Window to Host feature do?**

It opens an emulator for a remote connection to a machine defined in OpCon. The **Window to Host** shortcut is accessible from the Operation views.

**Q: How do you configure which emulator opens for each platform?**

Configure the emulator commands per platform in the Enterprise Manager preferences. Refer to Setting Preferences for Window To Host in the Enterprise Manager online help.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
