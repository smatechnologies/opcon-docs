---
title: Creating Data Input Files
description: "Input files containing dynamic transactions for processing by SMADDI must be in a specific format."
product_area: Utilities
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Procedural
  - System Administrator
  - Automation Engineer
  - System Configuration
last_updated: 2026-03-18
doc_type: procedural
---

# Creating Data Input Files

**Theme:** Configure  
**Who Is It For?** System Administrator, Automation Engineer

## What Is It?

Input files containing dynamic transactions for processing by SMADDI must be in a specific format. The file should be a string of ASCII text in the form of an XML document and be less than two megabytes (MB). No in-depth knowledge of XML must create a working input file.

:::caution
If a data input file is larger than two megabytes (MB), the SMADDI service cannot process the file. Continuous recommends the administrator delete data input files larger than two MB.
:::

## When Would You Use It?

- You need to create Data Input Files in OpCon Utilities
- A new business process or automation requirement calls for a Data Input Files that does not yet exist

## Why Would You Use It?

- **Standardize definitions**: Creating Data Input Files in OpCon ensures consistent, repeatable configurations that all schedules and jobs can reference
- All Data Input Files definitions are stored in the OpCon database, making them available to all authorized interfaces and users

## Understanding Terms and Structure

Familiarization with the following terms is helpful in creating input files:

- **Element**: An input file component consisting of a start tag, data, and an end tag
- **Start Tag**: The first component of an element. The format is the less than character (<), the element name, and the greater than character (\>). For example: <element\>
- **Element Data**: The second component of an element. This is the data that is entered in the OpCon database. In some cases the data is optional
- **End Tag**: The last component of an element. The format is the less than character (<), a slash character (/), the element name, and the greater than character (\>). For example: </element\>
- **Nesting**: The placement of one element inside another. A parent element requires one or more child elements placed in its data
- **Parent Element**: An element requiring one or more nested elements in its data
- **Child Element**: An element placed within the data of another element. If a child element is not placed within the parent element, the data is invalid

:::note
Some elements can be both parent and child elements.
:::

:::tip Example
The following is an example of nested elements in a parent/child relationship:

```xml
<job>
<jname>Job1</jname>
<pmname>WindowsMachA</pmname>
</job>
```

The **jname** and **pmname** child elements are nested in the **job** parent element.
:::

## Formatting the Input File

The SMADDI service requires that all elements be nested as described in [Data Input Message Elements](Data-Input-Message-Elements.md). The formatting of elements is not important to the service; however, Continuous recommends the indentation for easiest readability. Carriage returns, line feeds, and non-significant spaces are optional and are ignored. Use two forward slash characters (//) to "comment out" a line.

:::note
Spaces in the data portion of an element are important and are considered part of the data for input to the OpCon database.
:::

:::tip Example
The SMADDI service would interpret the following sets of elements in the same way:

```xml
<id1><elt1>a</elt1><elt2>b</elt2></id1>
```

OR

```xml
<id1>
<elt1>a</elt1>
<elt2>b</elt2>
</id1>
```

// This is an example for formatting elements.
:::

## Configuration Options

| Setting | What It Does | Default | Notes |
|---|---|---|---|
| Element | An input file component consisting of a start tag, data, and an end tag | — | — |
| Start Tag | The first component of an element. | — | — |
| Element Data | The second component of an element. | — | — |
| End Tag | The last component of an element. | — | — |
| Nesting | The placement of one element inside another. | — | — |
| Parent Element | An element requiring one or more nested elements in its data | — | — |
| Child Element | An element placed within the data of another element. | — | — |

## FAQs

**Q: What format must SMADDI input files use?**

Input files must be ASCII text formatted as XML documents and must be less than two megabytes (MB). No in-depth knowledge of XML is required, but elements must be nested as specified in the SMADDI documentation.

**Q: What happens if a SMADDI input file exceeds two megabytes?**

The SMADDI service cannot process files larger than two MB. Continuous recommends deleting data input files that exceed this size limit.

**Q: How do you comment out a line in a SMADDI input file?**

Use two forward slash characters (`//`) at the beginning of the line. The SMADDI service ignores commented-out lines during processing.

## Glossary

**SMADDI (SMA Dynamic Data Input)**: An optional OpCon component that dynamically updates the OpCon database using XML text files placed in monitored input directories. SMADDI uses a Windows service and stored procedures to validate and commit the data.

**Job**: The fundamental unit of work in OpCon. A job defines what to run, on which machine, when to start, and what conditions must be met. Job results are tracked and can trigger events and notifications.

**OpCon**: Continuous' workflow automation platform. The OpCon server includes the database, SAM and Supporting Services (SAM-SS), and graphical user interfaces. agents installed on target platforms run jobs and report results.
