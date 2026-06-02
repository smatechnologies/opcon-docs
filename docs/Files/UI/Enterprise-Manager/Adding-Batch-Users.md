---
title: Adding Batch Users
description: "Add Batch Users for Windows, UNIX, IBM i, MCP, OpenVMS, and SQL platforms in Enterprise Manager."
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

# Adding Batch Users

A Batch User is an OS-level account that OpCon passes to the Agent when running a job. Enterprise Manager supports Batch User definitions for six platforms: Windows, UNIX, IBM i, MCP, OpenVMS, and SQL.

To access Batch Users, select **Batch Users** under the **Security** topic in the Enterprise Manager navigation pane.

## Add a Windows Batch User

To add a Windows Batch User, complete the following steps:

1. Select **Batch Users** under the **Security** topic. The **Batch Users** screen opens.
2. Select **Windows** in the **Select the target OS** list.
3. Select **Add** on the **Batch Users** toolbar.
4. Enter a valid Windows account in `Domain\User` format in the **User** field. The value is stored in uppercase.
5. Enter the account password in the **Password** field.
6. Enter the password again in the **Confirm Password** field.
7. Select **Save** on the **Batch Users** toolbar.

**Result:** The new Windows Batch User appears in the Batch Users list for the Windows platform.

## Add a UNIX Batch User

To add a UNIX Batch User, complete the following steps:

1. Select **Batch Users** under the **Security** topic. The **Batch Users** screen opens.
2. Select **UNIX** in the **Select the target OS** list.
3. Select **Add** on the **Batch Users** toolbar.
4. Enter the group ID and user ID in `group/user` format in the **Group/User** field. Both the group and user portions accept letters, digits, hyphens, and underscores.
5. Select **Save** on the **Batch Users** toolbar.

**Result:** The new UNIX Batch User appears in the Batch Users list for the UNIX platform.

## Add an IBM i Batch User

To add an IBM i Batch User, complete the following steps:

1. Select **Batch Users** under the **Security** topic. The **Batch Users** screen opens.
2. Select **IBM i** in the **Select the target OS** list.
3. Select **Add** on the **Batch Users** toolbar.
4. Enter a valid IBM i user profile name in the **User Profile** field.
5. Select **Save** on the **Batch Users** toolbar.

**Result:** The new IBM i Batch User appears in the Batch Users list for the IBM i platform.

## Add an MCP Batch User

To add an MCP Batch User, complete the following steps:

1. Select **Batch Users** under the **Security** topic. The **Batch Users** screen opens.
2. Select **MCP** in the **Select the target OS** list.
3. Select **Add** on the **Batch Users** toolbar.
4. Enter a valid MCP user identifier in the **Identifier** field.
5. Select **Save** on the **Batch Users** toolbar.

**Result:** The new MCP Batch User appears in the Batch Users list for the MCP platform.

## Add an OpenVMS Batch User

To add an OpenVMS Batch User, complete the following steps:

1. Select **Batch Users** under the **Security** topic. The **Batch Users** screen opens.
2. Select **OpenVMS** in the **Select the target OS** list.
3. Select **Add** on the **Batch Users** toolbar.
4. Enter a valid OpenVMS user identifier (maximum 12 characters) in the **Identifier** field.
5. Select **Save** on the **Batch Users** toolbar.

**Result:** The new OpenVMS Batch User appears in the Batch Users list for the OpenVMS platform.

## Add a SQL Batch User

To add a SQL Batch User, complete the following steps:

1. Select **Batch Users** under the **Security** topic. The **Batch Users** screen opens.
2. Select **SQL** in the **Select the target OS** list.
3. Select **Add** on the **Batch Users** toolbar.
4. Enter a valid Windows account in `Domain\User` format in the **User** field.
5. Enter the account password in the **Password** field.
6. Enter the password again in the **Confirm Password** field.
7. Select **Save** on the **Batch Users** toolbar.

**Result:** The new SQL Batch User appears in the Batch Users list for the SQL platform.

## Default Batch Users

Each supported platform includes a pre-configured default Batch User that OpCon provides. Default Batch Users are read-only and cannot be deleted or modified.

| Platform | Default Batch User |
|---|---|
| Windows | `use service account` |
| SQL | `use service account` |
| MCP | `*` |
| IBM i | `*` |

<!-- GAP: No default Batch User confirmed for UNIX or OpenVMS platforms; needs SME review -->
