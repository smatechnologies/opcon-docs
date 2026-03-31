---
title: Adjusting Stop/Start Communication with Machines
description: "Stop/Start communication controls whether OpCon actively communicates with an agent on a given machine."
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

# Adjusting Stop/Start Communication with Machines

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Stop/Start communication controls whether OpCon actively communicates with an agent on a given machine. Stopping communication prevents new jobs from starting on that machine; starting it resumes normal job submission.

To adjust stop/start communication, complete the following steps:

1. Select on **Machines** under the **Administration** topic
2. Select the **machine** in the **Select Machine** list
3. Right-click the graphic in the **Communication Status** frame to enable the menu
4. Select **Start Communication** or **Stop Communication**
5. Select **Close ☒** to close the **Machines** screen

## When Would You Use It?

- To adjust stop/start communication:

## Why Would You Use It?

- **Adjusting Stop/Start**: To adjust stop/start communication:

## FAQs

**Q: How many steps does the Adjusting Stop/Start Communication with Machines procedure involve?**

The Adjusting Stop/Start Communication with Machines procedure involves 5 steps. Complete all steps in order and save your changes.

## Glossary


**Enterprise Manager (EM)**: OpCon's rich client graphical user interface for Windows and Linux, used to define schedules and jobs, manage automation data, and perform operational tasks.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. Agents installed on target platforms run jobs and report results.
