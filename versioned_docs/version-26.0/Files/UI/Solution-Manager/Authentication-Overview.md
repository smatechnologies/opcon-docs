---
title: Authentication Overview
description: "Authentication controls how users prove their identity before accessing OpCon."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-03-18
doc_type: conceptual
---

**Theme:** Overview | **Who is it for?** All users who access Solution Manager and administrators who configure authentication

## What Is It?

Authentication controls how users prove their identity before accessing OpCon. Solution Manager supports username/password login, SSO (single sign-on), and external API token generation for integration use cases.

## When Would You Use It?

- You need to controls how users prove their identity before accessing OpCon using Authentication

## Why Would You Use It?

- **Centralized control**: Authentication controls how users prove their identity before accessing OpCon

## When would you use this section?

- A user needs to log in to Solution Manager for the first time
- A user has forgotten their password and needs to reset it
- You are configuring SSO for your organization
- You need to generate an external token for API or integration access

## What is in this section?

| Page | Description |
|------|-------------|
| Log In to Solution Manager | Standard username and password authentication |
| Reset a Forgotten Password | Self-service password recovery workflow |
| Generate External Tokens | Create long-lived API tokens for external integrations |

## Glossary

| Term | Definition |
| --- | --- |
| API (Application Programming Interface) | A set of endpoints that allows external applications to interact with OpCon programmatically to trigger jobs, retrieve status, or manage objects. |
| Role | A named collection of privileges that can be assigned to one or more user accounts. Users in a role inherit all of that role's privileges. |
| Solution Manager (SM) | The browser-based web interface for OpCon. Provides access to operations, self-service, vision dashboards, and configuration. |
| SSO (Single Sign-On) | An authentication method that allows users to log in once and access multiple applications without re-entering credentials. |
| Token | A reference to a property value using the `[[ ]]` syntax. The SAM replaces tokens with their runtime values when processing jobs. |

## FAQs

**Q: Who manages authentication in OpCon?**

System administrators configure authentication settings. All users are responsible for managing their own credentials and access.

**Q: Where should I start with authentication setup?**

Begin with the overview pages in the sidebar. If you are new, review access and role requirements with your OpCon system administrator before making configuration changes.
