ifeq ($(cc-name),clang)
ccflags-y += -O3
ccflags-y += $(call cc-option, -g0)
ccflags-y += $(call cc-option, -Os)
endif

obj-$(CONFIG_LZ4_COMPRESS) += lz4_compress.o
obj-$(CONFIG_LZ4HC_COMPRESS) += lz4hc_compress.o
obj-$(CONFIG_LZ4_DECOMPRESS) += lz4_decompress.o
