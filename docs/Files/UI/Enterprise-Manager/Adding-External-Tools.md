---
title: Adding External Tools
description: "Add frequently used tools to the External Tools navigation list in Enterprise Manager by editing externaltools.xml."
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

# Adding External Tools

The **External Tools** section of the Navigation Panel in Enterprise Manager displays shortcuts to frequently used system utilities. You configure these shortcuts by editing `externaltools.xml`, located in the Enterprise Manager user settings directory. Because this file is copied from the Enterprise Manager installation directory into the user settings directory at first run, each user on the machine can configure it independently.

:::note
If `externaltools.xml` is not present in the user settings directory, copy it from `<EM installation directory>\tools\externaltools.xml` to `<user home>\.enterpriseManager\externaltools.xml`.
:::

## Supported Variables

You can use the following variables in the `command` attribute or `parameter` values. Enterprise Manager resolves these variables at runtime before running the tool.

| Variable | Resolved value |
|---|---|
| `[[SERVER]]` | Current connected database server |
| `[[DATABASE]]` | Current connected database name |
| `[[USER]]` | Current logged-in user name |
| `[[PASSWORD]]` | Current user's encrypted password |
| `[[EM_INSTALLDIR]]` | Enterprise Manager installation directory |
| `[[OPCON_INSTALLDIR]]` | OpCon tools installation directory |

## XML Structure

Each entry in `externaltools.xml` is an `<application>` element. You can optionally group entries inside a `<category>` element.

**Application attributes:**

| Attribute | Required | Description |
|---|---|---|
| `name` | Yes | Label shown in the Navigation Panel |
| `command` | Yes | Executable to run |
| `icon` | Yes | Relative or absolute path to a 16x16 PNG icon |
| `os` | Yes | Target operating system: `win32`, `linux`, `macos`, `solaris`, `aix`, or `hpux` |

Use one or more `<parameter value="..."/>` child elements to pass arguments to the command.

**Category attributes:**

| Attribute | Required | Description |
|---|---|---|
| `name` | Yes | Group label shown in the Navigation Panel |
| `icon` | Yes | Relative or absolute path to a 16x16 PNG icon |

## Add an External Tool

The following example adds *Internet Information Services* to the **External Tools** navigation list.

To add an external tool, complete the following steps:

1. Open `<user home>\.enterpriseManager\externaltools.xml` in a text editor.
2. Add an `<application>` element with the required attributes and any `<parameter>` child elements. For example:

   ```xml
   <application name="Internet Information Services"
       icon="icons/iis.png"
       os="win32"
       command="cmd.exe">
     <parameter value="/c"/>
     <parameter value="mmc.exe"/>
     <parameter value="%SystemRoot%/System32/inetsrv/iis.msc"/>
   </application>
   ```

3. Save `externaltools.xml`.
4. Create a 16x16 PNG icon for the new tool and place it in `<EM installation directory>\tools\icons\`.
5. Back up the existing `<user home>\.enterpriseManager\externaltools.xml`.
6. Copy the updated `externaltools.xml` to `<user home>\.enterpriseManager\`.
7. Close Enterprise Manager.
8. Open Enterprise Manager and go to **External Tools** in the **Navigation Panel**.

**Result:** The new entry appears in the **External Tools** list. Select it to confirm the tool opens correctly.
