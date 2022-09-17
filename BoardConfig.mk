#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/merlinx

# Inherit from mt6768-common
-include device/xiaomi/mt6768-common/BoardConfigCommon.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := merlin,merlinx,merlin_eea,merlinnfc

# Display
TARGET_SCREEN_DENSITY := 440

# HIDL
ODM_MANIFEST_SKUS += \
    merlinnfc

ODM_MANIFEST_MERLINNFC_FILES := $(DEVICE_PATH)/manifest_merlinnfc.xml

# Kernel
TARGET_KERNEL_CONFIG := merlin_defconfig

# Inherit the proprietary files
include vendor/xiaomi/merlinx/BoardConfigVendor.mk
