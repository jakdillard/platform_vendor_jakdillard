# Prebuilts

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/jakdillard/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Latin IME gesture typing
PRODUCT_COPY_FILES += \
    vendor/jakdillard/prebuilt/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinime.so

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/jakdillard/prebuilt/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/jakdillard/prebuilt/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/jakdillard/prebuilt/bin/50-base.sh:system/addon.d/50-base.sh

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/jakdillard/prebuilt/supersu/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/jakdillard/prebuilt/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Busybox
PRODUCT_COPY_FILES += \
    vendor/jakdillard/prebuilt/busybox/UPDATE-Busybox.zip:system/addon.d/UPDATE-Busybox.zip

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/jakdillard/prebuilt/bin/sysinit:system/bin/sysinit

# AOSP init file
PRODUCT_COPY_FILES += \
    vendor/jakdillard/prebuilt/etc/init.jakdillard.rc:root/init.jakdillard.rc
