---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Monitoring SAP R/3 and CRM Background Process Resources
description: "The Background Process Resources view shows the current utilization of SAP R/3 and CRM background work processes on a given machine."
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

# Monitoring SAP R/3 and CRM Background Process Resources

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

The Background Process Resources view in Enterprise Manager shows the current utilization of SAP R/3 and CRM background work processes on a given machine. Operators use this to understand available SAP capacity before submitting additional background jobs.

To monitor the background process resources, complete the following steps:

1. Select on **Machines Status** under the **Operation** topic
2. Right-click on the preferred **SAP R/3 and CRM machine name**
3. Hover over **SAP Machine** in the right-click menu and select **Background Process Resources**

## FAQs

**Q: How many steps does the Monitoring SAP R/3 and CRM Background Process Resources procedure involve?**

The Monitoring SAP R/3 and CRM Background Process Resources procedure involves 3 steps. Complete all steps in order and save your changes.

## Glossary

**Resource**: A numeric variable in OpCon representing a finite pool. Jobs can be configured to require a set number of resource units to run, limiting concurrent executions and preventing resource contention.

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.
