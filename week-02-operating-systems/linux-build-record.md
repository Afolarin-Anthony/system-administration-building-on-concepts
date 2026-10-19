# Linux Server Build Record

## Change Identification

| Field | Value |
|---|---|
| Change ID | CHG-002-002 |
| Asset ID | AST-003 |
| VM name | LAB-LNX-01 |
| Guest hostname | LAB-LNX-01 |
| System role | Linux administration server |
| Baseline | BL-LNX-001 |
| Change owner | [Name or laboratory administrator] |
| Planned date | 19th October 2026 |
| Status | Proposed |

## Purpose

This change creates and configures the first Linux server virtual machine
according to the approved desired-state baseline.

The work will test whether the planned identity, virtual hardware,
networking, account model, security controls, logging, and recovery
requirements can be implemented and independently verified.

## Source Documents

- `linux-baseline.md`
- `lab-architecture.md`
- `asset-inventory.md`
- `platform-evaluation.md`
- `configuration-deviations.md`

## Entry Conditions

| Condition | Evidence | Result | Status |
|---|---|---|---|
| Virtualization platform is operational | Platform change record | Successful platform deployment on host | Pass |
| Linux baseline is complete | Baseline review | [Result] | [Pass/Fail] |
| Host capacity remains sufficient | Host measurement | [Result] | [Pass/Fail] |
| VM storage location is defined | Baseline or platform settings | [Result] | [Pass/Fail] |
| Virtual network decision is documented | Architecture decision | [Result] | [Pass/Fail] |
| Installation image source is authorized | Source record | [Result] | [Pass/Fail] |
| Installation image integrity is verified | Checksum record | [Result] | [Pass/Fail/Not verified] |
| Credentials can be stored securely | Security rules | [Result] | [Pass/Fail] |
| Recovery approach is documented | Architecture recovery section | [Result] | [Pass/Fail] |

## Entry Decision

Choose one:

- Approved to implement
- Approved with documented limitations
- Paused pending investigation

## Reasoning

[Explain the decision from the evidence.]
