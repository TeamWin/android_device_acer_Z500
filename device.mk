LOCAL_PATH := device/acer/Z500

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/recovery/sbin/healthd:root/sbin/healthd

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := Z500
