+++
date = "2020-01-29T15:00:00+00:00"
title = "At FOSDEM you can hear how we made our Ibex CPU core faster"
author = "Greg Chadwick"

featured_image = "FOSDEM_logo.png"
images = ["FOSDEM_logo.png"]

aliases = "/blog/2020/01/at-fosdem-you-can-hear-how-we-made-our-ibex-cpu-core-faster/"

[[resources]]
src = "FOSDEM_logo.png"
title = "FOSDEM"

+++

{{< img class="float-right m-2" width=200 src="FOSDEM_logo.png" title="FOSDEM" alt="FOSDEM logo" >}}

I’ll be giving a talk in the [RISC-V devroom](https://fosdem.org/2020/schedule/track/risc_v/) at FOSDEM on Saturday 1st February, in which I’ll describe how we are analysing and improving the performance of the [Ibex RISC-V CPU core](https://github.com/lowRISC/ibex). I’ll discuss how Verilator is used to simulate Ibex running CoreMark and Embench and how I’ve analysed these simulations to identify major sources of stalls. This is used to inform what improvements should be made. Yosys was used to analyse the impact on area and clock frequency from these changes. I’ll talk about how this analysis was performed and what was required to avoid adversely impacting clock frequency.

*Update: talk [slides](https://fosdem.org/2020/schedule/event/riscv_lowrisc/attachments/slides/3689/export/events/attachments/riscv_lowrisc/slides/3689/20200201_FOSDEM_Ibex_Perf.pdf) and [video](https://ftp.fau.de/fosdem/2020/K.3.401/riscv_lowrisc.mp4) are now available.*
