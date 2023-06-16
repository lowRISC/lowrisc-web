+++
date = "2023-06-16T13:00:00+01:00"
title = "OpenTitan’s RTL Freeze - Leveraging Transparency to Create Trustworthy Computing"
author = "The OpenTitan Team"

[[resources]]
src = "hw-development-lifecycle.png"
title = "Diagram of OpenTitan Earl Grey development"
+++

We are delighted to [announce](https://opensource.googleblog.com/2023/06/opentitan-rtl-freeze.html.html) an important development for [OpenTitan®](https://opentitan.org): [RTL Freeze](https://github.com/lowRISC/opentitan/releases/tag/Earlgrey-M2.5.1-RC0) for the [Earl Grey](https://opentitan.org/book/hw/top_earlgrey/doc/specification.html) discrete, the first OpenTitan chip tapeout. This milestone is a source of immense pride for lowRISC and our OpenTitan partners, because it’s a concrete demonstration of the success of the Silicon Commons™ approach to making silicon radically more transparent and trustworthy.

In partnership with Nuvoton, a major TPM vendor, this RTL freeze means that the OpenTitan coalition will have engineering samples of the discrete silicon root of trust (RoT) this calendar year. These chips play a crucial role in ensuring the integrity of devices ranging from motherboards and network cards to laptops, phones, and IoT platforms – creating the solid foundation for all other platform security services, ensuring the end user benefits from the RoT without having to worry about it.

And while this is an exciting milestone for the project, our impact on the industry is just getting started. We see this proof point as an opportunity to continue the work of our carefully crafted community of talented commercial partners, independent developers, and personal contributors to build a truly trusted computing future from the OpenTitan silicon ecosystem.

When we [publicly announced OpenTitan](https://lowrisc.org/blog/2019/11/announcing-opentitan-the-first-transparent-silicon-root-of-trust/) as the world’s first open source RoT in 2019, we did so with support from a broad and growing set of friends and partners, including Google, G+D Mobile Security, ETH Zurich, Nuvoton, Winbond, Seagate, Western Digital, Rivos, and now zeroRISC. We extend our heartfelt gratitude for their [contributions](https://github.com/lowRISC/opentitan/pulse/monthly) and to the many individuals who have generously shared their expertise and creativity with us over the years.

lowRISC C.I.C. has been privileged to support this flourishing community since inception. Our  Silicon Commons™ methodology, developed with OpenTitan’s partners to support distributed open silicon collaboration, has enabled commits to grow from 2,500 at launch to over 20,000 today, with more than 165 contributors merging over 13,000 pull requests containing more than 1.5 million lines of code. The Earl Grey chip itself contains 34 unique blocks, each with a standardized, [comportable](https://opentitan.org/book/doc/contributing/hw/comportability/index.html) interface. These include hardened KMAC, AES and asymmetric cryptography accelerator blocks plus the [Ibex 32-bit RISC-V core](https://github.com/lowrisc/ibex) in a dual-core lockstep configuration. Each element in the ecosystem includes a full suite of open source documentation and design verification, including top-level tests for the full chip.

"When we started OpenTitan, I could not have predicted how quickly and successfully it would expand -- starting from a simple reference design to become the first commercially available complete open source silicon product. This RTL Freeze milestone, significant for any chip, shows that open source and silicon aren’t inherently incompatible given enough sustained focus,” said Dominic Rizzo, OpenTitan founder and Project Director. “With billions more hyper-connected devices coming online in the next decade, rooting security in the silicon has become table stakes – and open source enables trustworthy, affordable silicon security.”

{{< img class="mx-auto d-block rounded img-fluid" width=550 src="hw-development-lifecycle.png" title="Diagram of OpenTitan Earl Grey development" >}}

## Open Source meets Principled Design

The OpenTitan project has followed [three principles](https://security.googleblog.com/2019/11/opentitan-open-sourcing-transparent.html) from the start: transparency, high quality, and flexibility. These guide us through every stage of hardware development, ensuring stringent adherence to standards from start through final integration. Comprehensive testbenches, infrastructure, and a robust verification methodology – all in the open source – only reinforce our commitment to quality.

We run over 40,000 tests every day, in public and available on the OpenTitan [Design Verification Dashboard](https://opentitan.org/dashboard/index.html). Rapid identification and resolution of regressions ensures that design quality is sustained in the face of rapid development changes. We move fast and *don’t* break things – and fix them quickly when they do. The Earl Grey chip’s functional and code coverage rates typically exceed 90%, on par or better than proprietary designs.

OpenTitan’s infrastructure support includes: test frameworks, continuous integration, and per-block device interface functions, host tools to support official OpenTitan® instances, and a formal release process. In combination, these enable successful open source silicon designs and the ability to adopt them with confidence in their stability. As you would expect, our [documentation](https://opentitan.org/documentation/index.html) suite includes a [Getting Started Guide](https://opentitan.org/guides/getting_started/index.html), a step-by-step installation guide for starting to work with the OpenTitan design using a Linux workstation.

## Join the OpenTitan Project

We invite you to join the OpenTitan project as we mark this significant milestone towards achieving transparency and trustworthiness in the silicon root of trust. The flourishing OpenTitan community makes inevitable a transparent, trustworthy, and affordable secure computing future.

If you would like to contribute, please visit the open source [GitHub repository](https://github.com/lowRISC/opentitan) or [get in touch](mailto:get-involved@opentitan.org) with the OpenTitan team!
