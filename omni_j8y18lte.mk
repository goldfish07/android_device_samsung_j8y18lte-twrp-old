# Release name
PRODUCT_RELEASE_NAME := j8y18lte

LOCAL_PATH := device/samsung/$(PRODUCT_RELEASE_NAME)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Resolution
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1480


# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc \

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true


# Disable adb security
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.mount.fs=EXT4 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
	ro.config.low_ram=false

# For userdebug builds
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.secure=0 \
	ro.adb.secure=0 \
	persist.sys.root_access=1 \
	persist.service.adb.enable=1


PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp,adb

#Allow_missing_dependencies
ALLOW_MISSING_DEPENDENCIES=true

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j8y18lte
PRODUCT_NAME := omni_j8y18lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := j8y18lte
PRODUCT_MANUFACTURER := samsung
