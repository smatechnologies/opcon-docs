---
title: Changing Case of Machine Names
description: "How to change the case of a machine name in Enterprise Manager when the OpCon database uses binary collation."
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

# Changing Case of Machine Names

:::note
This procedure applies only when the OpCon database uses binary collation. A non-binary database treats names that differ only in case as identical, so a direct rename is not possible. Use the workaround steps below to force the case change through a temporary intermediate name.
:::

To change the case of a machine name in Enterprise Manager, complete the following steps:

1. In Enterprise Manager, select **Machines** under the **Administration** topic. The **Machines** screen opens.
2. In the **Select Machine** list, select the machine whose name you want to change.
3. Right-click the graphic in the **Communication Status** frame to open the status menu.
4. Select **Stop Communication** to stop communication with the agent.
5. In the **Name** field, change the case of the machine name and append one additional character to create a temporary unique name (for example, change `TESTMACH` to `testmach1`).
6. Select **Save** on the **Machines** toolbar. OpCon saves the temporary name to the database.
7. In the **Name** field, delete the additional character so only the intended case-corrected name remains (for example, `testmach`).
8. Select **Save** on the **Machines** toolbar. OpCon saves the final name.
9. Right-click the graphic in the **Communication Status** frame to open the status menu.
10. Select **Start Communication** to resume communication with the agent.
11. Select **Close** (to the right of the **Machines** tab) to close the **Machines** screen.

**Result:** The machine name now reflects the corrected case, and the agent resumes normal communication with OpCon.
