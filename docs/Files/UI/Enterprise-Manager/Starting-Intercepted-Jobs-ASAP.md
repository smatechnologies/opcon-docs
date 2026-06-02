---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Starting Intercepted Jobs ASAP
description: "Starting an intercepted SAP job ASAP releases it to run immediately rather than waiting for its normal scheduled time."
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

# Starting Intercepted Jobs ASAP

Intercepted SAP jobs are held in a queue after being captured by the SAP machine intercept function. Starting an intercepted job ASAP releases it to run immediately rather than waiting for its normal scheduled time.

:::note
The **SAP Machine** submenu is only visible when the selected machine is of type SAP R/3 and CRM.
:::

To start an intercepted SAP job ASAP, complete the following steps:

1. In Enterprise Manager, select **Machines Status** under the **Operation** topic.
2. Right-click the SAP R/3 and CRM machine name you want to work with.
3. In the right-click menu, point to **SAP Machine** and select **Intercept SAP Jobs**.

   The **View Intercepted SAP Jobs** dialog opens and displays all intercepted jobs for the selected machine.

4. Select the intercepted job you want to start.

   The **Start ASAP** button becomes active when a job is selected.

5. Select **Start ASAP**.

**Result:** The selected job is submitted to run immediately. A confirmation message appears in the dialog indicating the job was successfully started.

To reload the list of intercepted jobs at any time, select **Refresh**. To close the dialog, select **Close**.
