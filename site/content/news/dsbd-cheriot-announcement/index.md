+++
date = "2023-09-12T14:00:00+00:00"
title = "lowRISC Extends UKRI’s Digital Security by Design Programme Support Into Operational Technology"
slug = "dsbd-cheriot-announcement"
featured_image = "eev-diagram.png"

aliases = "/blog/2023/09/dsbd-cheriot-announcement/"

[[resources]]
src = "eev-diagram.png"
title = "OpenTitan"
+++


UK Research and Innovation (UKRI) recently [announced](https://iuk.ktn-uk.org/news/digital-security-by-design-driving-investment-in-the-automotive-sector-and-embedded-systems/) that its CHERI-based Digital Security by Design Programme (DSbD) technologies have already demonstrated significant value in sectors where high integrity, resilient, and safety-focused applications are paramount, including avionics, automotive and embedded systems.

DSbD aims to provide foundational support to developers centred around a technology enhancement in the central processor (CPU): Capability Hardware Enhanced RISC Instructions, or (CHERI). CHERI has the potential to prevent around 2/3rds of current exploits, whilst simultaneously providing new software methods to help maintain the operational resilience and integrity of applications.

As part of a drive to ensure these advances are usable in the challenging operational technology (OT) domain as well as the more fully-featured platforms to which they were originally targeted, we are delighted to report that this announcement also included significant funding for a new project with lowRISC CIC

# lowRISC’s Involvement

Operational  technology (OT) systems are computing nodes used to monitor or control physical devices, processes, and events. They are particularly challenging targets, since their critical security requirements must typically be achieved within very tight power, area and financial budgets.

To support uptake in this space, DSbD is now funding a project with lowRISC to enable the CHERI technologies to be delivered within a RISC-V based embedded platform.

Specifically, lowRISC will leverage Microsoft’s recently open-sourced [CHERIoT](https://github.com/microsoft/cheriot-ibex) work, which extended our  popular, open-source RISC-V [Ibex](https://github.com/lowRISC/ibex) CPU core with CHERI support, and deliver both a low-cost evaluation board for this baseline version, and also a top-level design that unifies the mature OpenTitan silicon root of trust with CHERIoT in a single system, suitable for use as the basis for either a standalone, low-power OT secure microcontroller, or for integration into other OT system-on-chip (SoC) designs as a subcomponent.

lowRISC is uniquely positioned to be able to deliver this,being the maintainers of the RISC-V based Ibex processor, and steward of the collaboration developing the open-source [OpenTitan](https://opentitan.org/) silicon Root-of-Trust (RoT).

OpenTitan has [recently declared](https://lowrisc.org/news/2023/06/opentitans-rtl-freeze-leveraging-transparency-to-create-trustworthy-computing/) a significant milestone, taping out its Engineering Sample (ES). This marks a hugely significant quality and verification step towards commercial production silicon. Furthermore, its wholly owned subsidiary [NewAE Technology Inc](https://www.newae.com/), will develop and deliver the evaluation boards, seeding interest and take up of CHERI technology.

# Project Deliverables in Detail

As noted, lowRISC will deliver two prototype platforms: one centred around the existing CHERIoT core as a demonstrator (the Base-Version, BV) and another where the CHERIoT core is paired with OpenTitan (the Extended Evaluation Version, EEV). The EEV enables the full power of CHERIoT to be evaluated and utilised in an OT context. The lowRISC team will work closely with UKRI to bring these versions to their intended audiences and accelerate the adoption of CHERI in the market.

We are seeking input from interested parties on the requirements for the BV. In particular we are interested to hear about peripherals and interfaces that would be useful to those seeking to evaluate CHERIoT for use with their applications. See [tinyurl.com/cheriot-fpga-board](http://tinyurl.com/cheriot-fpga-board) for more details. Please send your feedback to [cheriot-bv-reqs@lowrisc.org](mailto:cheriot-bv-reqs@lowrisc.org)

All board designs, RTL, and firmware will be provided as permissively licensed open source to maximise their impact and reach, and the project will be completed by the end of 2024. The deliverables and outputs from this project will help fulfil the objectives of DSbD to “transform digital technology and create a more resilient, and secure foundation for a safer future.” Through lowRISC’s deliverables,  the next generation of secure-by-design electronic devices — in the challenging domain of OT —  can be further researched, developed and commercialised, and better yet, because of the project’s open-source nature, this can be done without the material barriers to entry that are normally associated with disruptive hardware technologies.

The diagram below illustrates the intended design of the EEV.
Note this is an early diagram and the CHERIoT Ibex side may look different in the finished version (in particular the set of peripherals provided).
The OpenTitan Earl Grey side will remain fixed as we are leveraging the existing high-quality verified design.

{{< img class="mx-auto d-block rounded img-fluid" width=1099 src="eev-diagram.png" title="Diagram of the EEV" >}}
