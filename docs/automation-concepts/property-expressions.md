---
title: Property Expressions API
description: "The Property Expressions API gives programmers advanced functionality for controlling Job Dependencies and Events."
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

**Theme:** Configure  
**Who Is It For?** Automation Engineer, Business Analyst

## What Is It?

The Property Expressions API gives programmers advanced functionality for controlling Job Dependencies and Events. Property expressions access system and user-defined properties to perform operations whose results drive decisions. For more information, refer to [Property Expressions API Syntax](../reference/property-expressions-syntax.md).

Use cases covered in that reference section include:

- A job dependency on the specific string value of a property
- A job dependency on the specific numeric (integer) value of a property
- A job dependency on a machine running no jobs
- Triggering events based on deviation from estimated run time
- Setting the value of a property with an expression

## When Would You Use It?

- The Property Expressions API gives programmers advanced functionality for controlling Job Dependencies and Events

## Why Would You Use It?

- **Property Expressions**: The Property Expressions API gives programmers advanced functionality for controlling Job Dependencies and Events

## FAQs

**Q: What is the Property Expressions API used for?**

The Property Expressions API gives programmers advanced functionality for controlling Job Dependencies and Events. Expressions can access system and user-defined properties to perform operations whose results drive scheduling decisions.

**Q: Can a property expression be used as a job dependency condition?**

Yes. Property expressions can evaluate string values, numeric (integer) values, or machine states as dependency conditions — enabling complex, data-driven dependency logic beyond standard job dependencies.

**Q: Where can I find the full syntax for property expressions?**

The complete syntax reference is available in [Property Expressions API Syntax](../reference/property-expressions-syntax.md).

## Glossary

**Machine**: A platform defined in the OpCon database that has an agent installed. OpCon routes job execution requests to machines via SMANetCom, and machines report job completion status back to SAM.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.
