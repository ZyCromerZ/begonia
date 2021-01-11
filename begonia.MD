# -- 01-11-2021 --
* Upstream to 4.14.214 from https://android.googlesource.com/kernel/common branch android-4.14-q
* switch all toolchain/gcc links from <a href="https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-a/downloads">here <a>
* increase timefrequency from 80 to 100 for QK-N only
* interactive: dynamic_switching set to false from true
* increase accelerometer and gyroscope sensitivity
* SLMK: upstream latest changes from https://github.com/kerneltoast/simple_lmk
* ALMK: replace some files from LA.UM.9.1.r1-08100-SMxxx0.0
* added back DTC GCC build for stockmod kernel and fix some errors when using same toolchain/gcc like another kernels