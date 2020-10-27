# INFO branch kernel for Begonia
* <a href="https://github.com/ZyCromerZ/begonia/tree/20200907/qk-l"> QuantumKiller-L AOSP CFW Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20200907/qk-n"> QuantumKiller-N AOSP CFW Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20200907/Tercydux-a"> Tercydux-Tiris AOSP CFW Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20200907/Tercydux-b"> Tercydux-Aneh AOSP CFW Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/mi10/20200829-qk-n"> QuantumKiller-N Miui Android 10 Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20200907/root-upstream"> Stock Kernel Source </a>
* <a href="https://github.com/ZyCromerZ/begonia/tree/20200907/root-upstream-mod"> Modified Stock Kernel Source </a>

# INFO kernel
* QuantumKiller-L: 
    * Undervolted CPU a little
    * Gpu Frequency 806 Mhz (default)
    * Using Simple LMK
    * lower kernel timefrequency
* QuantumKiller-N:
    * Normal CPU Frequency
    * Gpu Frequency 806 Mhz (default)
    * Using Simple LMK
    * stock kernel timefrequency
* Tercydux-Tiris(TEST soon): 
    * Normal CPU Frequency
    * Gpu Frequency 850 Mhz
    * Using Simple LMK
    * higher kernel timefrequency
* Tercydux-Aneh (TEST soon): 
    * Normal CPU Frequency
    * Gpu Frequency 850 Mhz
    * Using backported Android LMK
    * higher kernel timefrequency
* Tercydux-Santuy:
    * Normal CPU Frequency
    * Gpu Frequency 1000 Mhz
    * Using backported Android LMK
    * higher kernel timefrequency
* Tercydux-Hareudang: 
    * Overclock CPU BIG cores to 2.5Ghz
    * Gpu Frequency 1000 Mhz
    * Using backported Android LMK
    * higher kernel timefrequency
* DeathFlower-Fischl(TEST soon): 
    * Normal CPU Frequency
    * Gpu Frequency 806 Mhz
    * Using Simple LMK
    * more higher kernel timefrequency
* DeathFlower-Qiqi(TEST soon): 
    * Normal CPU Frequency
    * Gpu Frequency 850 Mhz
    * Using backported Android LMK
    * more higher kernel timefrequency
* DeathFlower-Mona:
    * Normal CPU Frequency
    * Gpu Frequency 850 Mhz
    * Using Simple LMK
    * more higher kernel timefrequency
* DeathFlower-Keqing:
    * Normal CPU Frequency
    * Gpu Frequency 1000 Mhz
    * Using backported Android LMK
    * more higher kernel timefrequency
* DeathFlower-Ayaka:
    * Overclock CPU BIG cores to 2.5Ghz
    * Gpu Frequency 1000 Mhz
    * Using backported Android LMK
    * more higher kernel timefrequency
* StockMod:
    * enabled f2fs
    * using backported bfq from 4.9 kernels and set it as default
    * plus have script to remove spectrum from my other kernels :v 

# Notes
* All BIG core Kernels Are Underclocked With A Minimum Frequency Up To 500 Mhz
* If U Need More Stable Use QK-N Instead
* If U Need More Battery Backup Use QK-L Instead
* The Tercydux Kernels Is Just An More-Overclocked Kernels :V
* AOSP-CFW kernels zip name for AOSP CFW
* Miui-10 kernels zip name for Miui Android 10 
* too many kernels? i know, im lazy to made some changes to my previous kernel so i made new one instead so no more request something that only available from from old kernel one maybe xD
* QuantumKiller, Tercydux, DeathFlower have some little stuff, so what is best? try it by ur self
* QuantumKiller is only for non oc(cpu/gpu) kernels !!!
* Tercydux and DeathFlower is for some oc kernels? maybe
* DeathFlower using interactive as default, but QuantumKiller Tercydux using schedutil as default
* pick <a href='https://github.com/ZyCromerZ/begonia/commit/c6b99f9745873ce2838f1129234c0fbf96411044'>this commit</a> to diasble Full LTO when build going failed
* recomended to flash <a href="https://github.com/yc9559/qti-mem-opt/releases">this module</a> to fix ram management (<a href="https://github.com/yc9559/qti-mem-opt/releases/download/7.1/qti-mem-opt-v7.1-20200328.zip">direct link</a>) for all backported Android LMK, how about slmk one? u can flash this too :p
* Open <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/begonia.MD">begonia.MD file</a> To View The Kernel Changelogs
* Open <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/download.MD">download.MD file</a> To See All Download Links For Stable Build