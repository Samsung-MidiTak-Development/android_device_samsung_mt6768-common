#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

LOCAL_PATH := $(call my-dir)

ifneq ($(filter a32, $(TARGET_DEVICE)),)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

VULKAN_SYMLINKS := \
    $(TARGET_OUT_VENDOR)/lib/hw \
    $(TARGET_OUT_VENDOR)/lib64/hw

$(VULKAN_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	$(hide) echo "Creating vulkan symlinks"
	@ln -sf /vendor/lib/egl/libGLES_mali.so $(TARGET_OUT_VENDOR)/lib/hw/vulkan.$(TARGET_BOARD_PLATFORM).so
	@ln -sf /vendor/lib64/egl/libGLES_mali.so $(TARGET_OUT_VENDOR)/lib64/hw/vulkan.$(TARGET_BOARD_PLATFORM).so

ALL_DEFAULT_INSTALLED_MODULES += $(VULKAN_SYMLINKS)

endif
