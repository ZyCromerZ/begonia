# -- 09-03-2020 --
* upstream to 4.14.196
* added more i/o scheduler
    * fifo
    * fiops
    * maple
    * row
    * sio
    * tripndroid
    * zen
* backport bfq from 4.4.x kernels

# -- 31-08-2020 --
* disable modules blocker

# -- 30-08-2020 --
* upstream from 141 to 195
* compiled using clang 9.0.4
* enable FULL LTO (thx to @eve_enryu for tell me how to use drone ci xD)
* Implement zen-tune v4.20 over v4.14-arm64 
* enable LD_DEAD_CODE_DATA_ELIMINATION 
* enable ThinLTO
* add support __int128 with clang 
* add and enable vdso32
* add clang optimization for G90T CPU 
* backported and enabled Android Low Memory Killer for ALL Tercydux >> recomended to flash <a href="https://github.com/yc9559/qti-mem-opt/releases">this module</a> to fix ram management (<a href="https://github.com/yc9559/qti-mem-opt/releases/download/7.1/qti-mem-opt-v7.1-20200328.zip">direct link</a>) 
* add and enabled Simple Low Memory Killer for all QK
* disable Hybrid EAS
* tweaked schedutil
* tweaked interactive default value
* Added fsync on/off support.
* Added support for TTL fixation
* Add boeffla wakelock blocker
* Add and Enable Anxiety I/O Scheduler 
* enable more tcp
* add modules blocker and enable it (i dont wanna bricked ur devices when try to flashing some magisk modules)
* Notes: 
    * Not Supported on latest Miui CN and RU