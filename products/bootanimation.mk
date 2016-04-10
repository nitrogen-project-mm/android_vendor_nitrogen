# Copyright (C) 2016 Nitrogen Project
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

ifneq ($(filter nitrogen_geeb,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/nitrogen/prebuilt/common/bootanimation/geeb.zip:system/media/bootanimation.zip
endif
ifneq ($(filter nitrogen_geehrc,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/nitrogen/prebuilt/common/bootanimation/geehrc.zip:system/media/bootanimation.zip
endif
ifneq ($(filter nitrogen_mako,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/nitrogen/prebuilt/common/bootanimation/mako.zip:system/media/bootanimation.zip
endif
ifneq ($(filter nitrogen_hammerhead,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/nitrogen/prebuilt/common/bootanimation/hammerhead.zip:system/media/bootanimation.zip
endif
ifneq ($(filter nitrogen_sprout4,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/nitrogen/prebuilt/common/bootanimation/sprout4.zip:system/media/bootanimation.zip
endif
ifneq ($(filter nitrogen_sprout8,$(TARGET_PRODUCT)),)
    PRODUCT_COPY_FILES += \
        vendor/nitrogen/prebuilt/common/bootanimation/sprout8.zip:system/media/bootanimation.zip
endif