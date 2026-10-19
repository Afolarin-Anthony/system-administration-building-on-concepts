# Virtual Machine Baseline Template

## Document Control

| Field | Value |
|---|---|
| Baseline ID | [Identifier] |
| System name | [Name] |
| System role | [Role] |
| Baseline owner | [Owner] |
| Baseline version | 1.0 |
| Approval status | Proposed |
| Effective date | [Date] |
| Last reviewed | [Date] |

## Purpose

[Explain why the system exists and what requirement it supports.]

## Desired Identity

| Property | Desired State | Reason | Verification Method |
|---|---|---|---|
| Asset ID | [Value] | Inventory traceability | Compare with inventory |
| VM name | [Value] | Consistent platform identification | Inspect hypervisor |
| Hostname | [Value] | Consistent operating-system identity | Query guest OS |
| System role | [Value] | Defined responsibility | Review installed services |
| Operating system | [Value] | Required learning environment | Query OS information |
| Edition or distribution | [Value] | Feature and support requirements | Query OS information |
| Architecture | [Value] | Host and software compatibility | Query OS architecture |

## Desired Virtual Hardware

| Resource | Desired State | Reason | Host Constraint | Verification Method |
|---|---|---|---|---|
| VM generation or firmware | [Value] | [Explain] | [Constraint] | Inspect VM settings |
| Virtual processors | [Value] | [Explain] | [Constraint] | Query platform and guest |
| Startup memory | [Value] | [Explain] | [Constraint] | Query platform and guest |
| Maximum memory | [Value or N/A] | [Explain] | [Constraint] | Inspect VM settings |
| Virtual disk capacity | [Value] | [Explain] | [Constraint] | Query platform and guest |
| Disk allocation type | [Value] | [Explain] | [Constraint] | Inspect virtual disk |
| Network adapters | [Value] | [Explain] | [Constraint] | Inspect VM settings |
| Installation media | [Value] | [Explain] | [Constraint] | Record verified source |

## Desired Network State

| Property | Desired State | Reason | Verification Method |
|---|---|---|---|
| Virtual network | LAB-NET-01 | Approved network boundary | Inspect VM connection |
| Address assignment | [DHCP or static] | [Explain] | Query guest configuration |
| Host communication | [Allowed or prohibited] | [Explain] | Connectivity test |
| VM-to-VM communication | [Allowed or prohibited] | [Explain] | Connectivity test |
| Internet access | [Allowed, temporary, or prohibited] | [Explain] | Connectivity test |
| Physical LAN access | [Allowed or prohibited] | [Explain] | Connectivity test |
| Name resolution | [Expected state] | [Explain] | Name-resolution test |

## Desired Account State

| Account | Purpose | Privilege | Desired Status | Verification |
|---|---|---|---|---|
| Initial administrator | System setup | Administrative | Controlled | Review accounts |
| Daily-use account | Routine operation | Standard user | Enabled | Review accounts |
| Guest account | None | None | Disabled | Review accounts |
| Unnecessary default accounts | None | None | Disabled or unavailable | Review accounts |

## Desired Security State

| Control | Desired State | Reason | Verification Method |
|---|---|---|---|
| Supported operating system | Required | Security and maintenance | Verify version |
| Security updates | Current at verification time | Reduce known exposure | Query update state |
| Host firewall | Enabled | Limit unnecessary communication | Inspect firewall |
| Screen or session lock | Configured | Protect unattended access | Inspect policy |
| Least privilege | Applied | Reduce administrative exposure | Review memberships |
| Unnecessary services | Not enabled without a requirement | Reduce complexity and exposure | Review services |
| Time synchronization | Operational | Reliable logs and authentication | Query time state |
| Logging | Operational | Troubleshooting and accountability | Generate and inspect event |
| Remote access | Disabled unless required | Reduce unnecessary exposure | Review services and ports |

## Recovery State

| Recovery Requirement | Desired State | Verification Method |
|---|---|---|
| Build procedure | Documented | Independent document review |
| Installation source | Recorded and verified | Review source record |
| Important configuration | Documented | Compare system with baseline |
| Snapshot or checkpoint | Used only for a defined purpose | Review platform state |
| Rebuild method | Documented | Review and later test |
| Important data | Stored or copied according to recovery plan | Review data location |

## Acceptance Criteria

[List the conditions that prove the baseline has been implemented.]

## Approved Deviations

| Baseline Item | Approved Deviation | Reason | Risk | Review Date |
|---|---|---|---|---|
| None yet | None | N/A | N/A | N/A |

## Verification Result

Not yet implemented.
