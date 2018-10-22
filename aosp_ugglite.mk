$(call inherit-product, device/xiaomi/ugglite/full_ugglite.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/common.mk)

PRODUCT_DEVICE := ugglite
PRODUCT_BRAND := Xiaomi
PRODUCT_NAME := aosp_ugglite
BOARD_VENDOR := Xiaomi
PRODUCT_MODEL := Redmi Note 5A
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR := Xiaomi

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=xiaomi/ugglite/ugglite:7.1.2/N2G47H/V9.1.2.0.NDFMIEI:user/release-keys \
    PRIVATE_BUILD_DESC="ugglite-user 7.1.2 N2G47H V9.1.2.0.NDFMIEI release-keys"
endif

# Unofficial build ID
TARGET_UNOFFICIAL_BUILD_ID := Mbtt
