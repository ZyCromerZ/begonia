# INFO branch kernel for Begonia
* <a href="https://github.com/ZyCromerZ/begonia/tree/20201110/qk-l"> QuantumKiller-L CFW AOSP Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20201110/qk-n"> QuantumKiller-N CFW AOSP Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20200907/root-upstream"> Stock Kernel CFW AOSP Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20200907/root-upstream-mod"> Modified Stock Kernel CFW AOSP Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20201110/main-ALMK4"> MAIN ALMK changes CFW AOSP Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20201110/main-SLMK4"> MAIN SLMK changes CFW AOSP Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20210205/qk-l"> QuantumKiller-L Non CFW(q-oss) AOSP Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20210205/qk-n"> QuantumKiller-N Non CFW(q-oss) AOSP Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/q-oss-upstream"> Stock Kernel Non CFW(q-oss) AOSP Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/q-oss-upstream-mod"> Stock Kernel Non CFW(q-oss) AOSP Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20210205/main-ALMK2"> MAIN ALMK changes Non CFW(q-oss) AOSP Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20210205/main-SLMK2"> MAIN SLMK changes Non CFW(q-oss) AOSP Kernel Source </a>

# INFO kernel
* QuantumKiller-L: 
    * Undervolted CPU a little
    * Gpu Frequency 806 Mhz (default)
    * 70Hz kernel timefrequency
* QuantumKiller-N:
    * Normal CPU Frequency
    * Gpu Frequency 806 Mhz (default)
    * 100Hz kernel timefrequency
* StockMod CFW AOSP:
    * enabled f2fs
    * using backported bfq from 4.9 kernels and set it as default
    * plus have script to remove spectrum from my other kernels :v 
    * can be builded using gcc 10.0.2
* StockMod Mod CFW AOSP:
    * have script to remove spectrum from my other kernels :v 
    * can be builded using gcc 10.0.2
* Neutrino-`<CPUCODE><GPUCODE>`
    * `CPUCODE` for <b>CPU</b> type
    * `GPUCODE` for <b>GPU</b> type
    * higher kernel timefrequency

# Detail about CODE things
* L = <b>CPU</b> : same as stock kernel
* H = <b>CPU</b> : overclock | cortex-a76/Big cores=2.2Ghz
* X = <b>GPU</b> : same as stock kernel
* Y = <b>GPU</b> : same as G95 (850hz)
* Z = <b>GPU</b> : Overclock to 895Mhz/884Mhz

# Example about Code
* Neurtino-`LZ`
    * L for Stock CPU frequencies
    * Z for Overclock GPU to 895Mhz

# Notes
* All BIG core Kernels Are Underclocked With A Minimum Frequency Up To 500 Mhz
* If U Need More Stable Use QK-N Instead
* If U Need More Battery Backup Use QK-L Instead
* NON-CFW kernels zip name for NON CFW AOSP, how about memeui kernels? <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/rip.cfw.info.MD">check this</a>
* too many kernels? i know, im lazy to made some changes to my previous kernel so i made new one instead so no more request something that only available from from old kernel one maybe xD
* QuantumKiller is only for non oc(cpu/gpu) kernels !!!
* Neutrino for any oc cpu/gpu kernels, why its so many? idk
* Open <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/begonia.MD">begonia.MD file</a> To Read The Kernel Changelogs
* Open <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/download.MD">download.MD file</a> To See All Download Links For Stable Build
* Open <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/about-lmk.MD">about-lmk.MD file</a> To View Info LMK
* Open <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/about-compiler.MD">about-compiler.MD file</a> To View Info Compilers
* use this <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/build.sh">build.sh</a> To Compile this kernels