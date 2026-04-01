---
title: Setting Preferences for Audit and History Management Records
description: "Use this procedure to set Preferences for Audit and History Management Records in the Enterprise Manager."
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

# Setting Preferences for Audit and History Management Records

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to set Preferences for Audit and History Management Records in the Enterprise Manager.

To set the preferences, complete the following steps:

1. Open the Enterprise Manager application
2. Use menu path: **EnterpriseManager \> Preferences**. The **Preferences** dialog displays
3. Select the arrow (![Expand Arrow](../../../Resources/Images/EM/EMarrowtoexpand.png "Expand Arrow ")) next to **Enterprise Manager** in the Preferences tree to expand the list
4. Select **History/Audit**. The **History/Audit** settings display to the right
5. Define the number of records to return (the default value is 100,000)
6. Select **OK** to save the changes and close the **Preferences** dialog

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
## FAQs

**Q: How many steps does the Setting Preferences for Audit and History Management Records procedure involve?**

The Setting Preferences for Audit and History Management Records procedure involves 6 steps. Complete all steps in order and save your changes.

## Glossary

**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.
