#!/usr/bin/env bash
set -euo pipefail

ORG="${ORG:-Surface-Agency}"

repos=(
  "first_choice_rpa"
  "pacing-monitor"
  "productive-codex-time"
  "ratti-lead-engine"
  "red-robin-adplorer-budget-workflow"
  "red-robin-channel-store-pacing"
  "red-robin-clustering"
  "red-robin-competitive-intrusion"
  "red-robin-competitor-promos"
  "red-robin-lvrb-dashboard"
  "red-robin-media-pacing"
  "red-robin-mmm"
  "red-robin-recap"
  "red-robin-traffic-forecast"
  "red-robin-value-strength"
  "RedRobin_Reporting"
  "the-varsity-dashboard"
)

labels=(
  "type: bug|d73a4a|Something is broken or producing incorrect output"
  "type: feature|0e8a16|New capability or user-facing workflow"
  "type: chore|cfd3d7|Maintenance, cleanup, dependencies, or repo hygiene"
  "type: security|b60205|Security, secret handling, permissions, or vulnerability work"
  "type: docs|0075ca|Documentation, runbooks, or handoff notes"
  "data-quality|fbca04|Data freshness, lineage, validation, or quality concern"
  "area: ci|5319e7|GitHub Actions, checks, automation, or release workflow"
  "area: data|1d76db|Data pipelines, SQL, ingestion, or source freshness"
  "area: forecast|5319e7|Forecasting, model evaluation, sidecars, or challenger work"
  "area: automation|5319e7|Agents, scripts, scheduled jobs, or operational automation"
  "area: docs|5319e7|Documentation structure, guidance, or knowledge transfer"
  "priority: high|b60205|Needs prompt attention"
  "priority: medium|fbca04|Important but not urgent"
  "priority: low|cfd3d7|Nice-to-have or low urgency"
  "blocked|d93f0b|Cannot proceed without an external decision, input, or dependency"
  "needs-human-review|fbca04|Requires human judgment before merge or execution"
  "agent-reviewed|0e8a16|Reviewed by a coding agent or automation"
)

for repo in "${repos[@]}"; do
  for spec in "${labels[@]}"; do
    IFS="|" read -r name color description <<< "$spec"
    if gh label create "$name" --repo "$ORG/$repo" --color "$color" --description "$description" --force >/dev/null 2>&1; then
      printf 'synced %s: %s\n' "$repo" "$name"
    else
      printf 'failed %s: %s\n' "$repo" "$name" >&2
      exit 1
    fi
  done
done
