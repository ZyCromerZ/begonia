# Makefile for Linux samples code

obj-$(CONFIG_SAMPLES)	+= kobject/ kprobes/ trace_events/ livepatch/ \
			   hw_breakpoint/ kfifo/ kdb/ hidraw/ rpmsg/ seccomp/ \
			   configfs/ connector/ v4l/ trace_printk/ blackfin/ \
			   vfio-mdev/ statx/

ifeq ($(cc-name),clang)
# optimise for size
subdir-ccflags-y += $(call cc-option, -g0)
subdir-ccflags-y += $(call cc-option, -Os)
endif