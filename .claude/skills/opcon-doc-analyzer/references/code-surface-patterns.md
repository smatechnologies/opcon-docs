# Code Surface Patterns

Use these grep patterns to efficiently extract the public-facing surface of the
OpCon codebase — the parts most likely to require documentation coverage.

Run all patterns from the codebase root unless a scoped path is specified.

---

## REST API Endpoints (C# / ASP.NET)

```bash
# All HTTP method attributes — captures GET, POST, PUT, PATCH, DELETE
grep -rn "\[Http\(Get\|Post\|Put\|Patch\|Delete\)" --include="*.cs" .

# Route attributes on controllers
grep -rn "\[Route(" --include="*.cs" . | grep -v "//\|Test\|Spec"

# ApiController classes (class-level, identifies controller files)
grep -rn "\[ApiController\]" --include="*.cs" . -l

# Named route parameters (helps identify documented path params)
grep -rn "FromRoute\|FromQuery\|FromBody" --include="*.cs" .
```

**What to do with results:**
- List each unique route pattern as a candidate endpoint for documentation
- For each endpoint, note: HTTP method, route path, query/body params
- Cross-reference against docs/api/reference/ or equivalent

---

## OpCon Plugin Entry Points

```bash
# Plugin base classes and interfaces (adjust to actual namespace)
grep -rn "IPlugin\|PluginBase\|: Plugin" --include="*.cs" . | grep -v "//\|Test"

# Plugin configuration classes
grep -rn "\[PluginConfig\]\|PluginSettings\|IPluginConfiguration" --include="*.cs" .

# Plugin metadata attributes (name, version, description)
grep -rn "\[PluginMeta\|PluginDescriptor\|PluginName" --include="*.cs" .
```

---

## Configuration and Settings

```bash
# appsettings keys (JSON config)
grep -rn "GetSection\|GetValue\|\":" --include="appsettings*.json" . | grep -v "//\|password\|secret\|token"

# Options classes bound to config
grep -rn "IOptions<\|IOptionsSnapshot<\|\.Bind(" --include="*.cs" .

# Environment variable lookups
grep -rn "Environment.GetEnvironmentVariable\|GetEnvironmentVariable" --include="*.cs" .
```

---

## OpCon Events

```bash
# Event class definitions
grep -rn "class.*Event\b" --include="*.cs" . | grep -v "//\|Test\|EventArgs\|EventHandler"

# Event type enums
grep -rn "enum.*EventType\|EventCategory\|EventName" --include="*.cs" .

# Event payload properties
grep -rn "\[JsonProperty\]" --include="*.cs" . -l | xargs grep -l "Event"
```

---

## JSON Serialization (field names in API responses)

```bash
# JsonProperty attribute — authoritative for camelCase field names
grep -rn "\[JsonProperty(" --include="*.cs" .

# System.Text.Json equivalents
grep -rn "\[JsonPropertyName(" --include="*.cs" .
```

---

## Error Codes and Exception Types

```bash
# Custom exception classes
grep -rn "class.*Exception\b" --include="*.cs" . | grep -v "//\|Test"

# HTTP status code returns
grep -rn "StatusCode\|BadRequest\|NotFound\|Conflict\|Forbidden\|Unauthorized" --include="*.cs" . | grep "return\|throw"

# Error message strings (candidates for Common Issues section)
grep -rn "throw new\|ErrorMessage\|\"error\":" --include="*.cs" . | grep -v "//\|Test" | head -50
```

---

## UI-Facing Enums and Constants

```bash
# Enums (may surface in UI dropdowns or documented as valid values)
grep -rn "^[[:space:]]*public enum " --include="*.cs" . | grep -v "Test\|Internal\|Private"

# Const strings used as identifiers
grep -rn "public const string\|public static readonly string" --include="*.cs" . | grep -v "//\|Test"
```

---

## Agent / LSAM Configuration

```bash
# Agent configuration model classes
grep -rn "AgentConfig\|LsamConfig\|AgentSettings\|MachineConfig" --include="*.cs" .

# Agent-facing property definitions
grep -rn "\[AgentProperty\|MachineProperty\|AgentCapability" --include="*.cs" .
```

---

## Tips for Efficient Analysis

1. **Start with `-l` (files only)** to get a file list before reading content.
   Use `grep -rn [pattern] --include="*.cs" . -l` then prioritize files.

2. **Exclude test projects early:**
   ```bash
   grep -rn [pattern] --include="*.cs" . --exclude-dir="*.Tests" --exclude-dir="test" -l
   ```

3. **Combine with doc search:** For each code finding, immediately search the
   doc tree for the term before logging a gap:
   ```bash
   grep -rn "[TermFromCode]" --include="*.md" docs/
   ```
   If no results, log as **Missing**. If results found, compare for accuracy.

4. **Batch by controller:** Process one controller file at a time. Read the
   controller, extract its endpoints, then search docs for each. This keeps
   findings organized by subsystem.
