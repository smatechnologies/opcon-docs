# Docs lint gate

`lint-docs.js` enforces a subset of the OpCon documentation standards
(`.claude/skills/technical-writer/resources/opcon-documentation-standards.md`)
automatically on pull requests, so the issues cleaned up in the V26 parity work
cannot silently return.

## What runs in CI

The [`lint-docs`](../.github/workflows/lint-docs.yml) workflow runs on every PR
targeting `main`, `develop`, or `release/*` and **blocks the merge** on:

1. **Banned terminology** — scanned on **added lines only** of changed Markdown
   files under `docs/` and `versioned_docs/`. Fenced code blocks and inline
   `` `code` `` are skipped, so API names, commands, and config keys are never
   flagged.
2. **Front matter** — **newly added** pages must have `title`, `description`,
   and a non-empty `tags` list that includes a Type tag (`Conceptual`,
   `Procedural`, or `Reference`).

The gate is **diff-scoped on purpose**: a full-repo scan reports tens of
thousands of pre-existing findings. The gate fails only when a PR *introduces*
new debt — it never blocks an unrelated change because of legacy content.

## Terms enforced by the gate (high precision)

| Term | Use instead |
|---|---|
| click (except `right-click`) | Select / Press |
| right-click **on** | drop the "on" |
| execute / executed / executing | Run |
| navigate to | Go to |
| launch | Open (apps) / Start (services) |
| drop-down / dropdown | list / field |
| checkbox / check box | option |
| uncheck | Clear |
| right-select | right-click |
| text box | field / area |
| hamburger | label / menu button |
| LSAM / LSAMs | Agent / Agents |

`LSAM` is matched **case-sensitively with identifier guards**, so `MSLSAM`,
`LSAMDATARETRIEVER`, lowercase `lsam`, and underscore-bounded tokens are
protected automatically.

## Terms NOT gated (manual review)

These appear in the standard but are too context-dependent to enforce without
false positives, so they are left to skill-based review rather than the hard
gate: `hit`, bare `check`, `turn on` / `turn off`, `client`, `task` / `process`
(as job synonyms), `icon`, `arrow`, `radio button`. Run a full scan to review
them (see below).

## Running locally

```bash
# Gate exactly as CI does — diff this branch against origin/main
yarn lint:docs
node scripts/lint-docs.js --base origin/develop   # diff against a different base

# Full-repo report (report-only; useful for the per-release accuracy audit)
yarn lint:docs:all
node scripts/lint-docs.js --all --strict           # full scan that also fails on findings
```
