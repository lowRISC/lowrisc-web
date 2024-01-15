+++
date = "2024-01-15T00:00:00+00:00"
title = "Unveiling Sonata: Affordable CHERI Hardware for Embedded Systems"
slug = "sonata-board-update"

aliases = "/blog/2024/01/sonata-board-update/"

[[resources]]
src = "sonata-board.jpg"
title = "Early Sonata Prototype"
+++

The lowRISC®/Sunburst team are pleased to announce that the initial Sonata prototype boards have been manufactured by our wholly owned subsidiary NewAE and are currently being tested, marking a significant milestone towards our goal of making CHERI technology widely available to embedded systems engineers.

{{< img src="sonata-board.jpg" width=500 class="d-block align-middle img-fluid mx-auto" alt="Early Sonata Prototype" >}}

*<p style="text-align: center;">lowRISC®'s Sonata Board - powered up and running!</p>*

## Ibex Inside

The CHERIoT Ibex core lies at the heart of the Sonata system.
Ibex is a production-quality, open-source 32-bit RISC-V CPU core, written in SystemVerilog.
Ibex is highly parameterizable, making it an ideal choice for embedded control applications, and has undergone extensive verification and multiple tape-outs, ensuring reliability and robustness.
CHERIoT Ibex is  an extension of the Ibex core, released into the open source by [Microsoft](https://www.microsoft.com/en-us/research/publication/cheriot-rethinking-security-for-low-cost-embedded-systems/), which integrates CHERI memory safety features and promises a new era of highly secure embedded applications.

## Configurability

Sonata places a strong emphasis on usability, offering users the flexibility to move between different configurations seamlessly.
Physical switches for both bitstream and software images enable the user to easily transition between CHERI and non-CHERI bitstreams or different demo applications showcasing CHERI compartmentalization and exceptions.

To facilitate this configurability, Sonata's USB connector functions as mass storage, allowing users to store and switch bitstreams effortlessly.
The presence of an RP2040 on the board ensures efficient management of these configurations.
In addition, the system includes two separate flash chips and an 8MB HyperRAM chip.

## Connectivity and Extensibility

Sonata is designed to be connectable and extensible, catering to diverse application needs.
Common communication interfaces and peripherals such as Ethernet, RS-232, RS-485, MicroSD, and ADC are integrated into the board.
Moreover, various headers, including Raspberry Pi, Arduino shield, microBUS Click, Sparkfun QWIIC, PMOD, and a 30-pin R/A header, provide avenues for custom functionalities.

While there are, naturally, some physical layout constraints applying to the simultaneous use of certain headers, the required FPGA pins can be used independently, so modified wiring solutions allow users to leverage the capabilities of multiple expansion boards simultaneously should they require this flexibility.

## Streamlined Debugging and User-Friendly Interface

Sonata prioritizes ease of use.
Firmware and FPGA bitstream loading, debugging via JTAG and virtual UARTs are all available via a single USB connector that also powers the board.
External JTAG and UART headers are provided for users requiring different setups.

The user interface is designed to be interactive and includes DIP switches, buttons, and a 5-way joystick for input.
Output is facilitated through LEDs, an LCD screen, and CHERI-specific capability exception LEDs, ensuring a comprehensive and user-friendly experience.

## An Affordable Revolution

To make Sonata accessible to a wider audience, the team opted to utilise a cost-effective FPGA for Sonata, the Xilinx Artix 7.
Balancing affordability with performance, this FPGA can support the peripherals on the board and the envisaged embedded use-cases.
Its widespread tool support further enhances its appeal.

## What's Next for Sonata

The initial prototype boards are now starting to undergo testing, during which the lowRISC®/Sunburst team will carefully check the interfaces, onboard components including HyperRAM, clock rates, and overall performance to ensure the boards meet expectations. 

The results of this will be fed back into the design for the upcoming 100 board production run, scheduled for distribution to interested parties in Q2 2024.
Following this, the prototype Sonata board will be made available, at cost, and subsequently a commercial variant through an international distributor, marking a significant milestone in the journey toward making CHERIoT hardware widely accessible.
And of course the design and layout of the Sonata PCB is itself already available under a permissive open-source licence, [here](https://github.com/newaetech/sonata-pcb).

In the challenging, resource-constrained world of embedded systems, the Sonata board provides an efficient route for developers to explore and leverage the security benefits of CHERI.
Watch this space for further updates from the lowRISC®/Sunburst Team in 2024!

The Sunburst Project is supported by DSbD/UKRI grant (#107540).
