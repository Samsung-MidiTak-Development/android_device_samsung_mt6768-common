#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/samsung/mt6768-common

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

# Android Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Bootloader
BOARD_VENDOR := samsung
TARGET_BOOTLOADER_BOARD_NAME := mt6768
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := mt6768

# VNDK
BOARD_VNDK_VERSION := current

# Inherit the proprietary files
include vendor/samsung/mt6768-common/BoardConfigVendor.mk