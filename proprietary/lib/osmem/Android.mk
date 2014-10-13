# File   : AUTO GENERATED MAKE FILE
# Date   : Mon Mar 17 20:32:10 CST 2014
# Author : hyl
# ===============================================
LOCAL_PATH := $(call my-dir)
ifeq ($(strip $(BOARD_USE_LCDC_COMPOSER)), false)

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := gralloc.rk30board.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib/hw
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := audio.primary.rk30board.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib/hw
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := audio_policy.rk30board.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib/hw
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := alsa.default.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib/hw
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)


include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := acoustics.default.so
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib/hw
LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)

endif

