+++
date = "2023-12-19T00:00:00+00:00"
title = "Sunburst Project Update"
slug = "sunburst-project-update-dec-23"

aliases = "/blog/2023/12/sunburst-project-update-dec-23/"

[[resources]]
src = "top_darjeeling_block_diagram.svg"
title = "OpenTitan Darjeeling Block Diagram"
+++

The [Sunburst Project](https://sunburst-project.org), supported by DSbD/UKRI grant (#107540), focuses on enhancing security within the embedded and operational technology (OpTe) sectors.
Its primary goal is to promote the adoption of CHERIoT, an open-source microcontroller technology that integrates CHERI capabilities within the RISC-V architecture.

Today [lowRISC](https://lowrisc.org) and [NewAE](https://newae.com) are pleased to announce we've already made significant strides towards that goal, which we'll briefly review in this blog!

But first, a little history of how we got here, what CHERI is all about, and why it matters.

## Sunburst's Backstory

[CHERI](https://www.cl.cam.ac.uk/research/security/ctsrd/cheri/) was developed jointly by the University of Cambridge and SRI International to enable enforcement of fine-grained memory protection and scalable software compartmentalisation at the hardware (processor) level.
It has the potential to [prevent around 70% of current exploits](https://github.com/microsoft/MSRC-Security-Research/blob/master/presentations/2019_02_BlueHatIL/2019_01%20-%20BlueHatIL%20-%20Trends%2C%20challenge%2C%20and%20shifts%20in%20software%20vulnerability%20mitigation.pdf) (hacks), without requiring legacy software — which is typically written in unsafe languages such as C — to be completely recoded in safer, more modern languages like Rust.

That's huge.
However, CHERI's original focus on 'full fat' deployment targets left this transformative security technology out of reach for many embedded and OpTe use cases, where very tight power, area and financial budgets are the norm.

Enter [CHERIoT](https://www.microsoft.com/en-us/research/publication/cheriot-rethinking-security-for-low-cost-embedded-systems/).
This Microsoft-developed architecture extension brings CHERI features to the 32-bit RISC-V microcontroller domain, and Microsoft recently open-sourced a first, real-world implementation of it based on lowRISC's popular [Ibex](https://github.com/lowRISC/ibex) CPU core.
This [CHERIoT-Ibex](https://github.com/microsoft/cheriot-ibex) design has very modest power and area requirements, making it viable even for highly resource-constrained applications, such as OpTe.

The Sunburst Project, in turn, was set up to leverage and popularize CHERIoT, by delivering a) a low-cost evaluation board hosting that baseline CHERIoT-Ibex implementation (codenamed “Sonata”); and b) a more fully-featured top-level design unifying the mature [OpenTitan](https://opentitan.org/) silicon root of trust with CHERIoT-Ibex (codenamed “Symphony”).

With that necessary background under our belt, let's take a look at progress so far!

## GitHub Release of Sonata and Symphony Architectures

This first milestone is really important: we have already released the initial [Sonata](https://github.com/lowRISC/sonata-system/) and [Symphony](https://github.com/lowRISC/symphony-system/) architecture documentation on GitHub! This not only promotes transparency, it is also a means to invite and facilitate collaboration from the wider community.

## Community Engagement

Continuing on that theme, the Sunburst Project — recognizing the value of collective intelligence — actively welcomes comments and suggestions from the wider community.
By fostering an open-source culture, we encourage engineers, developers, and security enthusiasts to contribute to the improvement and refinement of our evaluation platforms.
For example, we convene a Technical Interest Group meeting by videoconference once a month (in addition to mailing lists etc).
Please contact [info@lowrisc.org](mailto:info@lowrisc.org) if you'd like to be added to the meeting invite!

## Schematics and Design Files for Sonata Released

The Sonata board, a key deliverable of the Sunburst Project, recently achieved a crucial milestone with the [release of its schematics and design files](https://github.com/newaetech/sonata-pcb) on NewAE's GitHub repository, underlining further the project's commitment to openness (NewAE is a wholly owned subsidiary of lowRISC).

Engineers are now free to use and modify the designs under the permissive Apache 2.0 licence, promoting innovation and customization within the community!

{{< img src="sonata-pcb.png" width=700 class="d-block align-middle img-fluid mx-auto" alt="Early Sonata PCB Prototype and Layout" >}}

*<p style="text-align: center;">Early Sonata PCB Prototype and Layout</p>*

## Sonata Prototype Board Availability

In line with the project's commitment to get usable CHERI technology into the hands of embedded system engineers, the Sunburst Project is preparing 100 of these prototype CHERIoT-Ibex Sonata boards for free distribution to qualifying institutions in the first half of 2024 (please contact [info@lowrisc.org](mailto:info@lowrisc.org) for details).

A version of these prototype boards will also be made available commercially through distribution channels such as Mouser, making them accessible in higher volumes to a broader audience. Of course, since the design is fully open, you are also free to build your own, or create a modified version tailored to your needs!

## Symphony Development on NewAE's CW340 FPGA Board

The Symphony evaluation platform integrates CHERIoT-ibex with an OpenTitan root of trust, targeting NewAE's [CW340 FPGA board](https://www.mouser.co.uk/ProductDetail/NewAE/NAE-CW340-OTKIT?qs=1Kr7Jg1SGW%2FOdmbWKP8ZGA%3D%3D) for emulation.
This feature-rich design aims to facilitate a comprehensive analysis of CHERI enhancements within a broader embedded system, allowing the evaluation of CHERI in applications that also require the strong, additional security guarantees provided by an onboard root of trust.

## Looking Forward to 2024

The Sunburst Project, made possible by DSbD/UKRI grant funding, is on track to revolutionize embedded and OpTe device security by advancing the uptake of CHERIoT technology.

We invite you to join us as we continue our journey into 2024. Help us shape the future of secure hardware and contribute to a safer digital landscape for everyone!

*Media Contact: [lowRISC@w2comm.com](mailto:lowRISC@w2comm.com)*
