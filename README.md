# Surface Agency GitHub Defaults

This repository holds organization-wide defaults for Surface Agency repositories.

GitHub applies these templates to repositories that do not define their own local versions. Treat this repo as the operating-system layer for shared engineering hygiene, agent guidance, issue intake, PR expectations, and handoff readiness.

## Contents

- `profile/README.md`: public organization profile shown on GitHub.
- `SECURITY.md`: shared security reporting policy.
- `.github/pull_request_template.md`: default PR checklist.
- `.github/ISSUE_TEMPLATE/task.md`: default scoped task template.
- `.github/ISSUE_TEMPLATE/nonconformance.md`: template for data/process failures and corrective actions.
- `.github/ISSUE_TEMPLATE/repo-readiness.md`: handoff checklist for preparing repos for future engineers.

## Project Board

Cross-repo work lives in the org Project:

- [Agency Engineering](https://github.com/orgs/Surface-Agency/projects/1)

Use the board for cross-repo work, repo-readiness tracking, blocked decisions, security/process follow-up, and tasks that should be visible outside a single repository.

## Repository Inventory

Internal repo inventory, lifecycle decisions, label sync, permissions notes, and ruleset readiness docs live in the private `surface-agency-governance` repository. Do not place private repository lists, team mapping, or permission details in this public `.github` repo.

## Shared Template Updates

When changing templates:

1. Keep defaults lightweight and broadly useful.
2. Avoid client-specific language in org-wide files.
3. Prefer checklist prompts that help humans and agents verify work.
4. Push changes to `main`; repositories pick up defaults automatically unless they override them locally.

## Security Policy

`SECURITY.md` is intentionally broad and points reporters to private disclosure rather than public issues. Keep it current if Surface Agency changes security ownership, reporting channels, or supported repositories.

## Open Decisions

- Whether to create a dedicated `engineering` team once FTE engineers join.
- Whether to migrate branch protections into organization-level rulesets.
- Whether the PR review automation should eventually open issues, not only comments/summaries.
- Whether shared code should become private packages once duplication appears across repos.
