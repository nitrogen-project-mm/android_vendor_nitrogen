# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Inherit common product files.
$(call inherit-product, vendor/nitrogen/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := nitrogen_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/nitrogen/prebuilt/shamu/system/media/bootanimation.zip:system/media/bootanimation.zip
