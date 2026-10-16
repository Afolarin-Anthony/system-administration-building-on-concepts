# Change Record: Virtualization Platform Installation

## Change Identification

| Field | Value |
|---|---|
| Change ID | CHG-002-001 |
| Change title | Install or enable the selected virtualization platform |
| Change owner | Afolarin Anthony |
| Target system | Administration workstation |
| Change type | Planned laboratory change |
| Risk level | Undetermined |
| Planned date | 16th October 2026 |
| Current status | Proposed |

## Purpose

An installation of a virtualization platform is necessary as Virtual machines can not be created not run which in turn can not let us to complete our lab.

## Requirement Traceability

This change supports the following laboratory requirements:

- A virtual network adapter that allows the VMs to talk to each other as planned.
- Able to support guest operating systems Windows and Linux.
- Proper allocation of resources to VMs.

## Selected Platform

**Platform:**  VirtualBox

**Selection evidence:** `platform-evaluation.md`

## Current State

Before the change:

- Virtualbox is installed.
- Hardware virtualization yet to be enabled.
- Hypervisor like wsl2 is installed.
- There is about 31GB worth of storage available.
- A restart is expected.
- The current network state is active.

## Desired State

After the change:

- The selected virtualization platform is installed or enabled.
- The management interface opens successfully.
- Required platform services or features are available.
- No virtual machine has been created yet.
- The host remains stable and usable.
- Existing network connectivity still functions.
- The installed state can be independently verified.
- The asset inventory and change record reflect the new state.

## Scope

### Included

- Obtaining the platform from an authorized source
- Verifying the download where applicable
- Installing or enabling the selected platform
- Restarting the host if required
- Confirming host stability
- Verifying platform availability
- Recording the implementation result

### Excluded

- Creating virtual machines
- Installing guest operating systems
- Creating the final laboratory network
- Installing optional extensions without a requirement
- Changing unrelated firmware or Windows settings
- Removing other software unless formally justified

## Dependencies

- Compatible host operating system
- Supported processor architecture
- Hardware virtualization
- Sufficient memory and storage
- Administrative authorization
- Reliable power during installation
- Recovery access to the host
- Official installation source

## Expected Host Changes

- Increment in storage
- New virtual network adapters
- Installed virtualization platform
- Stable posture
  

Possible categories include:

- Windows optional features
- System restart
- New services
- New device or network drivers
- New management applications
- New virtual network adapters
- New installation directories
- New firewall rules



## Change Risk Assessment

| Risk | Possible Cause | Impact | Control | Verification |
|---|---|---|---|---|
| Host fails to restart correctly | Feature, driver, or compatibility issue | Host unavailable | Confirm eligibility and recovery access before installation | Successful restart and sign-in |
| Network connectivity changes | Virtual networking components | Loss of network access | Record current network state and avoid unnecessary network options | Compare connectivity before and after |
| Other virtualization tools stop working correctly | Hypervisor conflict or shared virtualization features | Existing workloads unavailable | Inventory existing platforms and review compatibility | Test only approved platform |
| Storage capacity decreases unexpectedly | Installer files, logs, or platform components | Reduced VM capacity | Record free space before and after | Compare storage readings |
| Installation is interrupted | Power loss or forced shutdown | Partial installation or corruption | Use reliable power and close unnecessary applications | Verify platform state after restart |
| Unauthorized or altered installer | Untrusted download source | Security compromise | Use the official source and verify integrity where available | Record source and verification result |
| Sensitive information is published | Unsanitized screenshots or logs | Privacy or security exposure | Review evidence before committing | Repository security review |


## Risk Decision

- For sensitive information accidentally publishes is a clearly unacceptable risk, a better control would be to double vet before publishing.
- The Host is a major asset in the lab, so it failing to restart correctly is unaffordable therefore more relevant information should be taken before installation is taken. Also proper recovery methods should be taken in place.


## Pre-Change Validation

| Check | Method | Expected Result | Actual Result | Status |
|---|---|---|---|---|
| Host operating system is supported | Review verified system information | Supported edition and architecture | Host is supported | Pass |
| Hardware virtualization is suitable | Review system information | Required features available | Suitable | Pass |
| Required storage is available | Review volume information | Sufficient free space | Unsure| Unsure |
| Existing virtualization software is recorded | Review installed applications and features | Existing platforms identified | VirtualBox is chosen | Pass |
| Current network connectivity works | Perform normal connectivity checks | Expected connectivity succeeds | Network connectivity works | Pass |
| Important work is protected | Review backup or synchronization state | Important files recoverable | Backup in place | Pass |
| Official installation source identified | Review vendor documentation | Authorized source recorded | virtualbox official page | Pass |




## Success Criteria

The change will be successful when:

- [ ] The installation or feature-enablement process completes
- [ ] The host restarts successfully if required
- [ ] The host operating system remains usable
- [ ] The virtualization management interface opens
- [ ] The selected platform reports an operational state
- [ ] Normal host network connectivity remains available
- [ ] No unexplained critical errors are observed
- [ ] Available storage remains within the accepted threshold
- [ ] No virtual machines have been created prematurely
- [ ] Documentation and inventory are updated

## Failure Conditions

The change will be considered unsuccessful if:

- The host cannot restart or sign in normally
- The platform cannot be opened or verified
- Essential host networking fails
- An unsupported or unexpected configuration is discovered
- The installation remains partial or inconsistent
- Existing required functionality becomes unavailable
- The result cannot be explained or verified

## Stop Conditions

Implementation must stop if:

- The host fails a mandatory eligibility check
- The installer source cannot be verified
- Recovery access is unavailable
- Insufficient storage is discovered
- An unexpected request for unrelated software appears
- The procedure requires disabling a security control without justification
- The observed system state significantly contradicts the change plan

## Rollback Plan

If the change fails:

1. Record the failure symptoms and exact stage reached.
2. Preserve relevant error messages and logs.
3. Avoid making multiple unrelated corrective changes.
4. Reverse the installed feature or software using the supported removal method.
5. Restart the host if required.
6. Verify host networking and normal operation.
7. Compare the resulting state with the pre-change baseline.
8. Record whether rollback was complete, partial, or unsuccessful.
9. Investigate the cause before attempting the change again.

## Rollback Limitation

A rollback plan is not proven merely because it is written. Its effectiveness
must be verified where testing is safe and practical.


## Installation Source Record

| Field | Value |
|---|---|
| Product | Oracle VirtualBox |
| Source | Official Oracle download page |
| Download date | 16TH October 2026 |
| Downloaded version | Virtualbox 7.2.20 |
| Host package | Windows |
| File name | Virtualbox 7.2.20 |
| Integrity method | [Checksum comparison or not performed] |
| Integrity result | [Match, mismatch, or not verified] |
