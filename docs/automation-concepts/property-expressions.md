---
title: Property Expressions API
description: "The Property Expressions API gives you advanced control over job dependencies and events by evaluating expressions that read and write OpCon property values at runtime."
product_area: Automation Concepts
audience: Automation Engineer, Business Analyst
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - Automation Engineer
  - Business Analyst
  - Jobs
last_updated: 2026-03-18
doc_type: conceptual
---

# Property Expressions API

The Property Expressions API evaluates expressions that read OpCon property values, perform operations on those values, and return a result. You use these expressions to build dynamic dependency conditions, trigger events based on runtime data, and set property values programmatically.

For the complete syntax reference — including all operators, functions, and operand types — see [Property Expressions API Syntax](../reference/property-expressions-syntax.md).

## How property expressions work

An expression combines OpCon property tokens, literal values, operators, and functions into a single statement. When OpCon evaluates the expression, it resolves each token to its current property value and computes the result.

All property values are stored as strings. Use the conversion functions (`ToInt()`, `ToLong()`, `ToFloat()`) to treat a property value as a number before performing arithmetic or comparison operations.

Expressions can evaluate to one of three types:

- **Boolean** — used in dependency conditions and complex expression triggers; the dependency resolves when the result is `true`
- **Numeric** — used in arithmetic, comparisons, and property-value calculations
- **String** — used in string comparisons, concatenation, and property assignments

## Where you can use property expressions

You can use property expressions in the following places within OpCon:

| Location | Purpose | `[[= ]]` wrapper required |
|---|---|---|
| **Expression Dependency** tab | Resolve a job dependency based on the evaluated result | No |
| **Job Completion Complex Expression** trigger | Fire an event based on runtime data after a job completes | No |
| Command line | Embed an evaluated result in a job's command arguments | Yes |
| Event string | Embed an evaluated result in an OpCon event parameter | Yes |
| `$PROPERTY:SET` event | Compute and store a new property value | Yes |

When an expression appears on a command line or in an event string, wrap the entire expression in `[[= ]]` so OpCon evaluates it before passing the value to the command or event. This wrapper is not required in expression dependencies or job completion complex expression triggers.

## Common use cases

The following scenarios illustrate how property expressions solve real automation problems. Full syntax for each example is in [Property Expressions API Syntax — Use cases](../reference/property-expressions-syntax.md#use-cases).

### Depend on a property string value

A job can wait until a Global Property matches a specific string. For example, a job that must only run when a property named `Today` equals the current OpCon date uses the following expression dependency:

`[[Today]]==[[$DATE]]`

When the result is `true`, OpCon resolves the dependency. When the result is `false`, the job remains in **Wait Expression Dependency** status.

### Depend on a property numeric value

A job can wait until a Global Property equals a specific integer. Because all properties are stored as strings, use `ToInt()` to convert the value before comparing:

`ToInt([[BackupServer]])==1`

### Depend on a machine running no jobs

Before running maintenance on a machine, you can confirm the machine is idle:

`ToInt([[MI.$MACHINE RUNNING JOBS.MachineName]]) == 0`

### Trigger events based on run time deviation

The `TimeDiff()` function computes the difference between two times and returns the result in a format you choose. You can compare that difference against the estimated run time to fire events when a job runs shorter or longer than expected.

See [Trigger events when a job runs short or long](../reference/property-expressions-syntax.md#trigger-events-when-a-job-runs-short-or-long) for full expression examples.

### Set a property value with an expression

Use the `$PROPERTY:SET` event with an expression to compute a new property value from existing properties:

`$PROPERTY:SET,Target,[[=(ToInt([[Source1]])-ToInt([[Source2]]))/8]]`

## REST API

OpCon exposes a REST API endpoint that evaluates a property expression and returns the result without saving it to the database. Use this endpoint to test expressions during development or to retrieve computed values from an external system.

**Endpoint:** `POST /api/propertyexpression`

**Request body:**

| Field | Type | Required | Description |
|---|---|---|---|
| `expression` | string | Yes | The property expression to evaluate |

**Response body:**

| Field | Type | Description |
|---|---|---|
| `expression` | string | The expression that was submitted |
| `result` | string | The evaluated result |
| `status` | string | `Success` or `Failed` |
| `message` | string | `Evaluated` on success; the exception message on failure |

If the `expression` field is null or missing, the API returns `400 Bad Request`.

## Related topics

- [Property Expressions API Syntax](../reference/property-expressions-syntax.md) — operators, functions, operand types, and full use-case examples
- [Properties](../objects/properties.md) — property types available for use in expressions
