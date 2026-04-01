---
title: Accessing Application Logs
description: "The Enterprise Manager application logs record your activities while the EM is open."
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

# Accessing Application Logs

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Enterprise Manager application logs record your activities while the EM is open. When you report a problem via the **[Report Problem](Reporting-Problems.md)** dialog, log files can automatically be attached to an email.

EM logs are located in the **.enterpriseManager/.metadata/** directory in your home directory.

:::tip Example
For a Windows XP user, the path would be:

C:\Documents and Settings\User\\.enterpriseManager\\.metadata\\.log
:::

Once a log file reaches 1,002 KB, the **.log** file is saved as **.bak_0.log** and a new **.log** file starts. Subsequent saved files are named **.bak_1.log**, **.bak_2.log**, and so on. Each saved log file contains a comment near the beginning listing the previous log file name and its creation date and time. The EM retains a maximum of 10 log files, overwriting the oldest when the limit is reached.

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: What does Accessing Application Logs do?**

The Enterprise Manager application logs record your activities while the EM is open. When you report a problem via the **[Report Problem](Reporting-Problems.md)** dialog, log files can automatically b

**Q: Where can you find Accessing Application Logs in OpCon?**

Access Accessing Application Logs through the appropriate section in the Enterprise Manager or Solution Manager navigation.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
