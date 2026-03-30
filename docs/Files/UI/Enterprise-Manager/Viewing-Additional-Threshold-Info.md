---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Viewing Additional Threshold Information
description: "Use this procedure to view Additional Threshold Information in the Enterprise Manager."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: procedural
---

#  Viewing Additional Threshold Information

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to view Additional Threshold Information in the Enterprise Manager.

To view additional information, complete the following steps:

1.  Select on **Thresholds** under the **Administration** topic. The **Thresholds** screen displays
2.  Select the **threshold** in the **Select Threshold** list
3.  Select the ![Cross Reference icon](../../../Resources/Images/EM/EMcrossref.png "Cross Reference icon") **Cross Reference** button on the toolbar to refer to a list of Master threshold dependencies and updates
4.  Select **OK**
5.  Select the ![View Audit icon](../../../Resources/Images/EM/EMviewaudit.png "View Audit icon") **View Audit** button to view audit records for changes to the threshold
6.  Select **Close**
:::

## When Would You Use It?

- You need to inspect or audit Additional Threshold Information records in Enterprise Manager
- An audit, compliance review, or operational check requires inspection of current Additional Threshold Information state

## Why Would You Use It?

- **Improve operational visibility**: Inspecting Additional Threshold Information records in Enterprise Manager supports informed decision-making and provides an audit trail for compliance reviews
- Information in Enterprise Manager reflects the live database state, ensuring that the data reviewed is current at the time of inspection

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How many steps does the Viewing Additional Threshold Information procedure involve?**

The Viewing Additional Threshold Information procedure involves 6 steps. Complete all steps in order and save your changes.

## Glossary

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Audit Record**: An automatically created log entry recording every change made to an OpCon object. Each record captures the timestamp, the user or application that made the change, the item affected, and the original and final values.
