# -- 03-10-2021 --
* Upstream to 4.14.224 from https://android.googlesource.com/kernel/common branch android-4.14-q
* fixed gcc build not booted (after im do <a href='https://github.com/ZyCromerZ/begonia_kernel/commit/3b07be6e5446fe015dda3a2dfca876deb6f0eacc'>this</a>)
* defconfig: enable BLK_CGROUP, CFQ_GROUP_IOSCHED, and BFQ_GROUP_IOSCHED
* shcedutil: add mode_rate_limit_us option and it has 5 mode to switch mode  unlock(0), battery(1),normal(2),performance(3), locked by kernel config(4)
* spectrum: set default mode_rate_limit_us to mode 4
* revert all bfq changes from 4.9.x kernels (going back to 4.14.x bfq changes)
* add vdso32 for non cfw kernels
* add fps module for non cfw kenels
* defconfig: enable f2fs for non cfw
* use -O3 optimization
* optimize kernel size only compile kernels using clang/dtc
* defconfig: fix localversion(kernel name) for all neutrino
* misc

NOTE:
* maybe im just re-write some changelogs from previous changes, because im do some reset for some commits
* for more detail about changelogs, just read all changes from its kernel source code (<a href='https://github.com/ZyCromerZ/begonia/blob/changelogs/README.MD#info-branch-kernel-for-begonia'>i mean this one</a>)
* please always <a href='https://github.com/ZyCromerZ/begonia/blob/changelogs/README.MD#info-kernel'>read this</a> to see info about kernels
* please always <a href='https://github.com/ZyCromerZ/begonia/blob/changelogs/about-compiler.MD'>read this</a> to see info about compilers
* please always <a href='https://github.com/ZyCromerZ/begonia/blob/changelogs/about-lmk.MD'>read this</a> to see info about LMK
