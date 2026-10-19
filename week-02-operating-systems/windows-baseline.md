# Windows Client Desired-State Baseline

## Document Control

| Field | Value |
|---|---|
| Baseline ID | BL-WIN-001 |
| Asset ID | AST-002 |
| VM name | LAB-WIN-01 |
| Hostname | LAB-WIN-01 |
| Role | Windows administration client |
| Baseline version | 1.0 |
| Approval status | Proposed |
| Effective date | [Date] |

## Purpose

LAB-WIN-01 will provide an isolated environment for learning and verifying
Windows client administration, identity, configuration, security, logging,
automation, networking, and recovery.

It is a laboratory system and must not contain production information or
personal data.



## Desired Identity

| Property | Desired State | Reason | Verification Method |
|---|---|---|---|
| Asset ID | AST-002 | Inventory traceability | Compare with inventory |
| VM name | LAB-WIN-001 | Consistent platform identification | Inspect hypervisor |
| Hostname | LAB-WIN-001 | Consistent operating-system identity | Query guest OS |
| System role | Administration/Client | Defined responsibility | Review installed services |
| Operating system | Windows 10 | Required learning environment | Query OS information |
| Edition or distribution | Professional | Feature and support requirements | Query OS information |
| Architecture | x64 | Host and software compatibility | Query OS architecture |


## Desired Virtual Hardware

| Resource | Desired State | Reason | Host Constraint | Verification Method |
|---|---|---|---|---|
| VM generation or firmware | [Value] | [Explain] | [Constraint] | Inspect VM settings |
| Virtual processors | [Value] | [Explain] | [Constraint] | Query platform and guest |
| Startup memory | [Value] | [Explain] | [Constraint] | Query platform and guest |
| Maximum memory | [Value or N/A] | [Explain] | [Constraint] | Inspect VM settings |
| Virtual disk capacity | 90GB | Windows components, updates and necessity already take up 45% of the allocated 90GB | Host does not have that amount of space left | Query platform and guest |
| Disk allocation type | [Value] | [Explain] | [Constraint] | Inspect virtual disk |
| Network adapters | Created and integrated with host | Needed for VMs to speak with hosts and also to each other| Unconncectivity | Inspect VM settings |
| Installation media | Downloaded | Used for creation of the VM | File size bogus | Record verified source |
