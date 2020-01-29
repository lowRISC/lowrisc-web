+++
date = "2020-01-29T15:00:00+00:00"
title = "At FOSDEM you can hear how we made our Ibex CPU core faster"
author = "Greg Chadwick"

featured_image = "FOSDEM_logo.png"
images = ["FOSDEM_logo.png"]

[[resources]]
src = "FOSDEM_logo.png"
title = "FOSDEM"

+++

{{< img class="float-right m-2" width=200 src="FOSDEM_logo.png" title="FOSDEM" alt="FOSDEM logo" >}}

I’ll be giving a talk in the [RISC-V devroom](https://fosdem.org/2020/schedule/track/risc_v/) at FOSDEM on Saturday 1st February, in which I’ll describe how we are analysing and improving the performance of the [Ibex RISC-V CPU core](https://github.com/lowRISC/ibex). I’ll discuss how Verilator is used to simulate Ibex running CoreMark and Embench and how I’ve analysed these simulations to identify major sources of stalls. This is used to inform what improvements should be made. Yosys was used to analyse the impact on area and clock frequency from these changes. I’ll talk about how this analysis was performed and what was required to avoid adversely impacting clock frequency.

For details see the [FOSDEM website](https://fosdem.org/2020/schedule/event/riscv_lowrisc/). I look forward to seeing you there and if you can’t make it, the talks are usually recorded and we’ll be sure to share the link once this is available.

_Greg Chadwick_
