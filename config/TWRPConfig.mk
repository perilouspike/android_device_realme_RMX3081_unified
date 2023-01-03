#################################
# TWRP - specific Configuration #
#################################
RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_SCREEN_BLANK := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FASTBOOTD := true
TW_USE_SERIALNO_PROPERTY_FOR_DEVICE_ID := true

# Maintainer/Version
TW_DEVICE_VERSION := perilouspike

# Set brightness path and level
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 1000
TW_DEFAULT_BRIGHTNESS := 500

# Fix stock .ozip installation
TW_SKIP_COMPATIBILITY_CHECK := true
TW_OZIP_DECRYPT_KEY := 0000

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

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_USE_FSCRYPT_POLICY := 2

# drift/offset
TW_QCOM_ATS_OFFSET := 1617714502203

# Statusbar icons flags
#TW_STATUS_ICONS_ALIGN := center
TW_CUSTOM_CPU_POS := 400
TW_CUSTOM_CLOCK_POS := 200
TW_CUSTOM_BATTERY_POS := 800

# Recovery Modules
TARGET_RECOVERY_DEVICE_MODULES += \
    android.hidl.allocator@1.0 \
    android.hidl.memory@1.0 \
    android.hidl.memory.token@1.0 \
    libdmabufheap \
    libhidlmemory \
    libion \
    libnetutils \
    libc.so \
    libxml2

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.allocator@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.memory@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.memory.token@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libdmabufheap.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libhidlmemory.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libnetutils.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libc.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libxml2.so
    
    # Property Override
    TW_OVERRIDE_SYSTEM_PROPS := "ro.build.version.sdk" #needed for Android 11 Gapps
    #TW_OVERRIDE_SYSTEM_PROPS := "ro.build.date.utc;ro.bootimage.build.date.utc=ro.build.date.utc;ro.odm.build.date.utc=ro.build.date.utc;ro.product.build.date.utc=ro.build.date.utc;ro.system.build.date.utc=ro.build.date.utc;ro.system_ext.build.date.utc=ro.build.date.utc;ro.vendor.build.date.utc=ro.build.date.utc;ro.build.product;ro.build.fingerprint=ro.system.build.fingerprint;ro.build.version.incremental;ro.product.device=ro.product.system.device;ro.product.model=ro.product.system.model;ro.product.name=ro.product.system.name"
   
