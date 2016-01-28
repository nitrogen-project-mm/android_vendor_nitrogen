# Generic product
PRODUCT_NAME := nitrogen
PRODUCT_BRAND := nitrogen
PRODUCT_DEVICE := generic

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    drm.service.enabled=true \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    ro.build.selinux=1 \
    ro.adb.secure=1 \
    ro.build.display.id=nitrogen_build

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/nitrogen/overlay/common

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Block based ota flag default to off to get old style ota zip back (To get back block based zip, just enable to true.)
#TARGET_USES_BLOCK_BASED_OTA := false

# Latin IME lib - gesture typing
PRODUCT_COPY_FILES += \
    vendor/nitrogen/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# Extra packages
PRODUCT_PACKAGES += \
    Busybox \
    Camera2 \
    CustomWallpapers \
    DaylightHeaderNitrogen \
    Eleven \
    Launcher3 \
    LayersManager \
    LockClock \
    Stk \
    Terminal \
    ViPERFX

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh \

# APN list
PRODUCT_COPY_FILES += \
    vendor/nitrogen/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/nitrogen/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/nitrogen/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Init.d script support
PRODUCT_COPY_FILES += \
    vendor/nitrogen/prebuilt/common/bin/sysinit:system/bin/sysinit

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/nitrogen/prebuilt/common/addon.d/50-nitrogen.sh:system/addon.d/50-nitrogen.sh \
    vendor/nitrogen/prebuilt/common/addon.d/90-layers.sh:system/addon.d/90-layers.sh \
    vendor/nitrogen/prebuilt/common/addon.d/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/nitrogen/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/nitrogen/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/nitrogen/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/nitrogen/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip

# ViPERFX
PRODUCT_PROPERTY_OVERRIDES += \
    lpa.decode=false \
    lpa.releaselock=false \
    tunnel.decode=false \
    lpa.use-stagefright=false