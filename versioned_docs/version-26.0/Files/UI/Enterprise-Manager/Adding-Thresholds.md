---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Adding Thresholds
description: "Use this procedure to add Thresholds in the Enterprise Manager."
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

#  Adding Thresholds

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to add Thresholds in the Enterprise Manager.

To add a threshold, complete the following steps:

1.  Select on **Thresholds** under the **Administration** topic
2.  Select ![Add icon](../../../Resources/Images/EM/EMadd.png "Add icon") **Add** on the **Thresholds** toolbar
3.  Enter an alphanumeric *property name* in the **Name** text box
4.  *(Optional)* Enter documentation in the **Documentation** text box
5.  Enter a *threshold value* (default = 0) in the **Threshold Value** box
6.  Select ![Save icon](../../../Resources/Images/EM/EMsave.png "Save icon") **Save** on the **Thresholds** toolbar
7.  Select **Close ☒** to close the **Thresholds** screen

## When Would You Use It?

- You need to add Thresholds in Enterprise Manager
- The environment is expanding and requires additional Thresholds to support new automation workflows

## Why Would You Use It?

- **Extend automation scope**: Adding Thresholds to OpCon brings additional resources under centralized scheduling, monitoring, and event processing
- All additions are tracked in the OpCon audit log, recording who added the Thresholds and when

## FAQs

**Q: How do you save a new thresholds record?**

After completing the required fields, select the **Save** button on the toolbar to save the thresholds record.

**Q: Is documentation required when adding thresholds?**

No. The Documentation field is optional. You can enter notes about the thresholds to track its purpose, but it is not required to save the record.

## Glossary

**Threshold**: A numeric variable stored in the OpCon database used to control job execution. Jobs can be made dependent on threshold values, and OpCon events can update threshold values at runtime.

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.
