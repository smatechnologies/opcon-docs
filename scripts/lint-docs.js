#!/usr/bin/env node
/*
 * OpCon docs lint gate (Phase 4, Part A)
 * --------------------------------------
 * Two checks, both scoped to a pull request's changes so legacy debt never
 * fails an unrelated PR:
 *
 *   1. Banned terminology  - scans only ADDED lines in changed Markdown files
 *                            (docs/ and versioned_docs/). Skips fenced code
 *                            blocks and inline code so API names/commands are
 *                            never flagged. LSAM is matched case-sensitively
 *                            with identifier guards (MSLSAM, LSAMDATARETRIEVER,
 *                            lowercase lsam, underscore tokens are protected).
 *
 *   2. Front matter        - validates that every NEWLY ADDED page has the
 *                            required keys: title, description, and a non-empty
 *                            tags list containing a recognized Type tag.
 *
 * Modes:
 *   node scripts/lint-docs.js --base <ref>   CI gate: diff <ref>...HEAD (default ref: origin/main)
 *   node scripts/lint-docs.js --all          Full-repo scan (reporting / per-release audit)
 *   node scripts/lint-docs.js --all --strict Full-repo scan that also exits non-zero on findings
 *
 * Exit code 1 when blocking violations are found, else 0.
 */

const { execSync } = require('child_process');
const fs = require('fs');
const path = require('path');
const matter = require('gray-matter');

const DOC_DIRS = ['docs', 'versioned_docs'];
const TYPE_TAGS = ['Conceptual', 'Procedural', 'Reference'];

// --- Banned-term rules (high precision; noisy/context-dependent terms are
//     intentionally excluded from the hard gate - see README) -----------------
const RULES = [
  {
    id: 'click',
    // "click" but not "right-click" (the one sanctioned exception) or "double-click"
    re: /(?<!right-)(?<!double-)\bclick(s|ed|ing)?\b/gi,
    fix: 'Use "Select" (UI) or "Press" (keys). "Right-click" is the only sanctioned exception.',
  },
  {
    id: 'right-click on',
    re: /\bright-click on\b/gi,
    fix: 'Drop "on": write "Right-click the **element**", not "right-click on".',
  },
  {
    id: 'execute',
    re: /\bexecut(e|es|ed|ing)\b/gi,
    fix: 'Use "Run" (e.g., "run the job").',
  },
  {
    id: 'navigate to',
    re: /\bnavigate\s+to\b/gi,
    fix: 'Use "Go to".',
  },
  {
    id: 'launch',
    re: /\blaunch(es|ed|ing)?\b/gi,
    fix: 'Use "Open" (applications) or "Start" (services).',
  },
  {
    id: 'drop-down',
    re: /\bdrop[\s-]?downs?\b/gi,
    fix: 'Use "list" or "field".',
  },
  {
    id: 'checkbox',
    re: /\bcheck[\s-]?boxe?s?\b/gi,
    fix: 'Use "option" (select / clear).',
  },
  {
    id: 'uncheck',
    re: /\buncheck(s|ed|ing)?\b/gi,
    fix: 'Use "Clear" the option.',
  },
  {
    id: 'right-select',
    re: /\bright-select(s|ed|ing)?\b/gi,
    fix: 'Use "right-click".',
  },
  {
    id: 'text box',
    re: /\btext\s?boxe?s?\b/gi,
    fix: 'Use "field" or "area".',
  },
  {
    id: 'hamburger',
    re: /\bhamburgers?\b/gi,
    fix: 'Use the element label or "menu button".',
  },
  {
    id: 'LSAM',
    // case-sensitive, identifier-guarded: protects MSLSAM, LSAMDATARETRIEVER,
    // lowercase lsam, underscore-bounded tokens.
    re: /(?<![A-Za-z0-9_])LSAMs?(?![A-Za-z0-9_])/g,
    fix: 'Use "Agent" / "Agents" (the customer-facing term).',
    caseSensitive: true,
  },
];

// --- helpers ----------------------------------------------------------------
function sh(cmd) {
  return execSync(cmd, { encoding: 'utf8', maxBuffer: 64 * 1024 * 1024 });
}

function isDocMd(file) {
  const f = file.replace(/\\/g, '/');
  return f.endsWith('.md') && DOC_DIRS.some((d) => f.startsWith(d + '/'));
}

// Strip inline-code spans so back-ticked content is never scanned.
function stripInlineCode(line) {
  return line.replace(/`[^`]*`/g, (m) => ' '.repeat(m.length));
}

// Return a Set of 1-based line numbers that fall inside fenced code blocks
// (including the fence markers themselves).
function fencedLineNumbers(text) {
  const lines = text.split(/\r?\n/);
  const fenced = new Set();
  let inFence = false;
  for (let i = 0; i < lines.length; i++) {
    if (/^\s*(```|~~~)/.test(lines[i])) {
      fenced.add(i + 1);
      inFence = !inFence;
      continue;
    }
    if (inFence) fenced.add(i + 1);
  }
  return fenced;
}

function scanLine(lineNo, rawLine, findings, file) {
  const line = stripInlineCode(rawLine);
  for (const rule of RULES) {
    rule.re.lastIndex = 0;
    let m;
    while ((m = rule.re.exec(line)) !== null) {
      findings.push({ file, lineNo, term: m[0], rule: rule.id, fix: rule.fix });
      if (m.index === rule.re.lastIndex) rule.re.lastIndex++; // guard zero-width
    }
  }
}

// Parse `git diff --unified=0` and return added lines as [{lineNo, text}].
function addedLines(base, file) {
  let diff;
  try {
    diff = sh(`git diff --unified=0 ${base}...HEAD -- "${file}"`);
  } catch (e) {
    return [];
  }
  const out = [];
  let newLine = 0;
  for (const raw of diff.split(/\r?\n/)) {
    const hunk = raw.match(/^@@ -\d+(?:,\d+)? \+(\d+)(?:,\d+)? @@/);
    if (hunk) {
      newLine = parseInt(hunk[1], 10);
      continue;
    }
    if (raw.startsWith('+++')) continue;
    if (raw.startsWith('+')) {
      out.push({ lineNo: newLine, text: raw.slice(1) });
      newLine++;
    }
    // removed ('-') and meta lines do not advance the new-file counter
  }
  return out;
}

function validateFrontMatter(file, problems) {
  let text;
  try {
    text = fs.readFileSync(file, 'utf8');
  } catch (e) {
    return;
  }
  let data;
  try {
    data = matter(text).data || {};
  } catch (e) {
    problems.push({ file, msg: `front matter failed to parse: ${e.message}` });
    return;
  }
  const title = data.title;
  const desc = data.description;
  const tags = data.tags;
  if (!title || String(title).trim() === '') {
    problems.push({ file, msg: 'missing required `title`' });
  }
  if (!desc || String(desc).trim() === '') {
    problems.push({ file, msg: 'missing required `description`' });
  }
  if (!Array.isArray(tags) || tags.length === 0) {
    problems.push({ file, msg: 'missing required `tags` (must be a non-empty list)' });
  } else if (!tags.some((t) => TYPE_TAGS.includes(String(t)))) {
    problems.push({
      file,
      msg: `tags must include a Type tag (one of: ${TYPE_TAGS.join(', ')})`,
    });
  }
}

// --- changed-file discovery -------------------------------------------------
function changedFiles(base) {
  let out;
  try {
    out = sh(`git diff --name-status ${base}...HEAD`);
  } catch (e) {
    console.error(`Could not diff against "${base}". Is the base ref fetched?`);
    process.exit(2);
  }
  const modified = [];
  const added = [];
  for (const line of out.split(/\r?\n/)) {
    if (!line.trim()) continue;
    const parts = line.split(/\t/);
    const status = parts[0];
    const file = parts[parts.length - 1];
    if (!isDocMd(file)) continue;
    if (status.startsWith('A')) {
      added.push(file);
      modified.push(file);
    } else if (status.startsWith('M') || status.startsWith('R') || status.startsWith('C')) {
      modified.push(file);
    }
  }
  return { added, modified };
}

function allDocMd() {
  const results = [];
  const walk = (dir) => {
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
      const p = path.join(dir, entry.name);
      if (entry.isDirectory()) walk(p);
      else if (entry.isFile() && p.endsWith('.md')) results.push(p.replace(/\\/g, '/'));
    }
  };
  for (const d of DOC_DIRS) if (fs.existsSync(d)) walk(d);
  return results;
}

// --- main -------------------------------------------------------------------
function main() {
  const args = process.argv.slice(2);
  const allMode = args.includes('--all');
  const strict = args.includes('--strict');
  const baseIdx = args.indexOf('--base');
  const base = baseIdx !== -1 ? args[baseIdx + 1] : 'origin/main';

  const findings = [];
  const fmProblems = [];

  if (allMode) {
    const files = allDocMd();
    for (const file of files) {
      const text = fs.readFileSync(file, 'utf8');
      const fenced = fencedLineNumbers(text);
      text.split(/\r?\n/).forEach((line, i) => {
        if (!fenced.has(i + 1)) scanLine(i + 1, line, findings, file);
      });
      validateFrontMatter(file, fmProblems);
    }
    console.log(`Scanned ${files.length} Markdown files (full repo).`);
  } else {
    const { added, modified } = changedFiles(base);
    if (modified.length === 0) {
      console.log(`No changed docs Markdown vs ${base}. Nothing to lint.`);
      return 0;
    }
    // Banned terms: added lines of every changed file, skipping code fences.
    for (const file of modified) {
      let text = '';
      try {
        text = fs.readFileSync(file, 'utf8');
      } catch (e) {
        continue; // deleted/renamed-away
      }
      const fenced = fencedLineNumbers(text);
      for (const { lineNo, text: lineText } of addedLines(base, file)) {
        if (fenced.has(lineNo)) continue;
        scanLine(lineNo, lineText, findings, file);
      }
    }
    // Front matter: newly added pages must be fully compliant.
    for (const file of added) validateFrontMatter(file, fmProblems);
    console.log(
      `Linted ${modified.length} changed docs file(s) vs ${base} (${added.length} newly added).`
    );
  }

  let failed = false;

  if (findings.length) {
    failed = true;
    console.log(`\n✖ Banned terminology (${findings.length}):`);
    const byFile = {};
    for (const f of findings) (byFile[f.file] = byFile[f.file] || []).push(f);
    for (const file of Object.keys(byFile).sort()) {
      console.log(`\n  ${file}`);
      for (const f of byFile[file].sort((a, b) => a.lineNo - b.lineNo)) {
        console.log(`    line ${f.lineNo}: "${f.term}" [${f.rule}] → ${f.fix}`);
      }
    }
  }

  if (fmProblems.length) {
    failed = true;
    console.log(`\n✖ Front matter (${fmProblems.length}):`);
    const byFile = {};
    for (const p of fmProblems) (byFile[p.file] = byFile[p.file] || []).push(p);
    for (const file of Object.keys(byFile).sort()) {
      console.log(`\n  ${file}`);
      for (const p of byFile[file]) console.log(`    - ${p.msg}`);
    }
  }

  if (!failed) {
    console.log('\n✓ No banned terms in added lines; front matter on new pages is valid.');
    return 0;
  }

  console.log(
    '\nSee .claude/skills/technical-writer/resources/opcon-documentation-standards.md for the full standard.'
  );
  if (allMode && !strict) {
    console.log('(--all without --strict is report-only; exiting 0)');
    return 0;
  }
  return 1;
}

process.exit(main());
