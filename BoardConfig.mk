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

# Platform
PRODUCT_PLATFORM := holi
include device/motorola/sm4350-common/PlatformConfig.mk

# Modules
BOARD_VENDOR_KERNEL_MODULES_LOAD := \
    tcpc_rt1711h.ko \
    tcpc_sgm7220.ko \
    adsp_loader_dlkm.ko \
    apr_dlkm.ko \
    aw882xx_acf.ko \
    bolero_cdc_dlkm.ko \
    camera.ko \
    ldo_vibrator_mmi.ko \
    leds-indicator-pwm.ko \
    leds_lm3697.ko \
    machine_dlkm.ko \
    mbhc_dlkm.ko \
    mmi_sys_temp.ko \
    native_dlkm.ko \
    nfc_i2c.ko \
    nova_0flash_mmi.ko \
    pinctrl_lpi_dlkm.ko \
    platform_dlkm.ko \
    q6_dlkm.ko \
    q6_notifier_dlkm.ko \
    q6_pdr_dlkm.ko \
    qca_cld3_wlan.ko \
    rbs_fps_mmi.ko \
    rx_macro_dlkm.ko \
    silead_fps_mmi.ko \
    snd_event_dlkm.ko \
    stub_dlkm.ko \
    swr_ctrl_dlkm.ko \
    swr_dlkm.ko \
    tx_macro_dlkm.ko \
    va_macro_dlkm.ko \
    wcd937x_dlkm.ko \
    wcd937x_slave_dlkm.ko \
    wcd938x_dlkm.ko \
    wcd938x_slave_dlkm.ko \
    wcd9xxx_dlkm.ko \
    wcd_core_dlkm.ko \
    wl2866d.ko \
    wsa881x_analog_dlkm.ko \
    rt_pd_manager.ko

BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := \
    tcpc_sgm7220.ko \
    tcpc_rt1711h.ko \
    rt_pd_manager.ko

# Partition information
BOARD_SUPER_PARTITION_SIZE := 9831448576
BOARD_SUPER_PARTITION_GROUPS := mot_dynamic_partitions
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := $(BOARD_BOOTIMAGE_PARTITION_SIZE)

# DYNAMIC_PARTITIONS_SIZE = (SUPER_PARTITION_SIZE / 2) - 4MB
BOARD_MOT_DYNAMIC_PARTITIONS_SIZE := 4911529984
BOARD_MOT_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system_ext \
    system \
    product \
    vendor
