---
title: URL Shortcuts
description: "URL shortcuts let you go directly to specific areas of Solution Manager — such as Self Service, Vision, or Operations — by appending a path to the base URL, bypassing the Home page."
product_area: Solution Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Solution Manager
last_updated: 2026-05-29
doc_type: conceptual
---

# URL Shortcuts

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

URL shortcuts let you go directly to specific areas of Solution Manager — such as Self Service, Vision, or Operations — by appending a path to the base URL. A URL shortcut bypasses the Home page and takes you straight to the target area. If you are not already logged in, Solution Manager prompts you to log in first and then redirects you to the shortcut destination.

Use URL shortcuts to bookmark a frequently used Service Request, link to a Service Request from an internal portal, or send operators a direct link to the form they need.

## Self Service Shortcut

To go directly to Self Service, bypassing the Home page, use this URL:

```
https://server:port/selfservice
```

If you are not already logged in, Solution Manager prompts you to log in before redirecting you to Self Service.

## Service Request Shortcut

To go directly to a specific Service Request, use this URL, replacing `servicerequestname` with the name of the Service Request:

```
https://server:port/selfservice/servicerequest/execution/servicerequestname
```

:::tip Example

For a Service Request named `run backup`, use:

```
https://server:port/selfservice/servicerequest/execution/run backup
```

Modern browsers handle special characters automatically, so the space in `run backup` may appear in the address bar as a hyphen:

```
https://server:port/selfservice/servicerequest/execution/run-backup
```

If you are not already logged in, Solution Manager prompts you to log in before redirecting you to the Service Request form.

:::

## How Hide and Disable Settings Affect Shortcuts

The **Disabled** and **Hidden** settings configured on a Service Request determine whether its URL shortcut works:

| Service Request setting | Shortcut behavior |
|---|---|
| **Disabled** | The URL shortcut is not honored. |
| **Hidden** (not Disabled) | The URL shortcut is honored. Because a hidden Service Request does not appear in the Self Service page, only users who have the shortcut can reach it. |

## FAQs

**Which Solution Manager areas have URL shortcuts?**

This page documents the Self Service shortcut and the Service Request shortcut. Solution Manager also exposes top-level routes for the Vision (`/vision`) and Operations (`/operations`) areas.

## Glossary

**Solution Manager**: OpCon's browser-based graphical user interface for managing automation data, performing operational actions, and administering the system.

**Service Request**: A Solution Manager feature that lets operators trigger predefined automation using a simple form. Service Requests encapsulate schedule builds, job submissions, or events without requiring direct access to schedule definitions.
