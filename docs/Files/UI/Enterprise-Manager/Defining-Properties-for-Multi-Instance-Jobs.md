---
title: Defining Properties for Multi-Instance Jobs
description: "Define instance properties for multi-instance jobs in Enterprise Manager Job Master so each job instance runs with distinct parameter values."
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

# Defining Properties for Multi-Instance Jobs

A multi-instance job runs as multiple simultaneous copies, each identified by a unique set of instance properties. Instance properties use the format `PropertyName=PropertyValue` and let each copy receive distinct parameter values at run time.

To define properties for a multi-instance job, complete the following steps:

1. In Enterprise Manager, select **Job Master** under the **Administration** topic. The **Job Master** screen opens.
2. In the **Schedule** list, select the schedule that contains the job.
3. In the **Job** list, select the job.
4. In the **Job Properties** frame, select the **Job Details** tab.
5. Select the **Allow Multi-Instance** option.
6. Select **Save** on the **Job Master** toolbar to save the multi-instance setting.
7. Select the **Instance Definition** tab.
8. In the entry field, type the property definition using the format `PropertyName=PropertyValue`. To define multiple properties for a single instance, separate each name-value pair with a semicolon (`;`), for example: `PName1=PValue1;PName2=PValue2`.
9. Select **Add**. The definition appears in the **Instances** list.
10. Repeat steps 8 and 9 for each additional instance.
11. Select **Save** on the **Job Master** toolbar to save the instance definitions.
12. Select **Close** to close the **Job Master** screen.

**Result:** OpCon stores one instance definition per entry in the **Instances** list. When the schedule builds, OpCon creates one copy of the job for each defined instance and passes the corresponding properties to that copy.

:::note
Property names cannot contain the characters `= ' ( ) \ , |`. Each property string has a maximum length of 4000 characters. If instance definitions already exist, you cannot clear the **Allow Multi-Instance** option until you remove all definitions.
:::
