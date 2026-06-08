---
name: build-conventions
description: >-
  Generate a reusable, project-specific coding-conventions skill for any repo — capturing its folder
  structure, naming, patterns, and refactoring style. Works for any stack (extract from existing code,
  establish from best practices, or mix). Use when the user wants to capture, document, or enforce
  coding standards for a project, or asks to make/build/set up a conventions skill.
---

# Build a conventions skill

This skill **produces another skill**: a `<project>-conventions` skill that encodes one project's
house style — folder structure, naming, layering, and how code gets split — so future work matches it.
Worked example to mirror for shape and quality: the **`calorienigha-conventions`** skill (lean `SKILL.md`
+ `references/*.md` for depth).

## When not to use

**Skip** for a single edit, a bug fix, or a one-off question about existing conventions (just answer,
or use the repo's existing `*-conventions` skill).

## What you produce (output shape)

```
<project>-conventions/
├── SKILL.md                 # lean: repo map · golden rules · decision guide · "how to add X" checklists
└── references/
    ├── <area-a>.md          # exhaustive rules + annotated templates + the *why*
    ├── <area-b>.md
    └── <area-c>.md
```

Split `references/` by the natural seams of the project (e.g. backend/frontend, or domain/ui/tooling).
`SKILL.md` links to each reference as a **markdown link** so they load on demand (progressive disclosure).

## Process

1. **Detect stack & scope.** Read the manifest(s) (`package.json`, `app.json`/`app.config.*`, `go.mod`,
   `pyproject.toml`, …), lockfile, and config files; map the directory tree (skip `node_modules`/`.git`/
   build output). Identify frameworks, package manager, language, linter/formatter, and where source lives.
2. **Pick the mode** — *extract*, *establish*, or *mix* (see § Modes). If it isn't obvious from the
   codebase's maturity, ask the user which they want before deep-reading.
3. **Deep-read / fan out** across every convention dimension — parallel recipe in
   [references/workflow-recipe.md](references/workflow-recipe.md); the capture list in
   [references/convention-dimensions.md](references/convention-dimensions.md).
4. **Cross-check first-hand.** Independently read the keystone files (one representative feature/module
   end-to-end, plus shared infra) to verify the fan-out findings before encoding them — don't ship a rule
   you haven't seen in the code.
5. **Synthesize the skill.** Follow the format in [references/skill-format.md](references/skill-format.md):
   conformant frontmatter, lean `SKILL.md`, markdown-linked references.
6. **Choose output location** (confirm with the user): per-project `.claude/skills/` (committed, shared
   with the repo) · global `~/.claude/skills/` (personal, available everywhere) · or **both** (they can
   diverge, so treat the repo-local copy as source of truth and add a top-of-file comment in the global
   copy pointing to the repo path).
7. **Validate & verify.** Run the checklist in [references/skill-format.md](references/skill-format.md):
   correct path/filename, frontmatter fields + lengths, `name` matches the directory, every `references/*.md`
   link resolves, `SKILL.md` stays lean. Confirm the new skill appears in the session's skill list.

## Modes

- **Extract** (mature codebase): mine the *actual* patterns from the code. Highest fidelity; the rules
  are descriptions of what the repo already does.
- **Establish** (greenfield / early): there isn't enough code to mine, so define standards from framework
  best practices + the user's stated preferences. Ask targeted questions (routing, folder layout, styling,
  state, data fetching, naming) rather than guessing.
- **Mix** (some structure exists): extract what's there, fill the gaps with best practices, and **label
  each rule** as either `observed` (already in the repo) or `recommended` (best practice, not yet adopted)
  so the user knows what's descriptive vs aspirational.

## Sourcing best practices (establish / mix)

For `recommended` rules, pull the framework's *current* official guidance via **Context7 MCP**
(`resolve-library-id` → `query-docs`) rather than memory, and lean on any installed framework skills
(e.g. whichever `expo:*` skills are actually installed, such as `expo:building-native-ui`,
`expo:native-data-fetching`, `expo:expo-api-routes`). Prefer the project's already-chosen libraries over introducing new ones.

## Golden rules for the generated skill

- **Capture the refactoring axis, not just static layout** — *how* files/modules get split as they grow
  (sub-views, hooks, barrels, helpers, feature folders). Highest-value and most-often-missed; the folder
  tree is the easy half.
- **Respect intentional asymmetries** (e.g. different naming on backend vs frontend) — document them as
  deliberate, never "normalize" them away.
- **Don't hardcode volatile specifics** (dep versions, model IDs, secrets) — capture the *pattern* so the
  skill doesn't rot.
- **Lean SKILL.md, deep references** — keep `SKILL.md` scannable; push templates and rationale into
  markdown-linked `references/`.
- **Keep `description` tight** — it loads every session. State what it covers + when to use it, nothing more.
