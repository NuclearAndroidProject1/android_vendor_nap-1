# Copyright (C) 2015 The AOSParadox Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    net.tethering.noprovisioning=true \
    persist.sys.dun.override=0 \
    ro.build.selinux=1 \
    ro.adb.secure=0 \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.network_required=false \
    keyguard.no_require_sim=true \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false \
    ro.ril.enable.amr.wideband=1 \
    drm.service.enabled=true \
    ro.layers.noIcon=noIcon

# Packages
PRODUCT_PACKAGES += \
    AudioFX \
    android-visualizer \
    Apollo \
    Browser \
    DaylightHeaderHDPoly \
    Launcher3 \
    OpenDelta \
    SnapdragonCamera \
    PrebuiltBugle \
    LockClock \
    libemoji \
    ntfsfix \
    ntfs-3g

# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/NuclearAndroidProject/overlay/common

PRODUCT_COPY_FILES += \
	vendor/NuclearAndroidProject/prebuilt/NuclearWallpaper.apk:system/app/NuclearWallpaper.apk \
	vendor/NuclearAndroidProject/prebuilt/Layers_backup.apk:system/app/Layers_backup.apk
	
# Copy Supersu
PRODUCT_COPY_FILES += \
    vendor/NuclearAndroidProject/prebuilt/common/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/NuclearAndroidProject/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Media effects
PRODUCT_COPY_FILES +=  \
    vendor/NuclearAndroidProject/prebuilt/common/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/NuclearAndroidProject/prebuilt/common/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

# APN list
PRODUCT_COPY_FILES += \
    vendor/NuclearAndroidProject/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml
 
# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/NuclearAndroidProject/prebuilt/common/addon.d/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/NuclearAndroidProject/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/NuclearAndroidProject/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/NuclearAndroidProject/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# init.d support
PRODUCT_COPY_FILES += \
    vendor/NuclearAndroidProject/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/NuclearAndroidProject/prebuilt/common/etc/init.d/00banner:system/etc/init.d/90userinit \
    vendor/NuclearAndroidProject/prebuilt/common/bin/sysinit:system/bin/sysinit

# Init script file with custom extras
PRODUCT_COPY_FILES += \
    vendor/NuclearAndroidProject/prebuilt/common/etc/init.local.rc:root/init.custom.rc

# changelog copy
PRODUCT_COPY_FILES += \
    Changelog.txt:system/etc/changelog.txt

PRODUCT_COPY_FILES += \
    vendor/NuclearAndroidProject/bootanimation/1080.zip:system/media/bootanimation.zip

# NuclearAosp Version
PRODUCT_NAME = NuclearAndroidProject
PRODUCT_VERSION = 6.0
PRODUCT_VERSION_MAINTENANCE = 2.0
NUCLEAR_POSTFIX := $(shell date +"%Y%m%d-%H%M")
NUCLEAR_VERSION := $(PRODUCT_NAME)-V$(PRODUCT_VERSION_MAINTENANCE)-$(PRODUCT_VERSION)-$(NUCLEAR_POSTFIX)
PRODUCT_PROPERTY_OVERRIDES += ro.par.version =$(NUCLEAR_VERSION)
FINISHER_SCRIPT := vendor/NuclearAndroidProject/tools/finisher
SQUISHER_SCRIPT := vendor/NuclearAndroidProject/tools/squisher
