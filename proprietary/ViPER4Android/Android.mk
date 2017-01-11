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

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TARGET_ARCH := arm arm64 x86
LOCAL_MODULE := libV4AJniUtils
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib
LOCAL_SRC_FILES_x86 := jni/x86/libV4AJniUtils.so
LOCAL_SRC_FILES_arm := jni/armeabi/libV4AJniUtils.so
LOCAL_SRC_FILES_arm64 := jni/armeabi/libV4AJniUtils.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TARGET_ARCH := arm arm64 x86
LOCAL_MODULE := libv4a_fx_ics
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/soundfx
LOCAL_SRC_FILES_x86 := soundfx/x86/libv4a_fx_ics.so
LOCAL_SRC_FILES_arm := soundfx/armeabi/libv4a_fx_ics.so
LOCAL_SRC_FILES_arm64 := soundfx/armeabi/libv4a_fx_ics.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ViPER4Android
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SHARED_LIBRARIES := libV4AJniUtils libv4a_fx_ics
LOCAL_OVERRIDES_PACKAGES := MusicFX
include $(BUILD_PREBUILT)
