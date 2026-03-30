---
title: Disabling or Hiding Service Requests
description: "You can define rules (OpCon expressions) to disable or hide Service Request buttons."
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

# Disabling or Hiding Service Requests

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

You can define rules (OpCon expressions) to disable or hide Service Request buttons. A rule can be:

- A boolean value (true/false)
- A [token](../../../objects/using-properties.md#tokens) that resolves to "true" or "false"
- A [complex expression](../../../reference/property-expressions-syntax.md)

:::note
Both rules are optional. If neither is defined, the button is enabled and visible.
:::

## When Would You Use It?

- A or Hiding Service Requests feature needs to be suspended in Solution Manager
- Maintenance or troubleshooting requires suspending or Hiding Service Requests temporarily without losing the definition

## Why Would You Use It?

- **Prevent unintended execution**: Disabling or Hiding Service Requests suspends activity without deleting the definition, making it simple to re-enable when ready
- The suspension is recorded in the OpCon audit log, providing an audit trail for change management purposes

## Disabling Service Requests

:::note
The Disable Rule must resolve to "true" or "false". If evaluation fails, the button is disabled by design.
:::

To define a disable rule, complete the following steps:

1. Select the **Edit** button on the Service Request button. The **Edit Service Request** page displays
2. Toggle the **Disable Rule** switch on. A text field appears for entering the expression
3. Enter a boolean value, a token, or a complex expression

## Hiding Service Requests

:::note
The Hide Rule must resolve to "true" or "false". If evaluation fails, the button is hidden by design.
:::

To define a hide rule, complete the following steps:

1. Select the **Edit** button on the Service Request button. The **Edit Service Request** page displays
2. Toggle the **Hide Rule** switch on. A text field appears for entering the expression
3. Enter a boolean value, a token, or a complex expression

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|

## FAQs

**Q: How many steps does the Disabling or Hiding Service Requests procedure involve?**

The Disabling or Hiding Service Requests procedure involves 6 steps. Complete all steps in order and save your changes.

**Q: What does Disabling or Hiding Service Requests cover?**

This page covers Disabling Service Requests, Hiding Service Requests.

## Glossary

**Token (Global Property)**: A named value stored in the OpCon database, referenced in job definitions and events using [[PropertyName]] syntax. Tokens pass dynamic values — such as dates, file paths, or counts — into automation workflows.

**Service Request**: A Solution Manager feature that lets operators trigger predefined automation workflows using a simple form. Service Requests encapsulate schedule builds, job submissions, or events without requiring direct access to schedule definitions.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
