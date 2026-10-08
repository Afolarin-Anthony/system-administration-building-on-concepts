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
