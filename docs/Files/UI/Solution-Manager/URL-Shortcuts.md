---
title: URL Shortcuts
description: "URL shortcuts let users navigate directly to specific areas of Solution Manager — such as Self Service, Vision, or Operations — by appending a path to the base URL, bypassing the Home page."
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

# URL Shortcuts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

URL shortcuts let users navigate directly to specific areas of Solution Manager — such as Self Service, Vision, or Operations — by appending a path to the base URL, bypassing the Home page.

## When Would You Use It?

- You need to configure or manage URL Shortcuts in OpCon

## Why Would You Use It?

- **Centralized control**: Managing URL Shortcuts through OpCon provides consistent oversight and a full audit trail for all changes

## Self Service Shortcut

To go directly to Self Service, bypassing the Home page, use this URL syntax: `https://server:port/selfservice`

If not already logged in, you will be prompted to log into SMA Solution Manager before being redirected to Self Service.

## Service Request Shortcut

To go directly to a Service Request, use this URL syntax: `https://server:port/selfservice/servicerequest/execution/servicerequestname`

:::tip Example

`https://server:port/selfservice/servicerequest/execution/run backup`

Modern browsers handle special characters automatically, so "run backup" may be transformed to:

`https://server:port/selfservice/servicerequest/execution/run-backup`

If not already logged in, you will be prompted to log in before being redirected to the Service Request form.

:::

Hide/Disable rules applied to a Service Request affect URL shortcut access:

- **Disabled**: The URL shortcut will not be honored
- **Hidden (not Disabled)**: The URL shortcut will be honored. Only users with the shortcut can access the hidden Service Request
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Disabled | The URL shortcut will not be honored | — | — |
| Hidden (not Disabled) | The URL shortcut will be honored. | — | — |
## FAQs

**Q: What does URL Shortcuts cover?**

This page covers Self Service Shortcut, Service Request Shortcut.

## Glossary

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Service Request**: A Solution Manager feature that lets operators trigger predefined automation workflows using a simple form. Service Requests encapsulate schedule builds, job submissions, or events without requiring direct access to schedule definitions.
