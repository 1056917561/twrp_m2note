#
# Copyright (C) 2016 The CyanogenMod Project
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
#

TARGET_OTA_ASSERT_DEVICE := m2note,m2n,m571,m571h

RECOVERY_VARIANT=twrp

TARGET_BOOTLOADER_BOARD_NAME := mt6753
TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := mt6735

#Use dlmalloc instead of jemalloc
MALLOC_IMPL := dlmalloc

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_CORTEX_A53 := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Architecture Extensions
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
MTK_APPENDED_DTB_SUPPORT := yes

TARGET_KERNEL_CONFIG := cm_m2note_defconfig
TARGET_KERNEL_SOURCE := kernel/meizu/m2note

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

BOARD_NAME := 1473302977
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x03f88000
BOARD_TAGS_OFFSET := 0x0df88000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --board $(BOARD_NAME) --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET) --second_offset 0x00e88000

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12831948800
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_MISC_PARTITION := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := true
TW_SDEXT_NO_EXT4 := true
RECOVERY_SDCARD_ON_DATA := true

# Crypto
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/userdata" 
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_KEY_LOC := "footer"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data =ordered"

# TWRP config
#TW_USE_TOOLBOX := true
TW_EXCLUDE_SUPERSU := true
TW_MAX_BRIGHTNESS := 255
TW_NO_USB_STORAGE := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
TW_DEFAULT_BRIGHTNESS := 128
TW_THEME := portrait_hdpi
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_HAS_NO_REAL_SDCARD := true
BOARD_HAS_FLIPPED_SCREEN := true

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_SUPPRESS_EMMC_WIPE := true

# Device config
DEVICE_RESOLUTION := 1080x1920
DEVICE_SCREEN_WIDTH := 1080
DEVICE_SCREEN_HEIGHT := 1920
TW_THEME := portrait_hdpi

TW_HAS_DOWNLOAD_MODE := false

TARGET_RECOVERY_FSTAB := device/meizu/m2note/rootdir/recovery.fstab

TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone1/temp
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/f_mass_storage/lun/file
TW_MTP_DEVICE := /dev/mtp_usb
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness

BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"

TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := false
TW_FORCE_CPUINFO_FOR_DEVICE_ID := false

