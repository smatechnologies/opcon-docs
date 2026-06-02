---
lang: en-us
viewport: width=device-width, initial-scale=1.0
title: Deleting Service Requests
description: "How to delete a Service Request in Solution Manager using Admin Mode."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-06-02
doc_type: procedural
---

# Deleting Service Requests

Use this procedure to permanently delete a Service Request in Solution Manager. Deletion cannot be undone, so confirm that the Service Request is no longer needed before proceeding.

## Before you begin

Your role must have the **Maintain Service Request** function privilege to delete Service Requests. The **Admin Mode** toolbar button appears only when this privilege is assigned.

## Delete a Service Request

To delete a Service Request, complete the following steps:

1. In Solution Manager, go to **Self Service**.
2. Select the **Admin Mode** toolbar button to enter Admin Mode. The button displays a lock icon; selecting it unlocks editing controls on each Service Request button.
3. Locate the Service Request you want to delete.
4. Select the **Delete** button on that Service Request button.
5. In the confirmation dialog, select **Yes**.

**Result:** The Service Request is permanently removed from OpCon. A success notification confirms the deletion.

## Notes

- You can delete one Service Request at a time. There is no bulk-delete option.
- Deleting a Service Request does not affect jobs or schedules that were previously triggered by it.
- To exit Admin Mode without deleting, select the **Admin Mode** toolbar button again to lock editing controls.
