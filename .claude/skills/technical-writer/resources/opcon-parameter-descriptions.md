# Parameter Descriptions

> For writing and formatting standards, see
> [opcon-documentation-standards.md](opcon-documentation-standards.md).

Guidelines for writing clear, consistent descriptions for plugin parameter definitions.

## Parameter Object Overview

Each parameter in a plugin consists of the following components:

| Component | Purpose |
|-----------|---------|
| Id | Unique identifier for the parameter |
| Name | User-facing label displayed in the UI |
| Description | Explanatory text describing the parameter's effect |
| Type | The data type and input control used |
| Optionality | Whether the parameter is required, recommended, or optional |

### Parameter Types

| Type | Use Case |
|------|----------|
| Boolean | Checkbox for yes/no options (most common) |
| Text | Single-line text input |
| TextArea | Multi-line text input |
| Password | Masked text input for sensitive values |
| Hidden | Stored value not displayed to users |
| Image | Image upload (rare) |

### Optionality Levels

| Level | Meaning | Display |
|-------|---------|---------|
| Required | Must be provided for the plugin to function | Shown with "Required:" prefix |
| Recommended | Strongly suggested but not mandatory | Shown with "Recommended:" prefix |
| Optional | Can be omitted; plugin works without it | Shown with "Optional:" prefix |

The optionality prefix is auto-rendered in the UI based on the parameter's optionality level - do not include it in the description text.

## Quick Reference

| Parameter Type | Pattern | Example |
|----------------|---------|---------|
| Boolean filter | Results will include [items]. | Results will include jobs currently on hold. |
| Boolean toggle | [Action/Feature] will be [enabled/applied]. | Connection will use the test environment. |
| Boolean option | Select this option to [action]. | Select this option to include sub-schedule jobs. |
| Credential | Brief clarifying note. | The service account used to authenticate to the API. |
| Configuration | Defines/Specifies [what it sets]. | Defines the beginning of the date range for filtered results. |

## When to Include Descriptions

**Include descriptions when:**
- The parameter name alone is ambiguous
- Users need context about the effect
- There are important caveats or notes

**Omit descriptions when:**
- The parameter name is self-explanatory (e.g., "Username", "Password")
- The purpose is obvious from context

## Description Patterns

### Boolean Filter Parameters
Use when the parameter includes/excludes items in results:

| Name | Description |
|------|-------------|
| Held Jobs | Results will include jobs currently on hold. |
| Completed Jobs | Results will include jobs that have finished successfully. |
| Include Sub-Schedules | Results will include jobs from nested sub-schedules. |

### Boolean Toggle Parameters
Use when the parameter enables a feature or behavior:

| Name | Description |
|------|-------------|
| Use Test Environment | Connection will use the test environment. |
| Suppress Notifications | Job status notifications will be suppressed. |

### Boolean Option Parameters
Use "Select this option to..." for clarity:

| Name | Description |
|------|-------------|
| Include Offline Machines | Select this option to include machines that are currently offline. |
| Include Run History | Select this option to include prior job run history. |

### Credential Parameters
Keep brief; clarify only when needed:

| Name | Description |
|------|-------------|
| API Token | The token used to authenticate to the service. |
| Service Account | The account under which the connection runs. |
| Client Secret | (Often omitted - self-explanatory) |

### Configuration Parameters
Use "Defines" or "Specifies" for required settings:

| Name | Description |
|------|-------------|
| Hostname | Defines the server address for the connection. |
| Search Scope | Specifies which schedules will be searched. |

## Writing Guidelines

### Do
- Use present tense or future tense consistently
- Start Boolean filter descriptions with "Results will include..."
- Keep descriptions to one sentence when possible
- Be specific about what gets included, excluded, or changed
- Use consistent terminology across similar parameters

### Don't
- Include "Optional:" or "Required:" prefixes (auto-rendered based on optionality level)
- Use ambiguous terms like "may" or "might" - be definitive
- Add implementation details unless relevant to users
- Use bullet points or special formatting within descriptions
- Repeat information already conveyed by the parameter name

### Common Mistakes

❌ "Optional: Results will include held jobs." (don't add Optional prefix)
❌ "This might include offline machines." (don't use "might" — be definitive)
❌ "Include Held Jobs: Select this option to include held jobs." (redundant — don't repeat the parameter name)

## Caveats and Notes

For important context, append to the description:

```
Include Sub-Schedules
Results will include jobs from nested sub-schedules. Note: Including sub-schedules can significantly increase the size of the result set.
```

## Checklist

- [ ] Description explains the parameter's effect, not its requirement
- [ ] Uses consistent tense (present or future)
- [ ] No "Optional:/Required:" prefixes (auto-rendered based on optionality level)
- [ ] One sentence when possible
- [ ] Specific about what changes when parameter is set
- [ ] No redundant information from parameter name
- [ ] Important caveats included when relevant
