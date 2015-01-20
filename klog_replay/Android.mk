LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := klog_replay.c
LOCAL_SHARED_LIBRARIES += liblog
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := klog_replay
include $(BUILD_EXECUTABLE)
