#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from topaz device
$(call inherit-product, device/xiaomi/topaz/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

WITH_GMS := true

#EvolutionX prop
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_USES_MINI_GAPPS := true

# Device props
TARGET_SUPPORTS_BLUR := false
TARGET_SUPPORTS_QUICK_TAP := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_DISABLE_EPPE := true
TARGET_DEBLOAT := true

# Charging Animation
USE_PIXEL_CHARGER := true

PRODUCT_NAME := lineage_topaz
PRODUCT_DEVICE := topaz
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 12 4G

BUILD_FINGERPRINT := Redmi/topaz_global/topaz:13/TKQ1.221114.001/V816.0.2.0.UMGMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
