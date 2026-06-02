---
title: Expression Dependency
description: "The Expression Dependency tab lets you define and maintain job dependencies on expressions using the Property Expressions API."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: conceptual
---

# Expression Dependency

The **Expression Dependency** tab lets you define and maintain job dependencies on expressions using the Property Expressions API. A job with an expression dependency does not start until the configured expression evaluates to `True`.

You can configure two independent expressions per job:

| Field | Scope | Behavior |
|---|---|---|
| **Job Expression** | Applies to the job regardless of frequency | The job does not start unless this expression evaluates to `True` |
| **Frequency Expression** | Applies to a specific frequency | The job does not start on that frequency unless this expression evaluates to `True` |

In the Master Job editor, you select a frequency from the **Frequency List** before entering the **Frequency Expression**. The frequency expression field is disabled until you select a frequency.

From this tab you can:

- [Add Expression Dependencies](Adding-Expression-Dependencies.md)
- [Edit Expression Dependencies](Editing-Expression-Dependencies.md)
- [Delete Expression Dependencies](Deleting-Expression-Dependencies.md)

For syntax rules and supported operators, refer to [Property Expressions API Syntax](../../../reference/property-expressions-syntax.md). For examples and use cases, refer to the [Use Cases](../../../reference/property-expressions-syntax.md#Use) section.
