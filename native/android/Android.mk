BASE_PATH := $(call my-dir)
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

# our source files
#
LOCAL_SRC_FILES:= \
    asset_manager.cpp \
    choreographer.cpp \
    configuration.cpp \
    input.cpp \
    looper.cpp \
    native_activity.cpp \
    native_window.cpp \
    net.c \
    obb.cpp \
    sensor.cpp \
    storage_manager.cpp \
    trace.cpp \

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils \
    libandroidfw \
    libinput \
    libutils \
    libbinder \
    libui \
    libgui

LOCAL_STATIC_LIBRARIES := \
    libstorage

LOCAL_C_INCLUDES += \
    frameworks/base/native/include \
    bionic/libc/dns/include \
    system/netd/include \

LOCAL_MODULE := libandroid

# Required because of b/25642296
LOCAL_CLANG_arm64 := false

include $(BUILD_SHARED_LIBRARY)
