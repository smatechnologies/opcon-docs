---
title: Setting the Language
description: "The EM detects your local language and defaults to English if that language is unavailable."
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

# Setting the Language

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The EM detects your local language and defaults to English if that language is unavailable. You can set the language by adding a `--nl` parameter with the Locale ID either to the Enterprise Manager executable or to the **EnterpriseManager.ini** file.

## Adding a Parameter on the Executable

To set the language, complete the following steps:

1. Right-click the **Enterprise Manager** shortcut and select **Properties**
2. On the **Shortcut** tab, find the **Target** text box
3. Add the language parameter after **EnterpriseManager.exe**. Alternatively, create a .bat file and add the parameter there

## Updating the Configuration File

To set the language, complete the following steps:

1. Browse to the Enterprise Manager directory
2. Open **EnterpriseManager.ini** with WordPad
3. Insert a line before the `--startup` line with the required language parameter
4. Save and close the file, then restart the Enterprise Manager executable

| Language | Locale ID |
|--- |--- |
| Chinese (Simplified) | zh |
| Chinese (Traditional) | zh-TW |
| Dutch (Nederland) | nl |
| English | en |
| French | fr |
| German | de |
| Italian | it |
| Japanese | ja |
| Korean | ko |
| Portuguese (Brazil) | pt |
| Spanish | es |

## FAQs

**Q: How many steps does the Setting the Language procedure involve?**

The Setting the Language procedure involves 7 steps. Complete all steps in order and save your changes.

**Q: What does Setting the Language cover?**

This page covers Adding a Parameter on the Executable, Updating the Configuration File.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
