DEVICE_TREE := device/xiaomi/kenzo

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8952
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8952
TARGET_BOARD_PLATFORM_GPU := qcom-adreno510

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/kenzo
TARGET_KERNEL_CONFIG := kenzo_defconfig
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_APPEND_DTB := true

# Boot image
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk ramoops_memreserve=4M androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26838785024
BOARD_FLASH_BLOCK_SIZE := 131072

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_ION := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 80
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_IGNORE_MISC_WIPE_DATA := true
TW_NEW_ION_HEAP := true
TW_TARGET_USES_QCOM_BSP := true

# Asian region languages
TW_EXTRA_LANGUAGES := true

# Encryption support
TW_INCLUDE_CRYPTO := true
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TW_UNMOUNT_FIRMWARE_ON_BOOT := true

# Debug flags
TWRP_INCLUDE_LOGCAT := true

TARGET_RECOVERY_IS_MULTIROM := true
MR_INPUT_TYPE := type_b
MR_NO_KEXEC := 2
MR_ALLOW_NKK71_NOKEXEC_WORKAROUND := true
MR_CONTINUOUS_FB_UPDATE := true
MR_INIT_DEVICES := device/xiaomi/kenzo/multirom/mr_init_devices.c
MR_DPI := xhdpi
MR_DPI_FONT := 340
MR_USE_MROM_FSTAB := true
MR_FSTAB := device/xiaomi/kenzo/multirom/mrom.fstab
MR_KEXEC_MEM_MIN := 0x0
MR_DEVICE_HOOKS := device/xiaomi/kenzo/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 4
MR_DEVICE_VARIANTS := kenzo HMNOTE3
MR_PIXEL_FORMAT := "RGBX_8888"
# MR_ENCRYPTION := true
# MR_ENCRYPTION_SETUP_SCRIPT := device/xiaomi/kenzo/multirom/mr_cp_crypto.sh
# MR_ENCRYPTION_FAKE_PROPERTIES := true
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := device/xiaomi/kenzo/multirom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
MR_DEV_BLOCK_BOOTDEVICE := true
MR_POPULATE_BY_NAME_PATH := "/dev/block/bootdevice/by-name"
NEW_ION_HEAP := true
MR_QCOM_OVERLAY_HEAP_ID_MASK := 1

# MultiRom Recovery Version
include device/xiaomi/kenzo/multirom/MR_REC_VERSION.mk
ifeq ($(MR_REC_VERSION),)
MR_REC_VERSION := $(shell date -u +%Y%m%d)-01
endif
BOARD_MKBOOTIMG_ARGS += --board mrom$(MR_REC_VERSION)
