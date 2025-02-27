#
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true


# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Bibliotecas Exynos recuperadas do vendor
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/lib/libexynosdisplay.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libexynosdisplay.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib/libexynosutils.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libexynosutils.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib/libhwbinder.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libhwbinder.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib/libhwc2on1adapter.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libhwc2on1adapter.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib/libion_exynos.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libion_exynos.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib/libsecnativefeature.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libsecnativefeature.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib/libsensorlistener.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libsensorlistener.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib/libshmemcompat.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/libshmemcompat.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib/sensors.inputvirtual.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/sensors.inputvirtual.so \
    $(LOCAL_PATH)/recovery/root/vendor/lib/vendor.samsung.hardware.sysinput-V2-ndk.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/vendor.samsung.hardware.sysinput-V2-ndk.so

# Bibliotecas HW
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/lib/hw/android.hardware.graphics.mapper@4.0-impl.so:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/hw/android.hardware.graphics.mapper@4.0-impl.so
