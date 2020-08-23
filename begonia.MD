# -- 23-08-2020 --
* upstream to 4.14.194
* update default thermal profile value
* update spectrum profile for tercydux
* Enable backlight trigger to fix offline charging for CFW V2 (credit to @fancypants)

# -- 08-08-2020 --
* upstream to 4.14.193
* update spectrum profile for tercydux

# -- 05-08-2020 --
* upstream to 4.14.192
* add optimization for G90T cpu (only for little core for clang)
* added back wireguard
* add build salt to vdso
* add support __int128 on gcc 5+
* enable thermal by default
* f2fs enlarge min_fsync_blocks to 20 for optimize performance
* add and enable vdso32 (cherry-pick from 4.4.x kernel xD)
* backport ALMK (credit to @TheMalachite) to Tercydux kernels only (because QK use SLMK) and flash <a href="https://github.com/yc9559/qti-mem-opt/releases">this module</a> to fix ram management (<a href="https://github.com/yc9559/qti-mem-opt/releases/download/7.1/qti-mem-opt-v7.1-20200328.zip">direct link</a>) 
* compiled using latest clang 9.0.3 instead
* set kernel timefrequency to 90Hz for Tercydux and Tercydux-OC
* set kernel timefrequency to 70Hz for QuantumKiller-L

# -- 01-08-2020 --
* upstream to 4.14.191

# -- 31-07-2020 --
* upstream to 4.14.190
* disable SCHED_HMP in defcofig (@TheMalachite tell me to disable this is if im not wrong xD)

# -- 24-07-2020 --
* upstream to 4.14.189
* remove stock sdfat and added back sdfat from https://github.com/cryptomilk/kernel-sdfat
* remove wireguard due to errors build (server down maybe)
* set kernel time frequency to 80Hz for all variants
* fix f2fs broken because of upstream xD
* disable some useless erratums
* implement ZEN-TUNE 4.20 over 4.14 kernels
* disable more debug
* add input boost and devfreq boost and some fix after enable it xD (credit to @PiotrBurdzinski)
* update default wakelock blocker list in boeffla_wakelock_blocker
* enable LD_DEAD_CODE_DATA_ELIMINATION
* add ThinLTO,fix,and enable it
* optimize for performance for all Tercydux kernels
* update spectrum profile for Tercydux kernels
* and more things im forgot
* Remove spectrum profile for QuantumKiller kernels
* optimize for size for QuantumKiller kernels
* move kernels download link :v