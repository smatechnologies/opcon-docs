# OpCon Documentation — Claude Code Project

This repository contains the OpCon product documentation site built with Docusaurus.

## Technical Writer Skill

A technical writer skill and its resource files are bundled in this repository at `.claude/skills/technical-writer/`. The skill enforces OpCon documentation standards for terminology, voice, structure, and formatting.

### Skill Location

```
.claude/skills/technical-writer/
├── SKILL.md                          # Skill definition and operating modes
└── resources/
    ├── opcon-documentation-standards.md   # Action verbs, UI terms, formatting rules, pre-flight checklist
    ├── opcon-documentation-types.md       # Conceptual / Procedural / Reference templates
    ├── opcon-glossary.md                  # Controlled vocabulary — customer-facing terms and banned terms
    ├── opcon-learner-roles.md             # Audience profiles and tone guidance per role
    ├── opcon-golden-examples.md           # Reference examples for each documentation type
    ├── opcon-api-reference.md             # API endpoint documentation templates
    └── opcon-primary-analysis.md          # 13-section template for page completeness scoring
```

### Using the Skill

Invoke the skill when writing, reviewing, or editing documentation pages. The skill operates in four modes:

| Mode | Trigger words | Behavior |
|---|---|---|
| **Write** | "Write," "Create," "Draft" | Produce complete documentation matching the page type template |
| **Review** | "Review," "Check," "Audit" | Report violations with line references and suggested fixes |
| **Edit** | "Fix," "Update," "Revise" | Apply targeted changes while preserving compliant content |
| **Consult** | "Should I," "How do I" | Provide guidance from the standards without producing output |

### Automatic invocation on document changes

Apply the technical-writer skill automatically whenever you work on `.md` files in `docs/`:

| Situation | Mode | Required action |
|---|---|---|
| You edit an existing `.md` file in `docs/` | Edit | Run the skill before reporting the task complete — fix all violations found |
| You create a new `.md` file in `docs/` | Write | Produce a compliant page from the start using the correct page type template |
| User asks you to review or audit docs | Review | Report all violations with file path, line number, and suggested fix |
| User asks "should I" or "how do I" about standards | Consult | Answer from the standards without producing output |

Do not report a documentation task as complete until the skill has run and all violations are resolved.

### Key Standards

- **Terminology**: Use customer-facing terms. Never use: LSAM, execute/executed/executing, right-select, click, drop-down, checkbox, navigate to, launch, client, task/process (as job synonyms)
- **Voice**: Second person ("you") for instructions. No first person ("we," "our"). Present tense for descriptions, imperative for steps.
- **Structure**: Numbered steps for procedures, one action per step. Lead-in sentence required: "To [goal], complete the following steps:"
- **Front matter**: Every page requires `title:`, `description:`, and `tags:` (Type + Role + Feature area)

## Repository Structure

```
docs/                    # Primary documentation pages
versioned_docs/          # Archived versions
src/                     # Docusaurus theme customizations
static/                  # Images and static assets
sidebars.js              # Navigation structure
docusaurus.config.js     # Site configuration
```

## Running Locally

```bash
yarn install
yarn start
```
