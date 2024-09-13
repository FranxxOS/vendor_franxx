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

FRANXX_BUILD_TYPE ?= RELEASE

FRANXX_DATE_YEAR := $(shell date -u +%Y)
FRANXX_DATE_MONTH := $(shell date -u +%m)
FRANXX_DATE_DAY := $(shell date -u +%d)
FRANXX_DATE_HOUR := $(shell date -u +%H)
FRANXX_DATE_MINUTE := $(shell date -u +%M)
FRANXX_BUILD_DATE_UTC := $(shell date -d '$(FRANXX_DATE_YEAR)-$(FRANXX_DATE_MONTH)-$(FRANXX_DATE_DAY) $(FRANXX_DATE_HOUR):$(FRANXX_DATE_MINUTE) UTC' +%s)
FRANXX_BUILD_DATE := $(FRANXX_DATE_YEAR)$(FRANXX_DATE_MONTH)$(FRANXX_DATE_DAY)-$(FRANXX_DATE_HOUR)$(FRANXX_DATE_MINUTE)

FRANXX_PLATFORM_VERSION := 15
FRANXX_CODENAME := 地球

FRANXX_VERSION := FranxxOS_$(FRANXX_CODENAME)-$(FRANXX_PLATFORM_VERSION)-$(FRANXX_BUILD_DATE)-$(FRANXX_BUILD_TYPE)
FRANXX_VERSION_PROP := 十五
