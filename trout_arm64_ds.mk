# Copyright 2024 Google LLC
#
# trout_arm64_ds adds DriverUI packages and config overlays to trout_arm64

# Set cluster display settings
PRODUCT_COPY_FILES += \
    device/google/trout/product_files_ds/vendor/etc/display_settings.xml:$(TARGET_COPY_OUT_VENDOR)/etc/display_settings.xml

# Use trout_arm64 image as base
$(call inherit-product, vendor/google/products/trout_arm64.mk)

# Include DriverUI app and enable it using RROs
$(call inherit-product, packages/services/Car/car_product/driverui/driverui_app_and_rros.mk)

PRODUCT_NAME := trout_arm64_ds
PRODUCT_MODEL := arm64 trout + driverui
