ifneq ($(filter PHONE,$(FRANXX_DEVICE)),)
# Telephony
IS_PHONE := true

# World APN list
PRODUCT_PACKAGES += \
    apns-conf.xml

# Telephony packages
PRODUCT_PACKAGES += \
    Stk

# Tethering - allow without requiring a provisioning app
# (for devices that check this)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    net.tethering.noprovisioning=true

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode?=true
else
$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Settings
PRODUCT_PRODUCT_PROPERTIES += \
    persist.settings.large_screen_opt.enabled=true
endif

PRODUCT_SIZE := full

$(call inherit-product, vendor/franxx/config/franxx_common.mk)
