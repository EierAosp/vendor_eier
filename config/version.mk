# Copyright (C) 2016 The Pure Nexus Project
# Copyright (C) 2016 The JDCTeam
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

EIER_MOD_VERSION = v12.1
EIER_BUILD_TYPE := UNOFFICIAL
EIER_BUILD_ZIP_TYPE := VANILLA

EIER_VERSION := Eier-$(EIER_MOD_VERSION)-$(CURRENT_DEVICE)-$(EIER_BUILD_TYPE)-$(shell date -u  +%Y%m%d%H%M)-$(EIER_BUILD_ZIP_TYPE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.eier.version=$(EIER_VERSION) \
  ro.eier.releasetype=$(EIER_BUILD_TYPE) \
  ro.eier.ziptype=$(EIER_BUILD_ZIP_TYPE) \
  ro.modversion=$(EIER_MOD_VERSION)

EIER_DISPLAY_VERSION := Eier-$(EIER_MOD_VERSION)-$(EIER_BUILD_TYPE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.eier.display.version=$(EIER_DISPLAY_VERSION)
