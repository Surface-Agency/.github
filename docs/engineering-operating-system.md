# Surface Agency Engineering Operating System

This organization is set up for lightweight, agent-friendly engineering work. The goal is to keep repos understandable for current AI-assisted workflows and ready for future full-time engineers.

## Project

Use the org project `Agency Engineering` for cross-repo work that should not disappear inside one repository.

Recommended use:

- `Status`: current workflow state.
- `Workstream`: Red Robin, Ratti, Agency Ops, or Platform.
- `Priority`: High, Medium, or Low.
- `Review Level`: Agent OK, Human Review, or Owner Decision.

Keep the board practical. Small local fixes can stay as PRs or issues in one repo; cross-repo, blocked, strategic, or handoff work belongs in the project.

## Labels

Shared labels are synced by `scripts/sync_labels.sh`.

Core labels:

- `type: bug`, `type: feature`, `type: chore`, `type: security`, `type: docs`
- `area: ci`, `area: data`, `area: forecast`, `area: automation`, `area: docs`
- `priority: high`, `priority: medium`, `priority: low`
- `blocked`, `needs-human-review`, `agent-reviewed`, `data-quality`

Labels should help humans and agents route work quickly. Avoid one-off labels unless they are truly reusable.

## Templates

Default templates live in this `.github` repository and apply to repositories that do not override them locally.

- Use `Task` for normal implementation, analysis, or hygiene work.
- Use `Nonconformance` when something unexpected happened and needs containment plus prevention.
- Use `Repository readiness` when preparing a repo for engineer handoff.

## Pull Requests

PRs should state what changed, how it was checked, and whether docs/runbooks/caveats changed. For agent-assisted work, reviewers should check local guidance files when present:

- `AGENTS.md`
- `CLAUDE.md`
- `.github/copilot-instructions.md`

Automation can triage and comment, but humans should still own decisions that change production behavior, expose client-sensitive information, or depend on business judgment.
