---
title: Copying Named Schedule Instance Definitions
description: "Use the Copy Instance option in Enterprise Manager to replicate properties, exceptions, or both from a source named schedule instance to one or more target instances."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: procedural
---

# Copying Named Schedule Instance Definitions

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Copy Instance feature lets you replicate properties, exceptions, or both from one named schedule instance (the source) to one or more other named instances on the same schedule (the targets). Copied data overwrites the corresponding data on each target instance; data not selected for replacement is left unchanged.

:::note
Only users in the ocadm role can copy named schedule instance definitions. The **Copy Instance** option does not appear unless the schedule has at least two named instances and the selected source instance has at least one property or exception defined.
:::

To copy named schedule instance definitions, complete the following steps:

1. Select **Schedule Master** under the **Administration** topic. The **Schedule Master** screen displays.
2. Select the schedule in the **Schedule Selection** list.
3. Select the **Instance Definition** tab in the **Schedule Details** frame.
4. In the **Instances** frame, right-click the instance name that is the source of the definitions to copy. A context menu displays.
5. Select **Copy Instance**. The **Copy Instance** dialog displays.
6. In the **Instance(s) To Replace** list, select the target named instance or instances.
7. Select the **Replace Properties** option, the **Replace Exceptions** option, or both to specify which data to replicate.
8. Select **OK**. The selected properties and exceptions from the source instance overwrite the corresponding data on each target instance.
9. Select ![Green circle with white checkmark inside](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Schedule Master** toolbar.
10. Select **Close ☒** to close the **Schedule Master** screen.

**Result:** The target named instances now contain the properties and/or exceptions copied from the source instance.

## Configuration Options

| Setting | What It Does | Default |
|---|---|---|
| **Replace Properties** | Replaces all properties on each target instance with the properties from the source instance | Selected |
| **Replace Exceptions** | Replaces all exception rules on each target instance with the exception rules from the source instance | Selected |

## FAQs

**Q: What happens to existing data on the target instances when I copy?**

Any data covered by the selected replacement options is deleted from the target instances before the source data is written. If you select **Replace Properties**, all existing properties on the target are removed and replaced. If you select **Replace Exceptions**, all existing exception rules on the target are removed and replaced. Data not covered by the selected options is unchanged.

**Q: Can I copy to multiple target instances at once?**

Yes. The **Instance(s) To Replace** list supports multiple selections. All selected target instances receive the same copied data.

## Glossary

**Named Schedule Instance**: A named variation of a multi-instance schedule. Each named instance can carry its own set of instance properties and exception rules, which OpCon applies when building that instance into the daily schedule.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.
