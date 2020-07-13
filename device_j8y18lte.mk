$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)


$(call inherit-product-if-exists, vendor/samsung/j8y18lte/j8y18lte-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/j8y18lte/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/j8y18lte/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

