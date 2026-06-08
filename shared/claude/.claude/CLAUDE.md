# Global rules

## Installs — ask first, keep it local

- Always ask before installing anything. In auto/non-interactive mode, never install unprompted.
- Only project-local installs are allowed (e.g. `npm install`, `pnpm add` into the project's node_modules). Never install anything global or system-wide.
- Never use Homebrew or global flags (`brew install …`, `npm/pnpm/yarn -g …`). A past session ran `brew install cocoapods` — never do anything like that.

## Builds — ask first

- Never run build or platform commands without asking (e.g. `npm run build`, `pnpm build`, `pnpm ios`, native builds). Ask, then run only after I confirm.

## Comments — minimal

- Avoid comments by default; let the code speak. Only comment genuinely complex or non-obvious logic, and keep it to 1 line (2 max).
