# API Reference Documentation

Strict output format and rules for per-endpoint API reference files. Every endpoint gets one markdown file. No freeform prose.

## File Naming

| Pattern | File Name | Example |
| --- | --- | --- |
| List (paginated) | `all-{resources}.md` | `all-jobs.md` |
| Get by ID | `get-{resource}.md` | `get-job.md` |
| POST create | `create-{action}.md` | `create-schedule.md` |
| POST action | `{verb}-{resource}.md` | `build-schedule.md`, `cancel-job.md` |

- All endpoint files go in `docs/api/reference/` (flat — no subdirectories)
- List/get files use the resource noun from the route
- POST files use a descriptive verb-noun pair

## Source Material

Derive all documentation from source code — never guess.

- **API controllers:** Search `src/` for `*ApiController*.cs`, especially `Controllers/Api/` folders
- **DTOs:** Search for `*Dto.cs`, `*ListDto.cs`, `*DetailDto.cs`
- **Request DTOs:** Search for `*Request.cs` (e.g., `BuildScheduleRequest.cs`, `CancelJobRequest.cs`)
- **Pagination:** Search for `PaginationParams` and `PaginatedResult`
- **Serialization:** Search for serializer or response-shaping classes to understand response shapes
- **Auth:** Search for token authentication middleware to understand auth requirements
- **Base controller:** Find response helpers and understand the standard response envelope shape

## Templates

### GET — List (Paginated)

````markdown
# All {Resources}

**Endpoint:** `GET /api/{resources}`

**Description:** One sentence describing what this endpoint returns.

## Query Parameters

| Parameter | Type | Required | Description |
| --- | --- | --- | --- |
| `page` | integer | No | Page number (1-based). Default: `1`. |
| `pageSize` | integer | No | Results per page. Default: `50`. |

> Include all supported filter parameters (e.g., `status`, `scheduleId`) with their allowed values in the Description column.

## Response Attributes

| Field | Type | Description |
| --- | --- | --- |
| `items` | array[object] | The result set for the current page. |
| `items[].id` | string (GUID) | Use `[]` notation for array items. |
| `items[].nested.child` | string | Use dot notation for nested fields. |
| `totalCount` | integer | Total matching results across all pages. |
| `page` | integer | Current page number. |
| `pageSize` | integer | Number of results per page. |
| `totalPages` | integer | Total number of pages. |

## Sample Response

```json
{
  "items": [{ one complete item with all fields }],
  "totalCount": 142,
  "page": 1,
  "pageSize": 50,
  "totalPages": 3
}
```
````

### GET — Detail

````markdown
# Get {Resource}

**Endpoint:** `GET /api/{resources}/{id}`

**Description:** One sentence describing what this endpoint returns.

## Path Parameters

| Parameter | Type | Required | Description |
| --- | --- | --- | --- |
| `id` | string (GUID) | Yes | The unique identifier of the resource. |

## Response Attributes

| Field | Type | Description |
| --- | --- | --- |
| `id` | string (GUID) | The unique identifier. |
| `nested.child` | string | Use dot notation for nested fields. |

## Sample Response

```json
{
  "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890"
}
```

## Error Response (404)

```json
{ actual shape from base controller }
```
````

### POST — JSON Body

````markdown
# {Verb} {Resource}

**Endpoint:** `POST /api/{resources}/{action}`

**Description:** One sentence describing what this endpoint does.

## Request Body

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `fieldName` | string | Yes | What this field represents. Must be a valid GUID. |
| `nested.child` | string | No | Use dot notation for nested objects. Default: `null`. |

> **Required** column: derived from controller validation code, not guessed.
> **Description** column MUST include constraints: format (GUID, ISO 8601), min/max length, allowed values, defaults.

## Sample Request

```json
{
  "fieldName": "realistic value matching constraints above"
}
```

## Response Attributes

| Field | Type | Description |
| --- | --- | --- |
| `id` | string (GUID) | The ID of the created resource. |

## Sample Response (201)

```json
{
  "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890"
}
```

## Error Response (400)

```json
{
  "errors": {
    "fieldName": ["Specific validation message from controller code."]
  }
}
```

> Include a realistic 400 response showing at least one field-level validation error derived from the actual controller validation logic.
````

### POST — Multipart Form

````markdown
# {Verb} {Resource}

**Endpoint:** `POST /api/{resources}/{action}`

**Description:** One sentence describing what this endpoint does.

## Request Body (`multipart/form-data`)

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| `scheduleId` | text | Yes | Schedule GUID. |
| `importFile` | file | Yes | The file to import. One field per file the endpoint requires. |

> Do NOT manually set the `Content-Type` header — the client must let the HTTP library set `multipart/form-data` with the boundary automatically.

## Sample Request (curl)

```bash
curl -X POST https://host/api/{resources}/{action} \
  -H "Authorization: Bearer opcon_token" \
  -F "scheduleId=a1b2c3d4-e5f6-7890-abcd-ef1234567890" \
  -F "importFile=@/path/to/import.csv"
```

## Response Attributes

| Field | Type | Description |
| --- | --- | --- |
| `id` | string (GUID) | The ID of the created resource. |

## Sample Response (201)

```json
{
  "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890"
}
```

## Error Response (400)

```json
{
  "errors": {
    "fieldName": ["Specific validation message from controller code."]
  }
}
```
````

## Format Rules

These are non-negotiable. Every endpoint file must comply.

1. **One endpoint per file.** Each `.md` file documents exactly one HTTP method + route combination. Filtered list variants (by status, by scheduleId, etc.) are NOT separate files — they are query parameters within the single `all-{resources}.md` file.
2. **Top-level heading is `#` (H1).** Section headings are `##` (H2). No H3 or deeper inside endpoint files.
3. **Section presence is conditional, section ORDER is not.** Sections always appear in the order shown in the template. Omit a section entirely if it doesn't apply.
4. **Table/JSON parity.** Every field in a Sample Response/Request must have a corresponding row in its Attributes/Body table, and vice versa. The table and the JSON must be a 1:1 match.
5. **Nesting notation:** `field` for top-level, `parent.child` for nested objects, `items[].field` for array items, `items[].parent.child` for nested fields inside arrays.
6. **Type column values:** `string`, `integer`, `boolean`, `number`, `string (GUID)`, `string (ISO 8601)`, `array[string]`, `array[object]`, `object`. Be specific — prefer `string (GUID)` over `string` when the value is a GUID.
7. **Realistic sample data.** Use names, dates, and IDs plausible for a US financial institution workload automation environment. No "foo", "bar", "test", or "example.com".
8. **No cross-references between files.** Each file is self-contained.
9. **camelCase JSON keys** matching `[JsonProperty]` attributes in DTOs.
10. **No commentary, design notes, or explanatory prose.** These are strict reference documents.

## mkdocs.yml Nav Registration

After creating an endpoint file, add it to the `nav` section of `mkdocs.yml` in **both** locations:

1. Under `API > API Reference > {Resource Group}`
2. Under `Reference > API Reference > {Resource Group}`

If the resource group doesn't exist yet, create it in both locations. Group name = plural resource noun (e.g., "Jobs", "Schedules", "Agents"). Place the new group alphabetically among existing groups.

Nav entry format: `{Display Name}: api/reference/{filename}.md`

## Requirements

1. Read EVERY controller and DTO. Use actual field names from `[JsonProperty]` attributes for JSON keys.
2. Document EVERY endpoint. One file per endpoint. No endpoint may be skipped.
3. Every file MUST use the template for its HTTP method exactly. No freeform paragraphs.
4. Response Attributes tables MUST document every field in the Sample Response using dot/bracket notation for nesting.
5. Sample Responses MUST be complete, realistic JSON — not truncated, not placeholder.
6. Request Body tables MUST mark Required yes/no by reading the controller validation code. Add validation constraints to the Description column.
7. Start with the API collection or Swagger/OpenAPI spec to enumerate endpoints, then read source code for every detail.
