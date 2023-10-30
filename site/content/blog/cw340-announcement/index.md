+++
date = "2023-10-20T14:00:00+00:00"
title = "lowRISC Announces Expansion of OpenTitan Project with New Hardware"
slug = "cw340-announcement"
+++

*New Boards Allow Leading Developers and Organizations Globally to Contribute to the Project*

**CAMBRIDGE, United Kingdom – October 20, 2023** – [lowRISC C.I.C.](https://lowrisc.org/), the open source system on chip (SoC) organization, today announced the commercial availability of two pieces of hardware crucial for research and development with OpenTitan, a project creating the world’s first open source silicon root of trust (RoT) designs.
The NAE-CW310-K410T (Bergen Board) and the new, larger NAE-CW340-OTKIT (Luna Board) are now available for purchase exclusively from trusted global distributor Mouser, and addresses the overwhelming demand from OpenTitan partners, organizations and academic institutions wanting to run the full OpenTitan design — or subcomponents of that design — in a flexible FPGA-based emulation platform.
"With even more users unlocking the ability to contribute to ongoing OpenTitan testing and research, this is the next phase in building a trusted computing future from the OpenTitan silicon ecosystem," said Gavin Ferris, CEO of lowRISC.
"These boards allow adopters to proactively research, audit and improve the security of the OpenTitan design as they integrate it with data centers, storage devices and hardware."

The Bergen Board was developed by NewAE Technology Inc. (a wholly owned lowRISC subsidiary) specifically to support the needs of partners and contributors to the OpenTitan project.
The hardware was first released in limited supply in 2021, but demand quickly skyrocketed at a time of supply chain insecurity.
With the improving supply chain, this announcement marks the beginning of setup for worldwide distribution of these boards.
The new board, Luna, features an even larger Field Programmable Gate Array (FPGA) than the CW310.
The Luna Board combines two parts (the CW340 baseboard & CW341 Kintex UltraScale FPGA card) which can later be individually changed or upgraded, allowing for simple changes in FPGA size or connectivity.
Other notable features of the new board enabling hardware security evaluation include:

* **Built-in interfaces** including Joint Test Action Group (JTAG), serial, Serial Peripheral Interface (SPI) and FPGA configuration for a **single-board solution** when developing for OpenTitan
* Designed to enable **electromagnetic side-channel analysis** (EM-SCA) and **fault injection** testing of typical cryptographic hardware and embedded software implementations
* **Low-noise** and **adjustable power supply** for the FPGA core voltage, **hardware temperature monitoring** and **automatic shut-down**, and a **cross-flow fan** to enable cooling even with the heat spreader removed

The OpenTitan project has [recently announced official support for the Luna Board](https://opentitan.org/book/doc/contributing/fpga/get_a_board.html) as a supported board for building the complete OpenTitan top-level emulation (Bergen is already supported).

While existing FPGA boards often require patching together various additional tools, the new boards come out-of-the-box with everything a developer needs for working with OpenTitan.
As OpenTitan partners and RISC-V members continue their development work, having a turn-key development board will accelerate their research and integration of OpenTitan.
Implementing both the Bergen and Luna Boards allows customers to:

* Achieve a **fully integrated development environment** with no additional tooling required, and reliable and repeatable setups
* Enable **hardware security analysis** and **evaluate designs** for those meeting certifications such as EAL or FIPS-140-3
* Unlock a **future-proof architecture** (Luna board) with a modular design that splits the baseboard and FPGA card into **two physical boards**, enabling use of custom FPGA cards or evaluation of other targets using the same interface
* Enable **side-channel analysis** more effectively than any other commercially available FPGA boards, greatly **simplifying analysis** using electromagnetic side channel evaluation

### Pricing and availability

The [Bergen Board](https://www.mouser.co.uk/ProductDetail/NewAE/NAE-CW310-K410T-NORM?qs=sGAEpiMZZMuqBwn8WqcFUipNgoezRlc4Xi1bN4MBUi5mlPV%2Flgk3YA%3D%3D) ($5,000 USD) and [Luna Board](https://www.mouser.com/ProductDetail/NewAE/NAE-CW340-OTKIT?qs=sGAEpiMZZMuqBwn8WqcFUipNgoezRlc4IlozQ82AqJ2dWzBTkNMJAg%3D%3D) ($10,000 USD) are now available for pre-order from Mouser with free international shipping outside of the U.S. For more information on support for the Bergen or Luna Board, visit [https://rtfm.newae.com](https://rtfm.newae.com).

### About lowRISC

Founded in 2018 at the University of Cambridge Computer Lab, lowRISC is a not-for-profit company/CIC that provides a neutral home for collaborative engineering to develop and maintain open source silicon designs and tools for the long term. The lowRISC not-for-profit structure combined with full stack engineering capabilities in-house enables lowRISC to manage high quality projects like OpenTitan.

### Media Contact:
lowRISC@w2comm.com

