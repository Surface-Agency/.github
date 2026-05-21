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

## Repository Lifecycle

Use `docs/repository-inventory.md` as the source of truth for repository status before opening cross-repo issues or extending an older workflow.

- `active` repositories are current operating paths.
- `sidecar` repositories support comparison, experimentation, or transition work.
- `reference` repositories are retained for history and should not receive new feature work without reclassification.
- `superseded` repositories should clearly point to the replacement workflow.
- `archive-candidate` repositories should be archived after owner confirmation that no live jobs, dashboards, or credentials depend on them.

## Labels

Shared labels are synced by `scripts/sync_labels.sh`.

Core labels:

- `type: bug`, `type: feature`, `type: chore`, `type: security`, `type: docs`
- `area: ci`, `area: data`, `area: forecast`, `area: automation`, `area: docs`
- `priority: high`, `priority: medium`, `priority: low`
- `blocked`, `needs-human-review`, `agent-reviewed`, `data-quality`

Labels should help humans and agents route work quickly. Avoid one-off labels unless they are truly reusable.

When creating a new active repository, add it to the sync script and run the script once. Do not include archived repos or short-lived experiments unless they are expected to receive issues or PRs.

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

## Security Ownership

The shared `SECURITY.md` applies across organization repositories unless a repo defines a more specific policy. Security reports should stay private until triaged. Do not ask reporters to disclose secrets, client data, or vulnerability details in public issues.

Security-related follow-up should use `type: security` and `needs-human-review` unless it is clearly a routine dependency update with passing checks.

## Current Risks And Next Decisions

- Create an `engineering` team when full-time engineers join, then map repo permissions to teams instead of individuals.
- Consider org-level rulesets once branch protection behavior is stable across repos.
- Keep Packages off until we identify shared code that deserves versioned reuse.
- Review the PR triage automation after a few runs and decide whether it should open issues for repeated failure patterns.
