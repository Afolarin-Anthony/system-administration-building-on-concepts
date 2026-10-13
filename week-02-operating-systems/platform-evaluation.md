# Virtualization Platform Evaluation

## Decision to Be Made

Select a virtualization platform for the initial Windows and Linux
laboratory defined during Week 1.

## Host Facts

| Characteristic | Verified Finding | Evidence |
|---|---|---|
| Host operating system | Windows | Workstation inventory |
| Windows edition | Pro | Workstation inventory |
| System architecture | x64 | Workstation inventory |
| Hardware virtualization | Available | Workstation inventory |
| Installed memory | 8GB | Workstation inventory |
| Available storage | 30GB | Workstation inventory |
| Existing hypervisor | Unsure | Workstation inventory |

## Mandatory Requirements

A suitable platform must:

- Run on the verified host operating system and edition
- Support the host processor architecture
- Support Windows and Linux guest systems
- Provide the required laboratory network boundary
- Permit controlled allocation of processor, memory, and storage
- Support recovery or rebuild procedures
- Be usable within the available workstation capacity
- Have trustworthy documentation and an authorized download source

## Preferred Requirements

A suitable platform should:

- Be manageable with clear administrative tools
- Support repeatable virtual-machine configuration
- Provide useful command-line or automation capabilities
- Allow the laboratory to expand later
- Provide understandable networking controls
- Minimize unnecessary host complexity



## Candidate Evaluation

### Candidate 1: Microsoft Hyper-V

#### Eligibility

- Is the host Windows edition eligible?
- Are the hardware requirements satisfied?
- Is virtualization enabled in firmware?
- Would enabling it require a restart?
- Does it support the selected network boundary?

#### Advantages for This Laboratory

- Uses bare metal so hardware resources are used efficiently.
- Supports checkpoints, robust vm exporting/importing.

#### Limitations for This Laboratory

- Network boundary setup is complicated and can affect host.
- Can affect and put host at risk if proper caution is not taken.

#### Evidence Sources

- Mircosoft Learn
- https://learn.microsoft.com/en-us/windows-server/virtualization/hyper-v/architecture
- https://learn.microsoft.com/en-us/windows-server/virtualization/hyper-v/overview

### Candidate 2: Oracle VirtualBox

#### Eligibility

- Is the host operating system supported?
- Is the processor architecture supported?
- Does installation add host networking components?
- Does it support the selected network boundary?
- Are additional components actually required?

#### Advantages for This Laboratory

Host compatible ( Windows home, pro, workstation )
Able to adjust CPU execution gaps i.e a guest can be limited to 60 - 70%
 of a core.
 
#### Limitations for This Laboratory

Installation, therefore it adds it's own bottleneck

#### Evidence Sources

(https://www.virtualbox.org/manual/topics/networkingdetails.html)
https://www.bdrshield.com/blog/beginners-guide-for-microsoft-hyper-v-hyper-v-vs-virtualbox-virtualization-part-63/



## Decision Matrix

Scoring:

- 0: Does not satisfy the requirement
- 1: Partially satisfies or introduces a serious limitation
- 2: Satisfies the requirement
- N/V: Not yet verified

| Criterion | Importance | Hyper-V | VirtualBox | Evidence or Explanation |
|---|---|---:|---:|---|
| Host compatibility | Mandatory | 1 | 2 | Both works but Hyper-V does not work on Windows Home edition |
| Windows guest support | Mandatory | 2 | 2 | Both Support the Windows OS |
| Linux guest support | Mandatory | 1 | 2 | Hyper-V should support via WSL but VirtualBox Supports |
| Required network isolation | Mandatory | 1 | 2 | For Hyper-V, it is complicated while simpler to implement in VirtualBox|
| Resource controls | Mandatory | 1 | 2 | Implementable in both but complicated with Hyper-V |
| Recovery support | Mandatory | 2 | 2 | Both have the needed features |
| Administrative simplicity | Preferred | 2 | 1 | Hyper-V wins with surety of administrative capabilities. |
| Automation potential | Preferred | 2 | 2 | Both have outstanding automation capabilities |
| Future expansion | Preferred | 1 | 1 | Depends on the scope of expansion |

## Elimination Rule

A candidate that fails a mandatory requirement cannot be selected merely
because it receives a higher total score.

## Preliminary Selection

VirtualBox

## Reasoning

Virutalbox scored the highest with the mandatory requirements.

## Remaining Unknowns

The full capabilities of VirtualBox automation feature.



## Architecture Decision Record 002

### Title

Selection of Virtualization Platform

### Status

Accepted

### Context

The approved laboratory requires a virtualization platform capable of
hosting one Windows client and one Linux server within the limits of the
physical workstation.

### Decision

VirtualBox

### Decision Drivers

- Host compatibility
- Guest operating-system support
- Network-boundary requirements
- Available workstation capacity
- Recoverability
- Manageability
- Future automation requirements

### Alternatives Considered

- Hyper-V

### Reasons for Selection

- Host Compability.
- Required Network isolation.
- Supports both guests.

### Consequences

#### Positive

- Required Network isolation.
- GUI and CLI to manage guests.

#### Negative

- Future expansion capabilities are still unknown.
- Administrative capability is not grounded.

#### Risks Introduced

- Lab is limited to a definite scope.
- Vulnerable to unauthenticated and unauthorized configurations.

### Controls

- Back up, document guests' configurations which should make transferability to a new platform less tedious.
- Create and store snapshots.
- Activate administrative features of guests.

### Review Conditions

This decision should be reviewed if:

- The host operating system changes
- The workstation capacity changes
- Required guest systems are no longer supported
- The laboratory requires capabilities the platform cannot provide
- The platform creates unacceptable reliability or compatibility problems
