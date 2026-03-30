---
title: Adding External Tools
description: "Add frequently used tools to the External Tools navigation list in Enterprise Manager by modifying externaltools.xml."
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

# Adding External Tools

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Add frequently used tools to the **External Tools** navigation list in Enterprise Manager by modifying **externaltools.xml**, located at userhome\\.enterpriseManager\\externaltools.xml. This file is copied from the EM installation directory into the EM preference directory so each user on the machine can configure it independently.

:::note
If the file is not in the preference directory, copy it from EM installation directory\\tools\\exernaltools.xml to userhome\\.enterpriseManager\\externaltools.xml.
:::

The following example shows how to add *Internet Information Services* to the **External Tools** navigation list.

To add an external tool, complete the following steps:

1. Copy **externaltools.xml** from **userhome\\.enterpriseManager\\** to a working location
2. Open the working copy in a text editor (e.g., Notepad)
3. Add an entry that calls the external tool
4. Save the changes to **externaltools.xml**
5. Create a 16x16 icon file for the new tool
6. Place the icon file in **\....\\EnterpriseManager\\tools\\icons**
7. Select the **Close** button to exit Enterprise Manager
8. Save a backup of **userhome\\.enterpriseManager\\externaltools.xml**
9. Copy the updated **externaltools.xml** into **userhome\\.enterpriseManager\\**
10. Open Enterprise Manager and go to **External Tools** in the **Navigation Panel** to verify the entry for Internet Information Services
11. Select **Internet Information Services** to confirm it works correctly

## When Would You Use It?

- You need to add External Tools in Enterprise Manager
- The environment is expanding and requires additional External Tools to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding External Tools to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the External Tools and when

## FAQs

**Q: How do you save a new external tools record?**

After completing the required fields, select the **Save** button on the toolbar to save the external tools record.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
