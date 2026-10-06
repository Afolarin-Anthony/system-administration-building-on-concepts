# System Administration: Building on Concepts

A 12-week hands-on systems administration course focused on building practical, verifiable, and professionally documented infrastructure skills.

This repository records my progression through system administration concepts, laboratory exercises, troubleshooting scenarios, automation projects, security practices, and a final infrastructure capstone.

## Purpose

The purpose of this project is to move beyond passive learning by turning systems administration concepts into practical and reproducible work.

Each week follows this process:

> Concept → Laboratory → Evidence → Documentation → Reflection

The repository is designed to demonstrate not only what I studied, but also what I configured, how I tested it, what problems I encountered, and how I resolved them.

## Course Objectives

By the end of this course, I aim to demonstrate the ability to:

- Install and configure Windows and Linux systems
- Create standardized and reproducible system configurations
- Administer users, groups, permissions, and privileged access
- Manage disks, partitions, filesystems, and shared storage
- Configure and troubleshoot fundamental network services
- Manage services, processes, software, and system updates
- Apply configuration-management and change-management practices
- Harden systems and implement essential security controls
- Automate administrative tasks with PowerShell, Bash, and Python
- Monitor system health, logs, performance, and availability
- Design and test backup and recovery procedures
- Document infrastructure using professional technical standards
- Build and defend a small organizational infrastructure environment

## Guiding Principles

The course is built around the following systems administration principles:

1. Configuration Management
2. Standardization
3. Least Privilege
4. Reliability
5. Availability
6. Security
7. Documentation
8. Automation
9. Monitoring and Observability
10. Backup and Recovery
11. Change Management
12. Inventory and Lifecycle Management

## Course Roadmap

### Week 1: Foundations and Laboratory Setup

Topics include systems administration responsibilities, laboratory planning, virtualization, workstation preparation, repository standards, naming conventions, and documentation practices.

**Primary deliverable:** A documented systems administration laboratory and professional course repository.

### Week 2: Operating Systems and Standardization

Topics include Windows and Linux installation, system information, hostnames, storage layouts, network settings, updates, and configuration baselines.

**Primary deliverable:** Standardized and validated Windows and Linux installations.

### Week 3: Identity, Permissions, and Least Privilege

Topics include users, groups, authentication, authorization, file permissions, administrative accounts, role-based access, and access reviews.

**Primary deliverable:** A role-based access-control implementation for a fictional organization.

### Week 4: Storage and Filesystems

Topics include disks, partitions, volumes, filesystems, mount points, storage permissions, shared data, capacity monitoring, and failure scenarios.

**Primary deliverable:** A managed departmental storage solution.

### Week 5: Networking and Network Services

Topics include TCP/IP, IP addressing, subnetting, DNS, DHCP, routing, ports, firewalls, packet analysis, and network troubleshooting.

**Primary deliverable:** A small documented and tested organizational network.

### Week 6: Services, Processes, Software, and Updates

Topics include system processes, Windows services, Linux daemons, package management, software deployment, scheduled tasks, patching, testing, and rollback.

**Primary deliverable:** A software and patch-management procedure.

### Week 7: Configuration and Change Management

Topics include desired state, configuration drift, version control, change requests, risk assessment, implementation planning, validation, and rollback.

**Primary deliverable:** A formally planned, executed, and reviewed infrastructure change.

### Week 8: Security Administration and Hardening

Topics include confidentiality, integrity, availability, attack surfaces, system hardening, encryption, firewalls, authentication, vulnerability management, logging, and incident response.

**Primary deliverable:** A documented security-hardening assessment for Windows and Linux systems.

### Week 9: Administrative Automation

Topics include PowerShell, Bash, Python, variables, conditions, loops, functions, input validation, error handling, logging, idempotence, and safe execution.

**Primary deliverable:** A cross-platform administrative automation toolkit.

### Week 10: Monitoring, Logging, and Troubleshooting

Topics include performance baselines, logs, metrics, alerts, monitoring platforms, troubleshooting methodology, incident handling, and root-cause analysis.

**Primary deliverable:** A monitoring implementation and simulated incident investigation.

### Week 11: Backup, Restoration, and Disaster Recovery

Topics include backup strategies, retention, recovery-point objectives, recovery-time objectives, restoration testing, backup security, and disaster-recovery runbooks.

**Primary deliverable:** A tested backup and recovery plan.

### Week 12: Infrastructure Capstone

The final project combines identity, storage, networking, security, monitoring, automation, change management, documentation, and disaster recovery.

**Primary deliverable:** A documented organizational infrastructure environment with verification evidence and a failure-recovery demonstration.

## Repository Structure

```text
system-administration-building-on-concepts/
├── README.md
├── SECURITY.md
├── CHANGELOG.md
├── docs/
│   ├── architecture/
│   ├── standards/
│   ├── runbooks/
│   ├── change-records/
│   ├── incident-reports/
│   └── disaster-recovery/
├── templates/
├── scripts/
│   ├── powershell/
│   ├── bash/
│   └── python/
├── week-01-foundations/
├── week-02-operating-systems/
├── week-03-identity-access/
├── week-04-storage/
├── week-05-networking/
├── week-06-services-updates/
├── week-07-configuration-change/
├── week-08-security/
├── week-09-automation/
├── week-10-monitoring/
├── week-11-backup-recovery/
└── week-12-capstone/
```

## Weekly Documentation Standard

Each weekly directory will contain documentation organized around the following structure:

1. Overview
2. Learning objectives
3. Concepts studied
4. Laboratory architecture
5. Prerequisites
6. Implementation procedure
7. Commands and configuration
8. Security considerations
9. Verification tests
10. Problems encountered
11. Troubleshooting process
12. Final results
13. Lessons learned
14. References
15. Future improvements

## Evidence Standards

Practical work may be supported by:

- Architecture and network diagrams
- Sanitized screenshots
- Command output
- Configuration files
- Administrative scripts
- Test plans and results
- Change records
- Incident reports
- Root-cause analyses
- Security assessments
- Backup and restoration records
- Runbooks and standard operating procedures
- Before-and-after comparisons

Screenshots will support the documentation, but they will not replace written explanations, commands, validation results, or technical reasoning.

## Laboratory Safety

All exercises are performed in an authorized and isolated laboratory environment.

This repository will not intentionally contain:

- Passwords
- Private keys
- Authentication tokens
- Recovery codes
- Personally identifiable information
- Confidential organizational information
- Unredacted public IP addresses
- Unauthorized security-testing results
- Production credentials or configurations

Any organization names, users, devices, domains, and business scenarios used in the laboratories will be fictional.

## Tools and Technologies

Tools may include:

- Windows
- Windows Server
- Linux
- PowerShell
- Bash
- Python
- Git and GitHub
- VirtualBox, Hyper-V, or VMware
- Active Directory
- DNS and DHCP
- Windows Event Viewer
- Linux systemd and journal logs
- Wireshark
- Nmap
- Ansible
- Monitoring and backup platforms

The exact toolset may change as the laboratory develops. The administrative concepts, validation methods, and documentation standards remain the primary focus.

## Assessment Method

Each weekly project will be evaluated according to:

- Conceptual understanding
- Correct implementation
- Verification and testing
- Troubleshooting methodology
- Security awareness
- Recovery and rollback planning
- Documentation quality
- Professional communication

## Project Status

**Current phase:** Repository setup and Week 1 preparation

Progress will be recorded through weekly documentation, meaningful commits, scripts, diagrams, test results, and project reflections.

## Disclaimer

This is an independent educational project and is not an accredited academic program or professional certification.

The repository provides inspectable evidence of practical learning and is intended to complement formal education, professional experience, and industry certifications.

## Author

**Afolarin Anthony**

Aspiring Systems Administrator developing practical skills in infrastructure administration, networking, security, automation, troubleshooting, and technical documentation.
