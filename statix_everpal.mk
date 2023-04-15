#
# Copyright (C) 2023 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit from everpal device
$(call inherit-product, device/xiaomi/everpal/device.mk)

# statixOS Stuff
TARGET_BOOT_ANIMATION_RES := 1080
INCLUDE_PIXEL_LAUNCHER := true
TARGET_GAPPS_ARCH := arm64
TARGET_USES_AOSP_RECOVERY := true

# Device identifier. This must come after all inclusions
PRODUCT_NAME := statix_everpal
PRODUCT_DEVICE := everpal
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := everpal

# Build info
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
