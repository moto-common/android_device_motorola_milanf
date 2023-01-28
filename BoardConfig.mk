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

include device/motorola/sm4350-common/PlatformConfig.mk

# Kernel
TARGET_KERNEL_SOURCE := kernel/motorola/msm-5.4
TARGET_KERNEL_CONFIG := vendor/milanf_defconfig
TARGET_KERNEL_CLANG_COMPILE := true

# Kernel Prebuilt Selector
ifeq ($(PREBUILT_KERNEL), true)
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := device/motorola/milanf-kernel/Image.gz
endif

# Platform
PRODUCT_PLATFORM := holi

# Partition information
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_DTBOIMG_PARTITION_SIZE := 25165824 # (0x1800000)

BOARD_SUPER_PARTITION_SIZE := 9831448576
BOARD_SUPER_PARTITION_GROUPS := mot_dynamic_partitions
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := $(BOARD_BOOTIMAGE_PARTITION_SIZE)

# DYNAMIC_PARTITIONS_SIZE = (SUPER_PARTITION_SIZE / 2) - 4MB
BOARD_MOT_DYNAMIC_PARTITIONS_SIZE := 9827254272
BOARD_MOT_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system_ext \
    system \
    product \
    vendor
