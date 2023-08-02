#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/samsung/mt6768-common

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(COMMON_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/mt6768-common/mt6768-common-vendor.mk)