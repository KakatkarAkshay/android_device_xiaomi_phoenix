#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from phoenix device
$(call inherit-product, device/xiaomi/phoenix/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := derp_phoenix
PRODUCT_DEVICE := phoenix
PRODUCT_BRAND := Redmi
PRODUCT_MANUFACTURER := Redmi

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Build info
BUILD_FINGERPRINT := "google/coral/coral:10/QQ2A.200405.005/6254899:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 10 QQ2A.200405.005 6254899 release-keys"

# Google Services
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true

# DerpFest OFFICIAL
DERP_BUILDTYPE := Official
