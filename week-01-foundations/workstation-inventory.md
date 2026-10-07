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
