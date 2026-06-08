# SKILL.md format spec + validation checklist

Authoritative format for a Claude Code Agent Skill, so every skill this generator produces is valid and
discoverable. Verified against the official docs (`code.claude.com/docs/en/skills`) and Context7
(`/websites/code_claude`). Re-check the docs if Claude Code has changed since.

## Location & files

| What | Rule |
|---|---|
| Project skill | `.claude/skills/<skill-name>/SKILL.md` (discovered in the cwd and every parent up to repo root) |
| Personal/global skill | `~/.claude/skills/<skill-name>/SKILL.md` |
| Plugin skill | `<plugin>/skills/<skill-name>/SKILL.md` |
| Entry file | **must be named exactly `SKILL.md`** (case-sensitive) |
| Command name | comes from the **directory name** → `/<skill-name>` (the `name:` field is a display label, not the command, except for a plugin-root SKILL.md) |
| Supporting files | allowed: put `references/*.md` (and `scripts/`, etc.) in the skill folder and link them from `SKILL.md` |
| Discovery | a skill added to an **existing** `.claude/skills/` is picked up in-session; creating a brand-new `.claude/skills/` dir may require a restart |

## Frontmatter (YAML between `---` markers)

All fields are optional, but **always set `name` and `description`.**

```yaml
---
name: my-project-conventions          # display name; keep it equal to the directory name
description: >-                        # what it covers + WHEN to use it; folded multi-line is fine
  ... one rich paragraph ...
---
```

- **`name`** — kebab-case; **match the directory name** (avoids confusion since the command comes from the dir).
- **`description`** — the trigger. State *what the skill covers* and *when to use it* (list the tasks that
  should invoke it); put the key use case first. Combined `description` + `when_to_use` is capped at
  **1,536 characters** in the skill listing — stay well under. A folded scalar (`>-`) is valid.
- **Other supported fields** (use only when needed): `when_to_use`, `allowed-tools`, `disallowed-tools`,
  `disable-model-invocation`, `user-invocable`, `model`, `effort`, `argument-hint`, `arguments`,
  `context` (`fork`), `agent`, `hooks`, `paths`, `shell`. Don't add unsupported keys.

## Body

- After the frontmatter, write Markdown instructions. Keep `SKILL.md` **lean and scannable** (aim
  < ~500 lines); move exhaustive material into `references/*.md`.
- **Link references as relative markdown links** so progressive disclosure is explicit and they load on
  demand: `[references/area.md](references/area.md)` — not inline-code paths.
- Optional: inject live context with `` !`command` `` (inline) or a ` ```! ` code block.

## Recommended shape for a `<project>-conventions` skill

```
SKILL.md
  frontmatter (name, description)
  # <Project> conventions        — one-line what + "read the reference before writing code"
  references/*.md links           — relative markdown links, inline under the intro (no ## heading needed)
  ## Repo map                     — annotated tree
  ## Golden rules                 — the invariants that apply everywhere
  ## Decision guide               — table: task → which reference + key invariants
  ## "How to add X" checklists    — the common tasks, with compact skeletons
references/<area>.md               — full rules, annotated templates, the *why*
```

## Validation checklist (run before declaring done)

```
☐ Path: .claude/skills/<name>/SKILL.md (project) or ~/.claude/skills/<name>/SKILL.md (global)
☐ Entry file named exactly SKILL.md (case-sensitive)
☐ Frontmatter wrapped in --- ; only supported keys used
☐ name present, kebab-case, equals the directory name
☐ description present; states what + when; under 1,536 chars
☐ SKILL.md lean (≈ < 500 lines); depth pushed to references/
☐ Every references/*.md mentioned in SKILL.md is a relative markdown link AND the file exists
☐ No volatile specifics hardcoded (dep versions, model IDs, secrets)
☐ Skill appears in the session's available-skills list (calls /<name>)
```

Quick mechanical checks:
- Description length: extract the `description` block and confirm `len < 1536`.
- Links resolve: every `(references/X.md)` target exists on disk.
- File set: `find <skill-dir> -type f` matches what SKILL.md references.
