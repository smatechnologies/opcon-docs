---
title: Managing Self Service
description: "Self Service is a licensed OpCon module in the Solution Manager web interface that enables front-office staff to trigger OpCon workflows without IT involvement."
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

# Managing Self Service

Self Service is a licensed OpCon module in Solution Manager that enables front-office staff to run OpCon workflows without IT involvement. Administrators create and manage service requests — buttons that users select to trigger predefined OpCon events. Service requests can be organized into categories and restricted to specific roles.

## Required Privileges

Access to Self Service requires the following:

- A valid Self Service license applied to your OpCon server
- The **View Service Requests** function privilege assigned to your role

To create, edit, copy, or delete service requests and categories, your role must also have the **Maintain Service Requests** function privilege. Users with this privilege see an **Admin Mode** toggle in the Self Service toolbar. Enabling **Admin Mode** reveals edit, copy, and delete controls on each service request button.

## Requesting and Storing the License File

A Self Service license is required before the module appears in Solution Manager. Complete the following procedures to request and apply the license.

### Request the License File

To request the license file, complete the following steps:

1. Log in to **Solution Manager**.
2. Go to **Library** > **License & Support** > **Licensing**.
3. Copy the **System ID** value.
4. Go to the Continuous Support Portal and submit a license file request. Include:

   - Your company name
   - The environment type (for example, Production)
   - The System ID copied from Solution Manager
   - A note requesting Self Service support

### Apply the License File

To apply the received license file, complete the following steps:

1. Save the license file to `<Configuration Directory>\OpConxps\SAM\` on your OpCon server.
2. _(Optional)_ Restart the **SMA OpCon Service Manager** in the **Windows Services** tool to apply the file immediately without waiting for the automatic pickup interval.

**Result:** SAM detects the new license file. If you do not restart the service, SAM picks up the file automatically within 6 hours.

## Accessing Self Service

To open Self Service, complete the following steps:

1. Log in to **Solution Manager**.
2. Select **Self Service** from the navigation menu.

**Result:** The Self Service page displays all service request buttons available to your role, organized by category. If no service requests are assigned to your role, a message indicates that no requests are available.

## Filtering Service Requests

The Self Service page provides filters to help you locate service requests quickly.

To filter the displayed service requests, complete the following steps:

1. In the **Category** field, enter a category name to filter by category.
2. In the **Role** field, select a role to filter by role assignment.
3. In the **Name** field, enter all or part of a service request name.
4. Select **Filter** to apply your criteria.

To clear all active filters, select **Clear**.

## System Variables in Service Requests

When building service request events, you can reference the following system variables. Solution Manager resolves these values at run time using the credentials of the logged-in user.

| Variable | Resolved value |
|---|---|
| `${SM.USER.LOGIN}` | The user's login name |
| `${SM.USER.NAME}` | The user's display name |
| `${SM.USER.EMAIL}` | The user's email address |
| `${SM.USER.COMMENTS}` | The user's comments field |
