FDEVICE="RMX3081"
#set -o xtrace

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
   if [ -n "$chkdev" ]; then
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
	# Initial Exports
	export ALLOW_MISSING_DEPENDENCIES=true
        export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
        export LC_ALL="C"

	# Maintaining Info
	export OF_MAINTAINER="perilouspike"
	export FOX_VERSION="R11.1"
	export FOX_BUILD_TYPE="Unofficial-Beta"
	
	# Device Information
	export FOX_ARCH=arm64
	export FOX_VARIANT="A12_FBEv2"
	# Device Codename (Realme 8 Pro)
	export TARGET_DEVICE_ALT="RMX3081,RMX3081L1,ossi,qssi,RMX3081T2" # I am not what are the over possible names.

	# Funtions
	export FOX_REPLACE_BUSYBOX_PS=1
	# Getprops
	export FOX_REPLACE_TOOLBOX_GETPROP=1
	# Tar Support
	export FOX_USE_TAR_BINARY=1
	# Sed Support
	export FOX_USE_SED_BINARY=1
	# Bash Support
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	# GRep Command
	export FOX_USE_GREP_BINARY=1
	# Supports lzma and xz
	export FOX_USE_XZ_UTILS=1
	# Uses Nano editor
	export FOX_USE_NANO_EDITOR=1
	# Added phhusson's LPTool
	export OF_ENABLE_LPTOOLS=1
	
	# Removed LED Support
	export OF_USE_GREEN_LED=1

	# Display Settings
	export OF_SCREEN_H=2340
	export OF_STATUS_H=120
	export OF_STATUS_INDENT_LEFT=150
	export OF_STATUS_INDENT_RIGHT=20
	# Disable Notch
	export OF_HIDE_NOTCH=1
	# Clock Position
	export OF_CLOCK_POS=1
	# Always Enable NavBar
	export OF_ALLOW_DISABLE_NAVBAR=0

	# Partitions Handling
	export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/bootdevice/by-name/recovery"
	export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
	export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
	export FOX_RECOVERY_BOOT_PARTITION="/dev/block/bootdevice/by-name/boot"

	# Prevent Forced-Encryption Patches
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	# Prevent patching DM-verity & Forced-Encryption
	export OF_DONT_PATCH_ON_FRESH_INSTALLATION=1
	# UNTICK on boot
	export OF_KEEP_DM_VERITY_FORCED_ENCRYPTION=1
	# Binary Android 12 storage.xml
	export OF_SKIP_DECRYPTED_ADOPTED_STORAGE=1
	# Decryption
	export OF_FIX_DECRYPTION_ON_DATA_MEDIA=1
	# Passive Decryption Support upon OTA
	export OF_OTA_RES_DECRYPT=1
	# On-the-Air Support
	export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
	export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
	# Prevent Self-Restarting Process
	export OF_NO_RELOAD_AFTER_DECRYPTION=1
	# Build Date and Time Override
	export FOX_BUGGED_AOSP_ARB_WORKAROUND="1546300800"; # Tuesday, January 1, 2019 12:00:00 AM GMT+00:00
	# AVB2.0 Support
	#export OF_PATCH_AVB20=1
	# Prevent Splash Screen Changing
	export OF_NO_SPLASH_CHANGE=0
	# Magisk Boot Patch
	export OF_USE_MAGISKBOOT=1
	export OF_PATCH_VBMETA_FLAG=2
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	# Metadata Support
    export OF_FBE_METADATA_MOUNT_IGNORE=1
	# Multi-user Backup fix (error 255)
	export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1
	# Recreate /sdcard/ folder after Format data
	export OF_RUN_POST_FORMAT_PROCESS=1
	# Delete AromaFM
	export FOX_DELETE_AROMAFM=1
	# try to prevent potential data format errors
	export OF_UNBIND_SDCARD_F2FS=1
	# Xiaomi MIUI device specifics.
	export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
	
	# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
		export | grep "FOX" >> $FOX_BUILD_LOG_FILE
		export | grep "OF_" >> $FOX_BUILD_LOG_FILE
		export | grep "TARGET_" >> $FOX_BUILD_LOG_FILEOF_TWRP_COMPATIBILITY_MODE
	fi
fi
#
