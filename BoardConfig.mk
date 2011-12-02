# inherit from the proprietary version
-include vendor/lge/startablet/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
TARGET_HAVE_TEGRA_ERRATA_657451 := true

# Custom Recovery UI Settings
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lge/startablet/recovery/recovery_ui.c

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := startablet

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x15cb2c00
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x5e7dc000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/lge/startablet/kernel

# Setting this to avoid boot locks on the system from using the "misc" partition.
BOARD_HAS_NO_MISC_PARTITION := true

# Indicate that the board has an Internal SD Card
BOARD_HAS_SDCARD_INTERNAL := true

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p4
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p4
