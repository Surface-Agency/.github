# Surface Agency Repository Inventory

This inventory classifies every repository in the Surface Agency organization so humans and coding agents can quickly tell what is active, what is experimental, and what should be treated as historical context.

## Lifecycle Vocabulary

- `active`: current source of truth or actively maintained operating workflow.
- `sidecar`: useful supporting or comparison workflow, but not the primary production path.
- `reference`: retained for history, prior analysis, or handoff context; do not extend without a new decision.
- `superseded`: replaced by another repository or workflow.
- `archive-candidate`: likely safe to archive after owner confirmation.
- `archived`: already archived in GitHub.

## Current Classification

| Repository | Workstream | Lifecycle | Notes |
| --- | --- | --- | --- |
| `.github` | Agency Ops | active | Organization profile, shared templates, security policy, labels, and operating-system docs. |
| `the-varsity-dashboard` | Varsity | active | Source-of-truth workspace for Varsity business, media, and product-mix dashboards. |
| `ratti-lead-engine` | Ratti | active | Internal lead ingestion and BD opportunity workflow. |
| `first_choice_rpa` | First Choice | active | Playwright RPA for Placer custom-report exports and GCS uploads. |
| `red-robin-media-pacing` | Red Robin | active | Canonical Red Robin paid media budget source of truth, pacing views, and alerting path. |
| `red-robin-traffic-forecast` | Red Robin | sidecar | Forecasting and variance intelligence kept beside the current FP&A benchmark until more comparison data is available. |
| `red-robin-value-strength` | Red Robin | active | Restaurant-level Value Strength Index for trade-area and media planning. |
| `red-robin-recap` | Red Robin | active | Multi-channel executive recap deck generator for period reporting. |
| `red-robin-adplorer-budget-workflow` | Red Robin | active | Adplorer import workflow built from BigQuery budget sources. |
| `red-robin-competitor-promos` | Red Robin | active | Competitor promotion intelligence for planning and traffic diagnostics. |
| `red-robin-competitive-intrusion` | Red Robin | active | Placer AI cross-shopping and BigQuery workflow for competitive intrusion. |
| `red-robin-clustering` | Red Robin | active | Store clustering refresh process for strategy and activation planning. |
| `red-robin-mmm` | Red Robin | sidecar | Media mix modeling and period-planning workflow; keep separate from pacing/reporting production paths. |
| `red-robin-lvrb-dashboard` | Red Robin | active | Source-of-truth workspace for Red Robin paid media, store performance, POS, and Looker Studio dashboards. |
| `red-robin-channel-store-pacing` | Red Robin | reference | Earlier channel/store pacing report; confirm before extending because `red-robin-media-pacing` is now canonical for pacing. |
| `RedRobin_Reporting` | Red Robin | reference | Legacy period reporting context; prefer `red-robin-recap` for active recap generation. |
| `pacing-monitor` | Red Robin | superseded, archive-candidate | Legacy/experimental pacing monitor prototype. Active pacing alert development lives in `red-robin-media-pacing`. |
| `meta-ads-dedup` | Platform | sidecar | Meta Ads deduplication utility; needs a README/status pass before being treated as active. |
| `productive-codex-time` | Agency Ops | active | Local-first Codex work-session time tracking with explicit Productive posting. |
| `demo-repository` | Agency Ops | archived | GitHub demo repository; keep archived. |

## Operating Rules

- New production-facing work should happen in `active` repositories unless an owner explicitly promotes a `sidecar` repository.
- `sidecar` repositories should state what they compare against or support in their README.
- `reference` repositories should not receive new feature work without first being reclassified.
- `superseded` repositories should point to the replacement repo in their description and README.
- `archive-candidate` repositories can be archived after the owner confirms no active automations, credentials, dashboards, or scheduled jobs depend on them.

## Immediate Follow-Ups

- Confirm whether `pacing-monitor` can be archived now that `red-robin-media-pacing` is the canonical pacing alert path.
- Give `meta-ads-dedup` a README/status pass so it is clear whether it is active, sidecar, or reference.
- Confirm whether `red-robin-channel-store-pacing` is purely historical or still feeds any live Sheets/reporting flow.
- Confirm whether `RedRobin_Reporting` should remain reference-only or be archived after `red-robin-recap` has fully replaced it.
