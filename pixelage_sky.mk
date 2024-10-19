#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/sky

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common Bliss configurations
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)

# Inherit device configurations
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Inherit from the proprietary version
$(call inherit-product, vendor/xiaomi/sky/sky-vendor.mk)

## Device identifier
PRODUCT_DEVICE := sky
PRODUCT_NAME := pixelage_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RN4BI
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_SYSTEM_NAME := sky_p_in

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# flags

#UDFPS
EXTRA_UDFPS_ANIMATIONS := false

#Misc.
TARGET_SUPPORTS_TOUCHGESTURES := false

TARGET_SUPPORTS_BLUR := false

TARGET_FACE_UNLOCK_SUPPORTED := true
WITH_GAPPS := true