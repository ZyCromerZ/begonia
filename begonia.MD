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