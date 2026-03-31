---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Machine Information
description: "Use this procedure to view Machine Information in the Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

#  Viewing Machine Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view Machine Information in the Enterprise Manager.

To perform this procedure:

Select on **Machines Status** under the **Operation** topic.

Select on the **Table** tab:

a.  Select the **Machine Name**, or right-click the **machine** and select **Machine Information**.
b.  Select **OK** to close the **Machine Information** dialog.

Select on the **Map** tab.

a.  Right-click the **machine** and select **Machine Information**. For additional information, refer to [Machine Information](Machine-Information.md).
b.  Select **OK** to close the **Machine Information** dialog.
:::

## When Would You Use It?

- You need to inspect or audit Machine Information records in Enterprise Manager
- An audit, compliance review, or operational check requires inspection of current Machine Information state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting Machine Information records in Enterprise Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Enterprise Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## FAQs

**Q: What information does the Machine Information view display?**

The Machine Information view displays the current state and details for the selected item. Use this view to monitor status and take action as needed.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
