+++
date = "2020-02-05T15:12:36Z"
title = "lowRISC project ideas for GSoC 2020"
+++

lowRISC has applied to take part in the [2020 Google Summer of
Code](https://summerofcode.withgoogle.com/) as a mentoring 
organisation. See the [full program 
timeline](https://summerofcode.withgoogle.com/how-it-works/#timeline) for a 
run-down of key dates.

If you want feedback on ideas, you're best posting to info@lowrisc.org or
discussing [on our Zulip group chat](https://lowrisc.zulipchat.com).

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

## Create an Ibex-based SoC platform for iCE40 UltraPlus FPGA devices

**Summary:** Create an Ibex-based demonstration platform using fully open
tools.

This necessarily involves porting the core, making sure it fits and reasonably
maps. Then adding memory, timer, UART, SPI (leveraging + adapting existing
IP). Finally, creation of the SoC infrastructure: toolchain, linker script,
software libs.

## Open source logic analyser IP for FPGA

**Summary:** Build a [sigrok](https://sigrok.org/) compatible logic analyser
that can be used in FPGA.

Sigrok is an open source software suite for signal
analysis, it supports a wide range of devices We could build a sigrok
compatible logic analyser that can be used in FPGA (and potentially ASIC). For
bonus points implement something using an existing verilog parsing framework
that can let you choose signals from your hierarchy and it auto-generates the
logic analyser instantiation with hierarchical paths for you plus a nice
config file for the GUI tool to give you signal names etc 

## Implement the bit manipulation extension for Ibex

**Summary:** Implement support for the proposed [RISC-V bit manipulation
extension](https://github.com/riscv/riscv-bitmanip) in
[Ibex](https://github.com/lowrisc/ibex).

As well as the RTL implementation, an important part of this project will be
to deliver a workable testing strategy.

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

