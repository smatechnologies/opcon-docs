# Impact Rubric

Use this rubric to assign **High**, **Medium**, or **Low** impact to each
finding in the analysis report. Impact reflects the potential harm to a reader
who relies on the documentation.

OpCon is used for mission-critical workload automation in US financial
institutions. Documentation errors can cause misconfigured jobs, missed
schedules, compliance violations, or failed batch processing. Apply this
context when assessing severity.

---

## High Impact

Assign **High** when the finding could cause any of the following if a reader
acts on (or fails to act on) the documentation as written:

- **Job failure or data loss** — incorrect default value, wrong parameter
  name, or missing required step causes a job or schedule to fail silently
  or destructively
- **Security misconfiguration** — missing or incorrect documentation of
  authentication, authorization, or access control settings
- **Compliance risk** — undocumented or incorrectly documented behavior that
  affects audit trails, role separation, or regulatory workflows
- **Undocumented breaking change** — a feature, setting, or API endpoint that
  has changed incompatibly with no documentation update
- **Completely missing reference for a live, user-facing feature** — an
  endpoint, setting, or event type that exists in production with zero
  documentation coverage

---

## Medium Impact

Assign **Medium** when the finding would cause confusion, rework, or support
escalation, but is unlikely to cause data loss or outright failure:

- **Missing optional parameters** — a parameter is not documented but its
  absence would not break the default workflow
- **Vague or incomplete procedural steps** — steps that leave a reader
  uncertain but not unable to complete the task
- **Outdated terminology or UI label** — the doc uses a name that has changed
  but the underlying feature still works the same way
- **Missing common-issues entry** — a known error or edge case is not
  documented; readers will encounter it without guidance
- **Missing cross-reference** — a page doesn't link to a related procedure
  or concept that a reader would reasonably need

---

## Low Impact

Assign **Low** when the finding is a quality or completeness issue that does
not affect a reader's ability to use the feature correctly:

- **Minor wording ambiguity** — language that is imprecise but not misleading
- **Missing FAQ entry** — a question that could be answered but its absence
  does not block the reader
- **Structural gap** — a page is missing a Glossary or Examples section but
  is otherwise complete
- **Stylistic deviation** — use of a banned term (e.g., "click" instead of
  "select") with no functional impact
- **Redundant content** — information repeated across pages without harm

---

## Escalation Rule

If you are unsure between two levels, assign the **higher** level. OpCon
serves financial institutions where the cost of misconfiguration is high.
Err on the side of flagging potential risk.

---

## Not a Finding

Do not log these as findings:

- Internal implementation details not intended for user-facing documentation
- Test code, internal tooling, or developer-only APIs that are not exposed
  to customers
- Stylistic preferences not covered by the OpCon documentation standards
- Content that is accurate even if phrased differently than you would prefer
