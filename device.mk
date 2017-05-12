LOCAL_PATH := device/acer/Z500

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/recovery/sbin/healthd:root/sbin/healthd

PRODUCT_COPY_FILES_OVERRIDES += \
    root/fstab.qcom \
    root/init.qcom.sh \
    root/remount.qcom \
    root/ueventd.qcom.rc \
	recovery/root/fstab.qcom \
    recovery/root/init.qcom.sh \
    recovery/root/remount.qcom \
    recovery/root/ueventd.qcom.rc \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := Z500
