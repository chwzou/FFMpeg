LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := -D__STDC_CONSTANT_MACROS

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/../libffmpeg \
	$(LOCAL_PATH)/../include

LOCAL_SRC_FILES += \
	mediaplayer.cpp \
	packetqueue.cpp \
	decoder_audio.cpp

LOCAL_LDLIBS := -llog

LOCAL_SHARED_LIBRARIES := libjniaudio libjnivideo

LOCAL_STATIC_LIBRARIES := libavcodec libavformat libavutil libpostproc libswscale

LOCAL_MODULE := libmediaplayer

include $(BUILD_STATIC_LIBRARY)
