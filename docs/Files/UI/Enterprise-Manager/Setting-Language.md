---
title: Setting the Language
description: "Enterprise Manager detects your local language and defaults to English if that language is unavailable. You can override the language by adding the --nl parameter to the Enterprise Manager executable or to the EnterpriseManager.ini file."
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

# Setting the Language

Enterprise Manager detects your local language and defaults to English if that language is unavailable. You can set the language by adding a `--nl` parameter with the Locale ID either to the Enterprise Manager executable or to the **EnterpriseManager.ini** file.

## Supported Languages

| Language | Locale ID |
|---|---|
| Chinese (Simplified) | `zh` |
| Chinese (Traditional) | `zh-TW` |
| Dutch (Nederland) | `nl` |
| English | `en` |
| French | `fr` |
| German | `de` |
| Italian | `it` |
| Japanese | `ja` |
| Korean | `ko` |
| Portuguese (Brazil) | `pt` |
| Spanish | `es` |

## Add the Parameter to the Executable

To set the language using the executable shortcut, complete the following steps:

1. Right-click the **Enterprise Manager** shortcut and select **Properties**.
2. Select the **Shortcut** tab and locate the **Target** field.
3. Add the language parameter after `EnterpriseManager.exe`. For example: `EnterpriseManager.exe --nl de`.

   Alternatively, create a `.bat` file and add the parameter there.

**Result:** Enterprise Manager starts in the specified language the next time you open it.

## Update the Configuration File

To set the language using the configuration file, complete the following steps:

1. Go to the Enterprise Manager installation directory.
2. Open **EnterpriseManager.ini** with WordPad or a text editor.
3. Insert a new line before the `--startup` line with the required language parameter. For example: `--nl de`.
4. Save and close the file.
5. Restart Enterprise Manager.

**Result:** Enterprise Manager starts in the specified language on the next restart.
