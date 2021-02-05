# INFO branch kernel for Begonia
* <a href="https://github.com/ZyCromerZ/begonia/tree/20201110/qk-n"> QuantumKiller-L CFW AOSP Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20201110/qk-n"> QuantumKiller-N CFW AOSP Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20201110/Tercydux-Tiris"> Tercydux-Tiris CFW AOSP Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20200907/root-upstream"> Stock Kernel CFW AOSP Android 10/11 Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20200907/root-upstream-mod"> Modified Stock Kernel CFW AOSP Android 10/11 Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20210205/qk-n"> QuantumKiller-L Non CFW AOSP Android 11 Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20210205/qk-n"> QuantumKiller-N Non CFW AOSP Android 11 Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20210205/Tercydux-Tiris"> Tercydux-Tiris Non CFW AOSP Android 11 Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/q-oos-upstream"> Stock Kernel Non CFW AOSP Android 11 Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/q-oos-upstream-mod"> Stock Kernel Non CFW AOSP Android 11 Kernel Source </a>

# INFO kernel
* QuantumKiller-L: 
    * Undervolted CPU a little
    * Gpu Frequency 806 Mhz (default)
    * 70Hz kernel timefrequency
* QuantumKiller-N:
    * Normal CPU Frequency
    * Gpu Frequency 806 Mhz (default)
    * 100Hz kernel timefrequency
* Tercydux-Tiris: 
    * Normal CPU Frequency
    * Gpu Frequency 850 Mhz
    * Using Simple LMK
    * 500Hz kernel timefrequency
* Tercydux-Santuy:
    * Normal CPU Frequency
    * Gpu Frequency 1000 Mhz
    * Using backported Android LMK
    * 500Hz kernel timefrequency
* Tercydux-Hareudang: 
    * Overclock CPU BIG cores to 2.5Ghz
    * Gpu Frequency 1000 Mhz
    * Using backported Android LMK
    * 500Hz kernel timefrequency
* DeathFlower-Keqing:
    * Normal CPU Frequency
    * Gpu Frequency 850 Mhz
    * Using backported Android LMK
    * higher than Tercydux kernels
* DeathFlower-Mona:
    * Normal CPU Frequency
    * Gpu Frequency 850 Mhz
    * Using Simple LMK
    * higher than Tercydux kernels
* DeathFlower-Ganyu
    * Normal CPU Frequency
    * Gpu Frequency 850 Mhz
    * Using Stock LMK
    * higher than Tercydux kernels
* StockMod CFW AOSP:
    * enabled f2fs
    * using backported bfq from 4.9 kernels and set it as default
    * plus have script to remove spectrum from my other kernels :v 
    * can be builded using gcc 10.0.2
* StockMod Mod CFW AOSP:
    * have script to remove spectrum from my other kernels :v 
    * can be builded using gcc 10.0.2

# Notes
* All BIG core Kernels Are Underclocked With A Minimum Frequency Up To 500 Mhz
* If U Need More Stable Use QK-N Instead
* If U Need More Battery Backup Use QK-L Instead
* The Tercydux Kernels Is Just An More-Overclocked Kernels :V
* AOSP-CFW kernels zip name for CFW AOSP
* AOSP-RIPCFW kernels zip name for NON CFW AOSP, how about flashed on memeui? <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/rip.cfw.info.MD">check this</a>
* Miui-10 kernels zip name for Miui Android 10 
* too many kernels? i know, im lazy to made some changes to my previous kernel so i made new one instead so no more request something that only available from from old kernel one maybe xD
* QuantumKiller, Tercydux have some little stuff, so what is best? try it by ur self
* QuantumKiller is only for non oc(cpu/gpu) kernels !!!
* Tercydux for some gayming kernels, maybe xD
* recomended to flash <a href="https://github.com/yc9559/qti-mem-opt/releases">this module</a> to fix ram management (<a href="https://github.com/yc9559/qti-mem-opt/releases/download/7.1/qti-mem-opt-v7.1-20200328.zip">direct link</a>) for all ALMK, how about SLMK one? try and tell :v
* Open <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/begonia.MD">begonia.MD file</a> To Read The Kernel Changelogs
* Open <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/download.MD">download.MD file</a> To See All Download Links For Stable Build
* Open <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/about-lmk.MD">about-lmk.MD file</a> To View Info LMK
* Open <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/about-compiler.MD">about-compiler.MD file</a> To View Info Compilers
* use this <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/build.sh">build.sh</a> To Compile this kernels