# Release name
PRODUCT_RELEASE_NAME := j8y18lte

# Inherit some common omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Resolution
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1480

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j8y18lte
PRODUCT_NAME := omni_j8y18lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := j8y18lte
PRODUCT_MANUFACTURER := samsung
