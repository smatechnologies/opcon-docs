---
title: Adding Global Properties
description: "Add a Global Property in Enterprise Manager to store a named value that job definitions and events can reference at runtime."
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

# Adding Global Properties

Global Properties are named values stored in the OpCon database. Job definitions and events reference them using the `[[PropertyName]]` syntax to pass dynamic values at runtime. Use this procedure to add a Global Property in Enterprise Manager.

To add a Global Property, complete the following steps:

1. Under the **Administration** topic, select **Global Properties**. The **Global Properties** screen opens.
2. On the **Global Properties** toolbar, select **Add**.
3. In the **Name** field, enter a property name of up to 64 characters.
4. (Optional) In the **Documentation** field, enter notes about the property's purpose. The field accepts up to 4,000 characters.
5. (Optional) Select the **Encrypted** option to store the value in encrypted form. When selected, the value is limited to 2,800 characters. System-type properties cannot be encrypted.
6. In the **Value** field, enter the property value. The field accepts up to 4,000 characters for unencrypted properties.
7. On the **Global Properties** toolbar, select **Save**.

**Result:** The new Global Property is saved to the OpCon database and is available for reference in job definitions and events.

8. Select **Close** to close the **Global Properties** screen.
