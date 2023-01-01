# TWRP Configuration

RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_SCREEN_BLANK := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_INCLUDE_NTFS_3G := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_DEVICE_VERSION := perilouspike

# Set brightness path and level
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 1000
TW_DEFAULT_BRIGHTNESS := 500

# Fix stock .ozip installation
TW_SKIP_COMPATIBILITY_CHECK := true
TW_OZIP_DECRYPT_KEY := 0000

# Excludes
TW_USE_SERIALNO_PROPERTY_FOR_DEVICE_ID := true
BOARD_SUPPRESS_SECURE_ERASE := true

# Include some binaries
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_BASH := true

# Languages
TW_EXTRA_LANGUAGES := true

# Qcom EDL mode
TW_HAS_EDL_MODE := true

# Use Toolbox instead of Busybox
TW_USE_TOOLBOX := true 

# Debug-tools
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# Other flags
TW_NO_LEGACY_PROPS := true
TW_OVERRIDE_SYSTEM_PROPS := "ro.build.version.sdk" #needed for Android 11 Gapps

# drift/offset
TW_QCOM_ATS_OFFSET := 1617714502203

# Statusbar icons flags
#TW_STATUS_ICONS_ALIGN := center
TW_CUSTOM_CPU_POS := 400
TW_CUSTOM_CLOCK_POS := 200
TW_CUSTOM_BATTERY_POS := 800
