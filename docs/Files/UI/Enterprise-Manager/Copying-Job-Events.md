---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Copying Job Events
description: "Use this procedure to copy Job Events in the Enterprise Manager."
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

#  Copying Job Events

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to copy Job Events in the Enterprise Manager.

To copy a job event, complete the following steps:

1. Select on **Job Master** under the **Administration** topic. The **Job Master** screen displays
2. Select the **schedule** in the **Schedule** list
3. Select the **job** in the **Job** list
4. Select on the **Event** tab in the **Job Properties** frame
5. Select the **Job Related** or **Frequency Related** radio button depending on the type of event to copy
6. Do one of the following:
    a. If Frequency Related: Select the **frequency** in the **Frequency list**, then proceed to Step 7.
    b. If Job Related: Proceed to Step 7.
7. Right-click on the **event** in the **Events** list and select **Copy** from the context menu
8. *(Optional)* Select another **schedule** in the **Schedule** list
9. Select the **destination job** in the **Job** list
10. Select on the **Event** tab in the **Job Properties** frame
11. Select the **Job Related** or **Frequency Related** radio button depending on the type of event
12. Do one of the following:
    a. If Frequency Related: Select the **frequency** in the **Frequency list**, then proceed to Step 13.
    b. If Job Related: Proceed to Step 13.
13. Right-click inside the **Events** list and select **Paste** from the context menu. The **Event Definition Wizard** displays
14. Select **Close ☒** (to the right of the **Job Master** tab) to close the **Job Master** screen

## FAQs

**Q: Why would you copy job events instead of creating a new one?**

Copying job events is useful when you want to reuse an existing configuration as a starting point. All settings from the original are duplicated, and you can then modify the copy as needed.

**Q: Does copying job events require a new unique name?**

Yes. The copy must be saved with a new unique name to distinguish it from the original job events record.

## Glossary

**Frequency**: A set of rules that defines when a job or schedule is eligible to run, based on calendar rules, day-of-week settings, period offsets, and other timing criteria.

**Schedule**: A named container for jobs in OpCon, built for a specific date to create that day's automation. Schedules define build settings, frequencies, and the jobs that run within them.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
