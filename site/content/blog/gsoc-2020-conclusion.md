+++
date = "2020-09-09T15:00:00+00:00"
title = "GSoC Projects Successfully Completed"
author = "Pirmin Vogel, Sam Elliott, and Greg Chadwick"
+++

Time is ticking and summer is almost over already. With that, also our this
years’ [Google Summer of Code](https://summerofcode.withgoogle.com/) (GSoC)
projects are coming to an end. A lot of open-source coding has been done, pull
requests have been made, reviewed and merged. Experiments have been conducted,
results were gathered, interpreted and presented. Bugs were found and fixed, and
the resulting designs further improved. Both our students and mentors have been
working hard and we are pleased to announce that both our two projects described
below have been completed successfully.

## Flavien Solt: Simulated Memory Controller

It is a common pitfall to misinterpret or incorrectly scale performance numbers
derived from benchmarks run on an FPGA-based SoC design. The problem is that the
external memory interface is running at a very high speed compared to the core
CPU (e.g. a 25MHz core clock speed but external memory running a several hundred
MHz). This can be misleading when trying to consider what the performance would
be on an ASIC, as the CPU clock speed could be many times higher but the memory
frequency remains the same or increases by a much smaller amount. The solution
is to implement a memory controller for the FPGA that can accurately “simulate”
memory access delays in terms of the processor’s clock cycles.

In this project, Flavien designed, implemented and verified such a Simulated
Memory Controller IP core from scratch. The core features configurable AMBA AXI4
host and device interfaces and is inserted between the processor and the real
memory controller. Internally, it observes the memory requests sent by the
processor, buffers the responses from the memory controller, and releases them
to the processor after inserting an additional delay. The delays are determined
by a separated Delay Calculator block that emulates a memory request scheduler and controller.
The first version designed by Flavien uses a First-Ready, First-Come First
Served strategy but it can be replaced by more advanced schedulers if needed in
the future. The design can be used both in RTL simulation and on FPGA.

All of Flavien's code, including documentation and a Verilator testbench can be found in [our
`gsoc-sim-mem` GitHub repository](https://github.com/lowRISC/gsoc-sim-mem).

For more information on the project and Flavien’s experience, please read his
[blog post about the project](https://flaviens.github.io/simmem/).

Flavien was mentored by Greg Chadwick, Alex Bradbury, and Pirmin Vogel.

## Yuichi Sugiyama: Integrating Pointer Authentication into Ibex

Pointer Authentication (PA) uses cryptographic message authentication codes
(MACs) both generated and authenticated at runtime to protect the integrity of
pointers in order to aggravate attacks targeting arbitrary code execution
through malicious manipulation of code and data pointers.

In this project, Yuichi performed a proof-of-concept integration of PA into our
own RISC-V core [Ibex](https://github.com/lowRISC/ibex). Previously, pointer
authentication had only been implemented in high-performance, 64-bit
application-class processors. To our knowledge, this GSoC project is the first
attempt to implement PA in a 32-bit embedded processor, and it required Yuichi
to face a couple of challenges related to a reduced feature set and
micro-architectural differences. Yuichi integrated an existing block cipher
module for generating and authenticating the MACs into the Ibex pipeline and he
added new instructions and control and status registers (CSRs) for using this
cipher module. In addition, he added support for these instructions in the LLVM
compiler and designed a new compiler pass to automatically protect return
addresses using pointer authentication. The performance of the resulting PA
implementation has been profiled using CoreMark and Embench in a Verilator
simulation. This also allowed Yuichi to estimate the effect of different cipher
core latencies on application performance. His work has demonstrated that PA can
be implemented in embedded 32-bit processors at reasonable area overhead of
roughly 20% and protect return address addresses at an average performance
overhead of just 2 to 3%.

The work for integrating PA into Ibex, including a simple demo application, can
be found on [the `gsoc/2020/pointer-authentication` branch of our GitHub
repository](https://github.com/lowRISC/ibex/tree/gsoc/2020/pointer-authentication).

The work on the Clang and LLVM compilers can be found on [the
`gsoc/2020/pointer-authentication` branch of our GitHub
fork](https://github.com/lowRISC/llvm-project/tree/gsoc/2020/pointer-authentication).

In addition, Yuichi also landed [an upstream patch into
LLVM](https://reviews.llvm.org/rG3f7068ad986d7f44f47faec78597a5e62b07b20b). This
allows the Ibex benchmarks to be compiled with Clang/LLVM.

For more information and Yuichi’s detailed report, please read his [blog post
about the
project](https://mmxsrup.github.io/2020/08/31/gsoc2020-final-report.html).

Yuichi was mentored by Pirmin Vogel, Luis Marques, and Sam Elliott.
