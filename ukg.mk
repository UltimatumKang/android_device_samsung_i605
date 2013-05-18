# Inherit AOSP device configuration for t0lte.
$(call inherit-product, device/samsung/i605/full_i605.mk)

# Inherit common product files.
$(call inherit-product, vendor/aosp/config/common.mk)

# t0lte Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/t0lte

# Inherit GSM common stuff
$(call inherit-product, vendor/aosp/config/cdma.mk)

# Tablet Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aosp/overlay/common

# Setup device specific product configuration.
PRODUCT_NAME := xylon_i605
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i605
PRODUCT_MODEL := SCH-I605
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t0ltevzw TARGET_DEVICE=t0ltevzw BUILD_FINGERPRINT="Verizon/t0ltevzw/t0ltevzw:4.1.1/JRO03C/I605VRALL4:user/release-keys" PRIVATE_BUILD_DESC="t0ltevzw-user 4.1.1 JRO03C I605VRALL4 release-keys"

# Boot Animation
PRODUCT_COPY_FILES +=  \
    vendor/aosp/prebuilt/hybrid_xhdpi_no_nav.conf:system/etc/beerbong/properties.conf \
    vendor/aosp/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip \
    vendor/aosp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aosp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

