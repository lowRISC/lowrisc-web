+++
date = "2020-05-04T18:01:00+00:00"
title = "GSoC Accepted Projects Announcement"
author = "Sam Elliott and Pirmin Vogel"

aliases = "/blog/2020/05/gsoc-accepted-projects-announcement/"
+++

We are pleased to announce that we will be mentoring two students as part of [Google Summer of Code](https://summerofcode.withgoogle.com/) (GSoC).

We are looking forward to working with Flavien and Yuichi on features and tools to improve IP such as Ibex, our open-source RISC-V core.

## Flavien Solt: Simulated Memory Controller

It is a common pitfall to misinterpret or incorrectly scale performance numbers derived from benchmarks run on an FPGA-based SoC design.
The problem is that the external memory interface is running at a very high speed compared to the core CPU (e.g. a 25MHz core clock speed but external memory running a several hundred MHz).
This can be misleading when trying to consider what the performance would be on an ASIC, as the CPU clock speed could be many times higher but the memory frequency remains the same or increases by a much smaller amount.
The solution is to implement a memory controller for the FPGA that can accurately “simulate” memory access delays in terms of the processor’s clock cycles.

Flavien will be mentored by Greg Chadwick, Alex Bradbury, and Pirmin Vogel.

## Yuichi Sugiyama: Integrating Pointer Authentication into Ibex

Pointer Authentication uses cryptographic message authentication codes (MACs) both generated and authenticated at runtime to protect the integrity of pointers in order to aggravate attacks targeting arbitrary code execution through malicious manipulation of code and data pointers.
This project aims to perform a proof-of-concept integration of pointer authentication into Ibex.
The focus lies on integrating pointer authentication into the processor pipeline.
To this end, new custom instructions need to be added to generate and authenticate pointers based on the value of the program counter, stack pointer and a secret key (including exception handling if authentication fails).

Yuichi will be mentored by Pirmin Vogel, Luís Marques, and Sam Elliott.

At this point, we would like to thank all the students who applied for a GSoC project with lowRISC, as well as Google for running the program of course (now in its 15th year).
We received many high-quality applications, but unfortunately, we could not accept all of them.

We're excited about the opportunity to bring new people into the open source hardware community and are looking forward to collaborating with Flavien and Yuichi over the coming months.
