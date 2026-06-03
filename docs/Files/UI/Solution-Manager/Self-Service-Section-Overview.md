---
title: Self Service Overview
description: "Self Service is a licensed Solution Manager module that lets non-technical staff trigger OpCon automation workflows without IT involvement."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-06-02
doc_type: conceptual
---

# Self Service Overview

**Theme:** Overview | **Who is it for?** Administrators who set up Self Service and operations staff or business users who run service requests

## What Is It?

Self Service is a licensed Solution Manager module that lets non-technical staff trigger OpCon automation workflows without IT involvement. Administrators design service requests with optional user inputs; front-office staff run them on demand.

- Set up Self Service for the first time or configure service requests
- Create, edit, copy, or delete service requests
- Configure user inputs to pass parameters into a workflow
- Run a service request as a business user
- Control which users can see or run specific service requests

## What is in this section?

| Page | Description |
|------|-------------|
| Manage Self Service | Overview of the Self Service module and license activation |
| Create Service Requests | Build a new service request with categories and styling |
| Edit Service Requests | Modify an existing service request definition |
| Copy Service Requests | Duplicate a service request as a starting point for a new one |
| Delete Service Requests | Remove a service request permanently |
| Disable/Hide Service Requests | Make a service request inactive or hidden without deleting it |
| Stylize Service Requests | Customize the appearance of service request cards |
| Run Service Requests | Run a service request as an end user |
| Filter Service Requests | Search and filter the self service catalog |
| View Process Indicators | Monitor the progress of a running service request |
| Work in Admin Mode | Manage service requests and categories in admin mode |
| Work in User Mode | Run and interact with service requests as an end user |
| User Inputs | Configure text, number, date, choice, and other input types |
| Executions History | Review the audit trail of submitted service requests, including who submitted each request and what inputs were provided |

## Glossary

| Term | Definition |
| --- | --- |
| Module | A functional area within Solution Manager, such as Operations, Studio, Vision, or Self Service. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Self Service | A Solution Manager module that allows non-technical users to trigger OpCon jobs and workflows through a simplified, button-based interface. |
| Solution Manager (SM) | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |

## Viewing Execution History

The **Executions History** screen, located at **Self-Service > Executions History**, provides a complete audit trail of every service request that has been submitted. Use this screen to review who submitted a request, what parameters were supplied, and what OpCon actions resulted.

### What the screen shows

Each entry in Executions History displays the following audit trail fields:

| Field | Description |
|-------|-------------|
| User | The OpCon user account that submitted the service request. |
| Service Request | The name of the service request that was submitted. |
| Variables | The input values provided by the user at submission time. |
| Submitted as OCADM | Indicates the request ran as the built-in OCADM administrative account (which has full privileges). |
| OpCon Requests | The resulting OpCon actions (for example, job adds or property updates) that were triggered by the submission. |

### Retention setting

OpCon automatically removes execution history records older than a configured threshold. You control this threshold with the **Number of Days to Keep Service Request Executions** setting in **Server Options**. The default retention period is 7 days.

## FAQs

**Q: What does the Self Service Overview cover?**

Self Service is a licensed Solution Manager module that lets non-technical staff trigger OpCon automation workflows without IT involvement. Administrators design service requests with optional user inputs; front-office staff run them on demand.

**Q: Who manages Solution Manager - Self Service in OpCon?**

Administrators, operations staff, and business analysts manage Solution Manager - Self Service, including settings, user access, and monitoring.

**Q: Where should I start in the Solution Manager - Self Service section?**

Begin with the overview pages in the sidebar. Each page covers a distinct feature or workflow. If you are new to this area, review access and role requirements with your OpCon system administrator before making changes.
