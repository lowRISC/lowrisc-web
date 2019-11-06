+++
Description = ""
date = "2019-11-05T14:00:00+00:00"
title = "Announcing OpenTitan, the First Transparent Silicon Root of Trust"

[[resources]]
src = "logo-opentitan.svg"
title = "OpenTitan"

[[resources]]
src = "opentitan-rot-comparsion.svg"
title = "Traditional RoT vs. OpenTitan"
+++

Today, we are excited to unveil the [OpenTitan](https://opentitan.org) silicon root of trust (RoT) project, a new effort built using the successful collaborative engineering model created by lowRISC in partnership with Google and other commercial and academic partners.

This effort sets a new bar for transparency in trusted silicon, and lowRISC is proud to serve as both steward and not-for-profit engineering contributor to OpenTitan, the world’s first *open source* silicon RoT.

Silicon root of trust chips increase trust in the integrity of the infrastructure on which software runs. They can be used in a variety of devices: server motherboards, network cards, laptops, phones, consumer routers, IoT devices, and more. Potential security benefits from a silicon root of trust include:

- Establishing trust at the lowest level in the system - the silicon; independent of the main processor and operating system.
- Leveraging a secure foundation to ensure the integrity of the lowest level mutable firmware of the device.
- Giving the device a cryptographically strong identity. For example, this enables a datacenter control plane to verify provenance before a new machine is admitted into the fleet.
- Enabling secure storage, including physical attack resistance (e.g., a server in a third-party datacenter or moving through the supply chain).
- Providing tamper-evident logging, integrity measurements, integrated universal 2<sup>nd</sup>-factor devices, and other security services.

*Open sourcing* the silicon design makes it more transparent, trustworthy, and ultimately, secure.

{{< img alt="OpenTitan" class="float-right rounded m-2" width=400 src="logo-opentitan.svg" >}}

The OpenTitan project follows three core design principles:

- **Transparency**  -- anyone can inspect, evaluate, and contribute to OpenTitan’s design, firmware and documentation, helping to build more auditable, trustworthy silicon root of trust chips for all.
- **High quality** -- we are building a high quality, logically secure silicon design, with rigorous design validation and testing, plus reference firmware and technical documentation.
- **Flexibility** -- OpenTitan adopters can reduce costs and reach more customers by leveraging its vendor-, platform- and policy-agnostic design.

The OpenTitan project is stewarded by lowRISC and is a partnership with [Google](https://security.googleblog.com/2019/11/opentitan-open-sourcing-transparent.html), [ETH Zürich](https://ethz.ch/), [G+D Mobile Security](https://www.gi-de.com/), [Nuvoton Technology](http://www.nuvoton.com/hq/about-nuvoton/news/products-technology/Nuvoton-Technology-announces-its-collaboration-on-OpenTitan-the-first-open-source-silicon-root-of-trust-RoT-project/?__locale=en) and [Western Digital](https://www.westerndigital.com/).
Engineers from this coalition bring ideas and expertise from many perspectives, and have been working together for more than 18 months on [hardware, software and tooling](http://github.com/lowrisc/opentitan) for OpenTitan.
Today, at the mid-point of the project, we’re opening up the [GitHub repository](https://github.com/lowRISC/opentitan/) containing this work, so others can get involved!

Compared to existing proprietary silicon RoT systems, OpenTitan represents a radical level of transparency, where virtually everything that can be opened (up to the “foundry boundary”), has been opened:

{{< img alt="Traditional RoT vs. OpenTitan" caption="Traditional RoT vs. OpenTitan" figure-class="d-block text-center" src="opentitan-rot-comparison.svg" >}}

The project is very much a networked collaboration and maintains strong links with engineering teams at our partners.
We are delighted to welcome the broader community now that the founding partnership and principles of OpenTitan are established.

From day one, lowRISC has sought to bring the benefits of open source software to the hardware world.

Benefits to transparency and security from open source silicon include:

- Enhancing trust and security through design and implementation visibility. Issues can be discovered early, and the need for trust in opaque technologies is reduced.
- Enabling and encouraging innovation with modifiable shared components.
- Sharing open infrastructure technology permits focus on product differentiation, with shared costs and substantially reduced overall risk.
- Saving engineering time, energy and confusion as the reference design implementation **is** the specification.

The OpenTitan silicon root of trust is based around our open source Ibex RISC-V processor core, and adds cryptographic coprocessors, a sophisticated key hierarchy, memory hierarchies for volatile and non-volatile storage, IO peripherals, secure boot, and more.
The Ibex processor design was originally developed by ETH Zürich as zero-riscy, then contributed to lowRISC where it has seen substantial further development.

## OpenTitan: The Future of Collaborative Open Source Silicon Design

At lowRISC, we view OpenTitan as the ideal test case for our collaborative open source silicon development methodology, creating not just a logically secure design, but also a library of well-structured and reusable IP components, and tools for shared working across the ecosystem too. And while it is the first design to be built in this way, it won’t be the last, as we envisage the use of these same principles, collaboration methodologies and flow in future open silicon design projects of similar and greater magnitude and impact, across many different application domains.

Dominic Rizzo, OpenTitan Lead at Google and our OpenTitan Project Director, has said, “Customers are asked to put faith in proprietary root of trust chips for mission-critical systems without the ability to fully understand, inspect and therefore trust them. By creating OpenTitan with the broader hardware and academic community, we leverage the experience and security principles used to create Google’s Titan chips to make hardware root of trust designs more transparent, inspectable, and accessible to the rest of the industry. Security should never be built on opacity.”

We could not agree more and view OpenTitan as a perfect application for open source silicon.

We welcome new collaborators who want to help make secure open source silicon a reality to check out our work so far in the [GitHub repository](https://github.com/lowRISC/opentitan/), join the [community](https://www.lowrisc.org/community/) or [contact us](mailto:get-involved@opentitan.org) directly if your organisation would like to get involved. If you are interested in potentially integrating the OpenTitan RoT reference design into your device, [let us know](mailto:pilots@opentitan.org).

Finally, we’re humbled by the support we have received in bringing [OpenTitan](https://opentitan.org) to fruition and deeply grateful to our employees, partners and contributors whose efforts are helping make open source secure silicon a reality.

---

_Alex Bradbury, lowRISC CTO and Co-Founder_<br>
_Professor Andy Hopper, lowRISC Independent Chair_
