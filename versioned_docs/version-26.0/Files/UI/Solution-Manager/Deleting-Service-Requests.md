---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Service Requests
description: "Use this procedure to delete Service Requests in Solution Manager."
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

# Deleting Service Requests

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Use this procedure to delete Service Requests in Solution Manager.

To delete a service request, complete the following steps:

1. Select the **Delete** icon on the Service Request button
2. Select **Yes** in the **Delete** window

## When Would You Use It?

- An existing Service Requests in Solution Manager is no longer needed
- The Service Requests has been decommissioned or replaced and should be removed to keep the configuration clean

## Why Would You Use It?

- **Maintain a clean environment**: Removing unused Service Requests definitions reduces clutter and prevents accidental use of outdated or obsolete configurations
- Deletions are recorded in the OpCon audit log, providing traceability for compliance and change management reviews

## FAQs

**Q: Can a service requests record be recovered after deletion?**

No. Deleting a service requests record permanently removes it from OpCon. Verify the record is no longer needed before deleting it.

**Q: How many service requests records can you delete at once?**

Select the specific service requests record you want to delete, then select the **Delete** button on the toolbar. Confirm the deletion when prompted.

## Glossary

**Service Request**: A Solution Manager feature that lets operators trigger predefined automation workflows using a simple form. Service Requests encapsulate schedule builds, job submissions, or events without requiring direct access to schedule definitions.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
