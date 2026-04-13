---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Starting Communication
description: "If the agent is not in a started state, the status can be changed to 'started'."
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

#  Starting Communication

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

If the agent is not in a started state, the status can be changed to 'started'.

To perform this procedure, complete the following steps:

1.  Select on **Machines Status** under the **Operation** topic
2.  Select on the **Table** tab or the **Map** tab
3.  *(Optional)* Right-click on the **machine** that requires starting
4.  Select on **Start Communication** from the menu
:::

 

## FAQs

**Q: How many steps does the Starting Communication procedure involve?**

The Starting Communication procedure involves 4 steps. Complete all steps in order and save your changes.

## Glossary

**LSAM (Local Schedule Activity Monitor)**: An agent installed on a target platform that runs jobs in the native language of that platform and communicates results back to SAM via SMANetCom over TCP/IP.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
