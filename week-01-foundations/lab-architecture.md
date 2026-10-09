# Initial Laboratory Architecture

## Document Status

Draft

## Purpose

[Explain why the laboratory is being designed and what it must support.]

## Scope

### Included

- Physical administration workstation
- Virtualization platform
- Windows client virtual machine
- Linux server virtual machine
- Virtual network
- Laboratory documentation
- Basic recovery method

### Not Yet Included

- Windows Server
- Active Directory
- Publicly accessible services
- Production systems
- Unauthorised external systems
- Complex enterprise infrastructure

## Functional Requirements

The laboratory must:

- Run a Windows client virtual machine
- Run a Linux server virtual machine
- Allow controlled communication between laboratory systems
- Permit administrative access to the virtual machines
- Support repeatable experiments
- Allow damaged virtual machines to be restored or rebuilt
- Keep laboratory activity separate from production systems
- Produce evidence suitable for sanitized documentation


## Non-Functional Requirements

The laboratory should be:

- Safe
- Reliable within available resources
- Understandable
- Recoverable
- Expandable
- Documented
- Consistently named
- Reasonably simple to maintain

### Requirement Interpretation

#### Requirement 1

**Allow communication between laboratory systems:**

**Why it exists:**  
This is to properly emulate networking scenarios in the real world.

**How it could be verified:**  
Using virtual network adapters provided by host or via the virtualization platform, a screenshot of the laboratory systems pinging each other with clear view of packets will be taken.

**What could prevent it from being satisfied:**  
Virtualization been turned off at firmware level
Subnetting errors.
Misconfiguration of virtual network adapters.


### Requirement Interpretation

#### Requirement 2

**Documentation:**

**Why it exists:**  
This is necessary as it keeps a physical log of all troubleshooting actions, inventory, configurations and more which can be utilized and appreciated by another administrator in the future.

**How it could be verified:**  
Ensuring that all configurations, inventory have been taken down in notes.

**What could prevent it from being satisfied:**  
Unwillingness of the administrator to take notes, or even document.


### Requirement Interpretation

#### Requirement 3

**Allowed damaged virtual machines to be reparied or restored:**

**Why it exists:**  
An administrator prepares for probelms that can take place.
Due to the dynamic state of VMs, possible resource depletion, error in saving/restoring a snapshot, VMs could end up being damaged.

**How it could be verified:**  
Testing snapshot abilities of the virtualization platform.

**What could prevent it from being satisfied:**  
Read/write error of the host.
Insufficient memory and/or storage resources.
Forced or unplanned of host shutdown (BSODs).


### Requirement Interpretation

#### Requirement 4

**Safe:**

**Why it exists:**  
The goal of the lab is to test, prepare, an administrator for production systems not for acting as a collateral damage which could be caused by malware.
Ensuring the host is safe from malware even if a VM was intentional made to run a safety vulnerabilty test.

**How it could be verified:**  
Running antivirus programs (inherent or third-party) on each VMs.

**What could prevent it from being satisfied:**  
Poor firewall configuration that does not separate the host from the infected VM.
No installed or running antivirus program.

## Planned Components

| Asset ID | Component | Role | Reason Required | Dependency | Status |
|---|---|---|---|---|---|
| AST-001 | Physical workstation | Virtualization host and administration station | [Act as hosting agent for the Virtual machines. Responsible for the resources needed] | Power, storage, memory, host OS | Existing |
| AST-002 | LAB-WIN-01 | Windows client VM | [To emulate end-user] | Host, hypervisor, virtual storage, network | Planned |
| AST-003 | LAB-LNX-01 | Linux server VM | [To emulate server production environment] | Host, hypervisor, virtual storage, network | Planned |
| NET-001 | LAB-NET-01 | Laboratory virtual network | [Emulating real life networking protocols/scenarios] | Hypervisor networking | Planned |

## Communication Requirements

| Source | Destination | Communication Needed? | Reason |
|---|---|---|---|
| Host | Windows VM | [No] | [There is actually no need] |
| Host | Linux VM | [No] | [There is actually no need] |
| Windows VM | Linux VM | [Yes] | [Emulating real life server - client relationship] |
| Windows VM | Internet | [Temporary] | [For image update and resources] |
| Linux VM | Internet | [Temporary] | [For update and acquiring resources] |
| Laboratory VMs | Physical home network | [Yes] | [Although safety precautions will be taken, the home lab is what will be used to connect both VMs to the internet.] |


<img width="1872" height="2268" alt="image" src="https://github.com/user-attachments/assets/921f7234-fa2d-4eae-ba48-ea392cb23a3e" />


## Architecture Decision Record 001

### Title

Initial Laboratory Network Boundary

### Status

Proposed

### Context

- Should the VMs be connected to the host?
- Due to probable storage constraints, should we still proceed with two VMs?

### Options Considered

1. Isolated VM-only network
2. Host-accessible internal network
3. Externally connected network
4. Linux VM alone.
5. Both Linux and Windows VM.

### Selected Option

1,3 and 4

### Reasons

- Reason based on a requirement
- Reason based on safety
- Reason based on manageability

### Consequences

- Unable to properly emulate server-client relationship

#### Benefits

- Proper resource allocation to the Linux VM and also for the host to maintain uptime.

#### Limitations

- Only one VM, Linux. No access to the windows image, interface and settings.

### Future Review Condition

This decision should be reviewed when:

- A laboratory exercise requires Internet access
- The Windows VM is needed for better emulation.
- Remote administration is required
- The selected virtualization platform imposes a limitation


## Initial Risk Assessment

| Risk | Cause | Possible Impact | Likelihood | Control | Residual Concern |
|---|---|---|---|---|---|
| Host resource exhaustion | Excessive VM allocation | Host instability or poor performance | 3/5 | Reserve resources for host | Host might be free but VMs become slower |
| Storage exhaustion | Virtual disks or snapshots grow | VM or host failure | 2/5 | Set thresholds and monitor capacity | Log filling up storage |
| Laboratory exposure | Incorrect network boundary | Unwanted network access | [1/5 | Use least-connected suitable network | Malware |
| Loss of laboratory work | VM corruption or accidental deletion | Rework or data loss | 2/5 | Document builds and maintain recovery copies | Loss, theft of physical device |
| Sensitive data exposure | Unsanitized documentation | Privacy or security incident | 3/5 | Review evidence before publication | Human error and oversight |



## Architecture Acceptance Criteria

The initial design will be considered successfully implemented when:

- [ ] Both planned virtual machines can be identified by their standard names
- [ ] The host reivemains response while the required VMs are running
- [ ] Each VM receives only its planned resource allocation
- [ ] The Windows and Linux VMs communicate according to the network policy
- [ ] Prohibited communication is shown to be blocked or unavailable
- [ ] Administrative access works through the approved path
- [ ] Storage remains above the chosen safety threshold
- [ ] A VM can be restored, reverted, or rebuilt using documented procedures
- [ ] Inventory records match the implemented environment
- [ ] Published evidence contains no secrets or unnecessary identifiers


# Laboratory Asset Inventory

## Asset Status Definitions

- **Existing:** Currently present and identified
- **Planned:** Approved in the design but not created
- **Active:** Implemented and currently in use
- **Suspended:** Retained but not currently operational
- **Retired:** Removed from service
- **Unknown:** Status has not been verified

## Assets

| Asset ID | Name | Type | Purpose | Owner | Status | Recovery Method |
|---|---|---|---|---|---|---|
| AST-001 | [Sanitized host name] | Physical workstation | Administration and virtualization host | Laboratory owner | Existing | [Depending on Operating System, Image restore protocol e.g. Windows's Image system is taken into consideration.] |
| AST-002 | LAB-WIN-01 | Virtual machine | Windows client administration | Laboratory owner | Planned | Rebuild or restore |
| AST-003 | LAB-LNX-01 | Virtual machine | Linux server administration | Laboratory owner | Planned | Rebuild or restore |
| NET-001 | LAB-NET-01 | Virtual network | Controlled laboratory communication | Laboratory owner | Planned | Recreate from documentation |

