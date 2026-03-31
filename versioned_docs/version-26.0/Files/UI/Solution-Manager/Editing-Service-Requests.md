---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Editing Service Requests
description: "Use this procedure to edit Service Requests in Solution Manager."
product_area: Solution Manager
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

# Editing Service Requests

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to edit Service Requests in Solution Manager.

To edit a service request, complete the following steps:

1. Select the **Edit** icon on the Service Request button
2. Modify the existing information or settings
3. Select **Save**

## When Would You Use It?

- An existing Service Requests in Solution Manager requires changes
- A change in process, system, or business requirement makes the current Service Requests definition outdated

## Why Would You Use It?

- **Keep definitions current**: Updating Service Requests in Solution Manager ensures changes apply to future builds without disrupting currently running schedules
- Changes to Service Requests are recorded in the OpCon audit log, providing a complete modification history


## FAQs

**Q: Do edits to service requests take effect immediately?**

Changes saved to service requests in the Job Master take effect the next time the record is built or referenced. Edits to Daily table records apply only to the current instance.

## Glossary

**Daily Tables**: The OpCon database tables that hold the active, date-specific instances of schedules and jobs built for execution. Changes to daily tables affect only the current day's automation.

**Service Request**: A Solution Manager feature that lets operators trigger predefined automation workflows using a simple form. Service Requests encapsulate schedule builds, job submissions, or events without requiring direct access to schedule definitions.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
