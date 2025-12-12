#
# Copyright (C) 2018-2019,2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from polaris device.
TARGET_SUPPORTS_OMX_SERVICE := false

$(call inherit-product, device/xiaomi/polaris/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Axion Flags
AXION_MAINTAINER := Akshat
AXION_PROCESSOR := Snapdragon_845
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := true

# GPU Flags
GPU_FREQS_PATH := /sys/class/kgsl/kgsl-3d0/gpu_available_frequencies
GPU_MIN_FREQ_PATH := /sys/class/kgsl/kgsl-3d0/min_clock_mhz

# Camera Flags
AXION_CAMERA_REAR_INFO := 12,5
AXION_CAMERA_FRONT_INFO := 20

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_polaris
PRODUCT_DEVICE := polaris
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2S
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="polaris-user 10 QKQ1.190828.002 V12.5.1.0.QDGCNXM release-keys" \
    BuildFingerprint=Xiaomi/polaris/polaris:10/QKQ1.190828.002/V12.5.1.0.QDGCNXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
