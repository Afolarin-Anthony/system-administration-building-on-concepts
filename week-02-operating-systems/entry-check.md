# Week 2 Entry Check

## Purpose

This check confirms that the laboratory has sufficient planning, capacity,
and safety controls before implementation begins.

## Entry Conditions

| Condition | Evidence Location | Result | Status |
|---|---|---|---|
| Workstation capacity has been assessed | Week 1 workstation inventory | Assessed but still need to be confirmed | Pass |
| Hardware virtualization has been evaluated | Week 1 workstation inventory | Hardware feature available | Pass |
| Laboratory scope has been defined | Week 1 architecture | Scope has been defined | Pass |
| Planned assets have standard names | Naming standard | All three names have been name | Pass]|
| Network boundary has been selected | Architecture decision record | Network boundary has been selected | Pass |
| Major implementation risks have controls | Week 1 risk assessment | Risks have controls in place | Pass |
| Recovery requirements have been defined | Week 1 recovery strategy | Have been defined but has to be tested | Unverified |
| Sensitive-information rules exist | Week 1 security rules | Protocols and etiquettes are in place | Pass |
| Sufficient memory appears available | Capacity assessment | Unsure| Unverified |
| Sufficient storage appears available | Capacity assessment | Unsure | Unverified |

## Contradictions Found
It is still unverified if the host has enough resources both in memory and storage to run a Linux VM and a Windows VM at once.

## Unresolved Conditions
If enough memory and storage for all host,two VMs exist.

## Entry Decision
- Approved to begin platform selection taking note of documented limitations.

## Reasoning
We will have to proceed with platform selection, installation to verfiy our suspicions of satisfactory resources.
