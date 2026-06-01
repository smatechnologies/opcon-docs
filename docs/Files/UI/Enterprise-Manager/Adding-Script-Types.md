---
lang: en-us
title: Adding Script Types
description: "Step-by-step procedure to add a Script Type in Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-01
doc_type: procedural
---

# Adding Script Types

A Script Type defines the scripting language and optional file extension associated with scripts stored in the OpCon Script Repository. Defining Script Types before adding scripts ensures that runners and jobs can correctly identify the script format.

You must have the **Maintain Scripts** function privilege to add Script Types.

## Add a Script Type

To add a Script Type, complete the following steps:

1. In Enterprise Manager, select **Types** under the **Scripts** navigation category. The **Script Types** screen opens.
2. Select **Add** on the **Script Types** toolbar. The **Add Script Type** dialog opens.
3. In the **Name** field, enter a name for the Script Type (for example, `PERL`). The name is required and must be unique.
4. (Optional) In the **File Extension** field, enter the file extension for the Script Type (for example, `pl`). Enter only alphanumeric characters; Enterprise Manager automatically prepends the period.
5. (Optional) In the **Description** field, enter a description for the Script Type.
6. Select **Save**.

**Result:** The Script Type is saved and appears in the Script Types list.
