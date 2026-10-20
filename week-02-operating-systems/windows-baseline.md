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



## Resource Allocation

| Resource | Allocation | Reason | Host Impact |
|---|---:|---|---|
| Virtual processors | 2 vCPUs | Needed to run Windows seamlessly | Negligble impact conidering commit ratio |
| Startup memory | 4 GB| Least amount needed by Windows to run | Possible over-throttling of host |
| Maximum memory | 8 GB | Scaling due to indexed tasks | Could shutdown host |
| Virtual disk | 90 GB | Windows needed components| Less than the storage available from host (30GB) |
| Network adapters | Virtual network adapter | Needed for VM-to-VM, host connectivity | No impact on host can be seen yet |

### Capacity Reasoning

The allocation was selected after considering:

- The operating system's documented requirements
- The physical host's installed resources
- Resources reserved for the host
- The Linux VM's planned allocation
- Whether both VMs must run simultaneously
- Storage growth caused by updates, logs, and recovery files



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
| VM generation or firmware | Generation 2 | This supports modern OS boot, UEFI, Secure boot | Host must support UEFI VMs | Inspect VM settings |
| Virtual processors | 2 vCPUs | Needed to run Windows seamlessly | Limited by physical host cores and CPU overcommit ratio] | Query platform and guest |
| Startup memory | 4096 MB | Enough RAM for Windows OS initialization and boot sequencing |Physical RAM availability on the host during boot| Query platform and guest |
| Maximum memory | 8192 MB | Preparing in case of scaling up | Total Physical RAM of the host being exhausted | Inspect VM settings |
| Virtual disk capacity | 90GB | Windows components, updates and necessity already take up 45% of the allocated 90GB | Host does not have that amount of space left | Query platform and guest |
| Disk allocation type | Dynamically Expanding |Only consumes actual data space on the host, preventing immediate 90GB host depletion | Risk of host overallocation if multiple VMs expand simultaneously | Inspect virtual disk |
| Network adapters | Created and integrated with host | Needed for VMs to speak with hosts and also to each other| Unconncectivity | Inspect VM settings |
| Installation media | Downloaded | Used for creation of the VM | File size bogus | Record verified source |


## Desired Network State

| Property | Desired State | Reason | Verification Method |
|---|---|---|---|
| Virtual network | LAB-NET-01 | Approved network boundary | Inspect VM connection |
| Address assignment | either | Address assignment depends on the current scope of work | Query guest configuration |
| Host communication | Allowed | Required for host-to-guest file transfers, monitoring and managing lab resoruces | Connectivity test |
| VM-to-VM communication | Allowed | Linex Server - Client (Windows) connection | ping |
| Internet access | Temporarily | Only for OS updates | ping |
| Physical LAN access | Prohibited | Not to be used in/with other external systems | ping |
| Name resolution | Lab DNS | Resolving local server names internally without depending on external or physical network DNS | nslookup / ping - a |



## Desired Account State

| Account | Purpose | Privilege | Desired Status | Verification |
|---|---|---|---|---|
| Initial administrator | System setup | Administrative | Disabled (or renamed) | Review accounts |
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
| Unnecessary services | removed completely | Reduce complexity and exposure | Review services |
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

- VM is identifiable as intended
- All configurations are tested, vetted and documented.
- VM records stability as well as host.

## Approved Deviations

| Baseline Item | Approved Deviation | Reason | Risk | Review Date |
|---|---|---|---|---|
| None yet | None | N/A | N/A | N/A |


## Operating-System Selection

| Property | Selection |
|---|---|
| Product | Windows 10 |
| Edition | Professional |
| Release | 22H2 |
| Architecture | x86_64(64-bit) |
| Licensing basis |Evaluation License (90-day trial) or academic volume license. This allows full administrative testing within an isolated lab environment without incurring immediate activation fees or requiring live internet connection validation. |
| Official source | Microsoft Evaluation Center |
| Support status | Mainstream Support (Security updates provided regularly up to the documented end-of-life threshold). |

### Selection Reasoning

• Storage Optimization: Windows 10 has a compact base OS footprint. The base installation requires roughly 20–25GB of space, leaving more than half of the 90GB allocation available for system cache, course-required software installations, and incoming cumulative security updates.

• Lab Networking Capabilities: The Enterprise/Pro editions natively support Advanced Windows Firewall configurations, local static IP handling, and isolation policies required to confidently lock down the LAB-NET-01 network.

• Administrative Control: These editions unlock local user management tools (lusrmgr.msc) and local group policies needed to systematically disable the built-in Initial Administrator account and enforce the Least Privilege rules.

### Compatibility Requirements

1. UEFI Boot Support: The platform must support Generation 2 virtual machines to securely boot the modern Windows 10 kernel.

2. Virtual SCSI Controllers: Needed to mount and read the dynamically expanding 90GB virtual disk.

3. Internal Virtual Switch Mapping: The platform must present an isolated network switch layer (LAB-NET-01) that explicitly blocks bindings to the physical LAN or external WAN interfaces while preserving VM-to-Host communication.

### Unresolved Questions

• Host Hyper-Threading Support: We have not yet verified if the 4-core physical processor utilizes Hyper-Threading (8 threads) or baseline cores (4 threads). This keeps the definitive safe boundary of the CPU overcommit ratio unresolved.

• ISO Integrity Verification: The exact SHA-256 hash or file size of the installation media has not yet been audited to clear your constraint regarding "File size bogus".

## Verification Result

In progress
