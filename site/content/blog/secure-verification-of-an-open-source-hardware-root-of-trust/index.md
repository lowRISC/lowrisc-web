+++
date = "2022-08-03T14:00:00+01:00"
title = "Security Verification of an Open Source Hardware Root of Trust"
author = "Dominic Rizzo (OpenTitan) and Jason Oberg (Cycuity)"

[[resources]]
src = "cycuity.png"
title = "Screenshot of radix analysis"
+++

OpenTitan is a powerful open source silicon root of trust project, designed from scratch as a transparent, trustworthy and secure implementation for enterprises, platform providers and chip manufacturers. Featuring numerous hardware security features ranging from secure boot and remote attestation to secure storage of private user data. The open source development model allows OpenTitan to serve as a vehicle for innovation in academia, but also as an effective commercial platform as well.

Cycuity provides software products that help detect and prevent unexpected design weaknesses throughout the semiconductor design process. The Radix product line enables rigorous hardware security assurance for all types of silicon devices, helping companies that build or rely on semiconductors achieve security sign-off more systematically and predictably.  OpenTitan’s freely available, permissively licensed, security-focused design presented an ideal opportunity to demonstrate Cycuity’s technology, while providing greater assurances of OpenTitan’s design in the process.

Since open source hardware roots of trusts are a new technology – OpenTitan being the first – it is important to transparently create confidence in their correctness. Due to its open availability, Cycuity was able to use the OpenTitan design to demonstrate the effectiveness of using security verification to show the trustworthiness of open source hardware. Collaborating with Professor Ryan Kastner and his lab at UC San Diego, we successfully applied Cycuity’s Radix technology to OpenTitan’s OTP controller, validating some challenging security requirements.

## Importance of Security Verification

OpenTitan’s rich suite of security features enables it to be a trustworthy root of trust for the systems that adopt it. Fundamentally, this means these secure features must be maximally correct. Systematically specifying security requirements and then building a security verification plan for those requirements helps achieve the highest levels of assurance for a design.

Security verification is often challenging due to the difficulty in easily mapping security requirements into concise verification rules and being able to execute those rules within the existing design verification environments. Furthermore, security requirements are often vague or poorly specified, making specification of compact verification statements difficult.

Cycuity’s Radix products use information flow, an innovative technology that makes it very efficient to create concise security rules based on requirements and easily identify any violations to security requirements from unknown or unexpected weaknesses in the design. Radix’s security analysis capabilities also make it very effective at helping refine security requirements if they are not clearly defined.

## Example: Security Requirements for OpenTitan’s OTP Controller

Radix builds security requirements by basing them on design assets. To do so effectively,
several components of the security requirement should be identified, including:

 * **Assets**: Resources in the design that should be protected from an adversary
 * **Security Objectives**: Confidentiality, Integrity, or Availability for the Assets
 * **Protections** and **Protection Boundaries** for the design assets under the security objective

Using this framework creates succinct and verifiable security requirements that can be easily executed within the Radix software.

Numerous assets in OpenTitan require protection from an adversary to ensure its secure operation. One example is a random netlist key stored within OpenTitan’s one-time programmable (OTP) memory controller that is used to scramble user keys in order to protect them against physical attacks, such as those from fault injection. By using the approach described above, we created a concise security requirement for this random netlist key asset below:

> “RndCnstKey should not be read on the OTP outputs”

From this security requirement, we were able to identify the asset as the RndCnstKey, the security objective as Confidentiality, and the protection boundary as the OTP outputs. With this information, we were able to easily create a Radix security rule and execute it within Radix in order to analyze any security violations.

## Analyzing Security Violations

A critical component of the security verification process is security analysis. This is crucial to ensure that the security requirements are concisely specified, as well as to assist in identifying unknown design weaknesses. By using Radix’s security analysis capabilities, we were able to validate that the random constant key never makes it to the output of the OTP controller in an unscrambled form, which is a good thing.

{{< img class="mx-auto d-block rounded img-fluid" width=1000 src="cycuity.png" title="Screenshot of Radix Analysis" >}}

While applying Radix to the OTP controller, we also identified intermediate values of the random constant key appearing on the output of the scrambler. This is interesting and surprising, but was determined to be a low risk since the intermediate values are protected at the boundary of the OTP output. Even so, this information enabled OpenTitan to push a fix mitigating this leakage out of an abundance of caution to potential future threats.

This systematic analysis enabled us to provide strong assurance that an adversary is unlikely to recover the random constant key and subvert the mitigations within the OTP controller, since the only way it can get access to key information externally is when the key is in a scrambled form.  We will continue to work on several other design assets and security requirements to verify other important security features within OpenTitan in a similar manner. We will also share the security requirements and findings with the community to help advance OpenTitan’s secure development lifecycle.

## Summary / Takeaways

OpenTitan is a powerful silicon root of trust design with comprehensive security features necessary for building secure systems anchored in hardware. Along with other best practices, defining concise security requirements and performing systematic security verification helps ensure these features are integrated and configured securely throughout the design lifecycle.

With Radix’s unique security analysis capabilities, we were able to identify improvements to the design of select OpenTitan blocks that conventional functional verification techniques can sometimes miss. This has and will continue to increase the assurance in the security that OpenTitan provides openly and transparently.
