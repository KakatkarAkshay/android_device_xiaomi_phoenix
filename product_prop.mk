#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Adb
ifeq ($(TARGET_BUILD_VARIANT),eng)
# /vendor/default.prop is force-setting ro.adb.secure=1
# Get rid of that by overriding it in /product on eng builds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0
endif

# Bluetooth
PRODUCT_PRODUCT_PROPERTIES += \
    persist.bluetooth.bqr.event_mask=14  \
    persist.bluetooth.bqr.min_interval_ms=500  \
    vendor.bluetooth.soc=cherokee  \
    vendor.qcom.bluetooth.soc=cherokee  \
    persist.bluetooth.a2dp_offload.cap=sbc-aac-aptx-aptxhd-ldac  \
    persist.bluetooth.a2dp_offload.disabled=false  \
    persist.vendor.bt.aac_frm_ctl.enabled=true  \
    persist.vendor.qcom.bluetooth.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac-ldac-aptxadaptive  \
    persist.vendor.qcom.bluetooth.enable.splita2dp=true  \
    ro.bluetooth.a2dp_offload.supported=true

# VoLTE
PRODUCT_PRODUCT_PROPERTIES += \
    persist.dbg.volte_avail_ovr := 1 \
    persist.dbg.vt_avail_ovr := 1

# Mobile Netowork Settings V2
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.fflag.override.settings_network_and_internet_v2=true

# preferred network (global)
PRODUCT_PRODUCT_PROPERTIES += \
	ro.telephony.default_network=22,20

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    vendor.camera.aux.packagelist=org.lineageos.snap,com.google.android.GoogleCamera,org.codeaurora.snapcam \
    persist.camera.privapp.list=org.codeaurora.snapcam \
    persist.vendor.camera.privapp.list=org.codeaurora.snapcam

# Display
PRODUCT_PRODUCT_PROPERTIES += \
	debug.sf.latch_unsignaled=0
