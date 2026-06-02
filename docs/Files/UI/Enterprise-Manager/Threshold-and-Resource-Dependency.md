---
title: Threshold/Resource Dependency
description: "The Threshold/Resource Dependency tab in Enterprise Manager lets you view, add, edit, and remove job dependencies on threshold and resource values."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Reference
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-03-18
doc_type: reference
---

# Threshold/Resource Dependency

The **Threshold/Resource Dependency** tab displays the threshold and resource dependencies defined for a job and provides controls to add, edit, and remove them. The tab is available in **Job Master** under the **Administration** topic, on the **Dependencies** tab of the **Job Properties** frame.

## Tab layout

The tab contains a dependency filter panel and a dependency table.

### Dependency filters (master jobs only)

| Control | Description |
|---|---|
| **Job Related** | When selected, the table shows dependencies that apply to all frequencies of the job. |
| **Frequency Related** | When selected, the table shows dependencies scoped to one or more specific frequencies. |
| **Frequency List** | Lists the frequencies defined for the job. Select one or more frequencies to filter the table when **Frequency Related** is active. |

### Dependency table columns

The columns shown depend on whether you are viewing a master job or a daily job.

**Master job view**

| Column | Description |
|---|---|
| **Frequency** | The frequency the dependency applies to, or blank if job-related (applies to all frequencies). |
| **Name** | The name of the threshold or resource. |
| **Operator** | The comparison operator for a threshold dependency (=, ≠, <, >, ≥, ≤). Resources always use **Requires**. |
| **Value** | The numeric value the threshold must satisfy, or the number of resource units required. Displays **All** when the dependency requires all available units of a resource. |
| **Type** | Indicates whether the dependency is a **Threshold** or a **Resource**. |

**Daily job view**

The daily view includes the same columns except **Frequency**, and adds:

| Column | Description |
|---|---|
| **Current Value** | The current value of the threshold or resource as of the last refresh. For resources, displays the current in-use count and the maximum. |

### Action buttons

| Button | Description |
|---|---|
| **Add** | Opens the **Threshold/Resource Dependency** dialog to create a new dependency. |
| **Edit** | Opens the **Threshold/Resource Dependency** dialog for the selected dependency. |
| **Remove** | Deletes the selected dependency after confirmation. |

## Threshold/Resource Dependency dialog fields

When you select **Add** or **Edit**, the **Threshold/Resource Dependency** dialog opens. The dialog contains the following fields:

| Field | Description |
|---|---|
| **Threshold/Resource** | Select the threshold or resource from the list of all defined thresholds and resources. |
| **Operator** | For thresholds: select the comparison operator (=, ≠, <, >, ≥, ≤). For resources, the operator is fixed to **Requires** and cannot be changed. |
| **Value** | Enter the numeric value. For resources, selecting **All** sets the dependency to require all available units and disables the **Value** field. |
| **Frequency** | (Master jobs only) Select the frequency this dependency applies to, or leave blank to apply to all frequencies. |

OpCon prevents saving a dependency if the same threshold or resource is already defined for the same job and frequency combination.

## Related procedures

- [Adding Threshold/Resource Dependencies](Adding-Threshold-and-Resource-Dependencies.md)
- [Editing Threshold/Resource Dependencies](Editing-Threshold-and-Resource-Dependencies.md)
- [Deleting Threshold/Resource Dependencies](Deleting-Threshold-and-Resource-Dependencies.md)

## Related concepts

For conceptual information about how threshold and resource dependencies control job execution, refer to [Threshold Dependencies](../../../job-components/threshold-resource-dependencies.md#threshold-dependencies) and [Resource Dependencies](../../../job-components/threshold-resource-dependencies.md#resource-dependencies).
