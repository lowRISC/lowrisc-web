+++
date = "2020-02-05T15:12:36Z"
title = "lowRISC project ideas for GSoC 2020"
+++

lowRISC has been accepted as a mentoring organisation for the [2020 Google
Summer of Code](https://summerofcode.withgoogle.com/). See the [full program
timeline](https://summerofcode.withgoogle.com/how-it-works/#timeline) for a 
run-down of key dates.

Before submitting your application, please get in contact with us on [our
Zulip group chat](https://lowrisc.zulipchat.com) or send an email to potential
mentors. We are keen to start discussing potential projects with you.

For guidance on how to write the application, please check out the [GSoC
student guide]
(https://google.github.io/gsocguides/student/writing-a-proposal#the-basics).

# Project ideas (in no particular order)

## Your project here

If you have a project idea relevant to lowRISC, don't worry that it's not 
listed here. For a good student with an interesting project we'll almost 
definitely have an appropriate mentor. You are strongly recommended to get in 
touch to discuss the idea though. Some projects might be better handled under
a different mentoring organisation, e.g. a PyPy port to RISC-V would make more
sense under the Python Software Foundation.

## A template project for Ibex custom instruction set extensions

**Summary:** Create a starting point for
[Ibex](https://github.com/lowRISC/ibex) implementers who wish to add custom
instruction set extensions.

One part of this project is to demonstrate a methodology for doing this, which
may involve making suggestions for refactorings to make this an easier task.
The project would ideally involve addressing the challenge of keeping the
example/template project functional.

Mentors: [Alex](mailto:asb@lowrisc.org), [Greg](mailto:gac@lowrisc.org),
[Pirmin](mailto:vogelpi@lowrisc.org)

## Custom compressed instruction set generation

**Summary:** Create a flow that can generate a custom compressed instruction
set tuned for a given firmware image.

This project would involve creating a tool that would analyse a firmware
image, and generate a custom compressed instruction set (or alternatively,
additions to the standard compressed instruction set) that would minimise code
size. The tool would generate the necessary instruction descriptions for LLVM
as well as the decode logic for the Ibex CPU core. There is a wealth of
additional research ideas on further reducing code size that may also be
interesting to explore in the context of this project.

Mentors: [Alex](mailto:asb@lowrisc.org), [Luís]
(mailto:luismarques@lowrisc.org), [Sam](mailto:selliott@lowrisc.org),
[Silvestrs](mailto:silvestrst@lowrisc.org)

## OpenTitan SoC tooling work

**Summary:** Improve the Python tooling in the OpenTitan project for register
description generation, documentation generation, etc.

[OpenTitan](https://opentitan.org/) contains a [range of
tools](https://docs.opentitan.org/doc/rm/), implemented in Python to help
build custom SoCs. e.g. topgen.py, regtool.py, tlgen.py. In general, these
could all benefit from further software engineering input - e.g. adding a
proper test suite, working with digital designers / design verification
engineers to implement new features. e.g. it may be interesting to extend the
vendor tool to allow the extraction of a specific piece of IP from the
OpenTitan repository and its dependencies.

Mentors: [Sam](mailto:selliott@lowrisc.org), [Silvestrs]
(mailto:silvestrst@lowrisc.org)

## Create an Ibex-based SoC platform for iCE40 UltraPlus FPGA devices

**Summary:** Create an Ibex-based demonstration platform using [IceStorm]
(http://www.clifford.at/icestorm/), the fully open source
Verilog-to-bitstream flow for iCE40 FPGAs .

This project necessarily involves porting the [Ibex]
(https://github.com/lowRISC/ibex) core to the IceStorm flow, making sure it
fits and reasonably maps to iCE40 FPGAs. Then adding memory, timer, UART,
SPI (leveraging + adapting existing IP). Finally, creation of the SoC
infrastructure: toolchain, linker script, software libs.

Mentors: [Greg](mailto:gac@lowrisc.org), [Pirmin](mailto:vogelpi@lowrisc.org)

## Open source logic analyser IP for FPGA

**Summary:** Build a [sigrok](https://sigrok.org/) compatible logic analyser
that can be used in FPGA.

FPGA vendors such as Altera and Xilinx have proprietary logic analyser
generators that can be used for FPGA debug. They allow configuration of a wide
number of parameters, such as signal widths, depth of buffering and possible
triggering modes (from a simple edge trigger to more complex conditions
involving multiple signals over several cycles).

Sigrok is an open source software suite for signal analysis, it supports a wide
range of devices. This project would build an open source logic analyser
generator with similar capabilities to existing proprietary solutions that is
compatible with Sigrok. The focus would be on use for FPGA debug but it could
also be used with external IO to produce a 'traditional' logic analyser or be
embedded in an ASIC for post-silicon debug.

By combining the generator with an existing verilog parsing framework a user
friendly front end could be created. This would allow a designer to select the
signals they want to capture and the necessary logic analyser would be
generated with all the required wiring to feed to signals into the analyser.

Mentors: [Greg](mailto:gac@lowrisc.org), [Pirmin](mailto:vogelpi@lowrisc.org),
[Luís](mailto:luismarques@lowrisc.org)

## Proof-of-concept integration of pointer authentication support in Ibex

**Summary:** Extend the processor pipeline of [Ibex]
(https://github.com/lowrisc/ibex) with instructions to generate and
check pointer authentication codes.

[Pointer Authentication]
(https://www.usenix.org/system/files/sec19fall_liljestrand_prepub.pdf) uses
cryptographic message authentication codes (MACs) both generated and
authenticated at runtime to protect the integrity of
pointers in order to aggravate attacks targeting arbitrary code execution
through malicious manipulation of code and data pointers. This project aims
at doing a proof-of-concept integration of pointer authentication
into Ibex.

For this project, the actual MAC is considered a black box of configurable
latency. The focus lies on integrating pointer authentication into the
processor pipeline. To this end, new custom instructions need to be added to
generate and authenticate pointers based on the value of the PC, SP and a
secret key (including exception handling if authentication fails).

Mentors: [Pirmin](mailto:vogelpi@lowrisc.org), [Sam]
(mailto:selliott@lowrisc.org), [Luís](mailto:luismarques@lowrisc.org)

## "Simulated" memory controller

**Summary:** Provide a way to produce realistic performance numbers from FPGA.

It is a common pitfall to misinterpret or incorrectly scale performance 
numbers derived from benchmarks run on an FPGA-based SoC design. The problem 
is that your external memory interface is running at a very high speed 
compared to the core CPU (e.g. a 25MHz core clock speed but external memory 
running a several hundred MHz). This can be misleading when trying to consider 
what the performance would be on an ASIC, as the CPU clock speed could be many 
times higher but the memory frequency be the same or increase by a much 
smaller amount. The solution is to have a simulation-ready memory controller 
that will produce delays much closer to a system where the memory interface is 
running at a much slower speed.

Mentors: [Alex](mailto:asb@lowrisc.org), [Pirmin](mailto:vogelpi@lowrisc.org)
