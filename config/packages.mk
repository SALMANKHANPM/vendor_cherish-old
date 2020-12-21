
#Launchers

ifeq ($(TARGET_LAUNCHER),lawnchair)
include vendor/cherish/prebuilt/app/Lawnchair/lawnchair.mk
else ifeq ($(TARGET_LAUNCHER),oplauncher)
include vendor/cherish/prebuilt/app/OPlauncher/OPLauncher2.mk
else
     $(warning TARGET_LAUNCHER is invalid or undefined, building Launcher3 as default launcher)

PRODUCT_PACKAGES += \
    Launcher3QuickStep
endif
