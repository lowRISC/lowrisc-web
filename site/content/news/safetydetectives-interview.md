+++
date = "2024-05-10T00:00:00+01:00"
title = "SafetyDetectives Interview With Gavin Ferris - CEO at lowRISC"
slug = "safetydetectives-interview"

aliases = "/blog/2024/05/safetydetectives-interview/"
+++

lowRISC's CEO, Dr. Gavin Ferris, was [recently interviewed](https://www.safetydetectives.com/blog/gavin-ferris-lowrisc/) by SafetyDetectives' Shauli Zacks.
The article is reproduced here by kind permission:

_In an exclusive interview with SafetyDetectives, Gavin Ferris, CEO of lowRISC, shares invaluable insights into the transformative world of open-source silicon.
lowRISC, a trailblazer in the field, not only champions the groundbreaking OpenTitan project but also fosters a collaborative ecosystem that includes tech giants and academic luminaries.
This initiative marks a significant leap toward redefining hardware security through transparency and innovation.
As OpenTitan becomes the first commercially available open-source silicon root of trust, Ferris discusses its impact, the challenges of hardware development, and the future of secure systems.
Join us as we delve into the pioneering journey of lowRISC and its pivotal role in shaping the next generation of secure, open-source silicon._

## Can you introduce yourself and give a brief overview of lowRISC and how its work enables OpenTitan?

My name is Gavin Ferris and I'm CEO of lowRISC, a UK-based nonprofit focused on developing open-source silicon designs.
We provide a home for collaborative engineering to create and maintain high quality IP such as [OpenTitan](https://opentitan.org/), the world’s first open-source silicon root of trust (RoT).

Our team of collaborators and partners (which includes Google, Winbond, Nuvoton, zeroRISC, Rivos, Western Digital, Seagate, ETH Zurich and Giesecke+Devrient) are responsible for the creation of the Silicon Commons, the development of the RISC-V Ibex core, and successfully delivering the world’s first commercial-grade open-source chip, OpenTitan "Earl Grey."

One key differentiator is our robust open-source design verification (DV) methodology, used to ensure quality across the OpenTitan family of designs.
This approach has enabled OpenTitan to reach design parity with commercial silicon.

## OpenTitan has recently achieved a significant milestone by becoming the first open source silicon project to reach commercial availability. Can you elaborate on the significance of this achievement?

In short, it's so significant because we've finally made open-source silicon work the same way as open-source software, despite the cost, time, and correctness hurdles (not to mention the physical supply chain!) that makes hardware development so challenging.
We're all familiar with the hugely beneficial, industry-level transformation that took place once open-source software achieved critical mass, and with this milestone the silicon industry is now primed for a similar change.
There's still a long way to go of course, but the die is cast.

Focusing on some specifics, commercial availability of the first OpenTitan chip ("Earl Grey") means manufacturers can immediately start building it into their systems at the PCB level.
There’s an integratable variant too ("Darjeeling"), which allows the same high-quality OpenTitan IP to be included as a subsystem within third party chiplets and SoCs (and indeed, the first design wins here have already happened, for example with [Rivos](https://www.rivosinc.com/technology/)).

Furthermore, since the design of OpenTitan is _modular_ and permissively licensed (Apache 2 with a CLA), sub-blocks of its design — such as its Ibex CPU core — are being picked up by others and used in their own products.
It's a trend we expect will go from strength to strength (and of course, encourage!).

## Could you explain the concept of a root of trust (RoT) and its importance in hardware security?

All systems contain _some_ sort of root of trust (RoT) — it's the part that you assume 'always works' even when under attack, and upon which the security of the rest of the platform ultimately depends.
The problem is that in many current designs, the RoT is _implicit_ and inheres in low-software (for example, the BIOS) — a layer of the stack that’s now directly, and successfully, under attack by sophisticated cyber-attackers.
And unfortunately for such hosts, once that software _is_ compromised, there’s often no way for users or fleet managers to revert the system to a 'known good' state (nor even, in many cases, know which nodes have been compromised), short of returning to the manufacturer.

By contrast a silicon RoT (or SiRoT) is a highly secure 'computer within your computer' that sits below the operating system and ensures the overall reliability of the computing environment, locking down the boot process and ensuring that all subsequent operations and critical processes are verified and trustworthy.
The more advanced SiRoTs (such as OpenTitan) also provide a secure execution environment in which critical cryptographic key material may be stored and used post-boot (for example, for digital signing).

By placing the RoT at the hardware level in this way, designers are wisely choosing to make the root of trust _explicit_, embodied in a subsystem that is far more resistant to attacks than inherently compromised software-based approaches.

## Why was it important for lowRISC and the OpenTitan project to adopt an open source model for silicon development?

Similar to open-source software, we strongly believe that open-source silicon:

  1. Enhances trust and security through design and implementation **transparency** — issues can be discovered early, the need for blind trust is reduced, and system audits are greatly facilitated.
  2. Enables and encourages innovation through contributions to the open-source design via a **collaborative approach** to design.
  3. Provides implementation **choice** and preserves a set of common interfaces and software compatibility guarantees through a common, open reference design.

## Can you talk about how security works at the microchip level of a device and why a secure starting point for the system is essential to ensuring the integrity and authenticity of critical software components?

True security has to be anchored in trustworthy silicon, because once a system's software is compromised by an attacker, any 'defense' implemented in that software (such as anti-virus, firewall, SBOM etc.) is (for obvious reasons!) relatively straightforward to circumvent.

By contrast, a SiRoT can:

 * Ensure that its device boots with the correct firmware and _hasn't_ been infected by low-level malware.
 * Provide a cryptographically unique machine identity, so an operator can verify that the device is legitimate.
 * Protect secrets such as encryption keys in a tamper-resistant manner, even for people with physical access (e.g., while a server or a device is being shipped through the supply chain).
 * Provide authoritative, tamper-evident audit records and other runtime security services.

Additionally the OpenTitan "Earl Grey" chip — and firmware — contains a number of sophisticated countermeasures against attack at different levels.
These are described in detail in its [extensive documentation](https://opentitan.org/book/doc/security/index.html), and include hardening against fault injection and side-channel analysis, vectors that are normally out-of-scope for off-the-shelf application processors.

## How does lowRISC engage with the broader community, including developers, researchers, and industry partners, to further the OpenTitan project?

Collaborative engineering is absolutely central to lowRISC's mission — it's what we do. Our full-stack development team works closely with official partners, academics, and the wider community on a daily basis.

When we publicly announced OpenTitan as the world's first open-source RoT in 2019, we did so with support from a broad and growing set of friends and partners, including Google, G+D Mobile Security, ETH Zurich, Nuvoton, Winbond, Seagate, Western Digital, Rivos, and now zeroRISC.
We extend our heartfelt gratitude for their [contributions](https://github.com/lowRISC/opentitan/pulse/monthly) and to the many individuals who have generously shared their expertise and creativity with us over the years.

lowRISC C.I.C. has been privileged to support this flourishing community since inception.
Our Silicon Commons™ methodology, developed with OpenTitan's partners to support distributed open silicon collaboration, has enabled commits to grow from 2,500 at launch to over 20,000 today, with more than 200 contributors merging over 15,000 pull requests containing more than 1 million lines of code!

Many organizations are facing monumental challenges to securing IoT devices, especially in the age of AI.
It is critical now more than ever that the cybersecurity industry comes together against rising threats by focusing on the foundation of our systems first, and we believe OpenTitan's open-source, commercially available silicon root of trust has a key part to play in that story.
In keeping with our collaborative approach, we encourage anyone involved with commissioning, developing or securing IoT devices to [reach out](info@lowrisc.org) with questions or requests for further information — our door is always open!
