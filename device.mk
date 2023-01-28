# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH := device/motorola/milanf/rootdir

# Audio Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/vendor/etc/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/vendor/etc/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(DEVICE_PATH)/vendor/etc/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device Init
PRODUCT_PACKAGES += \
    fstab.milanf \
    vendor-fstab.milanf \
    init.recovery.qcom.rc

# Display
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=420

# Overlay
PRODUCT_PACKAGES += \
    milanfFrameworkOverlay \
    milanfSystemUIOverlay

DEVICE_PACKAGE_OVERLAYS += \
    device/motorola/milanf/overlay

# Fingerprint
TARGET_USES_EGISTEC_FINGERPRINT := true
TARGET_USES_SILEAD_FINGERPRINT := true

# Inherits / Includes
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
$(call inherit-product, device/motorola/sm4350-common/platform.mk)
$(call inherit-product-if-exists, vendor/motorola/milanf/milanf-vendor.mk)
