---
title: Creating Data Input Files
description: "Input files containing dynamic transactions for processing by SMADDI must be in a specific format."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: conceptual
---

# Creating Data Input Files

Input files containing dynamic transactions for processing by SMADDI must be in a specific format. Each file must be a string of ASCII text in the form of an XML document and must be less than two megabytes (MB). You do not need in-depth knowledge of XML to create a working input file.

:::caution
If a data input file is larger than two megabytes (MB), the SMADDI service cannot process the file. Continuous recommends that you delete data input files larger than two MB.
:::

## XML Terms and Structure

Understanding the following terms helps you create valid input files:

| Term | Definition |
|---|---|
| **Element** | An input file component consisting of a start tag, data, and an end tag. |
| **Start Tag** | The first component of an element. Format: `<elementname>` |
| **Element Data** | The second component of an element. This is the data written to the OpCon database. In some cases the data is optional. |
| **End Tag** | The last component of an element. Format: `</elementname>` |
| **Nesting** | The placement of one element inside another. A parent element requires one or more child elements placed in its data. |
| **Parent Element** | An element that requires one or more nested child elements in its data. |
| **Child Element** | An element placed within the data of another element. If a child element is not placed within its parent element, the data is invalid. |

:::note
Some elements can be both parent and child elements.
:::

**Example — nested elements in a parent/child relationship:**

```xml
<job>
  <jname>Job1</jname>
  <pmname>WindowsMachA</pmname>
</job>
```

In this example, `jname` and `pmname` are child elements nested inside the `job` parent element.

## Formatting Rules

The SMADDI service requires that all elements be nested as described in [Data Input Message Elements](Data-Input-Message-Elements.md). The exact layout of elements does not affect processing; however, Continuous recommends using indentation for readability. Carriage returns, line feeds, and non-significant spaces are optional and are ignored by the service.

To comment out a line, prefix it with two forward slash characters (`//`). The service ignores commented lines during processing.

:::note
Spaces within the data portion of an element are significant and are treated as part of the data written to the OpCon database.
:::

**Example — equivalent formatting:**

The SMADDI service treats the following two representations identically:

```xml
<id1><elt1>a</elt1><elt2>b</elt2></id1>
```

```xml
<id1>
  <elt1>a</elt1>
  <elt2>b</elt2>
</id1>
```

```xml
// This is an example of a commented line.
```
