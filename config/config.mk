# Vendor config

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/jakdillard/overlay/common

# Additional Packages
PRODUCT_PACKAGES += \
    Chromium \
    libprotobuf-cpp-full

# Get Sounds
$(call inherit-product-if-exists, vendor/jakdillard/data/sounds/AudioPackage_Google.mk)

# Default Sounds
# Sound settings used in all builds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Titania.ogg \
    ro.config.notification_sound=Tethys.ogg \
    ro.config.alarm_alert=Oxygen.ogg

# Google Device specific
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1

# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=$(BUILD_ID).$(shell date +"%Y%m%d")

# Enable SIP+VoIP
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/jakdillard/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Latin IME gesture typing 
PRODUCT_COPY_FILES += \
    vendor/jakdillard/prebuilt/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinime.so

# Disable dex optimization
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := false
    endif
  endif
endif

