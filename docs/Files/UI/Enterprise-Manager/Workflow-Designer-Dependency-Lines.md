---
title: Workflow Designer Dependency Lines
description: "In the Workflow Designer, each dependency type is represented by a different line style and endpoint marker."
product_area: Enterprise Manager
audience: System Administrator, Automation Engineer
version_introduced: "[see release notes]"
tags:
  - Conceptual
  - System Administrator
  - Automation Engineer
  - Enterprise Manager
last_updated: 2026-06-02
doc_type: conceptual
---

# Workflow Designer Dependency Lines

In the [Workflow Designer](Using-Workflow-Designer.md), each dependency type uses a distinct line style and endpoint marker so you can identify relationships at a glance. The following table describes each dependency line.

| Line style | Dependency type | Description |
|---|---|---|
| Solid green line with arrow | **Requires Finished OK** | The dependent job must exist in the Daily tables and must complete successfully before the selected job runs. If the dependent job is not in the Daily tables, the selected job does not run unless overridden. |
| Solid red line with arrow | **Requires Failed** | The dependent job must exist in the Daily tables and must fail before the selected job runs. If the dependent job is not in the Daily tables, the selected job does not run unless overridden. |
| Solid dark gray line with arrow | **Requires Ignore Exit Code** | The dependent job must exist in the Daily tables. The selected job runs when the dependent job completes, regardless of exit status. If the dependent job is not in the Daily tables, the selected job does not run unless overridden. |
| Dashed green line with arrow | **After Finished OK** | If the dependent job is in the Daily tables, the selected job waits until the dependent job completes successfully. If the dependent job is not in the Daily tables, the selected job runs without waiting. |
| Dashed red line with arrow | **After Failed** | If the dependent job is in the Daily tables, the selected job waits until the dependent job fails. If the dependent job is not in the Daily tables, the selected job runs without waiting. |
| Dashed dark gray line with arrow | **After Ignore Exit Code** | If the dependent job is in the Daily tables, the selected job waits until the dependent job completes, regardless of exit status. If the dependent job is not in the Daily tables, the selected job runs without waiting. |
| Solid pink line with X at source | **Excludes** | The job at the start of the line (marked with X) excludes the job at the other end. |
| Dashed magenta line with circle at target | **Conflict** | The job at the circle end does not run if the job at the start of the line is currently running. |
| Solid orange line with arrow | **Resource Dependency** | The job at the arrow end requires the resource where the line starts. |
| Solid blue line with arrow | **Threshold Dependency** | The job at the arrow end depends on the threshold where the line starts. |
| Multiple lines between the same two jobs | **Multiple frequency-level dependencies** | Jobs with multiple frequency-level dependencies show multiple lines that start and end at the same points but separate in the middle to show different paths. A diamond marker appears at the midpoint of each path; hovering over the diamond displays a tooltip with the frequency name. |

:::note
Line colors for Requires, After, Excludes, and Conflicts dependencies are configurable in Enterprise Manager preferences. The values in the table above reflect the default colors.
:::
