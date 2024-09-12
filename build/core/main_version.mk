#
# Copyright (C) 2024 FranxxOS
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
#

# Build fingerprint
ifeq ($(BUILD_FINGERPRINT),)
FRANXX_DEVICE ?= $(TARGET_DEVICE)
ifneq ($(filter OFFICIAL,$(FRANXX_BUILD_TYPE)),)
BUILD_SIGNATURE_KEYS := release-keys
else
BUILD_SIGNATURE_KEYS := test-keys
endif
BUILD_FINGERPRINT := $(PRODUCT_BRAND)/$(FRANXX_DEVICE):$(PLATFORM_VERSION)/$(BUILD_ID):$(TARGET_BUILD_VARIANT)/$(BUILD_SIGNATURE_KEYS)
endif
ADDITIONAL_SYSTEM_PROPERTIES  += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

# AOSP recovery flashing
ifeq ($(TARGET_USES_AOSP_RECOVERY),true)
ADDITIONAL_SYSTEM_PROPERTIES  += \
    persist.sys.recovery_update=true
endif

# Versioning props
ADDITIONAL_SYSTEM_PROPERTIES  += \
    org.franxx.version=$(FRANXX_VERSION_PROP) \
    org.franxx.version.display=$(FRANXX_VERSION) \
    org.franxx.build_date=$(FRANXX_BUILD_DATE) \
    org.franxx.build_date_utc=$(FRANXX_BUILD_DATE_UTC) \
    org.franxx.build_type=$(FRANXX_BUILD_TYPE) \
    org.franxx.build_security_patch=$(FRANXX_SECURITY_PATCH)
