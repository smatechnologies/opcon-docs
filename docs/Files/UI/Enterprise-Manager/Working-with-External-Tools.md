---
title: Working with External Tools
description: "Use the External Tools feature in Enterprise Manager to open related tools without leaving the Enterprise Manager window."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-02
doc_type: conceptual
---

# Working with External Tools

The **External Tools** feature in Enterprise Manager lets you open related tools from a single navigation list without switching windows. Before you can use the feature, you must configure the OpCon installation directory in Enterprise Manager.

When you select a tool from the **External Tools** navigation list, Enterprise Manager resolves any environment variables defined in the tool's command and starts the external program. If the OpCon installation directory has not been set and the selected tool requires it, Enterprise Manager prompts you to configure the directory before continuing.

## Environment variables

Tool commands defined in `externaltools.xml` support the following substitution variables. Wrap each variable name in double brackets — for example, `[[OPCON_INSTALLDIR]]`.

| Variable | Resolved value |
|---|---|
| `[[DATABASE]]` | Name of the currently connected OpCon database |
| `[[SERVER]]` | Database server for the current connection |
| `[[USER]]` | Sign-on name of the currently logged-in user |
| `[[PASSWORD]]` | Encrypted password of the currently logged-in user |
| `[[EM_INSTALLDIR]]` | Enterprise Manager installation directory |
| `[[OPCON_INSTALLDIR]]` | OpCon installation directory (configured in preferences) |

## External Tools navigation

The **External Tools** section appears in Enterprise Manager **Navigation Panel**. Select any tool entry in the list to run it. Categories group related tools and can be nested.

![External Tools Topic](../../../Resources/Images/EM/EMexternaltoolsmenu.png "External Tools Topic")

## Related topics

- [Configuring the Installation Directory](Configuring-the-Installation-Directory.md)
- [Adding External Tools](Adding-External-Tools.md)
