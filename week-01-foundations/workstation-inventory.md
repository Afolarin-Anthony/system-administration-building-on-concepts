# Administration Workstation Inventory

## Purpose

This document records the relevant hardware, operating-system, storage, networking, and virtualization capabilities of the physical workstation that will host the systems administration laboratory.

Sensitive values have been omitted or sanitized before publication.

## System Summary

| Property | Recorded Value |
|---|---|
| Device type | Laptop |
| Manufacturer | Hp  |
| Model | Hp 348 G3 |
| Operating system | Windows |
| Operating-system edition | Professional |
| Operating-system version | 2009 |
| System architecture | 64 - bit |
| Processor | 1 |
| Processor cores | 2 |
| Installed memory | 8,084 |
| Available storage | 20GB |
| Virtualization support | Yes |
| Current virtualization platform | VirtualBox |
| Inventory date | 07/10/2026 |

## Storage Summary

| Volume | Purpose | Capacity | Free Space | Filesystem |
|---|---|---:|---:|---|
| F | UNAVAILABLE | 239 | 20 | NTFS |

## Network Summary

Only information required for laboratory planning will be recorded publicly.

| Property | Recorded Value |
|---|---|
| Network connection type | WiFi|
| Physical network adapter | 2 |
| Virtual network adapters | 1 |
| Internet connectivity | True |
| Internal laboratory network | Not configured |

Public documentation will not display full physical addresses, public IP addresses, wireless network names, or other unnecessary identifiers.

## Virtualization Assessment

The following questions must be answered:

- [ Yes ] Does the processor support hardware virtualization?
- [ No ] Is hardware virtualization enabled?
- [ Yes ] Is a hypervisor already installed?
- [ Not Really ] Is sufficient memory available for multiple virtual machines?
- [ Not for much ] Is sufficient storage available for virtual disks and snapshots?
- [ Yes ] Can an isolated virtual network be created?
- [ Yes ] Can the workstation be backed up before major changes?

## Capacity Assessment

The workstation will be assessed against the proposed initial laboratory:

| Planned System | Processor Allocation | Memory Allocation | Storage Allocation | Status |
|---|---:|---:|---:|---|
| Windows client VM | Not decided | Not decided | Not decided | Planned |
| Linux server VM | Not decided | Not decided | Not decided | Planned |

Allocations will be decided after the physical workstation inventory is complete.

## Findings
 
The workstation has [8GB] of installed memory and approximately
[20GB] of available storage. Hardware virtualization is
[disabled].
 
Based on the initial inspection, the workstation
[appears] capable of supporting the proposed initial
Windows and Linux virtual machines.
 
## Limitations
 
The principal limitations identified are:
 
- [Storage available to run VMs"]
- [Limitation or "None identified yet"]
 
## Decision
 
The workstation capacity will be used to determine the virtualization
platform and the resource allocation for each planned virtual machine.
## Limitations

To be completed after the capacity assessment.

## Decision

A decision about the virtualization platform and virtual-machine capacity will be made after the inventory has been verified.


## Pre-Inspection Reasoning

### Why is an inventory necessary?

[To understand the system. What does it have? , What can it do? What are it's limits?]

### What resources will virtual machines consume?

[CPU, Memory and a nightmare of storage.]

### What could happen if I create virtual machines without assessing the host?

[I could deprive the host the ability to function properly, create bottlenecks that threaten the funtion and availability of the host itself.]

### Which workstation characteristics are most relevant to this laboratory?

[Virtualization supported, Memory, Free Storage]

### What do I expect to discover about this workstation?

[That virtualization is supported, there is enough memory and storage to run at least two (2) virtual machines.]


## Initial Laboratory Requirement

The initial laboratory should support one Windows client and one Linux
server while allowing the physical host to remain stable and usable.

### Required Capabilities

- Run two virtual machines when necessary
- Provide each virtual machine with appropriate processor resources
- Provide sufficient memory without exhausting the host
- Store virtual disks and limited snapshots
- Create an isolated virtual network
- Restore or rebuild a damaged laboratory system

### Questions to Resolve

- How much memory can safely be assigned to virtual machines?
- How much storage is available for virtual disks?
- Is hardware virtualization enabled?
- Which virtualization platform is appropriate?
- Can both planned virtual machines run simultaneously?
- What recovery method will be used?

## Verified Workstation Characteristics

| Characteristic | Finding | Administrative Significance |
|---|---|---|
| Operating system | [Windows 11] | [Supports Hyper-V, WSL, Virtualization] |
| Architecture | [X64] | [Equipped to run both 32-bit and 64-bit softwares ] |
| Processor | [AMD] | [Supports Virtualization, Processing speed] |
| Physical cores | [Finding] | [Computing power determining efficiency] |
| Logical processors | [4] | [Efficiency and optimization] |
| Installed memory | [8GB, 20GB] | [Host needs memory to run, to check if what is left can run the VM] |
| Free storage | [Not enough] | [Storage is needed for host to remain responsive and for VM to run] |
| Virtualization status | [Disabled] | [Determine if a VM will run] |

## Evidence Assessment

| Statement | Classification | Supporting Evidence | Further Verification Needed |
|---|---|---|---|
| The system has [8GB] of memory | Verified | PowerShell system query | No |
| Hardware virtualization is available | [Verified] | [Powershell system query] | [No] |
| Two virtual machines can run reliably | [Unsure] | Capacity information only | Practical load test required |
| Available storage is sufficient | [Unsure] | Current volume information | Storage allocation plan required |


## Preliminary Capacity Decision

### Proposed Laboratory

Linux Virtual Machine and Windows Virtual Machine

### Current Evidence

Total storage of 239GB with 20GB already to Virtual Memory, Over 85% already to the system and installed applications.
Memory is depleted with 1gb barely running freely.

### Preliminary Decision

Choose one:


- The workstation does not appear suitable to run two Virtual Machines properly.


### Reasoning

Lack of sufficient storage and memory.

### Risks

- [Running a VM can completely take all storage and leave the host starving.]
- [Running two VMs could damage or degrade the CPU, and hard disk]


### Controls

- [Only necessary updates are integrated]
- [One VM is chosen for now]
- [Look for and install lighter images.]

### Information Still Required

- [None]


## Troubleshooting Exercise

### Selected Command

`[Get-Volume |
    Select-Object DriveLetter, FileSystemLabel, FileSystem,
    @{Name="SizeGB";Expression={:Round($_.Size / 1GB, 2)}},
    @{Name="FreeGB";Expression={:Round($_.SizeRemaining / 1GB, 2)}}]`

### Expected Result

[Details of my storage devices]

### Possible Unexpected Result

[Showed only DriveLetter and Filesytem, no total size, free size.]

### Investigation Approach

1. Read the complete error or output.
2. Confirm that the command was entered correctly.
3. Determine whether permissions affect the result.
4. Check whether the requested system component exists.
5. Use an independent source of evidence.
6. Compare the results.
7. Document the conclusion and remaining uncertainty.

### Important Lesson

[There are different factors that should weigh in when an administrator tries to work with an unexplained result.
Some of them are, compatibility, source of result, human error sanitization]
