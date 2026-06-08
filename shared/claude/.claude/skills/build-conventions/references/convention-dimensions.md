# Convention dimensions — what to capture

The checklist of axes a `<project>-conventions` skill should cover. Not every project has every axis;
skip what doesn't apply and add stack-specific ones. For each rule you encode, give an **imperative
statement + a canonical skeleton + a real file path as evidence**. In *mix* mode, tag each rule
`observed` (in the repo) or `recommended` (best practice, not yet adopted).

The parenthetical examples below skew toward JS/TS/React (the worked example's stack) — treat them as
illustrations and translate each axis to the project's actual ecosystem (e.g. §6 state could be a Go
context/struct or a Python module-level singleton; the §7 query-lib and §8 UI axes may be N/A for a
non-UI or non-JS service).

## 1. Project & folder structure
- Top-level layout (monorepo vs single app; where source lives; is there a root manifest/workspace?).
- The unit of organization: feature-folders vs layer-folders vs type-folders. Pick the dominant one.
- What a "module/feature" folder contains, and the canonical file set to copy when adding one.

## 2. The refactoring axis (highest value — don't skip)
- How a file/module is split **once it grows**: sub-components/views, hooks, utils/helpers, types,
  constants, barrels/index files, sub-feature folders.
- Where the split lines are drawn (presentational vs stateful vs pure; engine vs config vs prompts).
- What stays "thin" (entry points, controllers, route files) vs where the weight goes.
- Barrel/re-export conventions and how the public surface of a folder is exposed.

## 3. Naming conventions
- Files (case style + any dotted/suffix scheme), folders, special prefixes (e.g. `-`-prefixed, `(group)`).
- Components, functions, hooks, types/interfaces, constants, stores, schemas.
- Per-package or per-layer asymmetries (capture them as intentional).

## 4. Layering & data flow
- The allowed dependency direction (e.g. routes → controller → model; component → hook → api).
- Which layer is allowed to touch what (DB, network, global state, the DOM).
- Entry-point / bootstrap / composition-root conventions and middleware/plugin ordering.

## 5. Types & validation
- Where types live; inferred-from-schema vs hand-written; type-only import conventions.
- Validation library + where schemas live + how request/response/DTO types are derived and shared.

## 6. State management
- The chosen library and the store/atom/context pattern; naming; persistence; selectors.
- Distinct flavors (e.g. server-cache vs UI-preference stores) and when to use each.

## 7. API / data layer
- The client abstraction (typed wrapper? namespaces? generated client?).
- Request/response envelope shape; error normalization; auth/session handling; cancellation/abort.
- Data-fetching pattern (loaders, hooks, query lib) and caching.

## 8. UI / styling (if applicable)
- Component declaration style (named vs default; function vs arrow; props typing + defaults).
- Styling approach (utility classes vs semantic CSS vs CSS-in-JS vs native styles); tokens/theme.
- Icons, accessibility expectations, and any compiler/memoization stance (e.g. React Compiler → no manual memo).

## 9. Error handling & responses
- Success/error shapes; error codes/enums; expected-vs-unexpected error handling; central handlers.

## 10. Imports & module resolution
- Path aliases vs relative imports (and which to use where); barrel usage; any vestigial aliases to avoid.

## 11. Tooling & config
- Linter/formatter (indent, quotes, organize-imports, rule set) and how it's scoped/ignored.
- Language config strictness (e.g. tsconfig flags) and per-package differences.
- Package manager; script-name vocabulary (`dev`/`lint`/`build`/`db:*`/etc.); how to run things.

## 12. Env, build & deploy
- Env var conventions (prefixes, fail-loud validation, `.env.example`); build outputs; containers; CI.

## 13. Testing
- Test framework, file location/naming, what's tested. **If there are no tests, say so** — don't invent
  a convention the repo doesn't have.

## 14. House style / "feel"
- Comment density and *what* gets commented (e.g. the *why* of load-bearing decisions).
- Recurring idioms, helper-reuse expectations, and small stylistic tells that make code look "native."
