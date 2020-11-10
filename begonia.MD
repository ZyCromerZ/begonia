# -- 11-11-2020 --
* Upstream to 4.14.205 from https://android.googlesource.com/kernel/common branch android-4.14-q
* rebased kernels to fix some bugs
* no more using SLMK for all QuantumKiller (suing default one, same as stock kernel)
* all Tercydux using backported ALMK
* add some stuff from void kernels, like input boost, devreq boost, and etc, but not for CAF tags because its feature from void not this kernel :p
* where is DF kernels? nobody knows where is it, just try tercydux one
* and maybe im forgot something, idk about this kernel performance for now xD
* removed xiaomi sdfat, and replace it from https://github.com/cryptomilk/kernel-sdfat branch master because its working well for me :p
* set default zram to lz4 using another method
* for more info just check my commits history xD

Note:
* about info rebased kernel, just <a href="https://github.com/ZyCromerZ/begonia/blob/changelogs/README.MD">check here</a> for some info
* and now DF is just a renamed kernels
* DeathFlower Keqing and mona same as Tercydux-Tiris
* implement SLMK to DeathFlower Mona (not like Keqing using ALMK)
* so now DF mona is test kernel xD