#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from mid1105_mp device
$(call inherit-product, device/onn/mid1105_mp/device.mk)

PRODUCT_DEVICE := mid1105_mp
PRODUCT_NAME := omni_mid1105_mp
PRODUCT_BRAND := onn
PRODUCT_MODEL := 100043279
PRODUCT_MANUFACTURER := onn

PRODUCT_GMS_CLIENTID_BASE := android-digiland

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_mid1105_mp-user 11 RP1A.200720.011 mp1V83351 release-keys"

BUILD_FINGERPRINT := onn/100043279/mid1105_mp:11/RP1A.200720.011/qyh20220507:user/release-keys
