obj-y	+= lib/

ifeq ($(cc-name),clang)
# optimise for size
subdir-ccflags-y += $(call cc-option, -g0)
subdir-ccflags-y += $(call cc-option, -Os)
endif