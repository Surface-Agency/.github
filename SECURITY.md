# Security Policy

## Reporting A Vulnerability

Surface Agency repositories may contain client-specific workflows, analytics logic, automation scripts, and operational documentation. If you find a vulnerability, exposed secret, unsafe automation behavior, or sensitive data exposure, report it privately instead of opening a public issue.

Send the report to Andrew Ransom or the current Surface Agency repository owner with:

- the affected repository and file path,
- a short description of the risk,
- steps to reproduce or validate the finding,
- any evidence needed to understand impact,
- whether credentials, client data, or production systems may be involved.

## Handling Guidance

Do not post secrets, tokens, credentials, client exports, screenshots of sensitive dashboards, or exploitable proof-of-concept details in issues, pull requests, or Slack channels with broad membership.

If a secret may have been exposed, treat it as compromised until it is rotated. Remove the secret from active systems, rotate the credential with the provider, and then clean up repository history only with explicit owner approval.

## Maintainer Expectations

Maintainers should acknowledge security reports promptly, triage severity, contain active exposure first, and document the fix or nonconformance in the relevant repo when appropriate.
