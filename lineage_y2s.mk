## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from y2s device
$(call inherit-product, device/samsung/y2s/device.mk)

## Boot Animation
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440

## Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier, this must come after all inclusions
PRODUCT_NAME := lineage_y2s
PRODUCT_DEVICE := y2s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G986B
PRODUCT_MANUFACTURER := samsung
PRODUCT_PDA_MODEL := G986B
PRODUCT_PDA_MODEL_VERSION := XXU8DUF9
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)
PRODUCT_SHIPPING_API_LEVEL := 29

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=y2sxxx \
    PRODUCT_DEVICE=y2s \
    PRIVATE_BUILD_DESC="y2sxxx-user 11 RP1A.200720.012 $(PRODUCT_PDA_VERSION) release-keys"

BUILD_FINGERPRINT := samsung/y2sxxx/y2s:11/RP1A.200720.012/$(PRODUCT_PDA_VERSION):user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.PDA=$(PRODUCT_PDA_VERSION)
