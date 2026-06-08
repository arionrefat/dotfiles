# Deep-read recipe — fanning out the analysis

How to read a codebase efficiently and turn it into accurate convention rules. Scale the effort to the
repo: a small app may need one pass; a large monorepo benefits from parallel fan-out.

## Step 0 — orient (always do this first, inline)
- Read the manifest(s), lockfile, and config files; print the directory tree (exclude `node_modules`,
  `.git`, build output). Identify the natural seams (packages, layers) that will become `references/*.md`.
- Read 1–2 keystone files yourself first to calibrate what a good finding looks like (Step 2 is where you verify the specific files readers cite).

## Step 1 — fan out (parallel)
Split the work by seam and have each reader cover a slice, returning **structured findings** (not file
dumps). Pick the mechanism by what's available:

- **A subagent / parallel-fan-out mechanism, if your environment has one** (e.g. an Agent tool with
  `subagent_type: "Explore"`, or a Workflow / parallel-orchestration tool): split the work by seam, run a
  few readers in parallel in one message, each returning structured findings against the schema below.
  Best for large repos. Don't assume a specific tool name — use whatever launch capability is present.
- **Inline reads (always available — the safe default)**: read the files yourself, one seam at a time,
  applying the same structured-findings schema. For a small repo this is all you need.

Typical slices (adapt to the stack): *(a)* one representative feature/module end-to-end · *(b)* shared
infra / bootstrap / middleware · *(c)* the largest/most-refactored module (reveals the split pattern) ·
*(d)* UI components + styling · *(e)* state + data/API layer · *(f)* cross-cutting tooling/config/env/deploy.

Each reader should return, per slice:
```
area            short label
summary         3–5 sentences on this area's conventions
conventions     [{ rule (imperative), evidence (file path + proof it's consistent) }]
fileRoles       [{ pattern (e.g. "*.controller.ts"), role, structure (exports/imports/shape) }]
examples        [{ title, filePath, code (trimmed skeleton) }]
notes           gotchas, refactoring philosophy, cross-file relationships
```
Tell readers to capture the **refactoring axis** (how files get split as they grow), not just static layout.

## Step 2 — cross-check first-hand
Independently read the keystone files the readers cited for the most important rules. **Do not encode a
rule you haven't seen in the code.** Drop or fix anything the fan-out got wrong or overstated.

## Step 3 — synthesize
Collapse the findings into the skill (see [skill-format.md](skill-format.md)): one lean `SKILL.md` +
`references/*.md` per seam. Convert each finding into an imperative rule with a canonical skeleton and a
real path. De-duplicate rules that several readers reported. Mark `observed` vs `recommended` in mix mode.

## Step 4 — validate & verify
Run the validation checklist in [skill-format.md](skill-format.md). Confirm every `references/*.md` link
resolves and the new skill appears in the session's skill list (no restart needed for an existing
`.claude/skills/`).

## Notes
- Prefer reading over guessing; prefer the repo's existing libraries over introducing new ones.
- For `recommended` (best-practice) rules in establish/mix mode, source current guidance from **Context7
  MCP** and installed framework skills rather than memory.
- Keep code excerpts in the skill trimmed to the essential skeleton — they teach the shape, not the logic.
